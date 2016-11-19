unit UfrmCadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxGroupBox, cxRadioGroup;

type
  TfrmCadastroFornecedor = class(TfrmCadastro)
    cxRadioGroup1: TcxRadioGroup;
    cxRadioGroup2: TcxRadioGroup;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroFornecedor: TfrmCadastroFornecedor;

implementation

{$R *.dfm}

procedure TfrmCadastroFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroFornecedor := nil;
end;

end.
