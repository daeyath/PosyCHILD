object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 279
  object TblBalita1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NIK'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'NOKK'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Nama'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TglLhr'
        DataType = ftDate
      end
      item
        Name = 'JK'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterScroll = TblBalita1AfterScroll
    Left = 40
    Top = 40
  end
  object Pengukuran: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NIK'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'TglUkur'
        DataType = ftDate
      end
      item
        Name = 'UmurBulan'
        DataType = ftWord
      end
      item
        Name = 'Berat'
        DataType = ftFloat
      end
      item
        Name = 'Tinggi'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforePost = PengukuranBeforePost
    Left = 120
    Top = 40
  end
  object BrowseBalita: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 96
  end
end
