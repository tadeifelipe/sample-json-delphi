program SampleJSON;

uses
  Vcl.Forms,
  UFrm_SampleJSON in 'UFrm_SampleJSON.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
