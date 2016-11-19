unit UdbExpressFunctions;

interface

uses SqlExpr, SimpleDS, Classes;

type
  TCustomSQLDataSetClass = class of TCustomSQLDataSet;

  TdbExpressFunctions = class
  private
    class function SetConfiguration: Boolean;
  public
    class function GetStoredProcInputParams(SQLConnection: TSQLConnection;
      const StoredProcName: string; const AsParams: Boolean = False): TStringList;
    class procedure PrepareStoredProc(SQLConnection: TSQLConnection;
      var SQLStoredProc: TSQLStoredProc; StoredProcName: String); overload;
  published
    class procedure PrepareStoredProc(SQLConnection: TSQLConnection;
      var SQLQuery: TSQLQuery; StoredProcName: String; const Select: Boolean = False); overload;
    class function Repeated(SQLConnnection: TSQLConnection; const TableName, FieldName: String;
                            const KeyField: array of String; const FieldValue: Variant;
                            const KeyValue: array of Variant): Boolean;
    class function SimpleDataSet(SQLConnection: TSQLConnection): TSimpleDataSet;
    class function SQLDataSet(SQLDataSetClass: TCustomSQLDataSetClass;
      SQLConnection: TSQLConnection): TCustomSQLDataSet;
  end;

implementation

uses Forms, Controls, SysUtils, UStringFunctions, UMsgFunctions, StrUtils, DB,
     Windows, Variants;

// Função que retorna os parâmetros de entrada de uma determinada storedprocedure
class function TdbExpressFunctions.GetStoredProcInputParams(
  SQLConnection: TSQLConnection; const StoredProcName: string;
  const AsParams: Boolean): TStringList;
var
  objQry: TSQLQuery;
begin
  Result := TStringList.Create;
  objQry := Self.SQLDataSet(TSQLQuery, SQLConnection) as TSQLQuery;

  try
   objQry.Sql.Add('SELECT RDB$PARAMETER_NAME               ');
   objQry.Sql.Add('FROM   RDB$PROCEDURE_PARAMETERS         ');
   objQry.Sql.Add('WHERE  RDB$PROCEDURE_NAME = :sProcedure ');
   objQry.Sql.Add('AND    RDB$PARAMETER_TYPE = 0           ');
   objQry.Sql.Add('ORDER BY RDB$PARAMETER_NUMBER           ');
   objQry.Params[0].AsString := StoredProcName;
   objQry.Open;

   while not objQry.EOF do
    begin
     Result.Add(IfThen(AsParams, ':') + Trim(objQry.Fields[0].AsString));

     objQry.Next;
    end;

   objQry.Close;
  finally
   FreeAndNil(objQry);
  end;
end;

// Prepara um TSQLStoredProc para ser executado
class procedure TdbExpressFunctions.PrepareStoredProc(SQLConnection: TSQLConnection;
   var SQLStoredProc: TSQLStoredProc; StoredProcName: String);
var
  lst: TList;
begin
  if SQLStoredProc = nil then Exit;

  lst := TList.Create;

  SQLConnection.GetProcedureParams(StoredProcName, lst);
  SQLStoredProc.SQLConnection  := SQLConnection;
  SQLStoredProc.StoredProcName := StoredProcName;
  SQLStoredProc.Params.Clear;

  LoadParamListItems(SQLStoredProc.Params, lst);

  FreeProcParams(lst);
end;

class procedure TdbExpressFunctions.PrepareStoredProc(
  SQLConnection: TSQLConnection; var SQLQuery: TSQLQuery;
  StoredProcName: String; const Select: Boolean);
var
  objStl: TStringList;
  sSQL: string;
  sParams: string;
begin
  //if not Assigned(SQLQuery) then
   SQLQuery := TdbExpressFunctions.SQLDataSet(TSQLQuery, SQLConnection) as TSQLQuery;

  // Chamando função para retornar os parâmetros da StringList
  objStl := Self.GetStoredProcInputParams(SQLConnection, StoredProcName, True);

  sSQL    := IfThen(Select, 'SELECT * FROM', 'EXECUTE PROCEDURE');
  sParams := IfThen(objStl.Count > 0, Format('(%s)', [objStl.CommaText]));

  // Montando instrução de execução
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add(Format('%s %s%s', [sSQL, StoredProcName, sParams]));

  objStl.Free;
end;

class function TdbExpressFunctions.Repeated(SQLConnnection: TSQLConnection;
  const TableName, FieldName: String; const KeyField: array of String;
  const FieldValue: Variant; const KeyValue: array of Variant): Boolean;
var
  i : Integer;
  objQry : TSQLQuery;
begin
  objQry := SQLDataSet(TSQLQuery, SQLConnnection) as TSQLQuery;

  objQry.SQL.Add('SELECT ' + FieldName + ' FROM ' + TableName +
                 ' WHERE ' + FieldName + ' = :vFldVal ');

  for i := Low(KeyField) to High(KeyField) do
   objQry.SQL.Add(' AND ' + KeyField[i] + ' :vKeyVal' + IntToStr(i));

  case VarType(FieldValue) of
   varString  : objQry.Params[0].AsString   := FieldValue;
   varInteger : objQry.Params[0].AsInteger  := FieldValue;
   varDouble  : objQry.Params[0].AsFloat    := FieldValue;
   varDate    : objQry.Params[0].AsDate     := FieldValue;
   varBoolean : objQry.Params[0].AsBoolean  := FieldValue;
  end;

  // Atribuindo parâmetros
  for i := Low(KeyField) to High(KeyField) do
   case VarType(KeyValue[i]) of
     varString  : objQry.Params[i + 1].AsString   := KeyValue[i];
     varInteger : objQry.Params[i + 1].AsInteger  := KeyValue[i];
     varDouble  : objQry.Params[i + 1].AsFloat    := KeyValue[i];
     varDate    : objQry.Params[i + 1].AsDate     := KeyValue[i];
     varBoolean : objQry.Params[i + 1].AsBoolean  := KeyValue[i];
    end;

  objQry.Open;

  Result := not objQry.IsEmpty;

  objQry.Close;

  FreeAndNil(objQry);
end;

// Função para mostrar o form de configuração
class function TdbExpressFunctions.SetConfiguration: Boolean;
var
  cls: TPersistentClass;
  frm: TForm;
begin
  Result := False;
  cls    := GetClass('TfrmCfgCnx');

  if cls = nil then Exit;

  frm    := TFormClass(cls).Create(nil);
  Result := frm.ShowModal = mrOK;

  FreeAndNil(frm);
end;

class function TdbExpressFunctions.SimpleDataSet(
  SQLConnection: TSQLConnection): TSimpleDataSet;
begin
  Result := TSimpleDataSet.Create(nil);
  Result.Connection := SQLConnection;
end;

class function TdbExpressFunctions.SQLDataSet(SQLDataSetClass: TCustomSQLDataSetClass;
  SQLConnection: TSQLConnection): TCustomSQLDataSet;
begin
  Result := SQLDataSetClass.Create(nil);
  Result.SQLConnection := SQLConnection;
end;


end.
