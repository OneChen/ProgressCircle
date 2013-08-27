program TestProgressCircle;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.Platform, FMX.Consts, 
  Main in 'Main.pas' {Form1};

{$R *.res}

begin
  TPlatformServices.Current.GlobalFlags.Add(GlobalDisableiOSGPUCanvas, True);

  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
