unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Objects, FMX.StdCtrls,
  FMX.Ani;

type
  TForm1 = class(TForm)
    Arc1: TArc;
    TrackBar1: TTrackBar;
    Circle1: TCircle;
    Circle2: TCircle;
    Text1: TText;
    Button1: TButton;
    FloatAnimation1: TFloatAnimation;
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
     if FloatAnimation1.Enabled then
          Button1.Text := 'Start'
     else Button1.Text := 'Stop';
     FloatAnimation1.Enabled := not FloatAnimation1.Enabled;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     TrackBar1Change(Sender);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
     if TrackBar1.Value <> 0 then
          Arc1.EndAngle := 360 / (100 / TrackBar1.Value)
     else Arc1.EndAngle := 0;
     Text1.Text := Trunc(TrackBar1.Value).ToString + '%';
end;

end.
