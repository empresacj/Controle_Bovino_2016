unit UfrmCadastroTanqueLeite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, ComCtrls, dxCore, cxDateUtils, cxCurrencyEdit,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxGroupBox;

type
  TfrmCadastroTanqueLeite = class(TfrmCadastro)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxDateEdit1: TcxDateEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroTanqueLeite: TfrmCadastroTanqueLeite;

implementation

{$R *.dfm}

procedure TfrmCadastroTanqueLeite.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroTanqueLeite := nil;
end;

end.
