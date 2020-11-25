object Frm_SampleJSON: TFrm_SampleJSON
  Left = 0
  Top = 0
  Caption = 'Sample Make and Read JSON'
  ClientHeight = 311
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 121
    Height = 49
    Caption = 'Make JSON'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 144
    Top = 8
    Width = 121
    Height = 49
    Caption = 'Read JSON'
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 8
    Top = 63
    Width = 489
    Height = 240
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
