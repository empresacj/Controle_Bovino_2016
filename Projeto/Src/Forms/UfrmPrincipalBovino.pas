unit UfrmPrincipalBovino;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Ribbon, RibbonLunaStyleActnCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxRibbonPainter, cxClasses, dxRibbon,
  dxSkinsdxBarPainter, dxBar, ImgList;

type
  TfrmPrincipalBovino = class(TForm)
    rtbCadastros: TdxRibbonTab;
    Ribbon: TdxRibbon;
    rtbManejo: TdxRibbonTab;
    rtbEstoque: TdxRibbonTab;
    rtbMovimentacao: TdxRibbonTab;
    rtbRelat�rios: TdxRibbonTab;
    rtbGr�ficos: TdxRibbonTab;
    rtbUtilitarios: TdxRibbonTab;
    rtbAjuda: TdxRibbonTab;
    dxBarManager: TdxBarManager;
    BarGeralCadastro: TdxBar;
    btnCadastroPropriedade: TdxBarLargeButton;
    asd: TdxBarButton;
    BarPropriedadeCadastro: TdxBar;
    btnCadastroResponsavel: TdxBarButton;
    btnCadastroProprietario: TdxBarButton;
    btnCadastroUnidadeMedida: TdxBarButton;
    btnCadastroUsuarios: TdxBarButton;
    btnCadastroAnimais: TdxBarButton;
    btnCadastroPastos: TdxBarButton;
    btnCadastroVacina: TdxBarButton;
    btnCadastroTanque: TdxBarButton;
    btnCadastroFreezer: TdxBarButton;
    btnCadastroBalanca: TdxBarButton;
    btnCadastroRaca: TdxBarButton;
    btnCadastroRacao: TdxBarButton;
    btnCadastroMarca: TdxBarButton;
    btnCadastroDoenca: TdxBarButton;
    btnCadastroCidade: TdxBarButton;
    btnCadastroFornecedor: TdxBarButton;
    btnCadastroComprador: TdxBarButton;
    btnCadastroCriador: TdxBarButton;
    btnCadastroDespesaReceita: TdxBarButton;
    btnCadastroEstoqueSemen: TdxBarButton;
    btnCadastroEstoqueEmbrioes: TdxBarButton;
    BarControleManejo: TdxBar;
    btnManejohistorico: TdxBarLargeButton;
    btnManejoVacinas: TdxBarLargeButton;
    btnManejoLactacao: TdxBarButton;
    btnManejoExames: TdxBarButton;
    btnManejoSuplementacao: TdxBarButton;
    btnManejoConfinamento: TdxBarButton;
    btnManejoDesmamamento: TdxBarButton;
    btnManejoMudanca: TdxBarButton;
    btnManejoCalendario: TdxBarButton;
    btnManejoReprodu��o: TdxBarButton;
    btnManejoPesagem: TdxBarLargeButton;
    btnManejoAlimentacao: TdxBarLargeButton;
    btnManejoConsultaVacinacao: TdxBarLargeButton;
    btnManejoConsultaPesagem: TdxBarLargeButton;
    btnManejoConsultaAlimentacao: TdxBarLargeButton;
    BarAjudaTutorial: TdxBar;
    btnAjudaTutorial: TdxBarLargeButton;
    btnManejoRegistroBaixa: TdxBarLargeButton;
    BarMovimentacao: TdxBar;
    btnMovimentacaoCompra: TdxBarLargeButton;
    btnMovimentacaoVenda: TdxBarLargeButton;
    btnMovimentacaoDespesasAnimais: TdxBarLargeButton;
    btnMovimentacaoReceita: TdxBarLargeButton;
    btnMovimentacaoDespesa: TdxBarLargeButton;
    btnMovimentacaoLeiloes: TdxBarLargeButton;
    BarEstoque: TdxBar;
    dxBarButton1: TdxBarButton;
    btnEstoqueAlimento: TdxBarLargeButton;
    btnEstoqueVacina: TdxBarLargeButton;
    btnEstoqueFerramenta: TdxBarLargeButton;
    rtbFichas: TdxRibbonTab;
    BarFichas: TdxBar;
    btnFichasAnaliseVacina: TdxBarLargeButton;
    btnFichasAnimaisTrabalho: TdxBarLargeButton;
    btnFichasAnimaisSemNumeracao: TdxBarLargeButton;
    btnFichasVenda: TdxBarLargeButton;
    btnFichasCobertura: TdxBarLargeButton;
    btnFichasAnimaisNumerados: TdxBarLargeButton;
    BarRelatorio: TdxBar;
    BtnRelatorioProdutividade: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    BtnRelatorioNatalidade: TdxBarLargeButton;
    BtnRelatorioBaixa: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    BtnRelatorioVacinacao: TdxBarLargeButton;
    BtnRelatorioPesagem: TdxBarButton;
    BtnRelatorioAnimaisCategoria: TdxBarButton;
    BtnRelatorioAlimentacao: TdxBarButton;
    BtnRelatorioAnimalColetivo: TdxBarButton;
    BtnRelatorioAnimalIndividual: TdxBarButton;
    BtnRelatorioEntradaAnimais: TdxBarButton;
    BtnRelatorioAnaliseSintetica: TdxBarButton;
    BtnRelatorioAnimalCampo: TdxBarButton;
    BarGraficos: TdxBar;
    btnGraficoProdutividade: TdxBarLargeButton;
    btnGraficoIdade: TdxBarLargeButton;
    btnGraficoCompra: TdxBarLargeButton;
    btnGraficoBaixa: TdxBarLargeButton;
    btnGraficoNatalidade: TdxBarLargeButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    BtnRelatorioAnimalSemFilho: TdxBarButton;
    BtnRelatorioAnimalComDoenca: TdxBarButton;
    BtnRelatorioContasPagarReceber: TdxBarButton;
    BtnRelatorioCompra: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    BarRelatorioProprietario: TdxBar;
    BtnRelatoriosBaixasExcluidas: TdxBarButton;
    BtnRelatorioEstoqueAnimais: TdxBarButton;
    BtnRelatorioAcessos: TdxBarButton;
    BarUtilitario: TdxBar;
    BtnUtilitarioLembrete: TdxBarLargeButton;
    BtnUtilitarioCalendario: TdxBarLargeButton;
    BtnUtilitarioCalculadora: TdxBarLargeButton;
    btnCadastroCobertura: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCadastroPropriedadeClick(Sender: TObject);
    procedure btnCadastroUsuariosClick(Sender: TObject);
    procedure btnCadastroProprietarioClick(Sender: TObject);
    procedure btnCadastroResponsavelClick(Sender: TObject);
    procedure btnCadastroCriadorClick(Sender: TObject);
    procedure btnCadastroFornecedorClick(Sender: TObject);
    procedure btnCadastroCompradorClick(Sender: TObject);
    procedure btnCadastroRacaClick(Sender: TObject);
    procedure btnCadastroAnimaisClick(Sender: TObject);
    procedure btnCadastroRacaoClick(Sender: TObject);
    procedure btnCadastroDoencaClick(Sender: TObject);
    procedure btnCadastroVacinaClick(Sender: TObject);
    procedure btnCadastroPastosClick(Sender: TObject);
    procedure btnCadastroTanqueClick(Sender: TObject);
    procedure btnCadastroFreezerClick(Sender: TObject);
    procedure btnCadastroBalancaClick(Sender: TObject);
    procedure btnCadastroMarcaClick(Sender: TObject);
    procedure btnCadastroEstoqueSemenClick(Sender: TObject);
    procedure btnCadastroEstoqueEmbrioesClick(Sender: TObject);
    procedure btnCadastroDespesaReceitaClick(Sender: TObject);
    procedure btnCadastroCidadeClick(Sender: TObject);
    procedure btnCadastroUnidadeMedidaClick(Sender: TObject);
    procedure btnManejohistoricoClick(Sender: TObject);
    procedure btnManejoPesagemClick(Sender: TObject);
    procedure btnManejoConsultaPesagemClick(Sender: TObject);
    procedure btnManejoAlimentacaoClick(Sender: TObject);
    procedure btnManejoConsultaAlimentacaoClick(Sender: TObject);
    procedure btnManejoVacinasClick(Sender: TObject);
    procedure btnManejoConsultaVacinacaoClick(Sender: TObject);
    procedure btnManejoRegistroBaixaClick(Sender: TObject);
    procedure btnManejoLactacaoClick(Sender: TObject);
    procedure btnManejoSuplementacaoClick(Sender: TObject);
    procedure btnManejoDesmamamentoClick(Sender: TObject);
    procedure btnManejoConfinamentoClick(Sender: TObject);
    procedure btnManejoExamesClick(Sender: TObject);
    procedure btnManejoReprodu��oClick(Sender: TObject);
    procedure btnManejoMudancaClick(Sender: TObject);
    procedure btnManejoCalendarioClick(Sender: TObject);
    procedure btnEstoqueAlimentoClick(Sender: TObject);
    procedure btnEstoqueVacinaClick(Sender: TObject);
    procedure btnEstoqueFerramentaClick(Sender: TObject);
    procedure btnMovimentacaoCompraClick(Sender: TObject);
    procedure btnMovimentacaoVendaClick(Sender: TObject);
    procedure btnMovimentacaoReceitaClick(Sender: TObject);
    procedure btnMovimentacaoDespesaClick(Sender: TObject);
    procedure btnMovimentacaoDespesasAnimaisClick(Sender: TObject);
    procedure btnMovimentacaoLeiloesClick(Sender: TObject);
    procedure btnFichasAnaliseVacinaClick(Sender: TObject);
    procedure btnFichasVendaClick(Sender: TObject);
    procedure btnFichasCoberturaClick(Sender: TObject);
    procedure btnFichasAnimaisNumeradosClick(Sender: TObject);
    procedure btnFichasAnimaisSemNumeracaoClick(Sender: TObject);
    procedure btnFichasAnimaisTrabalhoClick(Sender: TObject);
    procedure BtnRelatorioProdutividadeClick(Sender: TObject);
    procedure BtnRelatorioNatalidadeClick(Sender: TObject);
    procedure BtnRelatorioBaixaClick(Sender: TObject);
    procedure BtnRelatorioVacinacaoClick(Sender: TObject);
    procedure BtnRelatorioAnimalSemFilhoClick(Sender: TObject);
    procedure BtnRelatorioAnimalComDoencaClick(Sender: TObject);
    procedure BtnRelatorioContasPagarReceberClick(Sender: TObject);
    procedure BtnRelatorioCompraClick(Sender: TObject);
    procedure BtnRelatorioPesagemClick(Sender: TObject);
    procedure BtnRelatorioAnimaisCategoriaClick(Sender: TObject);
    procedure BtnRelatorioAnimalIndividualClick(Sender: TObject);
    procedure BtnRelatorioAnimalColetivoClick(Sender: TObject);
    procedure BtnRelatorioAlimentacaoClick(Sender: TObject);
    procedure BtnRelatorioAnimalCampoClick(Sender: TObject);
    procedure BtnRelatorioEntradaAnimaisClick(Sender: TObject);
    procedure BtnRelatorioAnaliseSinteticaClick(Sender: TObject);
    procedure BtnRelatorioAcessosClick(Sender: TObject);
    procedure BtnRelatoriosBaixasExcluidasClick(Sender: TObject);
    procedure BtnRelatorioEstoqueAnimaisClick(Sender: TObject);
    procedure btnGraficoProdutividadeClick(Sender: TObject);
    procedure btnGraficoCompraClick(Sender: TObject);
    procedure btnGraficoBaixaClick(Sender: TObject);
    procedure btnGraficoNatalidadeClick(Sender: TObject);
    procedure btnGraficoIdadeClick(Sender: TObject);
    procedure BtnUtilitarioLembreteClick(Sender: TObject);
    procedure BtnUtilitarioCalendarioClick(Sender: TObject);
    procedure BtnUtilitarioCalculadoraClick(Sender: TObject);
    procedure btnAjudaTutorialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipalBovino: TfrmPrincipalBovino;

