object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ProJob'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 216
    Top = 128
    Width = 121
    Height = 15
    Caption = 'Resultado'
  end
  object Label2: TLabel
    Left = 128
    Top = 61
    Width = 51
    Height = 15
    Caption = 'Posicion: '
  end
  object Label3: TLabel
    Left = 128
    Top = 90
    Width = 38
    Height = 15
    Caption = 'Digito: '
  end
  object Label4: TLabel
    Left = 128
    Top = 32
    Width = 50
    Height = 15
    Caption = 'Numero: '
  end
  object Label5: TLabel
    Left = 128
    Top = 208
    Width = 46
    Height = 15
    Caption = 'Cadena: '
  end
  object Label6: TLabel
    Left = 126
    Top = 248
    Width = 76
    Height = 15
    Caption = 'Posicion Char:'
  end
  object Label7: TLabel
    Left = 128
    Top = 288
    Width = 31
    Height = 15
    Caption = 'Char: '
  end
  object Label8: TLabel
    Left = 216
    Top = 328
    Width = 121
    Height = 17
    Caption = 'ResultadoCadena'
  end
  object Edit1: TEdit
    Left = 216
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 216
    Top = 61
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 216
    Top = 87
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 216
    Top = 205
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 216
    Top = 245
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 216
    Top = 285
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object MainMenu1: TMainMenu
    Left = 544
    Top = 16
    object Procedimientos1: TMenuItem
      Caption = 'Procedimientos'
      object SetValue1: TMenuItem
        Caption = 'Set Value'
        OnClick = SetValue1Click
      end
      object Anadir1: TMenuItem
        Caption = 'Anadir'
        OnClick = Anadir1Click
      end
      object Anadir2: TMenuItem
        Caption = 'Eliminar Posicion'
        OnClick = Anadir2Click
      end
      object EliminarDigito1: TMenuItem
        Caption = 'Eliminar Digito'
        OnClick = EliminarDigito1Click
      end
      object EliminarDigito2: TMenuItem
        Caption = 'Insertar'
        OnClick = EliminarDigito2Click
      end
      object Modificar1: TMenuItem
        Caption = 'Modificar'
        OnClick = Modificar1Click
      end
      object Modificar2: TMenuItem
        Caption = 'Separa Pares Impares'
        OnClick = Modificar2Click
      end
      object OrdenarAscendente1: TMenuItem
        Caption = 'Ordenar Ascendente'
        OnClick = OrdenarAscendente1Click
      end
      object OrdenarAscendente2: TMenuItem
        Caption = 'Ordenar Descendente'
        OnClick = OrdenarAscendente2Click
      end
    end
    object Funciones1: TMenuItem
      Caption = 'Funciones'
      object GetValue1: TMenuItem
        Caption = 'Get Value'
        OnClick = GetValue1Click
      end
      object Funciones2: TMenuItem
        Caption = 'Sumar Digitos'
        OnClick = Funciones2Click
      end
      object NumeroMayor1: TMenuItem
        Caption = 'Numero Mayor'
        OnClick = NumeroMayor1Click
      end
      object NumeroMayor2: TMenuItem
        Caption = 'Numero Menor'
        OnClick = NumeroMayor2Click
      end
      object Frecuencia1: TMenuItem
        Caption = 'Frecuencia'
        OnClick = Frecuencia1Click
      end
      object Frecuencia2: TMenuItem
        Caption = 'Digito'
        OnClick = Frecuencia2Click
      end
      object NumerodeDigitos1: TMenuItem
        Caption = 'Numero de Digitos'
        OnClick = NumerodeDigitos1Click
      end
      object NumerodeDigitos2: TMenuItem
        Caption = 'Convertir'
        OnClick = NumerodeDigitos2Click
      end
      object Romano1: TMenuItem
        Caption = 'Romano'
        OnClick = Romano1Click
      end
    end
    object ProcedimientosCadena1: TMenuItem
      Caption = 'Procedimientos (Cadena)'
    end
    object ProcedimientosCadena2: TMenuItem
      Caption = 'Funciones (Cadena)'
    end
  end
end
