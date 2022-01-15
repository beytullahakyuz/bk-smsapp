program SMSApp;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SMS App';
  TStyleManager.TrySetStyle('Windows10 Clear Day');
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
