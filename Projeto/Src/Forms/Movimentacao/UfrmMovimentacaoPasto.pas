unit UfrmMovimentacaoPasto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Movimentacao, TabListN, DB, Buttons, ExtCtrls;

type
  TfrmMovimentacaoPasto = class(TfrmMovimentacao)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoPasto: TfrmMovimentacaoPasto;

implementation

uses
  USistemaFunctions, UfrmCadastroPasto;

{$R *.dfm}

procedure TfrmMovimentacaoPasto.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroPasto, frmCadastroPasto);
end;

procedure TfrmMovimentacaoPasto.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroPasto, frmCadastroPasto);
end;

procedure TfrmMovimentacaoPasto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoPasto := nil;
end;

end.
