unit ObispoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ObispoNumero, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Numero1: TMenuItem;
    Numero2: TMenuItem;
    SetValue1: TMenuItem;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Anadir1: TMenuItem;
    Anadir2: TMenuItem;
    EliminarDigitos1: TMenuItem;
    Insertar1: TMenuItem;
    Insertar2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Numero2Click(Sender: TObject);
    procedure SetValue1Click(Sender: TObject);
    procedure Anadir1Click(Sender: TObject);
    procedure Anadir2Click(Sender: TObject);
    procedure EliminarDigitos1Click(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Insertar2Click(Sender: TObject);
  private
    obj:Numero;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Anadir1Click(Sender: TObject);
begin
  obj.Anadir(StrToInt(Edit3.Text));
end;

procedure TForm1.Anadir2Click(Sender: TObject);
begin
  obj.EliminarPos(StrToInt(Edit2.Text));
end;

procedure TForm1.EliminarDigitos1Click(Sender: TObject);
begin
  obj.EliminarDig(StrToInt(Edit3.Text));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  obj:=Numero.Create;
end;

procedure TForm1.Insertar1Click(Sender: TObject);
begin
  obj.Insertar(StrToInt(Edit3.Text),StrToInt(Edit2.Text));
end;

procedure TForm1.Insertar2Click(Sender: TObject);
begin
  obj.Modificar(StrToInt(Edit3.Text),StrToInt(Edit2.Text));
end;

procedure TForm1.Numero2Click(Sender: TObject);
begin
  Label1.Caption:=IntToStr(obj.GetValue);
end;

procedure TForm1.SetValue1Click(Sender: TObject);
begin
  obj.SetValue(StrToInt(Edit1.Text));
end;

end.
