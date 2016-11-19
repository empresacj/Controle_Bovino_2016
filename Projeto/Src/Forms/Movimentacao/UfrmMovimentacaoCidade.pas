unit UfrmMovimentacaoCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Movimentacao, TabListN, DB, Buttons, ExtCtrls;

type
  TfrmMovimentacaoCidade = class(TfrmMovimentacao)
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoCidade: TfrmMovimentacaoCidade;

implementation

uses
  USistemaFunctions, UfrmCadastroCidade;

{$R *.dfm}

procedure TfrmMovimentacaoCidade.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroCidade, frmCadastroCidade);
end;

procedure TfrmMovimentacaoCidade.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroCidade, frmCadastroCidade);
end;

procedure TfrmMovimentacaoCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoCidade := nil;
end;

end.
