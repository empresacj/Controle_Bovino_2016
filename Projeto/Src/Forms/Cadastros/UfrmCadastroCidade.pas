unit UfrmCadastroCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxCurrencyEdit, cxGroupBox,
  Buttons, ExtCtrls;

type
  TfrmCadastroCidade = class(TfrmCadastro)
    gpbCodigo: TcxGroupBox;
    cedCodigoCidade: TcxCurrencyEdit;
    gpbCodigoEstadual: TcxGroupBox;
    edtCodigoEstadual: TcxTextEdit;
    gpbDDD: TcxGroupBox;
    edtDDD: TcxTextEdit;
    gpbCEP: TcxGroupBox;
    edtCEP: TcxTextEdit;
    gpbDescricao: TcxGroupBox;
    edtDescricaoCidade: TcxTextEdit;
    gpbUnidadeFederacao: TcxGroupBox;
    lkeUnidadeFederacao: TcxLookupComboBox;
    gpbPais: TcxGroupBox;
    lkePais: TcxLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCidade: TfrmCadastroCidade;

implementation

{$R *.dfm}

procedure TfrmCadastroCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroCidade := nil;
end;

end.
