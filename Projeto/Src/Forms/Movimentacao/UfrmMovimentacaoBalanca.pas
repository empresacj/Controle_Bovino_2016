unit UfrmMovimentacaoBalanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Movimentacao, TabListN, DB, Buttons, ExtCtrls;

type
  TfrmMovimentacaoBalanca = class(TfrmMovimentacao)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoBalanca: TfrmMovimentacaoBalanca;

implementation

uses
  USistemaFunctions, UfrmCadastroBalanca;

{$R *.dfm}

procedure TfrmMovimentacaoBalanca.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroBalanca, frmCadastroBalanca);
end;

procedure TfrmMovimentacaoBalanca.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroBalanca, frmCadastroBalanca);
end;

procedure TfrmMovimentacaoBalanca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoBalanca := nil;
end;

end.
