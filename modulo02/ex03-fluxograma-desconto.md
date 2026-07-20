# Fluxograma — Desconto na loja (Mermaid)

**Problema:** Uma loja dá desconto de 10% para compras acima de R$ 100. Leia o valor da compra e mostre o valor final a pagar.

```mermaid
flowchart TD
    A([Início]) --> B[Leia valor da compra]
    B --> C{Valor > 100?}
    C -- Sim --> D[Aplica desconto de 10%<br/>final ← valor × 0,9]
    C -- Não --> E[Sem desconto<br/>final ← valor]
    D --> F[Escreva valor final]
    E --> F
    F --> G([Fim])
```

---

## Pseudocódigo correspondente

```
Início
    Declare valor, final: real

    Leia valor

    Se valor > 100 então
        final ← valor × 0,9
    Senão
        final ← valor

    Escreva final
Fim
```