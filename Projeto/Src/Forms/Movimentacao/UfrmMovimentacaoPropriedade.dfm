inherited frmMovimentacaoPropriedade: TfrmMovimentacaoPropriedade
  Caption = 'Propriedades Cadastradas'
  ClientHeight = 401
  ClientWidth = 735
  ExplicitWidth = 741
  ExplicitHeight = 430
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnl: TPanel
    Width = 735
    Height = 401
    inherited pnlBotoes: TPanel
      Top = 357
      Width = 733
      inherited btnFechar: TSpeedButton
        Left = 679
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 733
      Height = 356
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 234
      ExplicitTop = 96
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsMov
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1CODEMP: TcxGridDBColumn
          DataBinding.FieldName = 'CODEMP'
        end
        object cxGrid1DBTableView1DTAACE: TcxGridDBColumn
          DataBinding.FieldName = 'DTAACE'
        end
        object cxGrid1DBTableView1BLODBLACE: TcxGridDBColumn
          DataBinding.FieldName = 'BLODBLACE'
          Width = 115
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited dsMov: TDataSource
    DataSet = cdsMov
    Left = 699
    Top = 6
  end
  inherited tlt: TTableListN
    Left = 663
    Top = 6
  end
  object cdsMov: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMov'
    Left = 697
    Top = 53
    object cdsMovCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object cdsMovDTAACE: TDateField
      FieldName = 'DTAACE'
      Required = True
    end
    object cdsMovBLODBLACE: TStringField
      FieldName = 'BLODBLACE'
      Required = True
      Size = 1
    end
  end
  object sdsMov: TSQLDataSet
    SchemaName = '??'
    Active = True
    CommandText = 'SELECT * FROM TBLACE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmConnection.SQLConnection
    Left = 698
    Top = 146
    object sdsMovCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object sdsMovDTAACE: TDateField
      FieldName = 'DTAACE'
      Required = True
    end
    object sdsMovBLODBLACE: TStringField
      FieldName = 'BLODBLACE'
      Required = True
      Size = 1
    end
  end
  object dspMov: TDataSetProvider
    DataSet = sdsMov
    Left = 697
    Top = 100
  end
end
