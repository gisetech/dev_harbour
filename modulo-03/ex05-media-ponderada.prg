REQUEST HB_CODEPAGE_UTF8


FUNCTION Main()
   LOCAL nN1, nN2, nN3, nN4, nMedia

   HB_CDPSELECT("UTF8")

   INPUT "Nota do 1º bimestre: " TO nN1
   INPUT "Nota do 2º bimestre: " TO nN2
   INPUT "Nota do 3º bimestre: " TO nN3
   INPUT "Nota do 4º bimestre: " TO nN4

   nMedia := (nN1 * 1 + nN2 * 2 + nN3 * 3 + nN4 * 4) / (1 + 2 + 3 + 4)

   QOut("Média ponderada: " + Str(nMedia, 10, 2))

RETURN NIL
