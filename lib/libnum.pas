
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
    procedure Modificar(dig,pos:byte);
    procedure SeparaPares;
    procedure Limpiar;
    procedure OrdenAscend;

    function SumaDigitos:cardinal;
    function NumMayor:byte;
    function NumMenor:byte;
    function Frecuencia(num:byte):cardinal;
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

// dig := 0 ; pos := 3
// 9746 --> 9046
procedure Numero.Modificar(dig,pos:byte);
begin
  value:=((value div Potencia(10,pos))*10+dig)*Potencia(10,pos-1)+value mod Potencia(10,pos-1);
end;

procedure Numero.SeparaPares;
var
  i:byte;
  d:byte;
begin
  for i:=1 to NumDig do
  begin
    d=Digito(i);
    if d mod 2=0 then
    begin
      EliminarPos(i);
      Anadir(d);
    end;
  end;
end;

procedure Numero.OrdenAscend;
begin
  
end;

// num := 2
// 2472102 --> 3
function Numero.Frecuencia(num:byte):cardinal;
var
  i:byte;
  fre:cardinal;
begin
  fre:=0;
  for i:=1 to NumDig do
    if Digito(i)=num then
      fre:=fre+1;
  Frecuencia:=fre;
end;

// 9746 --> 9
function Numero.NumMayor:byte;
var
  i:byte;
  mayor:byte;
begin
  mayor:=0;
  for i:=1 to NumDig do
    if Digito(i)>mayor then
      mayor:=Digito(i);
  NumMayor:=mayor;
end;

// 9746 --> 4
function Numero.NumMenor:byte;
var
  i:byte;
  menor:byte;
begin
  menor:=9;
  for i:=1 to NumDig do
    if Digito(i)<menor then
      menor:=Digito(i);
  NumMenor:=menor;
end;

function SumaDigitos:cardinal;
var
  i:byte;
  suma:cardinal;
begin
  suma:=0;
  for i:=1 to NumDig do
    suma:=suma+Digito(i);
  SumaDigitos:=suma;
end;

end.