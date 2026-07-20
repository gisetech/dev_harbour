#define PI 3.14159
REQUEST HB_CODEPAGE_UTF8

FUNCTION Main()

   LOCAL nRaio, nArea
   LOCAL nA, nB, nHip
   LOCAL nPeso, nAltura, nImc

   HB_CDPSELECT("UTF8")

   // a. Área do círculo
   INPUT "Raio do círculo: " TO nRaio
   nArea := PI * nRaio ^ 2
   QOut("Área: " + Str(nArea, 10, 2))

   // b. Hipotenusa
   INPUT "Cateto A: " TO nA
   INPUT "Cateto B: " TO nB
   nHip := Sqrt(nA ^ 2 + nB ^ 2)
   QOut("Hipotenusa: " + Str(nHip, 10, 2))

   // c. IMC
   INPUT "Peso (kg): " TO nPeso
   INPUT "Altura (m): " TO nAltura
   nImc := nPeso / (nAltura ^ 2)
   QOut("IMC: " + Str(nImc, 10, 2))

RETURN NIL