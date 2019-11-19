program SearchDraw;

uses
  Forms,
  Unit1 in 'Unit1.pas' {fMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
