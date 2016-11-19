inherited frmCadastroBalanca: TfrmCadastroBalanca
  Caption = 'frmCadastroBalanca'
  ClientHeight = 146
  ClientWidth = 307
  ExplicitWidth = 313
  ExplicitHeight = 175
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Width = 307
    Height = 103
  end
  inherited pnlBotoes: TPanel
    Top = 103
    Width = 307
    inherited btnGravar: TSpeedButton
      Left = 104
      ExplicitLeft = 104
    end
    inherited btnCancelar: TSpeedButton
      Left = 154
      ExplicitLeft = 154
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
    Caption = 'Peso M'#225'ximo (Kgs):'
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
