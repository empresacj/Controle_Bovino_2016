unit UfrmMovimentacaoTanqueLeite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Movimentacao, TabListN, DB, Buttons, ExtCtrls;

type
  TfrmMovimentacaoTanqueLeite = class(TfrmMovimentacao)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoTanqueLeite: TfrmMovimentacaoTanqueLeite;

implementation

uses
  USistemaFunctions, UfrmCadastroTanqueLeite;

{$R *.dfm}

procedure TfrmMovimentacaoTanqueLeite.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroTanqueLeite, frmCadastroTanqueLeite);
end;

procedure TfrmMovimentacaoTanqueLeite.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroTanqueLeite, frmCadastroTanqueLeite);
end;

procedure TfrmMovimentacaoTanqueLeite.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoTanqueLeite := nil;
end;

end.
