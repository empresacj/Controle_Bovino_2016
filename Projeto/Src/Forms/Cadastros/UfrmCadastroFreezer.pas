unit UfrmCadastroFreezer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, ComCtrls, dxCore, cxDateUtils, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxMaskEdit,
  cxCalendar, cxTextEdit, cxGroupBox, Buttons, ExtCtrls;

type
  TfrmCadastroFreezer = class(TfrmCadastro)
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxGroupBox4: TcxGroupBox;
    cxDateEdit1: TcxDateEdit;
    cxGroupBox3: TcxGroupBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxGroupBox2: TcxGroupBox;
    cxLookupComboBox1: TcxLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroFreezer: TfrmCadastroFreezer;

implementation

{$R *.dfm}

procedure TfrmCadastroFreezer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroFreezer := nil;
end;

end.
