object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 250
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 8
    Height = 13
    Caption = 'id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 272
    Top = 40
    Width = 29
    Height = 13
    Caption = 'senha'
    FocusControl = DBEdit3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 92
    Width = 372
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 140
    Top = 218
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 16
    Width = 134
    Height = 21
    DataField = 'id'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 56
    Width = 233
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 272
    Top = 56
    Width = 108
    Height = 21
    DataField = 'senha'
    DataSource = DataSource1
    TabOrder = 4
  end
  object Button1: TButton
    Left = 305
    Top = 9
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 5
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    Left = 224
    Top = 128
  end
end
