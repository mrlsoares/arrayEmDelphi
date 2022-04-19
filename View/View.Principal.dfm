object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object BitBtn1: TBitBtn
    Left = 8
    Top = 24
    Width = 75
    Height = 25
    Caption = 'array'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Memo1: TMemo
    Left = 224
    Top = 8
    Width = 392
    Height = 433
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object edtNome: TEdit
    Left = 47
    Top = 88
    Width = 162
    Height = 23
    TabOrder = 2
  end
  object SpinId: TSpinEdit
    Left = 9
    Top = 88
    Width = 32
    Height = 24
    MaxValue = 9
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object Button1: TButton
    Left = 8
    Top = 118
    Width = 75
    Height = 25
    Caption = 'Escrever'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 118
    Width = 57
    Height = 25
    Caption = 'Ler'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 149
    Width = 138
    Height = 25
    Caption = 'Ler todo array'
    TabOrder = 6
    OnClick = Button3Click
  end
end
