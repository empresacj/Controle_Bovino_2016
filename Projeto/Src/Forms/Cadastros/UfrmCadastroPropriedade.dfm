inherited frmCadastroPropriedade: TfrmCadastroPropriedade
  Caption = 'Cadastro de Propriedade'
  ClientHeight = 393
  ClientWidth = 594
  ExplicitWidth = 600
  ExplicitHeight = 422
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Width = 594
    Height = 350
    ExplicitWidth = 786
    ExplicitHeight = 350
  end
  inherited pnlBotoes: TPanel
    Top = 350
    Width = 594
    ExplicitTop = 350
    ExplicitWidth = 594
    inherited btnGravar: TSpeedButton
      Left = 235
      ExplicitLeft = 235
    end
    inherited btnCancelar: TSpeedButton
      Left = 285
      ExplicitLeft = 285
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 524
    Top = 52
    Caption = 'Numero:'
    TabOrder = 1
    Height = 44
    Width = 66
  end
  object cxGroupBox2: TcxGroupBox
    Left = 10
    Top = 4
    Caption = 'Descri'#231#227'o:'
    TabOrder = 2
    Height = 44
    Width = 580
  end
  object cxGroupBox3: TcxGroupBox
    Left = 10
    Top = 52
    Caption = 'Endere'#231'o:'
    TabOrder = 3
    Height = 44
    Width = 360
  end
  object cxGroupBox4: TcxGroupBox
    Left = 380
    Top = 52
    Caption = 'CEP:'
    TabOrder = 4
    Height = 44
    Width = 134
  end
  object cxGroupBox5: TcxGroupBox
    Left = 10
    Top = 100
    Caption = 'Complemento:'
    TabOrder = 5
    Height = 44
    Width = 360
  end
  object cxGroupBox6: TcxGroupBox
    Left = 380
    Top = 100
    Caption = 'Cidade:'
    TabOrder = 6
    Height = 44
    Width = 210
  end
  object cxGroupBox7: TcxGroupBox
    Left = 170
    Top = 148
    Caption = 'Inscri'#231#227'o:'
    TabOrder = 7
    Height = 44
    Width = 200
  end
  object cxGroupBox8: TcxGroupBox
    Left = 380
    Top = 148
    Caption = 'Inscri'#231#227'o Estadual:'
    TabOrder = 8
    Height = 44
    Width = 210
  end
  object cxGroupBox9: TcxGroupBox
    Left = 10
    Top = 196
    Caption = 'SISBOV'
    TabOrder = 9
    Height = 44
    Width = 150
  end
  object cxGroupBox10: TcxGroupBox
    Left = 170
    Top = 196
    Caption = 'Propriet'#225'rio:'
    TabOrder = 10
    Height = 44
    Width = 200
  end
  object cxGroupBox11: TcxGroupBox
    Left = 378
    Top = 196
    Caption = 'Respons'#225'vel:'
    TabOrder = 11
    Height = 44
    Width = 210
  end
  object cxRadioGroup1: TcxRadioGroup
    Left = 10
    Top = 148
    Caption = 'Tipo da Inscri'#231#227'o:'
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = 'CPF'
        Value = 'CPF'
      end
      item
        Caption = 'CNPJ'
        Value = 'CNPJ'
      end
      item
        Caption = 'CEI'
        Value = 'CEI'
      end>
    ItemIndex = 0
    TabOrder = 12
    Height = 44
    Width = 150
  end
  object cxGroupBox13: TcxGroupBox
    Left = 170
    Top = 244
    Caption = 'E-mail:'
    TabOrder = 13
    Height = 44
    Width = 200
  end
  object cxGroupBox14: TcxGroupBox
    Left = 380
    Top = 244
    Caption = 'Telefone(s):'
    TabOrder = 14
    Height = 92
    Width = 208
  end
  object cxGroupBox16: TcxGroupBox
    Left = 170
    Top = 292
    Caption = 'Tipo Manejo:'
    TabOrder = 15
    Height = 44
    Width = 200
  end
  object cxRadioGroup2: TcxRadioGroup
    Left = 10
    Top = 244
    Caption = 'Assinatura dos Relat'#243'rios:'
    Properties.Items = <
      item
        Caption = 'Propriet'#225'rio'
        Value = 'Propriet'#225'rio'
      end
      item
        Caption = 'Respons'#225'vel'
        Value = 'Respons'#225'vel'
      end
      item
        Caption = 'Propriet'#225'rio/Respons'#225'vel'
        Value = 'Propriet'#225'rio/Respons'#225'vel'
      end>
    TabOrder = 16
    Height = 92
    Width = 150
  end
end
