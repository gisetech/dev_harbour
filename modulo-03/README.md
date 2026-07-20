# Exercícios — Módulo 3: Variáveis, tipos e operadores

Jornada DEV START · Programa START — TOTVS Paulista

Todos os exercícios são em **Harbour puro**, no VSCode.

**Fluxo de sempre:** escrever → `hbmk2 arquivo.prg` → `arquivo.exe`.

Use os prefixos de tipo (`c`, `n`, `l`, `d`, `a`) e converta com `Val()` o que vier do `ACCEPT`.

Não trave sozinho(a): dúvida é no `#duvidas-parte1-harbour`. 🤝

---

## Exercício 1 — Declarando com os prefixos certos

Declare variáveis (com valores de exemplo) para armazenar os dados abaixo, usando os prefixos de tipo corretos:

- Nome de um funcionário
- Salário bruto
- Se está ativo ou não
- Data de admissão
- Código do departamento

> **Dica:** pense no tipo de cada dado antes de escolher o prefixo (`c`, `n`, `l`, `d`...).

---

## Exercício 2 — Calculando com fórmulas

Escreva um programa que leia os valores do usuário e calcule e exiba:

a. A área de um círculo com raio informado (π × r²)
b. A hipotenusa de um triângulo retângulo (√(a² + b²))
c. O índice de massa corporal (IMC = peso / altura²)

> **Dica:** use `#define PI 3.14159`, a função `Sqrt()` para a raiz e `^` para elevar ao quadrado. Exiba os resultados com `Str(valor, 10, 2)`.

---

## Exercício 3 — Programa completo com desconto

Escreva um programa que leia o nome, a data de nascimento e o preço de um produto. Se a pessoa tiver mais de 60 anos, aplique 12,5% de desconto. Exiba um resumo formatado (cliente, idade, preço, desconto e total).

> **Dica:** calcule a idade com `(Date() - dNasc) / 365` e proteja a exibição usando `Int()` na idade.

---

## Exercício 4 — `=` vs `==`

Explique e demonstre com código a diferença entre `=` e `==` em Harbour. Escreva um exemplo em que o resultado dos dois é diferente.

> **Dica:** compare uma string longa com um pedaço do seu começo (ex.: `"Harbour"` e `"Harb"`).

---

## Exercício 5 — Desafio: média ponderada

Escreva um programa que leia 4 notas bimestrais de um aluno, calcule a média ponderada (pesos: 1, 2, 3, 4) e exiba a média com 2 casas decimais.

> **Lembre:** média ponderada = `(N1*1 + N2*2 + N3*3 + N4*4) / (1+2+3+4)`.


