unit UfrmMovimentacaoAnimaisCadastrados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Movimentacao, TabListN, DB, Buttons, ExtCtrls;

type
  TfrmMovimentacaoAnimaisCadastrados = class(TfrmMovimentacao)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoAnimaisCadastrados: TfrmMovimentacaoAnimaisCadastrados;

implementation

uses
  USistemaFunctions, UfrmCadastroAnimal;

{$R *.dfm}

procedure TfrmMovimentacaoAnimaisCadastrados.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroAnimal, frmCadastroAnimal);
end;

procedure TfrmMovimentacaoAnimaisCadastrados.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroAnimal, frmCadastroAnimal);
end;

procedure TfrmMovimentacaoAnimaisCadastrados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoAnimaisCadastrados := nil;
end;

end.
