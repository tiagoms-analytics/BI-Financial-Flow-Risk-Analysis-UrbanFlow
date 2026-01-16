# 📊 Dashboard Power BI — UrbanFlow: Gestão, Fluxo e Risco Financeiro

Este painel apresenta análises completas sobre:
* **Saúde Financeira:** Entradas, Saídas e Saldo Líquido.
* **Eficiência Operacional:** Ticket Médio por categoria e canal.
* **Sazonalidade:** Diagnóstico detalhado de performance mensal.
* **Estrutura de Gastos:** Análise contábil (Fixo vs. Variável).
* **Gestão de Risco:** Identificação de anomalias no 3º Trimestre (T3).

As imagens das páginas estão na pasta `/3_PowerBI/imagens/`.

---

## 🟦 Página 01 — KPIs e Visão Macro
**Arquivo:** `01_visao_macro.png`  
**Principais KPIs:**
* Total de Entradas
* Total de Saídas
* Saldo Total (Acumulado)
* Evolução temporal (Linha do tempo)

**Entendimento:**

📌 O saldo total de **2 Mi** esconde uma volatilidade perigosa no segundo semestre.

📌 Picos de entrada em Junho e Outubro garantiram a sobrevivência do fluxo anual.

---

## 🔧 Página 02 — Análise Geral
**Arquivo:** `02_analise_geral.png`  
**Perguntas respondidas:**
* Qual o Ticket Médio Geral da operação?
* Como o saldo variou em relação ao mês anterior (MoM)?
* Qual a eficiência das formas de pagamento?

**Perceções:**
* **Ticket Médio (4,46 Mil):** Indica uma operação de médio valor unitário.
* **Crédito:** Apresenta o maior ticket médio, sendo o motor de valor da empresa.
* **Variação MoM:** Identificamos os sinais de alerta antes da queda drástica do T3.

---

## 💰 Página 03 — Relatório de Receitas
**Arquivo:** `03_receitas.png`  
**Inclui:**
* Ticket Médio de Entradas
* Participação por meio de pagamento (Rosca)
* Receita por Categoria vs. Ticket Médio

**Entendimento:**

📌 **Lazer** gera volume, mas **Educação** gera estabilidade.

📌 O **PIX (27,29%)** é o principal aliado da liquidez imediata.

---

## 💸 Página 04 — Relatório de Despesas
**Arquivo:** `04_despesas.png`  
**Inclui:**
* Ticket Médio de Saídas
* Top categorias de custo
* Complexidade operacional (Volume de transações de saída)

**Perceções:**
* **Salários e Aluguel:** São as âncoras de custo fixo.
* **Pico de Setembro:** Houve uma explosão na quantidade de transações, aumentando o custo variável operacional.

---

## ⚖️ Página 05 — Fixo vs. Variável (Diagnóstico T3)
**Arquivo:** `05_fixo_variavel.png`  
**Exibir:**
* Comparativo Anual (Fixos vs. Variáveis)
* Treemap de Categorias por Natureza
* Análise de Risco Trimestral

**Entendimento:**

📌 **Conclusão Estratégica:**

**O prejuízo do T3 foi causado pelo "Efeito Tesoura":** As receitas fixas (Educação) caíram enquanto despesas variáveis (Saúde/Transporte) subiram 35%.

---

## 🧩 Modelagem (Resumida)

* **Esquema Star Schema:** Tabela Fato (`mini_projeto_financeiro_Clean`).
* **Dimensões:** Calendário (DAX), Categorias, Meios de Pagamento.
* **Medidas DAX:** Otimizadas para performance, utilizando inteligência de tempo (arquivo: `medidas_dax.md`).

---

## 📁 Estrutura da pasta Power BI

```pgsql


/3_PowerBI/
│── dashboard_urbanflow.pbix
│── medidas_dax.md
│── README_PowerBI.md   # Este arquivo
└── imagens/
      01_visao_macro.png
      02_analise_geral.png
      03_receitas.png
      04_despesas.png
      05_fixo_variavel.png

```

---

## 🤝 Conecte-se comigo

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Tiago%20Magalhães%20Santos-blue?logo=linkedin)](https://www.linkedin.com/in/tiago-magalh%C3%A3es-santos-0b6ab0b6/)  

---


