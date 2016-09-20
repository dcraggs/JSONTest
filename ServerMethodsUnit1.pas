unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth;

type
  TMyObject = class(TObject)
  private
    FNumber: Integer;
    FTitle: string;
  public
    constructor Create(aTitle: string; aNumber: Integer);
    property Number: Integer read FNumber;
    property Title: string read FTitle;
  end;
{$METHODINFO ON}
  TServerMethods1 = class(TDataModule)
  private
  public
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function ObjectList: TJSONArray;

  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}


uses System.StrUtils, REST.Json;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ObjectList: TJSONArray;
var
  i: Integer;
  lMyObject: TMyObject;
begin
  Result := TJSONArray.Create;

  for i := 1 to 5 do
    begin
      lMyObject := TMyObject.Create('Title ' + i.ToString,i);
      Result.AddElement(TJson.ObjectToJsonObject(lMyObject));
      lMyObject.Free;
    end;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

constructor TMyObject.Create(aTitle: string; aNumber: Integer);
begin
  FTitle := aTitle;
  FNumber := aNumber;
end;

end.

