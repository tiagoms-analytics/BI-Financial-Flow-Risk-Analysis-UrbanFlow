CREATE DATABASE financeiro;
USE financeiro;

CREATE TABLE transacoes_financeiras (
    id_transacao INT PRIMARY KEY,
    data_raw VARCHAR(20), -- Importaremos como texto primeiro para não dar erro
    tipo_movimentacao VARCHAR(20),
    categoria VARCHAR(50),
    forma_pagamento VARCHAR(50),
    valor DECIMAL(10,2),
    fixo_variavel VARCHAR(20)
);
 
 -- tive qwe primeiro colocar a data como Varchar para poder não ter mais erro na importação.
 
 -- Caso o MySQL bloqueie o update, desativa o modo seguro temporariamente
SET SQL_SAFE_UPDATES = 0;
 
-- 1. Converte o texto brasileiro (DD/MM/YYYY) para o formato do MySQL (YYYY-MM-DD)
UPDATE transacoes_financeiras 
SET data_raw = STR_TO_DATE(data_raw, '%d/%m/%Y');

-- 2. Altera o tipo da coluna de VARCHAR para DATE e já renomeia para "data"
ALTER TABLE transacoes_financeiras 
CHANGE COLUMN data_raw data DATE;

-- 3 Reativa o modo seguro
SET SQL_SAFE_UPDATES = 1;
