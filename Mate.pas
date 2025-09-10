
unit Mate;

interface

function Potencia(base,exponente:cardinal):cardinal;
function Factorial(num:byte):cardinal;
function Absoluto(num:integer):cardinal;


implementation

// 2^4 --> 16
function Potencia(base,exponente:cardinal):cardinal;
var
  pot:cardinal;
  i:byte;
begin
  pot:=1;
  for i := 1 to exponente do
    pot:=pot*base;
  Potencia:=pot;
end;

// 3! --> 6
function Factorial(num:byte):cardinal;
var
  fact:cardinal;
  i:byte;
begin
  fact:=1;
  for i := 1 to num do
    fact:=fact*i;
  Factorial:=fact;
end;

// |-9 | --> 9
function Absoluto(num:integer):cardinal;
begin
  if num<0 then
    Absoluto:=num*-1
  else
    Absoluto:=num;
end;


end.
