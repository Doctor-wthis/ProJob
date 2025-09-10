program ProJob;

uses
  Vcl.Forms,
  ObispoForm in 'ObispoForm.pas' {Form1},
  ObispoNumero in 'ObispoNumero.pas',
  Mate in 'Mate.pas',
  ObispoCadena in 'ObispoCadena.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
