unit UfrmMovimentacaoPropriedade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Movimentacao, TabListN, DB, Buttons, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FMTBcd, Provider, SqlExpr, DBClient;

type
  TfrmMovimentacaoPropriedade = class(TfrmMovimentacao)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsMov: TClientDataSet;
    sdsMov: TSQLDataSet;
    dspMov: TDataSetProvider;
    sdsMovCODEMP: TIntegerField;
    sdsMovDTAACE: TDateField;
    sdsMovBLODBLACE: TStringField;
    cdsMovCODEMP: TIntegerField;
    cdsMovDTAACE: TDateField;
    cdsMovBLODBLACE: TStringField;
    cxGrid1DBTableView1CODEMP: TcxGridDBColumn;
    cxGrid1DBTableView1DTAACE: TcxGridDBColumn;
    cxGrid1DBTableView1BLODBLACE: TcxGridDBColumn;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoPropriedade: TfrmMovimentacaoPropriedade;

implementation

uses
  UdmConnection, UfrmCadastroPropriedade, USistemaFunctions;

{$R *.dfm}

procedure TfrmMovimentacaoPropriedade.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroPropriedade, frmCadastroPropriedade);
end;

procedure TfrmMovimentacaoPropriedade.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroPropriedade, frmCadastroPropriedade);
end;

procedure TfrmMovimentacaoPropriedade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoPropriedade := nil;
end;

end.
