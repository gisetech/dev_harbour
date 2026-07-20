// Exercício 2 — Loop indefinido: o dobro
FUNCTION Main()
   LOCAL cInput
   LOCAL nValor

   WHILE .T.
      ACCEPT "Digite um valor (0 ou negativo para sair): " TO cInput
      nValor := Val(cInput)

      IF nValor <= 0
         EXIT
      ENDIF

      QOut("O dobro de " + Str(nValor) + " é " + Str(nValor * 2))
   ENDDO

RETURN NIL