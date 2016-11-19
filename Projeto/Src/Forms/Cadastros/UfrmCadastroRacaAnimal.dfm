inherited frmCadastroRacaAnimal: TfrmCadastroRacaAnimal
  Caption = 'Cadastro da Raca do Animal'
  ClientHeight = 142
  ClientWidth = 326
  ExplicitWidth = 332
  ExplicitHeight = 171
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Width = 326
    Height = 99
    ExplicitWidth = 326
    ExplicitHeight = 74
  end
  inherited pnlBotoes: TPanel
    Top = 99
    Width = 326
    ExplicitTop = 99
    ExplicitWidth = 326
    inherited btnGravar: TSpeedButton
      Left = 116
      ExplicitLeft = 116
    end
    inherited btnCancelar: TSpeedButton
      Left = 166
      ExplicitLeft = 166
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 10
    Top = 4
    Caption = 'Nome da Ra'#231'a:'
    TabOrder = 1
    Height = 44
    Width = 190
  end
  object cxGroupBox2: TcxGroupBox
    Left = 10
    Top = 48
    Caption = 'Irforma'#231#245'es Adicionais:'
    TabOrder = 2
    Height = 44
    Width = 310
  end
  object cxRadioGroup1: TcxRadioGroup
    Left = 210
    Top = 4
    Caption = 'Tipo Predominante:'
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Corte'
        Value = 'Corte'
      end
      item
        Caption = 'Leite'
        Value = 'Leite'
      end>
    ItemIndex = 0
    TabOrder = 3
    Height = 44
    Width = 110
  end
end
