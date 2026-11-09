object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 430
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    598
    430)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 8
    Top = 134
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 8
    Top = 161
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Label4: TLabel
    Left = 8
    Top = 188
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label5: TLabel
    Left = 544
    Top = 8
    Width = 39
    Height = 13
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Caption = 'License.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label5Click
  end
  object Label6: TLabel
    Left = 472
    Top = 409
    Width = 118
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Copyright 2006 Hidayat.'
    ExplicitTop = 343
  end
  object Label7: TLabel
    Left = 8
    Top = 107
    Width = 28
    Height = 13
    Caption = 'No KK'
  end
  object Label8: TLabel
    Left = 343
    Top = 251
    Width = 63
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Tanggal Ukur'
  end
  object Label9: TLabel
    Left = 344
    Top = 278
    Width = 62
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Umur (Bulan)'
  end
  object Label10: TLabel
    Left = 344
    Top = 304
    Width = 49
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Berat (Kg)'
  end
  object Label11: TLabel
    Left = 344
    Top = 332
    Width = 28
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Tinggi'
  end
  object Label12: TLabel
    Left = 8
    Top = 40
    Width = 134
    Height = 24
    Caption = 'Data Posyandu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 8
    Top = 215
    Width = 86
    Height = 21
    Caption = 'Pengukuran'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 191
    Top = 79
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = ActionBrowseNIKExecute
  end
  object SpeedButton2: TSpeedButton
    Left = 504
    Top = 8
    Width = 23
    Height = 22
    Anchors = [akTop, akRight]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
    OnClick = ActionOpenFileExecute
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 242
    Width = 320
    Height = 120
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSrcPengukuran
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 134
    Width = 121
    Height = 21
    DataField = 'Nama'
    DataSource = DataSourceBalita
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 88
    Top = 161
    Width = 121
    Height = 21
    DataField = 'TglLhr'
    DataSource = DataSourceBalita
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 88
    Top = 188
    Width = 89
    Height = 21
    DataField = 'JK'
    DataSource = DataSourceBalita
    ItemHeight = 13
    Items.Strings = (
      'L'
      'P')
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 88
    Top = 107
    Width = 121
    Height = 21
    DataField = 'NOKK'
    DataSource = DataSourceBalita
    TabOrder = 1
  end
  object DBNavBalita: TDBNavigator
    Left = 8
    Top = 9
    Width = 240
    Height = 25
    Hint = 'Navigator Balita'
    DataSource = DataSourceBalita
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = DBNavBalitaClick
  end
  object DBNavPeng: TDBNavigator
    Left = 8
    Top = 368
    Width = 240
    Height = 25
    DataSource = DataSrcPengukuran
    Anchors = [akLeft, akBottom]
    TabOrder = 6
    OnClick = DBNavPengClick
  end
  object DBEditTglUkur: TDBEdit
    Left = 432
    Top = 248
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'TglUkur'
    DataSource = DataSrcPengukuran
    TabOrder = 7
  end
  object DBEdit6: TDBEdit
    Left = 432
    Top = 275
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'UmurBulan'
    DataSource = DataSrcPengukuran
    TabOrder = 8
  end
  object DBEdit7: TDBEdit
    Left = 432
    Top = 302
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'Berat'
    DataSource = DataSrcPengukuran
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 432
    Top = 329
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'Tinggi'
    DataSource = DataSrcPengukuran
    TabOrder = 10
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 80
    Width = 97
    Height = 21
    DataField = 'NIK'
    DataSource = DataSourceBalita
    TabOrder = 11
  end
  object DataSourceBalita: TDataSource
    DataSet = DataModule2.TblBalita1
    Left = 288
    Top = 56
  end
  object DataSrcPengukuran: TDataSource
    DataSet = DataModule2.Pengukuran
    Left = 288
    Top = 96
  end
  object ActionList1: TActionList
    Left = 496
    Top = 80
    object ActionBrowseNIK: TAction
      Caption = 'Lihat NIK'
      OnExecute = ActionBrowseNIKExecute
    end
    object ActionOpenFile: TAction
      Caption = 'Open'
      OnExecute = ActionOpenFileExecute
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 536
    Top = 80
  end
end
