# 📊 Análise Financeira UrbanFlow – Ciclo 2023

> **Projeto de Business Intelligence focado em diagnóstico de fluxo de caixa e sazonalidade operacional.**

## 🏢 Contexto do Negócio
A **UrbanFlow** atua em um ecossistema de serviços urbanos (Alimentação, Lazer, Transporte, Educação e Aluguel). O modelo de negócio é caracterizado por alto volume transacional e forte dependência de ciclos sazonais.

Este projeto simula o desempenho financeiro de 2023, utilizando **SQL** para tratamento de dados e **Power BI** para geração de insights estratégicos sobre o "efeito tesoura" identificado no 3º trimestre.

---

## 🎯 Objetivos Técnicos
* **Saúde Financeira:** Analisar Entradas, Saídas e Saldo Total (MoM).
* **Eficiência:** Mensurar o Ticket Médio por categoria e meio de pagamento.
* **Diagnóstico de Risco:** Identificar as causas da queda de performance no T3.
* **Estrutura Contábil:** Decompor a operação em Fixo vs. Variável.

---

## 🛠️ Tecnologias Utilizadas
* **Power BI:** Modelagem de dados, DAX avançado e Visualização.
* **SQL:** Exploração, agrupamentos e validações de integridade.
* **Excel:** Base de dados e Dicionário de Dados.
* **Git/GitHub:** Documentação e versionamento.

---

```pgsql


## 📂 Estrutura do Repositório
```bash
├── 1_Excel/              # Base de dados e Dicionário de Dados
├── 2_SQL_Queries/        # Scripts de exploração e agregação
├── 3_PowerBI/            # Arquivo .PBIX e screenshots do painel
├── docs/                 # Relatório Executivo em PDF
└── README.md             # Documentação principal

```
## 📈 Estrutura do Dashboard (5 Páginas)

* **KPIs e Visão Macro:** Visão consolidada de saldo e evolução temporal.
* **Análise Geral:** Ticket Médio Geral e tabelas de variação mensal.
* **Relatório de Receitas:** Performance por categoria e qualidade de meios de pagamento (Crédito/PIX).
* **Relatório de Despesas:** Estrutura de gastos e complexidade operacional (transações).
* **Fixo vs. Variável:** Diagnóstico contábil e exposição de risco no T3.

  ---

## 🧠 Insights e Conclusões

* **O Gargalo do T3:** O prejuízo no 3º trimestre não foi apenas queda de vendas, mas uma inversão de risco: as entradas fixas recuaram (sazonalidade escolar) enquanto os custos variáveis (Saúde/Transporte) atingiram o pico.
* **Qualidade do Ticket:** O Crédito e o PIX apresentaram os maiores Tickets Médios, sendo pilares fundamentais para a manutenção da liquidez da empresa.
* **Ações Sugeridas:** Consolidação estratégica de pagamentos a fornecedores no T3 e criação de combos promocionais para a categoria Lazer para elevar o ticket médio de baixo valor unitário.

  ---

## ⚖️ Licença / Aviso Legal

Todo o conteúdo deste repositório foi desenvolvido para fins **educacionais e de portfólio pessoal**.  
Você é livre para usar, modificar e compartilhar os arquivos, desde que mantenha os devidos créditos ao autor original.

---

## 🤝 Conecte-se comigo

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Tiago%20Magalhães%20Santos-blue?logo=linkedin)](https://www.linkedin.com/in/tiago-magalh%C3%A3es-santos-0b6ab0b6/)  

---

## 📎 Observação
Este projeto foi desenvolvido com foco em **storytelling analítico**, priorizando decisões de negócio e leitura executiva dos dados.

  

