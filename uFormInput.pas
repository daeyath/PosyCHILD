unit uFormInput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, DBCtrls, Mask, ExtCtrls,
  ActnList, Buttons, StrUtils;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    DataSourceBalita: TDataSource;
    DataSrcPengukuran: TDataSource;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBNavBalita: TDBNavigator;
    DBNavPeng: TDBNavigator;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEditTglUkur: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    ActionList1: TActionList;
    ActionBrowseNIK: TAction;
    ActionOpenFile: TAction;
    SpeedButton2: TSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure Label5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNavBalitaClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavPengClick(Sender: TObject; Button: TNavigateBtn);
    procedure NIKClick(Sender: TObject);
    procedure ActionBrowseNIKExecute(Sender: TObject);
    procedure ActionOpenFileExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uLicense, uDataModule, uBrowseNIK;

{$R *.dfm}

procedure TForm1.ActionBrowseNIKExecute(Sender: TObject);
begin
  BrowseNIK:=TBrowseNIK.Create(Self);
  if BrowseNIK.ShowModal=mrYes then
  begin
    DataModule2.TblBalita1.Filter:=BrowseNIK.DataSource1.DataSet.FieldByName('NIK').AsString;
    if DataModule2.TblBalita1.Filtered=False then
      DataModule2.TblBalita1.Filtered:=True;
  end;
end;

procedure TForm1.ActionOpenFileExecute(Sender: TObject);
var
  NamaFileUtama, NamaFileKedua, Ext: string;
  BuatBaru: boolean;
  Res: Word;
begin
  if OpenDialog1.Execute then
  begin
    NamaFileUtama:=OpenDialog1.FileName;
    BuatBaru:=FileExists(OpenDialog1.FileName);
    Ext:=ExtractFileExt(NamaFileUtama);
    NamaFileKedua:=LeftStr(NamaFileUtama,Length(NamaFileUtama)-Length(Ext));
    NamaFileKedua:=NamaFileKedua+'_Pengukuran'+Ext;
    if BuatBaru then
    begin
      Res:=MessageDlg('File tersebut tidak ada, apakah ingin membuatnya?',mtConfirmation,[mbOk,mbNo,mbCancel],0);
      case Res of
        mrOk:
        begin
          DataModule2.TblBalita1.Close;
          DataModule2.TblBalita1.FileName:=NamaFileUtama;
          DataModule2.TblBalita1.CreateDataSet;
          DataModule2.Pengukuran.Close;
          DataModule2.Pengukuran.FileName:=NamaFileKedua;
          DataModule2.Pengukuran.CreateDataSet;
        end;
      end;
    end
    else
    begin
      DataModule2.TblBalita1.Close;
      DataModule2.TblBalita1.FileName:=NamaFileUtama;
      DataModule2.TblBalita1.Open;
      DataModule2.Pengukuran.Close;
      DataModule2.Pengukuran.FileName:=NamaFileKedua;
      DataModule2.Pengukuran.Open;
    end;
  end;
end;

procedure TForm1.DBNavBalitaClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button=nbInsert then
  begin
    TDBNavigator(Sender).DataSource.DataSet.Insert;
    DBEdit1.SetFocus;
  end;
end;

procedure TForm1.DBNavPengClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button=nbInsert then
  with TDBNavigator(Sender).DataSource.DataSet do
  begin
    Insert;
    DBEditTglUkur.SetFocus;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  DBEdit1.SetFocus;
end;

procedure TForm1.Label5Click(Sender: TObject);
var
  FormLicense: TFormLicense;
begin
  FormLicense:=TFormLicense.Create(Self);
  FormLicense.ShowModal;
  FormLicense.Free;
end;

procedure TForm1.NIKClick(Sender: TObject);
var
  s: TDataSetState;
begin
  DataModule2.TblBalita1.Filter:='NIK='+QuotedStr(DBEdit1.Text);
  if DataModule2.TblBalita1.Filtered=False then
    DataModule2.TblBalita1.Filtered:=True;
  s:=DataModule2.TblBalita1.State;
end;

end.
