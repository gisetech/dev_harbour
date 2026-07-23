// ============================================================
// Exercício 9 — Mini-carrinho de compras
// ============================================================

FUNCTION Main()
   LOCAL aCarrinho := {}     // Array do carrinho (externo)
   LOCAL cNome               // Nome do produto
   LOCAL cPreco              // Preço (entrada como string)
   LOCAL cContinuar          // Continuar adicionando?
   LOCAL aItem               // Array de um item
   LOCAL nTotal := 0         // Total da compra
   LOCAL nI                  // Contador do loop
   
   // ----------------------------------------------------------
   // Passo 1: Loop para adicionar itens (WHILE com EXIT)
   // ----------------------------------------------------------
   QOut("=========================================")
   QOut("   CARRINHO DE COMPRAS")
   QOut("=========================================")
   QOut("")
   QOut("Digite os produtos (digite 'FIM' no nome para encerrar)")
   QOut("")
   
   WHILE .T.
      ACCEPT "Nome do produto: " TO cNome
      
      // Opção extra: sai se digitar FIM
      IF Upper(cNome) == "FIM"
         EXIT
      ENDIF
      
      ACCEPT "Preço: R$ " TO cPreco
      
      // Cria o item como array {nome, preco}
      aItem := {cNome, Val(cPreco)}
      
      // Adiciona no carrinho
      AADD(aCarrinho, aItem)
      
      QOut("Item adicionado!")
      QOut("")
      
      ACCEPT "Adicionar outro item? (S/N): " TO cContinuar
      IF Upper(cContinuar) <> "S"
         EXIT
      ENDIF
      
      QOut("")
   ENDDO
   
   // ----------------------------------------------------------
   // Passo 2: Exibe a lista e calcula o total
   // ----------------------------------------------------------
   IF Len(aCarrinho) == 0
      QOut("")
      QOut("Carrinho vazio!")
      RETURN NIL
   ENDIF
   
   QOut("")
   QOut("=========================================")
   QOut("   RESUMO DO CARRINHO")
   QOut("=========================================")
   QOut("")
   
   // Exibe os itens e acumula o total
   FOR nI := 1 TO Len(aCarrinho)
      QOut(Str(nI, 2) + ". " + aCarrinho[nI][1] + " - R$ " + Str(aCarrinho[nI][2], 8, 2))
      nTotal := nTotal + aCarrinho[nI][2]
   NEXT
   
   QOut("")
   QOut("-----------------------------------------")
   QOut("TOTAL: R$ " + Str(nTotal, 10, 2))
   QOut("=========================================")
   
   // ----------------------------------------------------------
   // Passo 3 (bônus): Ordena por preço (opcional)
   // ----------------------------------------------------------
   QOut("")
   QOut("--- Itens ordenados por preço (crescente) ---")
   
   // Cria uma cópia para não perder a ordem original
   LOCAL aOrdenado := AClone(aCarrinho)
   ASort(aOrdenado, , , {|x,y| x[2] < y[2]})
   
   FOR nI := 1 TO Len(aOrdenado)
      QOut(Str(nI, 2) + ". " + aOrdenado[nI][1] + " - R$ " + Str(aOrdenado[nI][2], 8, 2))
   NEXT
   
   QOut("")
   QOut("=========================================")
   
RETURN NIL