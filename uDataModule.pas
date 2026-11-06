unit uDataModule;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDataModule2 = class(TDataModule)
    TblBalita1: TClientDataSet;
    Pengukuran: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
  TblBalita1.FileName:=ExtractFilePath(ParamStr(0))+'Balita.xml';
  if not FileExists(TblBalita1.FileName) then
    TblBalita1.CreateDataSet
  else
    TblBalita1.Open;
  Pengukuran.FileName:=ExtractFilePath(ParamStr(0))+'Pengukuran.xml';
  if not FileExists(Pengukuran.FileName) then
    Pengukuran.CreateDataSet
  else
    Pengukuran.Open;
end;

procedure TDataModule2.DataModuleDestroy(Sender: TObject);
begin
  Pengukuran.Close;
  TblBalita1.Close;
end;

end.
