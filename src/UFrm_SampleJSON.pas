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
    procedure Button2Click(Sender: TObject);
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
  JsonArrayOrder, JsonArrayItem: TJSONArray;
  i, y: Byte;
begin
  try
    //JsonPeople := TJSONObject.Create;
    JsonArrayOrder := TJSONArray.Create;

    // {"name":"Felipe", "age":22, "weight": 75.5}
    //JsonPeople.AddPair('name', 'Felipe');
    //JsonPeople.AddPair('age', TJSONNumber.Create(22));
    //JsonPeople.AddPair('weight', TJSONNumber.Create(75.5));

    // [{"orderId": 1, "client": "Felipe Tadei","items":[...],"total": 1050.25},
    //  {"orderId": 2, "client": "Felipe Tadei","items":[...],"total": 1050.25}]

    for i := 1 to 2 do
    begin
      JsonOrder := TJSONObject.Create;
      JsonOrder.AddPair('orderId', TJSONNumber.Create(i));
      JsonOrder.AddPair('client', 'Felipe Tadei');

      JsonArrayItem := TJSONArray.Create;

      //Items
      for y := 1 to 2 do
      begin
        JsonItem := TJSONObject.Create;
        JsonItem.AddPair('description','Product ' + y.ToString);
        JsonItem.AddPair('qtde', TJSONNumber.Create(y));
        JsonItem.AddPair('unit', TJSONNumber.Create(525.125));

        JsonArrayItem.AddElement(JsonItem);
      end;

      JsonOrder.AddPair('items', JsonArrayItem);
      JsonOrder.AddPair('total', TJSONNumber.Create(1050.25));
      JsonArrayOrder.AddElement(JsonOrder);
    end;

    Memo1.Lines.Add(JsonArrayOrder.ToString);

  finally
    JsonArrayOrder.Free;
  end;
end;

procedure TFrm_SampleJSON.Button2Click(Sender: TObject);
var JsonArrayOrder: TJSONArray;
  Json: String;
  i: Byte;
begin
  try
    //Get JSON String Web Service
    Json := Trim(Memo1.Lines.Text);

    JsonArrayOrder := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) as TJSONArray;

    for i := 0 to Pred(JsonArrayOrder.Count) do
    begin
      ShowMessage(JsonArrayOrder.Get(i).GetValue<Integer>('orderId').ToString);
    end;

  finally
    JsonArrayOrder.Free;
  end;
end;

end.
