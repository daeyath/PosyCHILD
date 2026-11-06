program PosyCHILD;

{ Copyright Hidayat 2005 License: GPL-2 }

uses
  Forms,
  uFormInput in 'uFormInput.pas' {Form1},
  uDataModule in 'uDataModule.pas' {DataModule2: TDataModule},
  uLicense in 'uLicense.pas' {FormLicense};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
