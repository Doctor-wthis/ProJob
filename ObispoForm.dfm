object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ProJob'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = ObMenu
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 168
    Top = 51
    Width = 47
    Height = 15
    Caption = 'N'#250'mero:'
  end
  object Label2: TLabel
    Left = 168
    Top = 91
    Width = 48
    Height = 15
    Caption = 'Posici'#243'n:'
  end
  object Label3: TLabel
    Left = 168
    Top = 131
    Width = 35
    Height = 15
    Caption = 'D'#237'gito:'
  end
  object Label4: TLabel
    Left = 232
    Top = 168
    Width = 121
    Height = 15
    Caption = 'Resultado'
  end
  object Label5: TLabel
    Left = 168
    Top = 232
    Width = 43
    Height = 15
    Caption = 'Cadena:'
  end
  object Label6: TLabel
    Left = 168
    Top = 275
    Width = 48
    Height = 15
    Caption = 'Posici'#243'n:'
  end
  object Label7: TLabel
    Left = 168
    Top = 320
    Width = 47
    Height = 15
    Caption = 'Caracter:'
  end
  object Label8: TLabel
    Left = 232
    Top = 368
    Width = 121
    Height = 15
    Caption = 'Resultado'
  end
  object Edit1: TEdit
    Left = 232
    Top = 48
    Width = 145
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 232
    Top = 88
    Width = 145
    Height = 23
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 232
    Top = 128
    Width = 145
    Height = 23
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 232
    Top = 229
    Width = 145
    Height = 23
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 232
    Top = 272
    Width = 145
    Height = 23
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 232
    Top = 317
    Width = 145
    Height = 23
    TabOrder = 5
  end
  object ObMenu: TMainMenu
    Left = 576
    Top = 24
    object ProcedimientosNumero1: TMenuItem
      Caption = 'Procedimientos (Numero)'
      object SetValue1: TMenuItem
        Caption = 'Set Value'
        OnClick = SetValue1Click
      end
      object SetValue2: TMenuItem
        Caption = 'A'#241'adir'
        OnClick = SetValue2Click
      end
      object EliminarPosicin1: TMenuItem
        Caption = 'Eliminar Posici'#243'n'
        OnClick = EliminarPosicin1Click
      end
      object EliminarPosicin2: TMenuItem
        Caption = 'Eliminar D'#237'gito'
        OnClick = EliminarPosicin2Click
      end
      object Insertar1: TMenuItem
        Caption = 'Insertar'
        OnClick = Insertar1Click
      end
      object Modificar: TMenuItem
        Caption = 'Modificar'
        OnClick = ModificarClick
      end
      object SepararPares1: TMenuItem
        Caption = 'Separar Pares'
        OnClick = SepararPares1Click
      end
      object OrdenarAscendente: TMenuItem
        Caption = 'Ordenar Ascendente'
        OnClick = OrdenarAscendenteClick
      end
      object OrdenarDescendente: TMenuItem
        Caption = 'Ordenar Descendente'
        OnClick = OrdenarDescendenteClick
      end
    end
    object ProcedimientosNumero2: TMenuItem
      Caption = 'Funciones Numero'
      object GetValue1: TMenuItem
        Caption = 'Get Value'
        OnClick = GetValue1Click
      end
      object Digito: TMenuItem
        Caption = 'D'#237'gito'
        OnClick = DigitoClick
      end
      object NumerodeDigitos: TMenuItem
        Caption = 'N'#250'mero de D'#237'gitos'
        OnClick = NumerodeDigitosClick
      end
      object SumaDigitos: TMenuItem
        Caption = 'Suma D'#237'gitos'
        OnClick = SumaDigitosClick
      end
      object NumeroMayor: TMenuItem
        Caption = 'N'#250'mero Mayor'
        OnClick = NumeroMayorClick
      end
      object NumeroMenor: TMenuItem
        Caption = 'N'#250'mero Menor'
        OnClick = NumeroMenorClick
      end
      object Frecuencia: TMenuItem
        Caption = 'Frecuencia'
        OnClick = FrecuenciaClick
      end
      object Conversor: TMenuItem
        Caption = 'Conversor'
        OnClick = ConversorClick
      end
      object Romano: TMenuItem
        Caption = 'Romano'
        OnClick = RomanoClick
      end
    end
    object ProcedimientosCadena1: TMenuItem
      Caption = 'Procedimientos (Cadena)'
      object SetCadena1: TMenuItem
        Caption = 'Set Cadena'
        OnClick = SetCadena1Click
      end
      object Anadir: TMenuItem
        Caption = 'A'#241'adir'
        OnClick = AnadirClick
      end
      object ModificarCadena: TMenuItem
        Caption = 'Modificar'
        OnClick = ModificarCadenaClick
      end
      object InsertarCadena: TMenuItem
        Caption = 'Insertar'
        OnClick = InsertarCadenaClick
      end
      object EliminarCadena: TMenuItem
        Caption = 'Eliminar'
        OnClick = EliminarCadenaClick
      end
      object EliminarCaracterCadena: TMenuItem
        Caption = 'Eliminar Caracter'
        OnClick = EliminarCaracterCadenaClick
      end
    end
    object ProcedimientosCadena2: TMenuItem
      Caption = 'Funciones (Cadena)'
      object GetLongitud: TMenuItem
        Caption = 'Get Longitud'
        OnClick = GetLongitudClick
      end
      object GetCaracter: TMenuItem
        Caption = 'Get Caracter'
        OnClick = GetCaracterClick
      end
      object GetCadena: TMenuItem
        Caption = 'Get Cadena'
        OnClick = GetCadenaClick
      end
      object BuscarCaracter: TMenuItem
        Caption = 'Buscar Caracter'
        OnClick = BuscarCaracterClick
      end
      object FrecuenciaCaracter: TMenuItem
        Caption = 'Frecuencia Caracter'
        OnClick = FrecuenciaCaracterClick
      end
      object MayorFrecuencia: TMenuItem
        Caption = 'Mayor Frecuencia'
        OnClick = MayorFrecuenciaClick
      end
      object NumeroPalabras: TMenuItem
        Caption = 'N'#250'mero de Palabras'
        OnClick = NumeroPalabrasClick
      end
      object PalabraNumero: TMenuItem
        Caption = 'Palabra N'#250'mero'
        OnClick = PalabraNumeroClick
      end
    end
  end
end
