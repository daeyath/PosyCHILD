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
    Left = 120
    Top = 40
  end
end
