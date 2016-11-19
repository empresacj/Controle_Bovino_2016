unit UfrmMovimentacaoFreezer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Movimentacao, TabListN, DB, Buttons, ExtCtrls;

type
  TfrmMovimentacaoFreezer = class(TfrmMovimentacao)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoFreezer: TfrmMovimentacaoFreezer;

implementation

uses
  USistemaFunctions, UfrmCadastroFreezer;

{$R *.dfm}

procedure TfrmMovimentacaoFreezer.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroFreezer, frmCadastroFreezer);
end;

procedure TfrmMovimentacaoFreezer.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroFreezer, frmCadastroFreezer);
end;

procedure TfrmMovimentacaoFreezer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoFreezer := nil;
end;

end.
