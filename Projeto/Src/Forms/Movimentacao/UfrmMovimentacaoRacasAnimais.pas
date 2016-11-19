unit UfrmMovimentacaoRacasAnimais;

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
  TfrmMovimentacaoRacasAnimais = class(TfrmMovimentacao)
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
  frmMovimentacaoRacasAnimais: TfrmMovimentacaoRacasAnimais;

implementation

uses
  USistemaFunctions, UfrmCadastroRacaAnimal;

{$R *.dfm}

procedure TfrmMovimentacaoRacasAnimais.btnEditarClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroRacaAnimal, frmCadastroRacaAnimal);
end;

procedure TfrmMovimentacaoRacasAnimais.btnIncluirClick(Sender: TObject);
begin
  inherited;
  TSistemaFunctions.ExecForm(TfrmCadastroRacaAnimal, frmCadastroRacaAnimal);
end;

procedure TfrmMovimentacaoRacasAnimais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmMovimentacaoRacasAnimais := nil;
end;

end.
