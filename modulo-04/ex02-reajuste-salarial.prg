// ============================================================
// Exercício 2 - Módulo 4
// Reajuste salarial por faixas:
//   até 1.000,00           -> 15%
//   1.000,01 a 2.000,00    -> 12%
//   2.000,01 a 4.000,00    ->  8%
//   acima de 4.000,00      ->  5%
// ============================================================

FUNCTION Main()
   LOCAL nSalario, nReajuste, nNovoSalario

   ACCEPT "Salário atual: R$ " TO nSalario
   nSalario := Val(nSalario)

   IF nSalario <= 1000
      nReajuste := 0.15
   ELSEIF nSalario <= 2000
      nReajuste := 0.12
   ELSEIF nSalario <= 4000
      nReajuste := 0.08
   ELSE
      nReajuste := 0.05
   ENDIF

   nNovoSalario := nSalario * (1 + nReajuste)

   QOut("Salário atual : R$ " + Str(nSalario, 10, 2))
   QOut("Reajuste      : "    + Str(nReajuste * 100, 5, 1) + "%")
   QOut("Novo salário  : R$ " + Str(nNovoSalario, 10, 2))

RETURN NIL
