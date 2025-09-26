
unit ObispoMate;

interface

Function Potencia(base,exponente : byte) : cardinal;
Function Factorial(num : byte) : cardinal;

implementation

Function Potencia(base,exponente : byte) : cardinal;
var
  i : byte;
  pot : cardinal;
begin
  pot := 1;
  for i := 1 to exponente do
    pot := pot * base;
  Potencia := pot;
end;

Function Factorial(num : byte) : cardinal;
var
  i : byte;
  fact : cardinal;
begin
  fact := 1;
  for i := 1 to num do
    fact := fact * i;
  Factorial := fact;
end;

end.
