unit UFrm_SampleJSON;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.JSON;

type
  TFrm_SampleJSON = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SampleJSON: TFrm_SampleJSON;

implementation

{$R *.dfm}

end.
