inherited frmMovimentacaoVacina: TfrmMovimentacaoVacina
  Caption = 'frmMovimentacaoVacina'
  ExplicitWidth = 724
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnl: TPanel
    ExplicitLeft = -1
    ExplicitTop = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 716
      Height = 347
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 234
      ExplicitTop = 96
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
