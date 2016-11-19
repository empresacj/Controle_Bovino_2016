unit UfrmCadastroMarcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxGroupBox;

type
  TfrmCadastroMarcas = class(TfrmCadastro)
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroMarcas: TfrmCadastroMarcas;

implementation

{$R *.dfm}

procedure TfrmCadastroMarcas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroMarcas := nil;
end;

end.
