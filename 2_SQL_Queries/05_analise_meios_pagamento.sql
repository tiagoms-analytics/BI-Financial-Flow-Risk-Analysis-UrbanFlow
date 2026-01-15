/*
🎯 Bloco 4 — Forma de pagamento
12.	Qual o valor total gasto por forma de pagamento?
13.	Qual forma de pagamento concentra os maiores valores?
14.	Existe forma de pagamento com muitas transações e pouco valor?

*/

/* Qual o valor total gasto por forma de pagamento Usada a função ABS para
 mostrar o valor negativo como positivo uma aparência mais "executiva"
 (exibindo valores positivos, mesmo sendo gastos)
 */

SELECT forma_pagamento,
       ABS(SUM(valor)) AS total_gasto
FROM transacoes_financeiras
WHERE tipo_movimentacao = "Despesa"
GROUP BY forma_pagamento
ORDER BY total_gasto DESC;

-- Qual forma de pagamento concentra os maiores valores? Determinei o top 3

SELECT forma_pagamento,
       SUM(valor) AS maiores_receitas
FROM transacoes_financeiras
WHERE tipo_movimentacao = "Receita"
GROUP BY forma_pagamento
ORDER BY maiores_receitas DESC
LIMIT 3;

-- Existe forma de pagamento com muitas transações e pouco valor; Determinei valores > 40 e menor que 20000.
SELECT forma_pagamento,
       COUNT(id_transacao) AS qtd_transacoes,
       SUM(valor) AS valores
FROM transacoes_financeiras
WHERE tipo_movimentacao = "Receita"
GROUP BY forma_pagamento
HAVING COUNT(id_transacao) > 40 AND SUM(valor) < 20000;
