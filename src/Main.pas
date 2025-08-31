
program Main;

uses
  SysUtils, libnum;

var
  x : cardinal;
  obj : Numero;
begin
  
  Write('Ingrese un numero entero: ');
  Readln(x);
  obj := Numero.Create();
  obj.SetNumero(x);

  Write('En construccion...');

  Readln;
end.