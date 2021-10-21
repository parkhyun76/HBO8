program HBO2;

uses
  Vcl.Forms,
  uHBO2_Main in 'uHBO2_Main.pas' {fHBOMain},
  Vcl.Themes,
  Vcl.Styles,
  uLogin in 'uLogin.pas' {fLogin};

{$R *.res}

begin
  Application.Initialize;
//  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TfHBOMain, fHBOMain);
  Application.CreateForm(TfLogin, fLogin);
  Application.Run;
end.
