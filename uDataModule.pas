unit uDataModule;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDataModule2 = class(TDataModule)
    TblBalita1: TClientDataSet;
    Pengukuran: TClientDataSet;
    BrowseBalita: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure TblBalita1AfterScroll(DataSet: TDataSet);
    procedure PengukuranBeforePost(DataSet: TDataSet);
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
  begin
    TblBalita1.Open;
    BrowseBalita.FileName:=TblBalita1.FileName;
    BrowseBalita.Open;
  end;
  Pengukuran.FileName:=ExtractFilePath(ParamStr(0))+'Pengukuran.xml';
  Pengukuran.Filtered:=True;
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

procedure TDataModule2.PengukuranBeforePost(DataSet: TDataSet);
begin
  if TblBalita1.State in [dsInsert, dsEdit] then
    TblBalita1.Post;
  DataSet.FieldByName('NIK').AsString:=TblBalita1.FieldByName('NIK').AsString;
end;

procedure TDataModule2.TblBalita1AfterScroll(DataSet: TDataSet);
begin
  Pengukuran.Filter:='NIK='+QuotedStr(DataSet.FieldByName('NIK').AsString);
end;

end.