implementation

uses
  UMsgFunctions, USistemaFunctions, UdmConnection,
  UfrmMovimentacaoPropriedade, UfrmMovimentacaoUsuario, UfrmMovimentacaoProprietario,
  UfrmMovimentacaoResponsavel, UfrmMovimentacaoCriador, UfrmMovimentacaoComprador,
  UfrmMovimentacaoFornecedor, UfrmMovimentacaoPasto, UfrmMovimentacaoRacasAnimais,
  UfrmMovimentacaoVacina, UfrmMovimentacaoAnimaisCadastrados, UfrmMovimentacaoPeste,
  UfrmMovimentacaoTanqueLeite, UfrmMovimentacaoFreezer, UfrmMovimentacaoBalanca,
  UfrmMovimentacaoMarcas;

{$R *.dfm}

procedure TfrmPrincipalBovino.btnAjudaTutorialClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnCadastroAnimaisClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoAnimaisCadastrados, frmMovimentacaoAnimaisCadastrados);
end;

procedure TfrmPrincipalBovino.btnCadastroBalancaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoBalanca, frmMovimentacaoBalanca);
end;

procedure TfrmPrincipalBovino.btnCadastroCidadeClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnCadastroCompradorClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoComprador, frmMovimentacaoComprador);
end;

