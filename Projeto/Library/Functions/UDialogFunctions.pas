unit UDialogFunctions;

interface

type
  TDialogFunctions = class
  published
    class function OpenDialog(const Title, Filter, DefaultExt: string; var FileName: string): Boolean;
    class function SaveDialog(const Title, Filter, DefaultExt: string; var FileName: string): Boolean;
  end;

implementation

uses Dialogs;

{ TDialogFunctions }

class function TDialogFunctions.OpenDialog(const Title, Filter,
  DefaultExt: string; var FileName: string): Boolean;
var
  objDialog: TOpenDialog;
begin
  objDialog := TOpenDialog.Create(nil);
  try
   objDialog.DefaultExt := DefaultExt;
   objDialog.FileName   := FileName;
   objDialog.Filter     := Filter;
   objDialog.Title      := Title;

   Result := objDialog.Execute();

   if Result then
    FileName := objDialog.FileName;
  finally
   objDialog.Free;
  end;
end;

class function TDialogFunctions.SaveDialog(const Title, Filter,
  DefaultExt: string; var FileName: string): Boolean;
var
  objDialog: TSaveDialog;
begin
  objDialog := TSaveDialog.Create(nil);
  try
   objDialog.DefaultExt := DefaultExt;
   objDialog.FileName   := FileName;
   objDialog.Filter     := Filter;
   objDialog.Title      := Title;

   Result := objDialog.Execute();

   if Result then
    FileName := objDialog.FileName;
  finally
   objDialog.Free;
  end;
end;

end.
