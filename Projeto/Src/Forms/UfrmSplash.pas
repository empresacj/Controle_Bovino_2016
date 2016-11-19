unit UfrmSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxGDIPlusClasses, ExtCtrls, jpeg, ComCtrls;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    Timer: TTimer;
    ProgressBar: TProgressBar;
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

uses
  UfrmPrincipalBovino;

{$R *.dfm}

procedure TfrmSplash.TimerTimer(Sender: TObject);
begin
  ProgressBar.Position := ProgressBar.Position + 50;

  if ProgressBar.Position = 100 then
   begin
    Timer.Enabled := False;
    frmSplash.Destroy;

    Application.CreateForm(TfrmPrincipalBovino, frmPrincipalBovino);
    frmPrincipalBovino.Show;

   end;
end;

end.
