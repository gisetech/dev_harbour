# Exercício 2 — Pseudocódigo

Escreva em pseudocódigo um algoritmo para cada item:

a. Calcular a área de um retângulo (base × altura)
b. Verificar se um número é par ou ímpar
c. Encontrar o maior entre três números

Dica: use as palavras `Leia`, `Escreva`, `Se ... Senão` e o operador `←` para atribuir.

---

### a. Área do retângulo

```
Início
    Leia base
    Leia altura
    área ← base × altura
    Escreva área
Fim
```

---

### b. Par ou ímpar

```
Início
    Leia número
    resto ← número % 2
    Se resto = 0 então
        Escreva "par"
    Senão
        Escreva "ímpar"
Fim
```

*(o operador `%` dá o resto da divisão por 2 — se for 0, o número é par)*

---

### c. Maior entre três números

```
Início
    Leia a
    Leia b
    Leia c

    Se a ≥ b e a ≥ c então
        maior ← a
    Senão
        Se b ≥ a e b ≥ c então
            maior ← b
        Senão
            maior ← c

    Escreva maior
Fim
```