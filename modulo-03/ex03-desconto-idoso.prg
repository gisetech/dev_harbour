REQUEST HB_CODEPAGE_UTF8

FUNCTION Main()
   LOCAL cNome, cNascStr, dNasc
   LOCAL nIdade, nPreco, nDesconto, nTotal

   HB_CDPSELECT("UTF8")

   ACCEPT "Nome: " TO cNome
   ACCEPT "Data de nascimento (DD/MM/AAAA): " TO cNascStr
   dNasc := CtoD(cNascStr)

   nIdade := (Date() - dNasc) / 365

   ACCEPT "Preço do produto: " TO nPreco
   nPreco := Val(nPreco)

   IF nIdade >= 60
      nDesconto := nPreco * 0.125
   ELSE
      nDesconto := 0
   ENDIF

   nTotal := nPreco - nDesconto

   QOut("=== Resumo ===")
   QOut("Cliente : " + cNome)
   QOut("Idade   : " + Str(Int(nIdade)) + " anos")
   QOut("Preço   : R$ " + Str(nPreco, 8, 2))
   QOut("Desconto: R$ " + Str(nDesconto, 8, 2))
   QOut("Total   : R$ " + Str(nTotal, 8, 2))

RETURN NIL