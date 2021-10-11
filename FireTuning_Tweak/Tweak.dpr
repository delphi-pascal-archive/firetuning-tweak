program Tweak;

uses
  Forms,
  NP in 'NP.pas' {MainForm},
  AP in 'AP.pas' {AboutForm},
  WP in 'WP.pas' {OpenForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'FireTuning Tweaker';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TOpenForm, OpenForm);
  Application.Run;
end.
