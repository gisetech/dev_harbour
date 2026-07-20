FUNCTION Main()
   LOCAL cNomeFunc := "Maria Oliveira"
   LOCAL nSalario  := 3500.50
   LOCAL lAtivo    := .T.
   LOCAL dAdmissao := CtoD("15/03/2021")
   LOCAL nCodDepto := 12

   QOut("Nome: " + cNomeFunc)
   QOut("Salário: " + Str(nSalario, 10, 2))
   QOut("Ativo: " + If(lAtivo, "Sim", "Não"))
   QOut("Admissão: " + DToC(dAdmissao))
   QOut("Depto: " + Str(nCodDepto))

RETURN NIL