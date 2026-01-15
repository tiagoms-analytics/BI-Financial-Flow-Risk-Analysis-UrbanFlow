/* Bloco 1
1. total de entradas no período?
2.	Qual o total de saídas no período?
3.	Qual o saldo final do ano?
4.	Quantas transações ocorreram por tipo de movimentação?
*/

 -- 1. total de entradas no período?

SELECT ROUND(SUM(valor), 2) AS Valor_total_de_entradas
FROM transacoes_financeiras
WHERE tipo_movimentacao = "Receita";

-- Qual o total de saídas no período?

SELECT ROUND(SUM(valor), 2) AS Valor_total_de_saidas
FROM transacoes_financeiras
WHERE tipo_movimentacao = "Despesa";

-- Qual o saldo final do ano?

SELECT SUM(valor) AS Saldo_total
FROM transacoes_financeiras;

-- Saldo final mais detalhado

SELECT 
    SUM(CASE WHEN tipo_movimentacao = 'Receita' THEN valor ELSE 0 END) -
    SUM(CASE WHEN tipo_movimentacao = 'Despesa' THEN valor ELSE 0 END) 
    AS saldo_total
FROM transacoes_financeiras;


-- 4.Quantas transações ocorreram por tipo de movimentação?

SELECT COUNT(tipo_movimentacao) AS quantidade_de_transacoes,
CASE
 WHEN tipo_movimentacao = 'Receita' THEN "Receitas"
 ELSE 'Despesas'
 END AS categoria_movimentacao
 FROM transacoes_financeiras
 GROUP BY tipo_movimentacao
 ORDER BY quantidade_de_transacoes DESC;
 
 -- Igual a questão 4 só que sem CASE
 
 SELECT 
    tipo_movimentacao,
    COUNT(*) AS quantidade_de_transacoes
FROM transacoes_financeiras
GROUP BY tipo_movimentacao;

 
 




