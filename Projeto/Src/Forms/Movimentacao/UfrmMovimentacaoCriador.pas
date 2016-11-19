unit UfrmMovimentacaoCriador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Movimentacao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, TabListN,
  Buttons, ExtCtrls;

type
  TfrmMovimentacaoCriador = class(TfrmMovimentacao)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoCriador: TfrmMovimentacaoCriador;

implementation

uses
  USistemaFunctions, UfrmCadastroCriador;

{$R *.dfm}

procedure TfrmMovimentacaoCriador.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroCriador, frmCadastroCriador);
end;

procedure TfrmMovimentacaoCriador.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroCriador, frmCadastroCriador);
end;

procedure TfrmMovimentacaoCriador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoCriador := nil;
end;

end.
