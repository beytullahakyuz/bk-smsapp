object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SMS App'
  ClientHeight = 368
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnListele: TButton
    Left = 8
    Top = 320
    Width = 113
    Height = 36
    Cursor = crHandPoint
    Caption = 'Listele'
    TabOrder = 0
    OnClick = btnListeleClick
  end
  object memoList1: TMemo
    Left = 8
    Top = 8
    Width = 185
    Height = 306
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object memoList2: TMemo
    Left = 199
    Top = 8
    Width = 185
    Height = 306
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object btnKopyala: TButton
    Left = 138
    Top = 320
    Width = 113
    Height = 36
    Cursor = crHandPoint
    Caption = 'Kopyala'
    TabOrder = 3
    OnClick = btnKopyalaClick
  end
  object btnTemizle: TButton
    Left = 272
    Top = 320
    Width = 113
    Height = 36
    Cursor = crHandPoint
    Caption = 'Temizle'
    TabOrder = 4
    OnClick = btnTemizleClick
  end
  object timer: TTimer
    OnTimer = timerTimer
    Left = 328
    Top = 80
  end
end
