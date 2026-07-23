FUNCTION Main()
      SET PROCEDURE TO matematica.prg

      QOut("Fatorial de 5: " + Str(FatorialN(5)))
      QOut("7 é primo? " + IIF(EhPrimo(7), "Sim", "Não"))
      QOut("MDC(12,18): " + Str(MDC(12, 18)))
      QOut("MMC(4,6): " + Str(MMC(4, 6)))

   RETURN NIL