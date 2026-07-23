// ============================================================
// Exercício 3 - Módulo 4
// Calculadora com DO CASE:
//   +  -  *  /  ^ (potência)  R (raiz quadrada de A)
// Trata divisão por zero e operação inválida.
// ============================================================

FUNCTION Main()
   LOCAL nA, nB, cOp, cB

   ACCEPT "Valor A: " TO nA
   nA := Val(nA)

   ACCEPT "Operação (+, -, *, /, ^, R): " TO cOp
   cOp := Upper(AllTrim(cOp))

   // Raiz quadrada usa só o valor A, as demais precisam de B
   IF cOp != "R"
      ACCEPT "Valor B: " TO cB
      nB := Val(cB)
   ENDIF

   DO CASE
   CASE cOp == "+"
      QOut("Resultado: " + Str(nA + nB, 12, 2))

   CASE cOp == "-"
      QOut("Resultado: " + Str(nA - nB, 12, 2))

   CASE cOp == "*"
      QOut("Resultado: " + Str(nA * nB, 12, 2))

   CASE cOp == "/"
      IF nB == 0
         QOut("Erro: divisão por zero!")
      ELSE
         QOut("Resultado: " + Str(nA / nB, 12, 2))
      ENDIF

   CASE cOp == "^"
      QOut("Resultado: " + Str(nA ** nB, 12, 2))

   CASE cOp == "R"
      IF nA < 0
         QOut("Erro: não é possível calcular raiz de número negativo!")
      ELSE
         QOut("Resultado: " + Str(Sqrt(nA), 12, 2))
      ENDIF

   OTHERWISE
      QOut("Operação inválida: " + cOp)

   ENDCASE

RETURN NIL
