// ============================================================
// Exercício 7 — Estatísticas de 10 números
// ============================================================

FUNCTION Main()
   LOCAL aV := {}           // Array vazio para armazenar os números
   LOCAL nI                 // Contador do loop
   LOCAL cValor             // Entrada do usuário (string)
   LOCAL nSoma := 0         // Acumulador para soma
   LOCAL nMedia             // Média calculada
   
   // ----------------------------------------------------------
   // Passo 1: Preenche o array com 10 números usando AADD
   // ----------------------------------------------------------
   QOut("=========================================")
   QOut("   ESTATÍSTICAS DE 10 NÚMEROS")
   QOut("=========================================")
   QOut("")
   
   FOR nI := 1 TO 10
      ACCEPT "Digite o " + Str(nI, 2) + "º número: " TO cValor
      AADD(aV, Val(cValor))   // Converte para número e adiciona
   NEXT
   
   // ----------------------------------------------------------
   // Passo 2: Ordena o array em ordem crescente
   // ----------------------------------------------------------
   ASORT(aV)
   
   // ----------------------------------------------------------
   // Passo 3: Exibe os números ordenados
   // ----------------------------------------------------------
   QOut("")
   QOut("--- NÚMEROS ORDENADOS ---")
   FOR nI := 1 TO Len(aV)
      QOut(Str(nI, 2) + "º: " + Str(aV[nI], 10, 2))
   NEXT
   
   // ----------------------------------------------------------
   // Passo 4: Calcula a soma e a média
   // ----------------------------------------------------------
   FOR nI := 1 TO Len(aV)
      nSoma := nSoma + aV[nI]
   NEXT
   nMedia := nSoma / Len(aV)
   
   // ----------------------------------------------------------
   // Passo 5: Exibe as estatísticas
   // ----------------------------------------------------------
   QOut("")
   QOut("--- ESTATÍSTICAS ---")
   QOut("Quantidade de números: " + Str(Len(aV)))
   QOut("Soma total: " + Str(nSoma, 12, 2))
   QOut("Média: " + Str(nMedia, 10, 2))
   QOut("Menor valor: " + Str(aV[1], 10, 2))           // Primeiro após ordenar
   QOut("Maior valor: " + Str(aV[Len(aV)], 10, 2))    // Último após ordenar
   QOut("")
   QOut("=========================================")
   
RETURN NIL