// ============================================================
// Exercício 8 — Sistema de notas (array multidimensional)
// ============================================================

FUNCTION Main()
   LOCAL aAlunos := {}        // Array principal (externo)
   LOCAL nN                   // Quantidade de alunos
   LOCAL nI                   // Contador do loop
   LOCAL cNome                // Nome do aluno
   LOCAL cNota                // Nota (entrada como string)
   LOCAL aAluno               // Array de um aluno (linha)
   LOCAL nMedia               // Média calculada
   LOCAL cValor               // Valor digitado pelo usuário
   
   // ----------------------------------------------------------
   // Passo 1: Pergunta quantos alunos
   // ----------------------------------------------------------
   QOut("=========================================")
   QOut("   SISTEMA DE NOTAS - TURMA")
   QOut("=========================================")
   QOut("")
   
   ACCEPT "Quantos alunos? " TO cValor
   nN := Val(cValor)
   QOut("")
   
   // ----------------------------------------------------------
   // Passo 2: Loop para cadastrar cada aluno
   // ----------------------------------------------------------
   FOR nI := 1 TO nN
      QOut("--- Aluno " + Str(nI, 2) + " ---")
      
      aAluno := {}   // Cria um array vazio para cada aluno
      
      ACCEPT "Nome do aluno: " TO cNome
      AADD(aAluno, cNome)   // Posição 1: Nome
      
      ACCEPT "Nota 1: " TO cNota
      AADD(aAluno, Val(cNota))   // Posição 2: Nota 1
      
      ACCEPT "Nota 2: " TO cNota
      AADD(aAluno, Val(cNota))   // Posição 3: Nota 2
      
      ACCEPT "Nota 3: " TO cNota
      AADD(aAluno, Val(cNota))   // Posição 4: Nota 3
      
      ACCEPT "Nota 4: " TO cNota
      AADD(aAluno, Val(cNota))   // Posição 5: Nota 4
      
      AADD(aAlunos, aAluno)   // Adiciona o aluno no array principal
      QOut("")
   NEXT
   
   // ----------------------------------------------------------
   // Passo 3: Exibe aprovados e reprovados
   // ----------------------------------------------------------
   QOut("=========================================")
   QOut("        RESULTADO FINAL")
   QOut("=========================================")
   QOut("")
   
   // Exibe APROVADOS (média >= 7.0)
   QOut("=== APROVADOS ===")
   FOR nI := 1 TO Len(aAlunos)
      nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + aAlunos[nI][4] + aAlunos[nI][5]) / 4
      IF nMedia >= 7
         QOut(aAlunos[nI][1] + " - Média: " + Str(nMedia, 5, 1))
      ENDIF
   NEXT
   
   QOut("")
   
   // Exibe REPROVADOS (média < 7.0)
   QOut("=== REPROVADOS ===")
   FOR nI := 1 TO Len(aAlunos)
      nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + aAlunos[nI][4] + aAlunos[nI][5]) / 4
      IF nMedia < 7
         QOut(aAlunos[nI][1] + " - Média: " + Str(nMedia, 5, 1))
      ENDIF
   NEXT
   
   QOut("")
   QOut("=========================================")
   
RETURN NIL