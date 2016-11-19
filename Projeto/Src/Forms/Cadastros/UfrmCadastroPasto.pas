unit UfrmCadastroPasto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxGroupBox, cxRadioGroup;

type
  TfrmCadastroPasto = class(TfrmCadastro)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxRadioGroup1: TcxRadioGroup;
    cxGroupBox3: TcxGroupBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPasto: TfrmCadastroPasto;

implementation

{$R *.dfm}

procedure TfrmCadastroPasto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroPasto := nil;
end;

end.
