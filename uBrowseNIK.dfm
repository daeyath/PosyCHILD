object BrowseNIK: TBrowseNIK
  Left = 0
  Top = 0
  Caption = 'BrowseNIK'
  ClientHeight = 187
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 34
    Width = 320
    Height = 120
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 160
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkYes
  end
  object BitBtn2: TBitBtn
    Left = 89
    Top = 160
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkNo
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.BrowseBalita
    Left = 216
    Top = 32
  end
end
