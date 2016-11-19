inherited frmCadastroVacina: TfrmCadastroVacina
  Caption = 'Cadastro de Vacina'
  ClientHeight = 101
  ClientWidth = 574
  ExplicitWidth = 580
  ExplicitHeight = 130
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Width = 574
    Height = 58
  end
  inherited pnlBotoes: TPanel
    Top = 58
    Width = 574
    inherited btnGravar: TSpeedButton
      Left = 241
      Top = 5
      ExplicitLeft = 241
      ExplicitTop = 5
    end
    inherited btnCancelar: TSpeedButton
      Left = 291
      Top = 5
      ExplicitLeft = 291
      ExplicitTop = 5
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 10
    Top = 8
    Caption = 'Descri'#231#227'o:'
    TabOrder = 1
    Height = 44
    Width = 360
  end
  object cxGroupBox2: TcxGroupBox
    Left = 380
    Top = 8
    Caption = 'Dosagem:'
    TabOrder = 2
    Height = 44
    Width = 80
  end
  object cxGroupBox3: TcxGroupBox
    Left = 470
    Top = 8
    Caption = 'Valor por dose:'
    TabOrder = 3
    Height = 44
    Width = 95
  end
end
