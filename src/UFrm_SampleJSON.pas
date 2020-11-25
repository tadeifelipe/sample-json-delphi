unit UFrm_SampleJSON;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.JSON;

type
  TFrm_SampleJSON = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SampleJSON: TFrm_SampleJSON;

implementation

{$R *.dfm}

procedure TFrm_SampleJSON.Button1Click(Sender: TObject);
var
  JsonPeople, JsonOrder, JsonItem: TJSONObject;
  i: Byte;
begin
  try
    JsonPeople := TJSONObject.Create;
    JsonOrder := TJSONObject.Create;

    // {"name":"Felipe", "age":22, "weight": 75.5}
    JsonPeople.AddPair('name', 'Felipe');
    JsonPeople.AddPair('age', TJSONNumber.Create(22));
    JsonPeople.AddPair('weight', TJSONNumber.Create(75.5));

    // [{"orderId": 1, "client": "João de Almeida", "total": 1050.25},
    //  {"orderId": 2, "client": "Maria dos Santos", "total": 800.50}]

    for i := 1 to 2 do
    begin

    end;





  finally
    JsonPeople.Free;
    JsonOrder.Free;
  end;
end;

end.
