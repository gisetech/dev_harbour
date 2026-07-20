// Exercício 5 — Loop de programa
FUNCTION Main()
   LOCAL cNome
   LOCAL cDisc
   LOCAL cInput
   LOCAL cResp
   LOCAL nNota1, nNota2
   LOCAL nMedia

   WHILE .T.

      WHILE .T.
         ACCEPT "Nome do aluno: " TO cNome
         IF Len(Trim(cNome)) > 0
            EXIT
         ENDIF
         QOut("Nome não pode ser vazio!")
      ENDDO

      WHILE .T.
         ACCEPT "Disciplina (3 letras, ex: MAT): " TO cDisc
         IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
            EXIT
         ENDIF
         QOut("Disciplina inválida! Digite 3 letras maiúsculas.")
      ENDDO

      WHILE .T.
         ACCEPT "Nota 1 (0 a 10): " TO cInput
         nNota1 := Val(cInput)
         IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
         ENDIF
         QOut("Nota inválida! Digite um valor entre 0 e 10.")
      ENDDO

      WHILE .T.
         ACCEPT "Nota 2 (0 a 10): " TO cInput
         nNota2 := Val(cInput)
         IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
         ENDIF
         QOut("Nota inválida! Digite um valor entre 0 e 10.")
      ENDDO

      nMedia := (nNota1 + nNota2) / 2

      QOut("")
      QOut("=== Dados do aluno ===")
      QOut("Nome      : " + AllTrim(cNome))
      QOut("Disciplina: " + cDisc)
      QOut("Nota 1    : " + Str(nNota1, 5, 1))
      QOut("Nota 2    : " + Str(nNota2, 5, 1))
      QOut("Média     : " + Str(nMedia, 5, 1))
      QOut("")

      ACCEPT "Deseja calcular outro? (S/N): " TO cResp

      IF Upper(cResp) <> "S"
         EXIT
      ENDIF

   ENDDO

   QOut("Encerrando o programa...")

RETURN NIL