procedure TfrmPrincipalBovino.btnCadastroCriadorClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoCriador, frmMovimentacaoCriador);
end;

procedure TfrmPrincipalBovino.btnCadastroDespesaReceitaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnCadastroDoencaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPeste, frmMovimentacaoPeste);
end;

procedure TfrmPrincipalBovino.btnCadastroEstoqueEmbrioesClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnCadastroEstoqueSemenClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnCadastroFornecedorClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoFornecedor, frmMovimentacaoFornecedor);
end;

procedure TfrmPrincipalBovino.btnCadastroFreezerClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoFreezer, frmMovimentacaoFreezer);
end;

procedure TfrmPrincipalBovino.btnCadastroMarcaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoMarcas, frmMovimentacaoMarcas);
end;

procedure TfrmPrincipalBovino.btnCadastroPastosClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPasto, frmMovimentacaoPasto);
end;

procedure TfrmPrincipalBovino.btnCadastroPropriedadeClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnCadastroProprietarioClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoProprietario, frmMovimentacaoProprietario);
end;

procedure TfrmPrincipalBovino.btnCadastroRacaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoRacasAnimais, frmMovimentacaoRacasAnimais);
end;

procedure TfrmPrincipalBovino.btnCadastroRacaoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnCadastroResponsavelClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoResponsavel, frmMovimentacaoResponsavel);
end;

