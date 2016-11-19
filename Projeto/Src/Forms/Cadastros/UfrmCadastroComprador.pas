unit UfrmCadastroComprador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxGroupBox, cxRadioGroup;

type
  TfrmCadastroComprador = class(TfrmCadastro)
    cxGroupBox11: TcxGroupBox;
    cxGroupBox10: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxRadioGroup2: TcxRadioGroup;
    cxGroupBox1: TcxGroupBox;
    cxRadioGroup1: TcxRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroComprador: TfrmCadastroComprador;

implementation

{$R *.dfm}

procedure TfrmCadastroComprador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroComprador := nil;
end;

end.
