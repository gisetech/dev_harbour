// Exercício 6 — Desafio: jogo "Adivinhe o número"
FUNCTION Main()
   LOCAL nSecreto := HB_RandomInt(1, 100)
   LOCAL cInput
   LOCAL nPalpite
   LOCAL nI
   LOCAL lAcertou := .F.

   QOut("=== Adivinhe o número (1 a 100) ===")
   QOut("Você tem 7 tentativas.")

   FOR nI := 1 TO 7
      ACCEPT "Tentativa " + Str(nI) + " - Seu palpite: " TO cInput
      nPalpite := Val(cInput)

      IF nPalpite == nSecreto
         lAcertou := .T.
         EXIT
      ELSEIF nPalpite < nSecreto
         QOut("O número secreto é MAIOR.")
      ELSE
         QOut("O número secreto é MENOR.")
      ENDIF
   NEXT

   QOut("")
   IF lAcertou
      QOut("Parabéns! Você acertou o número " + Str(nSecreto) + " na tentativa " + Str(nI))
   ELSE
      QOut("Suas tentativas acabaram. O número secreto era " + Str(nSecreto))
   ENDIF

RETURN NIL
