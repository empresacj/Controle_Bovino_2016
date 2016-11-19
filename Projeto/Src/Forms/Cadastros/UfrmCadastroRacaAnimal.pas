unit UfrmCadastroRacaAnimal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxGroupBox, cxRadioGroup;

type
  TfrmCadastroRacaAnimal = class(TfrmCadastro)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxRadioGroup1: TcxRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroRacaAnimal: TfrmCadastroRacaAnimal;

implementation

{$R *.dfm}

procedure TfrmCadastroRacaAnimal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroRacaAnimal := nil;
end;

end.
