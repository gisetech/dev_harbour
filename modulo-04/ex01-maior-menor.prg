FUNCTION Main()
    LOCAL nA, nB

    // 1. Ler os dois valores
    ACCEPT "Digite o primeiro número: " TO nA
    ACCEPT "Digite o segundo número: " TO nB
    nA := Val(nA)
    nB := Val(nB)

    // 2. Comparar
    IF nA == nB
        QOut("Os dois números são iguais!")
    ELSE
        IF nA > nB
            QOut("O maior é: " + Str(nA))
            QOut("O menor é: " + Str(nB))
        ELSE
            QOut("O maior é: " + Str(nB))
            QOut("O menor é: " + Str(nA))
        ENDIF
    ENDIF

RETURN NIL