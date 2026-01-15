/* Bloco 2
5.	Qual o total de entradas por mês?
6.	Qual o total de saídas por mês?
7.	Em quais meses o saldo cresceu mais?
8.	Em quais meses o saldo caiu?
*/

-- 	Qual o total de entradas por mês?

SELECT DATE_FORMAT(data, '%Y-%m') AS mes_ano,
       SUM(valor) AS total_por_mes
FROM transacoes_financeiras
WHERE tipo_movimentacao = 'Receita'
GROUP BY DATE_FORMAT(data, '%Y-%m')
ORDER BY  DATE_FORMAT(data, '%Y-%m') DESC;

-- Qual o total de saidas por mês?

SELECT DATE_FORMAT(data, '%Y-%m') AS mes_ano,
       SUM(valor) AS total_por_mes
FROM transacoes_financeiras
WHERE tipo_movimentacao = 'Despesa'
GROUP BY DATE_FORMAT(data, '%Y-%m')
ORDER BY  DATE_FORMAT(data, '%Y-%m') DESC;

-- Em quais meses o saldo cresceu mais?
SELECT DATE_FORMAT(data, '%Y-%m') AS mes_ano,
       SUM(valor) AS total_por_mes
FROM transacoes_financeiras
GROUP BY DATE_FORMAT(data, '%Y-%m')
HAVING SUM(valor) >= 0 
ORDER BY  total_por_mes DESC;

/* Como a consulta ao fazer o SUM ja da os valores negativos e positivos,
usei o Having para excluir os negativos e mostrei o order by dos meses com maior saldo
*/

-- Em quais meses o saldo caiu Usei a mesma logica da anterior.
SELECT DATE_FORMAT(data, '%Y-%m') AS mes_ano,
       SUM(valor) AS total_por_mes
FROM transacoes_financeiras
GROUP BY DATE_FORMAT(data, '%Y-%m')
HAVING SUM(valor) < 0 
ORDER BY  total_por_mes ASC;

-- COm subquery

SELECT 
    mes_ano,
    saldo_do_mes,
    saldo_do_mes - LAG(saldo_do_mes) OVER (ORDER BY mes_ano) AS variacao_crescimento
FROM (
    SELECT 
        DATE_FORMAT(data, '%Y-%m') AS mes_ano,
        SUM(valor) AS saldo_do_mes
    FROM transacoes_financeiras
    GROUP BY mes_ano
) AS resumo_mensal
ORDER BY variacao_crescimento DESC;