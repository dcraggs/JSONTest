unit frmClientMainu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, REST.Client,
  REST.Authenticator.Basic, Data.Bind.Components, Data.Bind.ObjectScope,
  Vcl.StdCtrls;

type
  TfrmClient = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    HTTPBasicAuthenticator: THTTPBasicAuthenticator;
    procedure Button1Click(Sender: TObject);
    procedure RESTRequestAfterExecute(Sender: TCustomRESTRequest);
  private
  public
  end;

var
  frmClient: TfrmClient;

implementation

{$R *.dfm}

procedure TfrmClient.Button1Click(Sender: TObject);
begin
  RESTRequest.Execute;
end;

procedure TfrmClient.RESTRequestAfterExecute(Sender: TCustomRESTRequest);
begin
  Memo1.Lines.Text := RESTResponse.Content;
end;

end.