procedure TfrmPrincipalBovino.btnCadastroTanqueClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoTanqueLeite, frmMovimentacaoTanqueLeite);
end;

procedure TfrmPrincipalBovino.btnCadastroUnidadeMedidaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnCadastroUsuariosClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoUsuario, frmMovimentacaoUsuario);
end;

procedure TfrmPrincipalBovino.btnCadastroVacinaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoVacina, frmMovimentacaoVacina);
end;

procedure TfrmPrincipalBovino.btnEstoqueAlimentoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnEstoqueFerramentaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnEstoqueVacinaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnFichasAnaliseVacinaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnFichasAnimaisNumeradosClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnFichasAnimaisSemNumeracaoClick(
  Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnFichasAnimaisTrabalhoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnFichasCoberturaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnFichasVendaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnGraficoBaixaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnGraficoCompraClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnGraficoIdadeClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnGraficoNatalidadeClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnGraficoProdutividadeClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoAlimentacaoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoCalendarioClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoConfinamentoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoConsultaAlimentacaoClick(
  Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoConsultaPesagemClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoConsultaVacinacaoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoDesmamamentoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoExamesClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejohistoricoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoLactacaoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoMudancaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoPesagemClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoRegistroBaixaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoReprodu��oClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoSuplementacaoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnManejoVacinasClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnMovimentacaoCompraClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnMovimentacaoDespesaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnMovimentacaoDespesasAnimaisClick(
  Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnMovimentacaoLeiloesClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnMovimentacaoReceitaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.btnMovimentacaoVendaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioAcessosClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioAlimentacaoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioAnaliseSinteticaClick(
  Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioAnimaisCategoriaClick(
  Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioAnimalCampoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioAnimalColetivoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioAnimalComDoencaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioAnimalIndividualClick(
  Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioAnimalSemFilhoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioBaixaClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioCompraClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioContasPagarReceberClick(
  Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioEntradaAnimaisClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioEstoqueAnimaisClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioNatalidadeClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioPesagemClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioProdutividadeClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatoriosBaixasExcluidasClick(
  Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnRelatorioVacinacaoClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnUtilitarioCalculadoraClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnUtilitarioCalendarioClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.BtnUtilitarioLembreteClick(Sender: TObject);
begin
  TSistemaFunctions.ExecForm(TfrmMovimentacaoPropriedade, frmMovimentacaoPropriedade);
end;

procedure TfrmPrincipalBovino.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not TMsgFunctions.Question('Deseja realmente fechar o sistema?') then
   Close;
end;

end.
