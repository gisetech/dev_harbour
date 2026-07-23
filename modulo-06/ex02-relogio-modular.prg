// ============================================
// relogio.prg — Relógio digital modular
// ============================================

FUNCTION Main()
   LOCAL nI, cHora

   FOR nI := 1 TO 30
      cHora := ObterHora()          // 1º: busca a hora
      cHora := FormatarHora(cHora)  // 2º: formata a hora
      ExibirHora(cHora)             // 3º: exibe na tela
   NEXT

RETURN NIL


// --------------------------------------------
// ObterHora() — retorna a hora atual do sistema
// --------------------------------------------
FUNCTION ObterHora()
RETURN Time()


// --------------------------------------------
// FormatarHora(cHora) — devolve a string HH:MM:SS
// --------------------------------------------
FUNCTION FormatarHora(cHora)
   LOCAL cHH, cMM, cSS

   cHH := SubStr(cHora, 1, 2)
   cMM := SubStr(cHora, 4, 2)
   cSS := SubStr(cHora, 7, 2)

RETURN cHH + ":" + cMM + ":" + cSS


// --------------------------------------------
// ExibirHora(cHora) — exibe a hora na tela
// --------------------------------------------
FUNCTION ExibirHora(cHora)
   QOut("Hora atual: " + cHora)
RETURN NIL