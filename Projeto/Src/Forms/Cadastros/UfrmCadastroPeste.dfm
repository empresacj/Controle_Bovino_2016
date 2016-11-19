inherited frmCadastroPeste: TfrmCadastroPeste
  Caption = 'frmCadastroPeste'
  ClientHeight = 146
  ClientWidth = 264
  ExplicitWidth = 270
  ExplicitHeight = 175
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Width = 264
    Height = 103
  end
  inherited pnlBotoes: TPanel
    Top = 103
    Width = 264
    inherited btnGravar: TSpeedButton
      Left = 84
      ExplicitLeft = 84
    end
    inherited btnCancelar: TSpeedButton
      Left = 138
      ExplicitLeft = 138
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 10
    Top = 4
    Caption = 'Descri'#231#227'o Peste/Doen'#231'a:'
    TabOrder = 1
    Height = 44
    Width = 250
    object cxTextEdit1: TcxTextEdit
      Left = 10
      Top = 16
      TabOrder = 0
      Width = 230
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 10
    Top = 52
    Caption = 'Grau Periculosidade:'
    TabOrder = 2
    Height = 44
    Width = 120
    object cxComboBox1: TcxComboBox
      Left = 10
      Top = 16
      Properties.Items.Strings = (
        '1 - Baixo;'
        '2 - Moderado;'
        '3 - Alto.')
      TabOrder = 0
      Text = '1 - Baixo;'
      Width = 100
    end
  end
  object cxRadioGroup1: TcxRadioGroup
    Left = 140
    Top = 52
    Caption = 'Necessita Veterin'#225'rio?'
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Sim'
        Value = 'Sim'
      end
      item
        Caption = 'N'#227'o'
        Value = 'N'#227'o'
      end>
    TabOrder = 3
    Height = 44
    Width = 120
  end
end
