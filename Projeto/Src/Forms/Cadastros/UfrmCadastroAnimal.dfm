inherited frmCadastroAnimal: TfrmCadastroAnimal
  Caption = 'frmCadastroAnimal'
  ClientHeight = 195
  ClientWidth = 602
  ExplicitWidth = 608
  ExplicitHeight = 224
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Width = 602
    Height = 152
    ExplicitLeft = -290
    ExplicitTop = -309
    ExplicitWidth = 602
    ExplicitHeight = 331
  end
  object gpbLote: TcxGroupBox [1]
    Left = 100
    Top = 4
    Caption = 'Numero do lote:'
    TabOrder = 5
    Height = 44
    Width = 140
    object cedLote: TcxCurrencyEdit
      Left = 10
      Top = 16
      Properties.AssignedValues.DisplayFormat = True
      TabOrder = 0
      Width = 120
    end
  end
  inherited pnlBotoes: TPanel
    Top = 152
    Width = 602
    ExplicitTop = 152
    ExplicitWidth = 602
    inherited btnGravar: TSpeedButton
      Left = 253
      Top = 6
      Width = 46
      ExplicitLeft = 253
      ExplicitTop = 6
      ExplicitWidth = 46
    end
    inherited btnCancelar: TSpeedButton
      Left = 303
      Top = 6
      Width = 46
      ExplicitLeft = 303
      ExplicitTop = 6
      ExplicitWidth = 46
    end
  end
  object gpbCobertura: TcxGroupBox
    Left = 100
    Top = 4
    Caption = 'Numero da Cobertura:'
    TabOrder = 1
    Height = 44
    Width = 140
    object cedCobertura: TcxCurrencyEdit
      Left = 10
      Top = 16
      Properties.AssignedValues.DisplayFormat = True
      TabOrder = 0
      Width = 120
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 250
    Top = 4
    Caption = 'Nome do Animal:'
    TabOrder = 2
    Height = 44
    Width = 345
    object cxTextEdit1: TcxTextEdit
      Left = 10
      Top = 16
      TabOrder = 0
      Width = 325
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 10
    Top = 100
    Caption = 'Pelagem:'
    TabOrder = 3
    Height = 44
    Width = 230
    object cxTextEdit2: TcxTextEdit
      Left = 10
      Top = 16
      TabOrder = 0
      Width = 210
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 250
    Top = 52
    Caption = 'Ra'#231'a:'
    TabOrder = 4
    Height = 44
    Width = 175
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 10
      Top = 16
      Properties.ListColumns = <>
      TabOrder = 0
      Width = 155
    end
  end
  object cxGroupBox7: TcxGroupBox
    Left = 10
    Top = 52
    Caption = 'Data de Nascimento:'
    TabOrder = 6
    Height = 44
    Width = 230
    object cxDateEdit1: TcxDateEdit
      Left = 10
      Top = 16
      TabOrder = 0
      Width = 210
    end
  end
  object rdgOrigem: TcxRadioGroup
    Left = 10
    Top = 4
    Caption = 'Origem:'
    Properties.Items = <
      item
        Caption = 'Lote'
        Value = 'Lote'
      end
      item
        Caption = 'Cobertura '
        Value = 'Cobertura'
      end>
    Properties.OnChange = rdgOrigemPropertiesChange
    ItemIndex = 0
    TabOrder = 7
    Height = 44
    Width = 80
  end
  object cxRadioGroup2: TcxRadioGroup
    Left = 435
    Top = 52
    Caption = 'Sexo:'
    Properties.Items = <
      item
        Caption = 'Macho'
        Value = 'Macho'
      end
      item
        Caption = 'F'#234'mea'
        Value = 'F'#234'mea'
      end>
    ItemIndex = 1
    TabOrder = 8
    Height = 44
    Width = 75
  end
  object cxRadioGroup3: TcxRadioGroup
    Left = 520
    Top = 52
    Caption = 'Desmamado:'
    Properties.Items = <
      item
        Caption = 'Sim'
        Value = 'Sim'
      end
      item
        Caption = 'N'#227'o'
        Value = 'N'#227'o'
      end>
    ItemIndex = 0
    TabOrder = 9
    Height = 44
    Width = 75
  end
  object cxGroupBox8: TcxGroupBox
    Left = 250
    Top = 100
    Caption = 'Categoria:'
    TabOrder = 10
    Height = 44
    Width = 175
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 10
      Top = 16
      Properties.ListColumns = <>
      TabOrder = 0
      Width = 155
    end
  end
  object cxGroupBox9: TcxGroupBox
    Left = 435
    Top = 100
    Caption = 'Peso: '
    TabOrder = 11
    Height = 44
    Width = 160
    object lblKg: TLabel
      Left = 137
      Top = 20
      Width = 13
      Height = 14
      Caption = 'Kg'
    end
    object cxCurrencyEdit3: TcxCurrencyEdit
      Left = 10
      Top = 16
      TabOrder = 0
      Width = 120
    end
  end
end
