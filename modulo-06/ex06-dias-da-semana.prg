FUNCTION Main()
      LOCAL aDias := {"Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"}
      LOCAL cNumero, nNumero

      ACCEPT "Número do dia (1-7): " TO cNumero
      nNumero := Val(cNumero)

      IF nNumero < 1 .OR. nNumero > 7
         QOut("Número inválido! Digite de 1 a 7.")
      ELSE
         QOut("Dia: " + aDias[nNumero])
      ENDIF

   RETURN NIL