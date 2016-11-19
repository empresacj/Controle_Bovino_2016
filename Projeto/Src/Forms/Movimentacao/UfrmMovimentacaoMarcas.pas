unit UfrmMovimentacaoMarcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Movimentacao, TabListN, DB, Buttons, ExtCtrls;

type
  TfrmMovimentacaoMarcas = class(TfrmMovimentacao)
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoMarcas: TfrmMovimentacaoMarcas;

implementation

uses
  USistemaFunctions, UfrmCadastroMarcas;

{$R *.dfm}

procedure TfrmMovimentacaoMarcas.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroMarcas, frmCadastroMarcas);
end;

procedure TfrmMovimentacaoMarcas.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroMarcas, frmCadastroMarcas);
end;

procedure TfrmMovimentacaoMarcas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoMarcas := nil;
end;

end.
