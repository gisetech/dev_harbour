# Exercício 4 — Refinamento sucessivo

Aplique a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema:

"Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a pagar."

Entregue dois níveis: o Nível 1 (visão geral, 3–4 passos) e o Nível 2 (cada passo detalhado).

---

## Nível 1 (visão geral)

1. Registrar os itens da compra
2. Calcular o subtotal
3. Verificar e aplicar desconto (se houver cartão fidelidade)
4. Mostrar o total a pagar

---

## Nível 2 (detalhamento)

**1. Registrar os itens da compra**
- Declarar uma lista/variável para armazenar os itens
- Repetir enquanto houver itens a registrar:
  - Ler o nome (ou código) do item
  - Ler o preço do item
  - Adicionar o item à lista da compra
- Perguntar se há mais itens; se não, encerrar a repetição

**2. Calcular o subtotal**
- Declarar variável `subtotal`, iniciando em 0
- Para cada item da lista:
  - Somar o preço do item ao `subtotal`

**3. Verificar e aplicar desconto**
- Perguntar/ler se o cliente tem cartão fidelidade
- Se tiver cartão fidelidade então:
  - Calcular desconto ← subtotal × 5%
  - total ← subtotal − desconto
- Senão:
  - total ← subtotal

**4. Mostrar o total a pagar**
- Escrever o valor de `total` na tela