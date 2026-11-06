unit uFormInput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, DBCtrls, Mask, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    DBEditNIK: TDBEdit;
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
    procedure Label5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNavBalitaClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavPengClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uLicense, uDataModule;

{$R *.dfm}

procedure TForm1.DBNavBalitaClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button=nbInsert then
  begin
    TDBNavigator(Sender).DataSource.DataSet.Insert;
    DBEditNIK.SetFocus;
  end;
end;

procedure TForm1.DBNavPengClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button=nbInsert then
  begin
    TDBNavigator(Sender).DataSource.DataSet.Insert;
    DBEditTglUkur.SetFocus;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  DBEditNIK.SetFocus;
end;

procedure TForm1.Label5Click(Sender: TObject);
var
  FormLicense: TFormLicense;
begin
  FormLicense:=TFormLicense.Create(Self);
  FormLicense.ShowModal;
  FormLicense.Free;
end;

end.
