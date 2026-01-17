# 🧮 Documentação de Medidas DAX – Projeto UrbanFlow

Esta documentação descreve as fórmulas DAX desenvolvidas para o dashboard da UrbanFlow, organizadas por categorias de análise.
---

## 📅 1. Inteligência de Tempo (Time Intelligence)

Medidas utilizadas para calcular variações e comparações temporais (MoM).

**Saldo Anterior (LY / PM)**


```DAX
Calcula o saldo total do mês anterior para fins de comparação.
Snippet de código
Saldo_Liquido_Anterior = 
CALCULATE(
    [Saldo_Líquido], 
    PREVIOUSMONTH(Calendario[Date])
)


```

**Variação de Saldo (Nominal)**

```DAX

Variação_Saldo = [Saldo_Liquido] - [Saldo_Anterior]

```
**Variação de Saldo (%)**

Calcula a variação percentual em relação ao mês anterior.

```DAX

%_Variação_Saldo = DIVIDE([Variação_Saldo], [Saldo_Anterior])

```
💰 2. Medidas de Valor (Saldos e Entradas/Saídas)
Cálculos fundamentais de volume financeiro.
```DAX
Saldo_Liquido = SUM(mini_projeto_financeiro_Clean[valor])

Total_de_Entradas = 
CALCULATE(
    [Saldo_Liquido], 
    mini_projeto_financeiro_Clean[tipo_movimento] = "Receita"
)

Total_de_Saidas = 
ABS(
    CALCULATE(
        [Saldo_Liquido], 
        mini_projeto_financeiro_Clean[tipo_movimento] = "Despesa"
    )
)

```

📊 3. Medidas de Volume e Performance (Ticket Médio)

Cálculos de quantidade e médias por transação.

```DAX
Qtd_Total_de_Transacoes = DISTINCTCOUNT(mini_projeto_financeiro_Clean[id_transacao])

Ticket_Medio = DIVIDE([Saldo_Líquido], [Qtd_Total_de_Transacoes])

Qtd_transacoes_Entradas = CALCULATE([Qtd_Total_de_Transacoes], mini_projeto_financeiro_Clean[tipo_movimento] = "Receita")

Ticket_Medio_Entradas = DIVIDE([Total_de_Entradas], [Qtd_Transacoes_Entradas])

Qtd_transacoes_Saidas = CALCULATE([Qtd_Total_de_Transacoes], mini_projeto_financeiro_Clean[tipo_movimento] = "Despesa")

Ticket_Medio_Saidas = ABS(DIVIDE([Total_de_Saidas], [Qtd_Transacoes_Saidas]))
```

🛠️ 4. Tabelas de Apoio

**Tabela Calendário**

Criada para suportar as funções de Time Intelligence.
```DAX

Calendario = CALENDARAUTO()

```
---
Destaques da Modelagem
-	Segurança: Utilização da função DIVIDE em todas as métricas de média e variação para evitar erros de divisão por zero.
-	Formatação Executiva: Aplicação da função ABS em métricas de saída para garantir uma visualização limpa e comparativa em gráficos de barras e indicadores de performance.
________________________________________

