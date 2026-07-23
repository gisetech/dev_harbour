// ============================================================
// Exercício 4 - Módulo 4
// Converte o número do mês (1 a 12) no nome correspondente.
// Fora do intervalo -> "Mês inválido".
// ============================================================

FUNCTION Main()
   LOCAL nMes, cNomeMes
   LOCAL aMeses := { "Janeiro", "Fevereiro", "Março", "Abril", ;
                      "Maio", "Junho", "Julho", "Agosto",       ;
                      "Setembro", "Outubro", "Novembro", "Dezembro" }

   ACCEPT "Número do mês (1-12): " TO nMes
   nMes := Val(nMes)

   IF nMes < 1 .OR. nMes > 12
      QOut("Mês inválido")
      RETURN NIL
   ENDIF

   DO CASE
   CASE nMes == 1  ; cNomeMes := "Janeiro"
   CASE nMes == 2  ; cNomeMes := "Fevereiro"
   CASE nMes == 3  ; cNomeMes := "Março"
   CASE nMes == 4  ; cNomeMes := "Abril"
   CASE nMes == 5  ; cNomeMes := "Maio"
   CASE nMes == 6  ; cNomeMes := "Junho"
   CASE nMes == 7  ; cNomeMes := "Julho"
   CASE nMes == 8  ; cNomeMes := "Agosto"
   CASE nMes == 9  ; cNomeMes := "Setembro"
   CASE nMes == 10 ; cNomeMes := "Outubro"
   CASE nMes == 11 ; cNomeMes := "Novembro"
   CASE nMes == 12 ; cNomeMes := "Dezembro"
   ENDCASE

   QOut("Mês " + Str(nMes, 2) + ": " + cNomeMes)

RETURN NIL
