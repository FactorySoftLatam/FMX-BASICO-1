program Directorio;

uses
  System.StartUpCopy,
  FMX.Forms,
  uPpal in 'uPpal.pas' {fPPal},
  uGestionar in 'uGestionar.pas' {fGestionar},
  uListar in 'uListar.pas' {fListar},
  dmData in 'dmData.pas' {dmDatos: TDataModule},
  uLogin in 'uLogin.pas' {fLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmDatos, dmDatos);
  Application.CreateForm(TfPPal, fPPal);
  Application.Run;
end.
