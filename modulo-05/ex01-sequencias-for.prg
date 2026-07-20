// Exercício 1 — Sequências com FOR/NEXT
FUNCTION Main()
   LOCAL nI

   // a) 1 a 100
   FOR nI := 1 TO 100
      QOut(Str(nI))
   NEXT

   QOut("")

   // b) -50 a 50
   FOR nI := -50 TO 50
      QOut(Str(nI))
   NEXT

   QOut("")

   // c) 80 a 5 decrescente (STEP -1)
   FOR nI := 80 TO 5 STEP -1
      QOut(Str(nI))
   NEXT

RETURN NIL
