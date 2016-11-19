unit UfrmCadastroProprietario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls;

type
  TfrmCadastroProprietario = class(TfrmCadastro)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProprietario: TfrmCadastroProprietario;

implementation

{$R *.dfm}

procedure TfrmCadastroProprietario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroProprietario := nil;
end;

end.
