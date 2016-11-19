unit UfrmCadastroPeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox,
  cxRadioGroup;

type
  TfrmCadastroPeste = class(TfrmCadastro)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxRadioGroup1: TcxRadioGroup;
    cxComboBox1: TcxComboBox;
    cxTextEdit1: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPeste: TfrmCadastroPeste;

implementation

{$R *.dfm}

procedure TfrmCadastroPeste.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroPeste := nil;
end;

end.
