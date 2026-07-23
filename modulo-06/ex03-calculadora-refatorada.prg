// ============================================================
// Exercício 3 - Calculadora Refatorada
// ============================================================

FUNCTION Main()
   LOCAL nA, nB := 0
   LOCAL cOp
   LOCAL nResultado

   nA := LerNumero("Valor A: ")
   cOp := LerOperacao()

   IF cOp != "R"
      nB := LerNumero("Valor B: ")
   ENDIF

   IF Calcular(nA, nB, cOp, @nResultado)
      MostrarResultado(nResultado)
   ENDIF

RETURN NIL


// ------------------------------------------------------------
// Lê um número
// ------------------------------------------------------------
FUNCTION LerNumero(cMensagem)
   LOCAL cValor

   ACCEPT cMensagem TO cValor

RETURN Val(cValor)


// ------------------------------------------------------------
// Lê a operação
// ------------------------------------------------------------
FUNCTION LerOperacao()
   LOCAL cOp

   ACCEPT "Operação (+, -, *, /, ^, R): " TO cOp

RETURN Upper(AllTrim(cOp))


// ------------------------------------------------------------
// Calcula e devolve .T. ou .F.
// ------------------------------------------------------------
FUNCTION Calcular(nA, nB, cOp, nResultado)

   DO CASE

   CASE cOp == "+"
      nResultado := nA + nB

   CASE cOp == "-"
      nResultado := nA - nB

   CASE cOp == "*"
      nResultado := nA * nB

   CASE cOp == "/"
      IF nB == 0
         QOut("Erro: divisão por zero!")
         RETURN .F.
      ENDIF
      nResultado := nA / nB

   CASE cOp == "^"
      nResultado := nA ** nB

   CASE cOp == "R"
      IF nA < 0
         QOut("Erro: não é possível calcular raiz de número negativo!")
         RETURN .F.
      ENDIF
      nResultado := Sqrt(nA)

   OTHERWISE
      QOut("Operação inválida!")
      RETURN .F.

   ENDCASE

RETURN .T.


// ------------------------------------------------------------
// Exibe o resultado
// ------------------------------------------------------------
PROCEDURE MostrarResultado(nResultado)

   QOut("Resultado: " + Str(nResultado, 12, 2))

RETURN