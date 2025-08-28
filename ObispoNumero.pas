unit ObispoNumero;

interface

type
  Numero = class
    private
      value:cardinal;
    public
      constructor Create;
      procedure setValue(num:byte);
      function getValue:cardinal;
  end;

implementation

constructor Numero.Create;
begin
  value:=0;
end;

procedure Numero.setValue(num:byte);
begin
  value:=num;
end;

function Numero.getValue: Cardinal;
begin
  getValue:=value;
end;

end.
