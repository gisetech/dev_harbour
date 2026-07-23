FUNCTION FatorialN(nN)
      LOCAL nI, nFat := 1

      FOR nI := 1 TO nN
         nFat := nFat * nI
      NEXT

   RETURN nFat

FUNCTION EhPrimo(nN)
      LOCAL nI, lPrimo := .T.

      IF nN < 2
         RETURN .F.
      ENDIF

      FOR nI := 2 TO nN - 1
         IF Mod(nN, nI) == 0
            lPrimo := .F.
            EXIT
         ENDIF
      NEXT

   RETURN lPrimo

FUNCTION MDC(nA, nB)
      LOCAL nResto

      WHILE nB <> 0
         nResto := Mod(nA, nB)
         nA := nB
         nB := nResto
      ENDDO

   RETURN nA

FUNCTION MMC(nA, nB)
   RETURN (nA * nB) / MDC(nA, nB)