unit UfrmCadastroVacina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxGroupBox;

type
  TfrmCadastroVacina = class(TfrmCadastro)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroVacina: TfrmCadastroVacina;

implementation

{$R *.dfm}

procedure TfrmCadastroVacina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroVacina := nil;
end;

end.
