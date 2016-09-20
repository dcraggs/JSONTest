object frmClient: TfrmClient
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 268
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Get'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 641
    Height = 225
    Margins.Top = 40
    Align = alClient
    ReadOnly = True
    TabOrder = 1
    ExplicitLeft = 16
    ExplicitTop = 64
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object RESTClient: TRESTClient
    Authenticator = HTTPBasicAuthenticator
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    BaseURL = 'http://localhost:8088/datasnap/rest/TServerMethods1/ObjectList'
    Params = <>
    HandleRedirects = True
    Left = 120
    Top = 96
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    OnAfterExecute = RESTRequestAfterExecute
    SynchronizedEvents = False
    Left = 192
    Top = 96
  end
  object RESTResponse: TRESTResponse
    Left = 296
    Top = 96
  end
  object HTTPBasicAuthenticator: THTTPBasicAuthenticator
    Left = 392
    Top = 88
  end
end
