FUNCTION Main()
   LOCAL cCompleta := "Harbour"
   LOCAL cParcial  := "Harb"

   QOut("cCompleta = cParcial  -> " + If(cCompleta = cParcial, "Verdadeiro", "Falso"))
   QOut("cCompleta == cParcial -> " + If(cCompleta == cParcial, "Verdadeiro", "Falso"))

RETURN NIL