inherited frmCadastroCriador: TfrmCadastroCriador
  Caption = 'frmCadastroCriador'
  ClientHeight = 293
  ClientWidth = 526
  ExplicitWidth = 532
  ExplicitHeight = 322
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Width = 526
    Height = 250
    ExplicitWidth = 526
    ExplicitHeight = 250
  end
  inherited pnlBotoes: TPanel
    Top = 250
    Width = 526
    ExplicitTop = 250
    ExplicitWidth = 526
    inherited btnGravar: TSpeedButton
      Left = 199
      ExplicitLeft = 199
    end
    inherited btnCancelar: TSpeedButton
      Left = 249
      ExplicitLeft = 249
    end
  end
  object cxGroupBox11: TcxGroupBox
    Left = 270
    Top = 200
    Caption = 'Cidade:'
    TabOrder = 1
    Height = 44
    Width = 250
  end
  object cxGroupBox10: TcxGroupBox
    Left = 400
    Top = 150
    Caption = 'Numero:'
    TabOrder = 2
    Height = 44
    Width = 120
  end
  object cxGroupBox9: TcxGroupBox
    Left = 270
    Top = 150
    Caption = 'CEP:'
    TabOrder = 3
    Height = 44
    Width = 120
  end
  object cxGroupBox8: TcxGroupBox
    Left = 10
    Top = 150
    Caption = 'Endere'#231'o:'
    TabOrder = 4
    Height = 44
    Width = 250
  end
  object cxGroupBox7: TcxGroupBox
    Left = 10
    Top = 200
    Caption = 'Complemento:'
    TabOrder = 5
    Height = 44
    Width = 250
  end
  object cxGroupBox6: TcxGroupBox
    Left = 10
    Top = 102
    Caption = 'Telefone Principal:'
    TabOrder = 6
    Height = 44
    Width = 120
  end
  object cxGroupBox5: TcxGroupBox
    Left = 140
    Top = 102
    Caption = 'Telefone Secund'#225'rio:'
    TabOrder = 7
    Height = 44
    Width = 120
  end
  object cxGroupBox4: TcxGroupBox
    Left = 270
    Top = 102
    Caption = 'E-mail:'
    TabOrder = 8
    Height = 44
    Width = 250
  end
  object cxGroupBox2: TcxGroupBox
    Left = 400
    Top = 4
    Caption = 'Identifica'#231#227'o:'
    TabOrder = 9
    Height = 44
    Width = 120
  end
  object cxGroupBox3: TcxGroupBox
    Left = 10
    Top = 52
    Caption = 'Nome:'
    TabOrder = 10
    Height = 44
    Width = 510
  end
  object cxRadioGroup2: TcxRadioGroup
    Left = 270
    Top = 4
    Caption = 'Tipo Identifica'#231#227'o:'
    Properties.Items = <
      item
        Caption = 'RG'
      end
      item
        Caption = 'Inscri'#231#227'o Est.'
      end>
    ItemIndex = 0
    TabOrder = 11
    Height = 44
    Width = 120
  end
  object cxGroupBox1: TcxGroupBox
    Left = 140
    Top = 4
    Caption = 'Inscri'#231#227'o:'
    TabOrder = 12
    Height = 44
    Width = 120
  end
  object cxRadioGroup1: TcxRadioGroup
    Left = 10
    Top = 4
    Caption = 'Tipo de Inscri'#231#227'o:'
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'CPF'
        Value = 'CPF'
      end
      item
        Caption = 'CNPJ'
        Value = 'CNPJ'
      end>
    ItemIndex = 0
    TabOrder = 13
    Height = 44
    Width = 120
  end
end
