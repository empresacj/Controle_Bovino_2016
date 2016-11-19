unit UControle;

interface

uses SQLExpr, UPersistentObjectDBX, DBClient, Classes, UIntObserver;

type
  // Classe base para os controladores do sistema
  TControle = class(TInterfacedObject)
  private
   FSQLConnection: TSQLConnection;
  protected
   function DeleteDependencies(PersistentObject: TPersistentObjectDBX): boolean; virtual;
   procedure SetSQLConnection(const Value: TSQLConnection); virtual;
  public
   constructor Create(SQLConnection: TSQLConnection); virtual;

   class function BringCollectionToDataSet(SQLConnection: TSQLConnection;
     PersistentClass: TPersistentObjectDBXClass; const Filter: String = '';
     const Sort: String = ''): TClientDataSet; overload;

   class function BringCollectionToDataSet(SQLConnection: TSQLConnection;
     const TableName: string; const Filter: String = ''; const Sort: String = ''):
     TClientDataSet; overload; virtual;

   // Método de classe para retornar os registros de uma determinada consulta.
   function BringCollectionToDataSet(PersistentClass: TPersistentObjectDBXClass; Filter: String; Sort: String = ''): TClientDataSet; overload; virtual;
   // Método de classe para retornar os registros de uma determinada consulta.
   function BringCollectionToDataSet(const TableName, Filter: String; Sort: String = ''): TClientDataSet; overload; virtual;
   // Método para excluir objetos do banco
   function Delete(PersistentObject: TPersistentObjectDBX): boolean; virtual;

   property SQLConnection: TSQLConnection read FSQLConnection write SetSQLConnection;
  end;

implementation

uses UdbExpressFunctions, UcdsFunctions, SysUtils, UStringFunctions;

{ TControle }

function TControle.BringCollectionToDataSet(const TableName, Filter: String; Sort: String = ''): TClientDataSet;
var
  objQry: TSQLQuery;
begin
  try
   objQry := TdbExpressFunctions.SQLDataSet(TSQLQuery, Self.SQLConnection) as TSQLQuery;

   Result := TClientDataSet.Create(nil);

   // Montando consulta
   objQry.SQL.Add(Format('SELECT * FROM %s', [TableName]));
   // Verificando se foi passado Filter
   if TStringFunctions.IsFull(Filter) then
    objQry.SQL.Add(Format('WHERE %s', [Filter]));
   // Verificando se foi passado Sort
   if TStringFunctions.IsFull(Sort) then
    objQry.SQL.Add(Format('ORDER BY %s', [Sort]));

   TCdsFunctions.GetClientDataSet(objQry, Result);
  finally
   FreeAndNil(objQry);
  end;
end;

function TControle.BringCollectionToDataSet(
  PersistentClass: TPersistentObjectDBXClass; Filter,
  Sort: String): TClientDataSet;
begin
  Result := BringCollectionToDataSet(PersistentClass.GetTableName, Filter, Sort);
end;

class function TControle.BringCollectionToDataSet(SQLConnection: TSQLConnection;
  PersistentClass: TPersistentObjectDBXClass; const Filter,
  Sort: String): TClientDataSet;
begin
  with Self.Create(SQLConnection) do
   begin
    Result := BringCollectionToDataSet(PersistentClass, Filter, Sort);
    Free;
   end;
end;

class function TControle.BringCollectionToDataSet(SQLConnection: TSQLConnection;
  const TableName, Filter, Sort: String): TClientDataSet;
begin
  with Self.Create(SQLConnection) do
   begin
    Result := BringCollectionToDataSet(TableName, Filter, Sort);
    Free;
   end;
end;

constructor TControle.Create(SQLConnection: TSQLConnection);
begin
  FSQLConnection := SQLConnection;
end;

function TControle.Delete(PersistentObject: TPersistentObjectDBX): boolean;
var
  trs: TTransactionDesc;
begin
  try
   Result             := False;

   trs.IsolationLevel := xilREADCOMMITTED;
   trs.TransactionID  := 100;

   Self.SQLConnection.StartTransaction(trs);

   Result := Self.DeleteDependencies(PersistentObject) and PersistentObject.Delete;

   if Result then
    Self.SQLConnection.Commit(trs);
  finally
   if Self.SQLConnection.InTransaction then
    Self.SQLConnection.Rollback(trs);
  end;
end;

function TControle.DeleteDependencies(PersistentObject: TPersistentObjectDBX): boolean;
begin
  Result := True;
end;

procedure TControle.SetSQLConnection(const Value: TSQLConnection);
begin
  FSQLConnection := Value;
end;

end.
