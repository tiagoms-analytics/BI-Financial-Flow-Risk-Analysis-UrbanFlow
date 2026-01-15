
# 🗄️ Processamento e Análise de Dados com SQL

Esta pasta contém os scripts SQL desenvolvidos para a extração, tratamento e análise exploratória dos dados financeiros da **UrbanFlow**. O trabalho foi dividido em blocos lógicos para garantir a integridade dos dados e facilitar a manutenção.
---

## 📑 Lista de Arquivos e Objetivos

### 1. `01_setup_database.sql`
* **Objetivo:** Criação da infraestrutura de dados.
* **Ações:** Criação do banco de dados `financeiro`, definição da tabela `transacoes_financeiras` com tipos de dados otimizados e execução do tratamento da coluna de datas (conversão de `VARCHAR` brasileiro para `DATE` padrão MySQL).

### 2. `02_exploracao_geral.sql`
* **Objetivo:** Visão macro dos números anuais.
* **Ações:** Consultas para totalização de entradas, saídas, saldo final do ano e volumetria de transações por tipo de movimentação. Serve como base de validação para o dashboard.

### 3. `03_analise_mensal_e_saldo.sql`
* **Objetivo:** Identificar tendências temporais e sazonalidade.
* **Ações:** Agrupamentos mensais de entradas e saídas. Utiliza **Window Functions (`LAG`)** para calcular a variação de crescimento de saldo mês a mês e identificar os períodos de queda crítica no T3.

### 4. `04_analise_por_categorias.sql`
* **Objetivo:** Diagnóstico setorial dos gastos e receitas.
* **Ações:** Identificação das categorias com maior gasto total, cálculo de médias por setor e frequência de transações segmentadas por tipo (Entrada/Saída), revelando o comportamento operacional de cada área de negócio.

### 5. `05_analise_meios_pagamento.sql`
* **Objetivo:** Eficiência financeira e auditoria de transações.
* **Ações:** Análise de concentração de valores por forma de pagamento e identificação de anomalias (muitas transações para baixo volume financeiro). Utiliza funções de agregação e filtros `HAVING`.

---

## 🛠️ Principais Técnicas Aplicadas
* **Tratamento de Dados:** `STR_TO_DATE` e `ALTER TABLE`.
* **Lógica Condicional:** Uso extensivo de `CASE WHEN` para criação de KPIs personalizados.
* **Análise Avançada:** Funções de Janela (`OVER`, `ORDER BY`, `LAG`) para cálculos de variação MoM.
* **Filtros de Agregação:** Uso de `GROUP BY` e `HAVING` para segmentação de categorias e meios de pagamento.

## 🚀 Como utilizar
Os scripts foram numerados de **01 a 05** para indicar a ordem lógica de execução. Para replicar o ambiente, execute o script `01_setup_database.sql` primeiro para garantir que a tipagem dos dados esteja correta antes das consultas de análise.
