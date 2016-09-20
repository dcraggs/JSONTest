program JSONTestClient;

uses
  Vcl.Forms,
  frmClientMainu in 'frmClientMainu.pas' {frmClient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClient, frmClient);
  Application.Run;
end.
