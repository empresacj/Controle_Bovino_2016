unit UfrmMovimentacaoProprietario;

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
  TfrmMovimentacaoProprietario = class(TfrmMovimentacao)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoProprietario: TfrmMovimentacaoProprietario;

implementation

uses
  USistemaFunctions, UfrmCadastroProprietario;

{$R *.dfm}

procedure TfrmMovimentacaoProprietario.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroProprietario, frmCadastroProprietario);
end;

procedure TfrmMovimentacaoProprietario.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroProprietario, frmCadastroProprietario);
end;

procedure TfrmMovimentacaoProprietario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoProprietario := nil;
end;

end.
