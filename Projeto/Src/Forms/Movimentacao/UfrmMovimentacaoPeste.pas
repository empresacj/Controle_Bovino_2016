unit UfrmMovimentacaoPeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Movimentacao, TabListN, DB, Buttons, ExtCtrls;

type
  TfrmMovimentacaoPeste = class(TfrmMovimentacao)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoPeste: TfrmMovimentacaoPeste;

implementation

uses
  USistemaFunctions, UfrmCadastroPeste;

{$R *.dfm}

procedure TfrmMovimentacaoPeste.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroPeste, frmCadastroPeste);
end;

procedure TfrmMovimentacaoPeste.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroPeste, frmCadastroPeste);
end;

procedure TfrmMovimentacaoPeste.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoPeste := nil;
end;

end.
