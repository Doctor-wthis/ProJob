
unit ObispoCadena;

interface

type
  Cadena=class
    private
      longitud:integer;
      caracteres:array[1..100] of char;
    public
      constructor Create;
      procedure Anadir(c:char);
      procedure Modificar(pos:integer;c:char);
      procedure Insertar(pos:integer;c:char);
      procedure Eliminar(pos:integer);
  end;

implementation

constructor Cadena.Create;
begin
  longitud:=0;
end;

procedure Cadena.Anadir(c: char);
begin
  longitud:=longitud+1;
  caracteres[longitud]:=c;
end;

procedure Cadena.Modificar(pos: integer;c: char);
begin
  caracteres[pos]:=c;
end;

procedure Cadena.Insertar(pos: Integer; c: Char);
var
  i:integer;
begin
  longitud:=longitud+1;
  i:=longitud;
  While i>pos do
  begin
    caracteres[i]:=caracteres[i-1];
    i:=i-1;
  end;
  caracteres[pos]:=c;
end;

procedure Cadena.Eliminar(pos: Integer);
var
  i: Integer;
begin
  for i := pos to longitud-1 do
    caracteres[i]:=caracteres[i+1];
  longitud:=longitud-1;
end;

end.
