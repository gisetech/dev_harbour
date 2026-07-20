REQUEST HB_CODEPAGE_PT850 
REQUEST HB_LANG_PT 

Function Main()

    Local cNome   := "João da Silva"
    Local cCidade := "São Paulo"
    Local cCurso  := "Harbour / ADVPL"

    hb_cdpSelect( "PT850" )
    hb_langSelect( "PT" )


    QOut("=====================")
    QOut("Ficha de Apresentação")
    QOut("======================")
    QOut("Nome   : " + cNome)
    QOut("Cidade : " + cCidade)
    QOut("Curso  : " + cCurso)
    QOut("=======================")

Return NIL