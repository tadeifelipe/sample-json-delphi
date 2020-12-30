object Frm_SampleJSON: TFrm_SampleJSON
  Left = 0
  Top = 0
  Caption = 'Sample Make and Read JSON'
  ClientHeight = 463
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 416
    Height = 447
    TabOrder = 0
    object Button1: TButton
      Left = 3
      Top = 3
      Width = 123
      Height = 49
      Caption = 'Make JSON'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Memo1: TMemo
      Left = 8
      Top = 57
      Width = 397
      Height = 382
      Lines.Strings = (
        '')
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 444
    Top = 8
    Width = 416
    Height = 447
    TabOrder = 1
    object Button2: TButton
      Left = 3
      Top = 3
      Width = 123
      Height = 49
      Caption = 'Read JSON'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Memo2: TMemo
      Left = 8
      Top = 57
      Width = 397
      Height = 382
      TabOrder = 1
    end
  end
end
