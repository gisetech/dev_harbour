// Exercício 3 — Máquina de soma
FUNCTION Main()
   LOCAL cInput
   LOCAL nValor
   LOCAL nTotal := 0   // acumulador
   LOCAL nQtd := 0     // contador

   WHILE .T.
      ACCEPT "Digite um valor (0 para encerrar): " TO cInput
      nValor := Val(cInput)

      IF nValor == 0
         EXIT
      ENDIF

      nTotal += nValor
      nQtd++
   ENDDO

   QOut("Soma total: " + Str(nTotal, 10, 2))
   QOut("Quantidade de valores: " + Str(nQtd))

RETURN NIL