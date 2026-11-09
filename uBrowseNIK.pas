unit uBrowseNIK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids;

type
  TBrowseNIK = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BrowseNIK: TBrowseNIK;

implementation

uses
  uDataModule;

{$R *.dfm}

end.
