inherited frmCadastroPasto: TfrmCadastroPasto
  Caption = 'Cadastro de Pasto'
  ClientHeight = 242
  ClientWidth = 401
  ExplicitWidth = 407
  ExplicitHeight = 271
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Width = 401
    Height = 199
    ExplicitWidth = 401
    ExplicitHeight = 199
  end
  inherited pnlBotoes: TPanel
    Top = 199
    Width = 401
    ExplicitTop = 199
    ExplicitWidth = 401
    inherited btnGravar: TSpeedButton
      Left = 149
      ExplicitLeft = 149
    end
    inherited btnCancelar: TSpeedButton
      Left = 199
      ExplicitLeft = 199
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 10
    Top = 4
    Caption = 'Identifica'#231#227'o do Pasto:'
    TabOrder = 1
    Height = 44
    Width = 385
  end
  object cxGroupBox2: TcxGroupBox
    Left = 225
    Top = 52
    Caption = 'Capacidade Animais Suportada:'
    TabOrder = 2
    Height = 44
    Width = 170
  end
  object cxGroupBox4: TcxGroupBox
    Left = 225
    Top = 100
    Caption = 'Dimens'#227'o do Campo:'
    TabOrder = 3
    Height = 44
    Width = 170
  end
  object cxRadioGroup1: TcxRadioGroup
    Left = 10
    Top = 52
    Caption = 'Tipo de medi'#231#227'o:'
    Properties.Items = <
      item
        Caption = 'Are (a)'
        Value = 'Are (a)'
      end
      item
        Caption = 'Hectare (ha)'
        Value = 'Hectare (ha)'
      end
      item
        Caption = 'Centiare (ca)'
        Value = 'Centiare (ca)'
      end
      item
        Caption = 'Alqueire do Norte (27.225 m2)'
        Value = 'Alqueire do Norte (27.225 m2)'
      end
      item
        Caption = 'Alqueire Goiano / Mineiro(48.400 m2)'
        Value = 'Alqueire Mineiro /Mineiro(48.400 m2)'
      end
      item
        Caption = 'Alqueire paulista (24.200 m2)'
        Value = 'Alqueire paulista (24.200 m2)'
      end
      item
        Caption = 'Alqueire baiano (96.800 m2)'
        Value = 'Alqueire baiano (96.800 m2)'
      end>
    ItemIndex = 4
    TabOrder = 4
    Height = 140
    Width = 205
  end
  object cxGroupBox3: TcxGroupBox
    Left = 225
    Top = 148
    Caption = 'Orienta'#231#227'o do territ'#243'rio:'
    TabOrder = 5
    Height = 44
    Width = 170
  end
end
