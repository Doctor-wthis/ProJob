
{$mode objfpc}{$H+}
unit libnum;
  
interface

uses
  SysUtils, Math;

type
  Numero=class
  private
    value:cardinal;
  public
    constructor Create;

    procedure SetNumero(num:cardinal);
    procedure Anadir(dig:byte);
    procedure EliminarPos(pos:byte);
    procedure EliminarDig(num:byte);
    procedure Insertar(num,pos:byte);

    function GetNumero:cardinal;
    function Digito(pos:byte):byte;
    function NumDig:cardinal;
    function Potencia(base,exponente:cardinal):cardinal;
    function Factorial(num:byte):cardinal;
    function Absoluto(num:integer):cardinal;
  end;

implementation
  
constructor Numero.Create;
begin
  value:=0;
end;

procedure Numero.SetNumero(num:cardinal);
begin
  value:=num;
end;

function Numero.GetNumero:cardinal;
begin
  GetNumero:=value;
end;

// pos := 3
// 2746 --> 7
function Numero.Digito(pos:byte):byte;
begin
  Digito:=(value div Potencia(10,pos-1)) mod 10;
end;
  
// 23147 --> 5
function Numero.NumDig:cardinal;
begin
  Numdig:=trunc(log10(value))+1;
end;

// dig := 6
// 974 --> 9746
procedure Numero.Anadir(dig:byte);
begin
  value:=value*10+dig;
end;

// pos := 3
// 97546 --> 9746
procedure Numero.EliminarPos(pos:byte);
begin
  value:=((value div Potencia(10,pos))*Potencia(10,pos-1))+value mod Potencia(10,pos-1);
end;

// num := 3
// 397346 --> 9746
procedure Numero.EliminarDig(num:byte);
var
  i:byte;
begin
  i:=1;
  while i<=NumDig do
  begin
    if Digito(i)=num then
      EliminarPos(i)
    else
      i:=i+1;
  end;
end;

// num := 2 ; pos := 3
// 9746 --> 97246
procedure Numero.Insertar(num,pos:byte);
begin
  value:=((value div Potencia(10,pos-1)*10+num)*Potencia(10,pos-1))+value mod Potencia(10,pos-1);
end;

// 2^4 --> 16
function Numero.Potencia(base,exponente:cardinal):cardinal;
var
  pot:cardinal;
  i:byte;
begin
  pot:=1;
  for i:=1 to exponente do
    pot:=pot*base;
  Potencia:=pot;
end;

// 3! --> 6
function Numero.Factorial(num:byte):cardinal;
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
function Numero.Absoluto(num:integer):cardinal;
begin
  if num<0 then
    Absoluto:=num*-1
  else
    Absoluto:=num;
end;

end.