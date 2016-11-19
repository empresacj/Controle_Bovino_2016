unit UfrmCadastroPropriedade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxGroupBox, cxRadioGroup;

type
  TfrmCadastroPropriedade = class(TfrmCadastro)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
    cxGroupBox10: TcxGroupBox;
    cxGroupBox11: TcxGroupBox;
    cxRadioGroup1: TcxRadioGroup;
    cxGroupBox13: TcxGroupBox;
    cxGroupBox14: TcxGroupBox;
    cxGroupBox16: TcxGroupBox;
    cxRadioGroup2: TcxRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPropriedade: TfrmCadastroPropriedade;

implementation

{$R *.dfm}

procedure TfrmCadastroPropriedade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroPropriedade := nil;
end;

end.
