/*
Bloco 3 — Categorias
9.	Quais categorias representam maior gasto total?
10.	Qual a média de gasto por categoria?
11.	Qual categoria tem mais frequência de transações?

*/

-- Quais categorias representam maior gasto total? SUM filtrado por Despesa
SELECT categoria,
       SUM(valor) AS maiores_gastos
FROM transacoes_financeiras
WHERE tipo_movimentacao = "Despesa"
GROUP BY categoria
ORDER BY maiores_gastos ASC;

-- Qual a média de gasto por categoria? Mesma logica da acima

SELECT categoria,
       ROUND(AVG(valor), 2) AS maiores_gastos
FROM transacoes_financeiras
WHERE tipo_movimentacao = "Despesa"
GROUP BY categoria
ORDER BY maiores_gastos ASC;

-- Qual categoria tem mais frequência de transações? De forma genérica isso atende

SELECT categoria,
       COUNT(id_transacao) AS frequencia_de_transacao
FROM transacoes_financeiras
GROUP BY categoria
ORDER BY frequencia_de_transacao DESC;

-- Qual categoria tem mais frequência de transações? Mais detalhado mostrando o total mais onde é saida e onde é entrada.
SELECT 
    categoria,
    COUNT(*) AS frequencia_total,
    -- Aqui você mostra que teve o cuidado de ver o que é o quê
    SUM(CASE WHEN tipo_movimentacao = 'Receita' THEN 1 ELSE 0 END) AS entradas,
    SUM(CASE WHEN tipo_movimentacao = 'Despesa' THEN 1 ELSE 0 END) AS saídas
FROM transacoes_financeiras
GROUP BY categoria
ORDER BY frequencia_total DESC;


