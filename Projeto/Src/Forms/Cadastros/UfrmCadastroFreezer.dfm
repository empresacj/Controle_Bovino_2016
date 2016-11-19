inherited frmCadastroFreezer: TfrmCadastroFreezer
  Caption = 'frmCadastroFreezer'
  ClientHeight = 145
  ClientWidth = 307
  ExplicitWidth = 313
  ExplicitHeight = 174
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Width = 307
    Height = 102
    ExplicitWidth = 307
    ExplicitHeight = 102
  end
  inherited pnlBotoes: TPanel
    Top = 102
    Width = 307
    ExplicitTop = 102
    ExplicitWidth = 307
    inherited btnGravar: TSpeedButton
      Left = 113
      ExplicitLeft = 113
    end
    inherited btnCancelar: TSpeedButton
      Left = 163
      ExplicitLeft = 163
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 10
    Top = 4
    Caption = 'Descri'#231#227'o / Identifica'#231#227'o:'
    TabOrder = 1
    Height = 44
    Width = 180
    object cxTextEdit1: TcxTextEdit
      Left = 10
      Top = 16
      TabOrder = 0
      Width = 160
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 10
    Top = 52
    Caption = 'Data Aquisi'#231#227'o:'
    TabOrder = 2
    Height = 44
    Width = 180
    object cxDateEdit1: TcxDateEdit
      Left = 10
      Top = 16
      TabOrder = 0
      Width = 160
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 200
    Top = 52
    Caption = 'Capacidade (Kgs):'
    TabOrder = 3
    Height = 44
    Width = 100
    object cxCurrencyEdit1: TcxCurrencyEdit
      Left = 10
      Top = 16
      Properties.AssignedValues.DisplayFormat = True
      TabOrder = 0
      Width = 80
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 200
    Top = 4
    Caption = 'Marca:'
    TabOrder = 4
    Height = 44
    Width = 100
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 10
      Top = 16
      Properties.ListColumns = <>
      TabOrder = 0
      Width = 80
    end
  end
end
