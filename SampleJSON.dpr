program SampleJSON;

uses
  Vcl.Forms,
  UFrm_SampleJSON in 'src\UFrm_SampleJSON.pas' {Frm_SampleJSON};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_SampleJSON, Frm_SampleJSON);
  Application.Run;
end.
