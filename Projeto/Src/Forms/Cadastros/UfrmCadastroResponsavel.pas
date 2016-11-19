unit UfrmCadastroResponsavel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Cadastro, Buttons, ExtCtrls;

type
  TfrmCadastroResponsavel = class(TfrmCadastro)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroResponsavel: TfrmCadastroResponsavel;

implementation

{$R *.dfm}

procedure TfrmCadastroResponsavel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroResponsavel := nil;
end;

end.
