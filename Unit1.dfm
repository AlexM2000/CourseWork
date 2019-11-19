object fMain: TfMain
  Left = 192
  Top = 125
  BorderStyle = bsDialog
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 296
  ClientWidth = 1130
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 918
    Height = 296
    Align = alClient
    OnPaint = PaintBox1Paint
  end
  object Panel1: TPanel
    Left = 918
    Top = 0
    Width = 212
    Height = 296
    Align = alRight
    TabOrder = 0
    object Label1: TLabel
      Left = 29
      Top = 68
      Width = 31
      Height = 13
      Caption = #1053#1072#1081#1090#1080
    end
    object bFind: TButton
      Left = 32
      Top = 96
      Width = 137
      Height = 25
      Caption = #1055#1086#1080#1089#1082
      TabOrder = 0
      OnClick = bFindClick
    end
    object Button2: TButton
      Left = 24
      Top = 24
      Width = 145
      Height = 25
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1084#1072#1089#1089#1080#1074
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 72
      Top = 64
      Width = 97
      Height = 21
      TabOrder = 2
      Text = '0'
    end
  end
end
