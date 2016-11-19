inherited frmCadastroCidade: TfrmCadastroCidade
  Caption = 'frmCadastroCidade'
  ClientHeight = 147
  ClientWidth = 557
  ExplicitWidth = 563
  ExplicitHeight = 176
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Width = 557
    Height = 104
  end
  inherited pnlBotoes: TPanel
    Top = 104
    Width = 557
    inherited btnGravar: TSpeedButton
      Left = 230
      ExplicitLeft = 230
    end
    inherited btnCancelar: TSpeedButton
      Left = 280
      ExplicitLeft = 280
    end
  end
  object gpbCodigo: TcxGroupBox
    Left = 10
    Top = 4
    Caption = ' C'#243'digo '
    TabOrder = 1
    Height = 44
    Width = 160
    object cedCodigoCidade: TcxCurrencyEdit
      Tag = 1
      Left = 10
      Top = 16
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '#'
      Properties.MaxLength = 7
      TabOrder = 0
      Width = 140
    end
  end
  object gpbCodigoEstadual: TcxGroupBox
    Left = 10
    Top = 52
    Caption = ' C'#243'digo Estadual '
    TabOrder = 2
    Height = 44
    Width = 160
    object edtCodigoEstadual: TcxTextEdit
      Left = 10
      Top = 16
      Properties.Alignment.Horz = taRightJustify
      Properties.MaxLength = 10
      TabOrder = 0
      Width = 140
    end
  end
  object gpbDDD: TcxGroupBox
    Left = 370
    Top = 52
    Caption = ' DDD '
    TabOrder = 3
    Height = 44
    Width = 70
    object edtDDD: TcxTextEdit
      Left = 10
      Top = 16
      Properties.MaxLength = 2
      TabOrder = 0
      Width = 50
    end
  end
  object gpbCEP: TcxGroupBox
    Left = 450
    Top = 52
    Caption = ' C.E.P. '
    TabOrder = 4
    Height = 44
    Width = 100
    object edtCEP: TcxTextEdit
      Left = 10
      Top = 16
      Properties.Alignment.Horz = taRightJustify
      Properties.MaxLength = 8
      TabOrder = 0
      Width = 80
    end
  end
  object gpbDescricao: TcxGroupBox
    Left = 180
    Top = 4
    Caption = ' Descri'#231#227'o '
    TabOrder = 5
    Height = 44
    Width = 370
    object edtDescricaoCidade: TcxTextEdit
      Tag = 2
      Left = 10
      Top = 16
      Properties.MaxLength = 40
      TabOrder = 0
      Width = 350
    end
  end
  object gpbUnidadeFederacao: TcxGroupBox
    Left = 180
    Top = 52
    Caption = ' U.F. '
    TabOrder = 6
    Height = 44
    Width = 70
    object lkeUnidadeFederacao: TcxLookupComboBox
      Tag = 3
      Left = 10
      Top = 16
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODUNDFED'
      Properties.ListColumns = <
        item
          FieldName = 'CODUNDFED'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 0
      Width = 50
    end
  end
  object gpbPais: TcxGroupBox
    Left = 260
    Top = 52
    Caption = ' Pa'#237's '
    TabOrder = 7
    Height = 44
    Width = 100
    object lkePais: TcxLookupComboBox
      Tag = 4
      Left = 10
      Top = 16
      Properties.ClearKey = 16430
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODPAI'
      Properties.ListColumns = <
        item
          FieldName = 'DSCPAI'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 0
      Width = 80
    end
  end
end
