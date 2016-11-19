unit UPersistentObject;

interface

uses Classes, DB, Contnrs, DBClient;

type
  TRecordType = (rtFirst, rtLast, rtAll);
  TPersistentObject = class;
  TPersistentObjectClass = class of TPersistentObject;
  TInitObject = procedure(Obj: TPersistentObject) of object;

  // Classe base de persistência
  TPersistentObject = class(TInterfacedPersistent)
  private
    FNew: Boolean;
    FGetChildOnDemand: Boolean;
    FGuid: string;
    FOwner: TObject;
    FOriginalIDValues: TParams;
    // Método para retornar o valor de uma propriedade do objeto
    function GetPropertyValue(PropName: string): string;

  protected
    // Método de classe que retorna o formato da data para operações no banco
    class function DateFormat: string; virtual;
    // Método de classe para setar o valor das properties do objeto com base num dataset
    class procedure SetPropertiesFromDataSet(DataSet: TDataSet;
      PersistentObject: TPersistentObject); virtual;
    procedure SetPropertyFromField(Field: TField; const PropName: string); virtual;
    // Método que retorna se o objeto é novo ou não
    function GetNew: Boolean; virtual;
    // Método para retorna o nome do campo de status do objeto
    function GetStatusField: string; virtual;
    // Método executado no OnCreate para realizar operação de inicialização
    // do objeto
    procedure InitObject; virtual;
    // Método para persistir o objeto no banco
    function Insert: Boolean; virtual; abstract;
    // Método que verifica se uma determinada proprieda é nula
    function IsPropertyNull(const PropName: string): Boolean; virtual;
    // Método para definir o valor a ser considerado como nulo para campos Char
    function NullCharValue(const PropName: string): Char; virtual;
    // Método para definir o valor a ser considerado como nulo para campos Double
    function NullDoubleValue(const PropName: string): Double; virtual;
    // Método para definir o valor a ser considerado como nulo para campos Integer
    function NullIntegerValue(const PropName: string): Integer; virtual;
    // Método para definir o valor a ser considerado como nulo para campos String
    function NullStringValue(const PropName: string): string; virtual;
    // Método para definir o valor padrão para propriedade do tipo Char
    procedure SetDefaultCharPropertyValue(const PropName: string); virtual;
    // Método para definir o valor padrão para propriedade do tipo Double
    procedure SetDefaultDoublePropertyValue(const PropName: string); virtual;
    // Método para definir o valor padrão para propriedade do tipo Integer
    procedure SetDefaultIntegerPropertyValue(const PropName: string); virtual;
    // Método para definir o valor padrão para propriedade do tipo TObject
    procedure SetDefaultObjectPropertyValue(const PropName: string); virtual;
    // Método para definir o valor padrão para propriedade do tipo String
    procedure SetDefaultStringPropertyValue(const PropName: string); virtual;
    // Método para setar os valor padrão de todas as propriedades do objeto
    procedure SetDefaultValues; virtual;
    // Método para atualizar o objeto no banco
    function Update: Boolean; virtual; abstract;

    procedure SetOriginalIdFieldValue(Field: TField);

    property OriginalIDValues: TParams read FOriginalIDValues;
  public
    constructor Create; overload; virtual;
    // Construtor para já inicializar algumas propriedade do objeto
    constructor Create(const DefaultProperties: array of string;
      const DefaultValues: array of Variant); overload; virtual;

    constructor Create(const GetChildOnDemand: Boolean); overload; virtual;

    destructor Destroy; override;

    // Método para copiar as propriedade de outro objeto
    procedure Assign(Source: TPersistent); override;
    // Métodos para retornar a representação textual do objeto
    function AsString: String; virtual;
    // Método para localizar um objeto com base no ID único
    function FindById(const Id: integer): Boolean; virtual;
    // Método de classe para retornar o(s) campos(s) chave do objeto
//    class function GetIdField: TArrayStr; virtual;
    // Método de classe que retorna o nome da tabela
    class function GetTableName: string; virtual;
    // Método para inverter Status do objeto
    procedure InverteStatus;
    // Método de classe que retorna uma instância do objeto como base num registro
    // do dataset
    class function NewInstanceFromDataSet(DataSet: TDataSet; OnInitObject: TInitObject): TPersistentObject; virtual;
    class function NewInstanceFromDataSetSomeFields(DataSet: TDataSet; OnInitObject: TInitObject; aCampos: Array of String; const GetChildOnDemand: Boolean = True): TPersistentObject; virtual;
    // Método que preenche os atributos de um objeto com base num registro do dataset
    class procedure FromDataSet(DataSet: TDataSet; PersistentObject: TPersistentObject; OnInitObject: TInitObject);
    // Método que retorna um novo registro a partir de uma instancia de um objeto.
    class procedure NewRecordDataSetFromInstace(DataSet: TDataSet; PersistentObject: TPersistentObject);
    // Método que posiciona o cursor do dataset na posição do objeto
    class procedure SetDataSetCursorFromObject(DataSet: TDataSet;
      PersistentObject: TPersistentObject);

    class procedure SaveChanges(PersistentObject: TPersistentObject;
      DataSet: TClientDataSet); overload;
    class procedure SaveChanges(PersistentObject: TPersistentObject;
      DataSet: TClientDataSet; UpdateStatus: TUpdateStatus); overload;

    // Método de classe que prepara uma instrução SQL para ser executada
    class function SQLFilter(const Fields: array of string; const Values: array of variant): string;

    // Método para validar a persistencia do objeto no banco
    function IsDuplicated: Boolean; virtual; abstract;

    property Owner: TObject read FOwner write FOwner;
    property New: Boolean read GetNew write FNew;
    property PropertyValue[PropName: string]: string read GetPropertyValue; default;
    property GetChildOnDemand: Boolean read FGetChildOnDemand write FGetChildOnDemand;
  published
    // Método para limpar as propriedades do objeto
    procedure Clear; virtual;
    // Método para excluir o objeto do banco
    function Delete: Boolean; virtual;
    // Método para localizar o objeto com base num filtro
    function Find(const Filter: string; const RecordType: TRecordType = rtAll): Boolean; overload; virtual; abstract;
    // Método para salvar o objeto do banco
    function Save: Boolean; virtual;
  end;

implementation

uses UStringFunctions, TypInfo, SysUtils, UDicionario, Variants, StrUtils,
  UObjectFunctions, FMTBcd, USistemaException;

{ TPersistentObject }

/// <summary>
/// Método para copiar as propriedade de outro objeto
/// </summary>
/// <param name="Source">Objeto original</param>
procedure TPersistentObject.Assign(Source: TPersistent);
var
  obj: TPersistentObject;
  PropList: TPropList;
  c: Integer;
begin
  if Source.ClassType = Self.ClassType then
   begin
    c := GetPropList(Self.ClassInfo, tkProperties, @PropList);

    for c := 0 to Pred(c) do
     // Copiando somente propriedades que não são somente leitura
     if Assigned(PropList[c].SetProc) then
      case PropType(Source, PropList[c].Name) of
       tkChar, tkString, tkLString, tkUString: SetStrProp(Self, PropList[c].Name, GetStrProp(Source, PropList[c].Name));
       tkFloat: SetFloatProp(Self, PropList[c].Name, GetFloatProp(Source, PropList[c].Name));
       tkInteger: SetOrdProp(Self, PropList[c].Name, GetOrdProp(Source, PropList[c].Name));
       tkClass: SetObjectProp(Self, PropList[c].Name, GetObjectProp(Source, PropList[c].Name));
      end;
   end
  else raise EConvertError.CreateFmt('Cannot assign a %s object to a %s object', [Source.ClassName, Self.ClassName]);
end;

/// <summary>
/// Método para limpar as propriedades do objeto
/// </summary>
function TPersistentObject.AsString: String;
begin

end;

procedure TPersistentObject.Clear;
var
  PropList: TPropList;
  i, c: Integer;
begin
  c := GetPropList(Self.ClassInfo, tkProperties, @PropList);

  for i := 0 to Pred(c)  do
   // As propriedade iniciadas com _ ou que não possuem set (somente leitura) não devem ser inicializadas
   if (Copy(PropList[i].Name, 1, 1) <> '_') and Assigned(PropList[i].SetProc) then
    case PropType(Self, PropList[i].Name) of
     tkChar   : Self.SetDefaultCharPropertyValue(PropList[i].Name);
     tkClass  : Self.SetDefaultObjectPropertyValue(PropList[i].Name);
     tkFloat  : Self.SetDefaultDoublePropertyValue(PropList[i].Name);
     tkInteger: Self.SetDefaultIntegerPropertyValue(PropList[i].Name);
     tkString, tkLString, tkUString : Self.SetDefaultStringPropertyValue(PropList[i].Name);
    end;

  Self.New := True;
end;

constructor TPersistentObject.Create(const GetChildOnDemand: Boolean);
begin
  Self.Create;
  
  Self.GetChildOnDemand := GetChildOnDemand;
end;

/// <summary>
/// Construtor para já inicializar algumas propriedade do objeto
/// </summary>
/// <param name="DefaultProperties">Propriedades a serem inicializadas</param>
/// <param name="DefaultValues">Valores das propriedades</param>
constructor TPersistentObject.Create(const DefaultProperties: array of string;
  const DefaultValues: array of Variant);
var
  i: Integer;
begin
  if Length(DefaultProperties) <> Length(DefaultValues) then
   raise EInvalidOperation.Create('The size of DefaultProperties and DefaultValues is different.');

  Self.Create;

  Self.New := True;

  for i := Low(DefaultProperties) to High(DefaultProperties) do
   TObjectFunctions.SetPrimitiveTypeProperty(Self, DefaultProperties[i], DefaultValues[i]);
end;

constructor TPersistentObject.Create;
begin
  inherited Create;

  Self.New := True;
  Self.GetChildOnDemand := True;
  Self.SetDefaultValues;
  Self.InitObject;

  {$IFDEF TRACE}
  if TraceAtivo then
   FGuid := TInternalLog.CriarInstancia(Self.ClassType);
  {$ENDIF}
end;

/// <summary>
/// Método de classe que retorna o formato da data para operações no banco
/// </summary>
/// <returns>Formato da data, que pode ser usado na função FormatDateTime</returns>
class function TPersistentObject.DateFormat: string;
begin
  Result := 'YYYY-MM-DD';
end;
/// <summary>
/// Método para excluir o objeto do banco
/// </summary>
/// <returns>True se a exclusão foi feita com sucesso e False caso contrário</returns>
function TPersistentObject.Delete: Boolean;
begin
  Result := True;
end;

destructor TPersistentObject.Destroy;
begin
  FOriginalIDValues.Free;
  {$IFDEF TRACE}
  if TraceAtivo then
   TInternalLog.DestruirInstancia(FGuid);
  {$ENDIF}
  inherited;
end;

/// <summary>
/// Método para localizar um objeto com base no ID único
/// </summary>
/// <param name="Id">Identificador do objeto</param>
/// <returns>True se localizou e False caso contrário</returns>
function TPersistentObject.FindById(const Id: integer): Boolean;
begin
//  Result := (Length(Self.GetIdField) = 1) and Self.Find(Format('%s = %d', [Dicionario.Valor(Self.GetIdField[0]), Id]));
end;

class procedure TPersistentObject.FromDataSet(DataSet: TDataSet;
  PersistentObject: TPersistentObject; OnInitObject: TInitObject);
begin
  if DataSet.Active then
   begin
    if Assigned(OnInitObject) then
     OnInitObject(PersistentObject);

    SetPropertiesFromDataSet(DataSet, PersistentObject);
   end;
end;

/// <summary>
/// Método de classe para retornar o(s) campos(s) chave do objeto
/// </summary>
/// <returns>Um array com os campos chave do objeto</returns>
//class function TPersistentObject.GetIdField: TArrayStr;
//begin
//  SetLength(Result, 1);
//  Result[0] := 'ID';
//end;

/// <summary>
/// Método que retorna se o objeto é novo, ou seja não foi persistido ainda, ou não
/// </summary>
/// <returns>True se o objeto é novo e False caso contrário</returns>
function TPersistentObject.GetNew: Boolean;
begin
  Result := FNew;
end;

/// <summary>
/// Método para retornar o valor de uma propriedade do objeto
/// </summary>
/// <param name="PropName">Nome da propriedade</param>
/// <returns>Valor da propriedade</returns>
function TPersistentObject.GetPropertyValue(PropName: string): string;
begin
  PropName := Dicionario.Significado(PropName);

  // Verificando se o atributo é publicado
  if IsPublishedProp(Self, PropName) then
   // Se o tipo do atributo for Classe, retorna vazio
   if PropType(Self, PropName) in [tkClass] then
    Result := ''
   else Result := GetPropValue(Self, PropName);
end;

/// <summary>
/// Método para retorna o nome do campo de status do objeto
/// </summary>
/// <returns>Nome do campo de status</returns>
function TPersistentObject.GetStatusField: string;
begin
end;

/// <summary>
/// Método de classe que retorna o nome da tabela
/// </summary>
/// <returns>Nome da tabela no banco</returns>
class function TPersistentObject.GetTableName: string;
begin
  Result := StringReplace(Self.ClassName, 'T', '', []);
end;

/// <summary>
/// Método executado no OnCreate para realizar operação de inicialização
/// do objeto
/// </summary>
procedure TPersistentObject.InitObject;
begin
  FOriginalIDValues := TParams.Create(nil);
end;

/// <summary>
/// Método para inverter Status do objeto
/// </summary>
procedure TPersistentObject.InverteStatus;
var
  sStatus: string;
begin
  // Verificando se o objeto possui campo de status
  if IsPublishedProp(Self, Self.GetStatusField) then
   begin
    sStatus := GetStrProp(Self, Self.GetStatusField);
    SetStrProp(Self, Self.GetStatusField, IfThen(sStatus = 'A', 'I', 'A'));
   end;
end;

/// <summary>
/// Método que verifica se uma determinada proprieda é nula
/// </summary>
/// <param name="PropName">Nome da propriedade</param>
/// <returns>True se a propriedade estiver nula e False caso contrário</returns>
function TPersistentObject.IsPropertyNull(const PropName: string): Boolean;
begin
  case PropType(Self, PropName) of
   tkChar: Result := GetStrProp(Self, PropName) = Self.NullCharValue(PropName);
   tkString, tkLString, tkUString: Result := GetStrProp(Self, PropName) = Self.NullStringValue(PropName);
   tkInteger: Result := GetOrdProp(Self, PropName) = Self.NullIntegerValue(PropName);
   tkFloat: Result := GetFloatProp(Self, PropName) = Self.NullDoubleValue(PropName);
  end;
end;

/// <summary>
/// Método de classe que retorna uma instância do objeto como base num registro
/// do dataset
/// </summary>
/// <param name="DataSet">Dataset de origem dos dados</param>
/// <param name="OnInitObject">Evento de inicialização do objeto</param>
/// <returns>Objeto instanciado</returns>
class function TPersistentObject.NewInstanceFromDataSet(
  DataSet: TDataSet; OnInitObject: TInitObject): TPersistentObject;
begin
  if DataSet.Active then
   begin
    Result     := Self.Create;
    Result.New := DataSet.IsEmpty;

    Self.FromDataSet(DataSet, Result, OnInitObject);
   end
  else Result := nil;
end;

class function TPersistentObject.NewInstanceFromDataSetSomeFields(
  DataSet: TDataSet; OnInitObject: TInitObject; aCampos: array of String;
  const GetChildOnDemand: Boolean): TPersistentObject;
var
  i: Integer;
begin
  if DataSet.Active then
   begin
    Result     := Self.Create(GetChildOnDemand);
    Result.New := False;

    if Assigned(OnInitObject) then
     OnInitObject(Result);

    for i := Low(aCampos) to High(aCampos) do
     // Verificando se a propriedade com o nome do campo é publicada para setar o valor
     if IsPublishedProp(Result, Dicionario.Significado(aCampos[i])) then
      if not DataSet.FieldByName(aCampos[i]).IsNull then
       SetPropValue(Result, Dicionario.Significado(DataSet.FieldByName(aCampos[i]).FieldName), DataSet.FieldByName(aCampos[i]).Value);
   end
  else Result := nil;
end;

class procedure TPersistentObject.NewRecordDataSetFromInstace(DataSet: TDataSet;
  PersistentObject: TPersistentObject);
var
  c, i: Integer;
  PropList: TPropList;
  sFieldName: string;
  objField: TField;
begin
  if PersistentObject.New then DataSet.Append
  else DataSet.Edit;

  // Obtendo lista de propriedades do objeto
  c    := GetPropList(PersistentObject.ClassInfo, tkProperties, @PropList);
  for i := 0 to c - 1 do
   begin
    if Copy(PropList[i].Name, 1, 1) <> '_' then
     begin
      sFieldName := Dicionario.Valor(PropList[i].Name);
      objField   := DataSet.FindField(sFieldName);

      if not Assigned(objField) then
       Continue;

      if PersistentObject.IsPropertyNull(PropList[i].Name) then
       begin
        if not objField.IsNull then
         objField.Clear;

        Continue;
       end;

      case PropType(PersistentObject, PropList[i].Name) of
       tkInteger: objField.AsInteger := GetOrdProp(PersistentObject, PropList[i].Name);
       { TODO : Verificar }
       tkFloat:
        begin
         if objField.DataType in [ftFMTBcd, ftBCD] then
          objField.AsBCD := DoubleToBcd(GetFloatProp(PersistentObject, PropList[i].Name))
         else objField.AsFloat := GetFloatProp(PersistentObject, PropList[i].Name);
        end;
       tkChar, tkString, tkLString, tkUString: objField.AsString := GetStrProp(PersistentObject, PropList[i].Name);
      else raise ESistemaException.CreateFmt('Type %s is not supported.', [GetEnumName(TypeInfo(TTypeKind), Integer(PropType(PersistentObject, PropList[i].Name)))]);
      end;
     end;
   end;

  DataSet.Post;
end;

/// <summary>
/// Método para definir o valor a ser considerado como nulo para campos Char
/// </summary>
/// <returns>Valor a ser considerado como nulo para a propriedade</returns>
function TPersistentObject.NullCharValue(const PropName: string): Char;
begin
  Result := ' ';
end;

/// <summary>
/// Método para definir o valor a ser considerado como nulo para campos Double
/// </summary>
/// <returns>Valor a ser considerado como nulo para a propriedade</returns>
function TPersistentObject.NullDoubleValue(const PropName: string): Double;
begin
  Result := 0.0;
end;

/// <summary>
/// Método para definir o valor a ser considerado como nulo para campos Integer
/// </summary>
/// <returns>Valor a ser considerado como nulo para a propriedade</returns>
function TPersistentObject.NullIntegerValue(const PropName: string): Integer;
begin
  Result := 0;
end;

/// <summary>
/// Método para definir o valor a ser considerado como nulo para campos String
/// </summary>
/// <returns>Valor a ser considerado como nulo para a propriedade</returns>
function TPersistentObject.NullStringValue(const PropName: string): string;
begin
  Result := '';
end;

/// <summary>
/// Método para salvar o objeto do banco
/// </summary>
/// <returns></returns>
function TPersistentObject.Save: Boolean;
begin
  if Self.New then Result := Self.Insert
  else Result := Self.Update;
end;

class procedure TPersistentObject.SaveChanges(
  PersistentObject: TPersistentObject; DataSet: TClientDataSet;
  UpdateStatus: TUpdateStatus);
begin
  DataSet.StatusFilter := [UpdateStatus];
  DataSet.First;

  while not DataSet.EOF do
   begin
    if DataSet.UpdateStatus <> UpdateStatus then
     begin
      DataSet.Next;
      Continue;
     end;

    Self.FromDataSet(DataSet, PersistentObject, nil);

    PersistentObject.New := DataSet.UpdateStatus = usInserted;

    if DataSet.UpdateStatus = usDeleted then
     PersistentObject.Delete
    else PersistentObject.Save;

    PersistentObject.Clear;

    DataSet.Next;
   end;
end;

class procedure TPersistentObject.SaveChanges(
  PersistentObject: TPersistentObject; DataSet: TClientDataSet);
begin
  DataSet.DisableControls;

  try
   SaveChanges(PersistentObject, DataSet, usInserted);
   SaveChanges(PersistentObject, DataSet, usModified);
   SaveChanges(PersistentObject, DataSet, usDeleted);
  finally
   DataSet.StatusFilter := []; 
   DataSet.EnableControls;
  end;
end;

class procedure TPersistentObject.SetDataSetCursorFromObject(DataSet: TDataSet;
  PersistentObject: TPersistentObject);
var
  i: Integer;
//  IdFields: TArrayStr;
  IdValues: Array of Variant;
begin
//  IdFields := Self.GetIdField;
//  SetLength(IdValues, Length(IdFields));
//
//  for i := 0 to Length(IdFields) - 1 do
//   begin
//    if IsPublishedProp(PersistentObject, IdFields[i]) then
//     begin
//      IdValues[i] := PersistentObject.GetPropertyValue(IdFields[i]);
//      IdFields[i] := Dicionario.Valor(IdFields[i]);
//     end;
//   end;
//
//  DataSet.Locate(TStringFunctions.ArrayToStr(IdFields, ';'), IdValues, []);
end;

/// <summary>
/// Método para definir o valor padrão para propriedade do tipo Char
/// </summary>
/// <param name="PropName">Nome da propriedade</param>
procedure TPersistentObject.SetDefaultCharPropertyValue(
  const PropName: string);
begin
  SetStrProp(Self, PropName, ' ');
end;

/// <summary>
/// Método para definir o valor padrão para propriedade do tipo Double
/// </summary>
/// <param name="PropName">Nome da propriedade</param>
procedure TPersistentObject.SetDefaultDoublePropertyValue(
  const PropName: string);
begin
  SetFloatProp(Self, PropName, 0);
end;

/// <summary>
/// Método para definir o valor padrão para propriedade do tipo Integer
/// </summary>
/// <param name="PropName">Nome da propriedade</param>
procedure TPersistentObject.SetDefaultIntegerPropertyValue(
  const PropName: string);
begin
  SetOrdProp(Self, PropName, 0);
end;

/// <summary>
/// Método para definir o valor padrão para propriedade do tipo Object
/// </summary>
/// <param name="PropName">Nome da propriedade</param>
procedure TPersistentObject.SetDefaultObjectPropertyValue(
  const PropName: string);
begin

end;

/// <summary>
/// Método para definir o valor padrão para propriedade do tipo String
/// </summary>
/// <param name="PropName">Nome da propriedade</param>
procedure TPersistentObject.SetDefaultStringPropertyValue(
  const PropName: string);
begin
  SetStrProp(Self, PropName, '');
end;

/// <summary>
/// Método para setar os valor padrão de todas as propriedades do objeto
/// </summary>
procedure TPersistentObject.SetDefaultValues;
begin

end;

class procedure TPersistentObject.SetPropertiesFromDataSet(DataSet: TDataSet;
  PersistentObject: TPersistentObject);
var
  i: Integer;
  sCampo: string;
begin
  for i := 0 to DataSet.FieldCount - 1 do
   begin
    if not DataSet.Fields[i].IsNull then
     begin
      sCampo := Dicionario.Significado(DataSet.Fields[i].FieldName);

      PersistentObject.SetPropertyFromField(DataSet.Fields[i], sCampo);
     end;
   end;
end;

procedure TPersistentObject.SetOriginalIdFieldValue(Field: TField);
var
  objParam: TParam;
begin
  objParam := Self.OriginalIDValues.FindParam(Field.FieldName);

  if not Assigned(objParam) then
   objParam := Self.OriginalIDValues.Add as TParam;

  objParam.ParamType := ptInput;
  objParam.AssignField(Field);
end;

procedure TPersistentObject.SetPropertyFromField(Field: TField;
  const PropName: string);
begin
  // Verificando se a propriedade com o nome do campo é publicada para setar o valor
  if IsPublishedProp(Self, PropName) then
   begin
//    if TStringFunctions.Contains(PropName, Self.GetIdField, False) then
     Self.SetOriginalIdFieldValue(Field);

    SetPropValue(Self, PropName, Field.Value);
   end;
end;

/// <summary>
/// Método de classe que prepara uma instrução SQL para ser executada
/// </summary>
/// <param name="Fields">Campos do filtro</param>
/// <param name="Values">Valores</param>
/// <returns>String formatada para a consulta</returns>
class function TPersistentObject.SQLFilter(const Fields: array of string;
  const Values: array of variant): string;
var
  i: Integer;
  sField : string;
begin
  // Definindo cláusula WHERE
  Result := '';

  for i := Low(Fields) to High(Fields) do
   begin
    // Obtendo nome do campo
    sField := TStringFunctions.ExtractSymbols(Fields[i]);
    sField := StringReplace(Fields[i], sField, Dicionario.Valor(sField), [rfReplaceAll]);

    Result := Format('%s AND %s ', [Result, sField]);

    case VarType(Values[i]) of
     varString, varUString : Result := Result + QuotedStr(string(Values[i]));
     varInteger : Result := Result + StringReplace(Values[i], '.', '', [rfReplaceAll]);
     varDate    : Result := Result + QuotedStr(FormatDateTime(Self.DateFormat, Values[i]));
     varDouble  : Result := Result + StringReplace(Values[i], '.', '', [rfReplaceAll]);
    end;
   end;

  // Ajustando cláusula
  if Result <> '' then
   System.Delete(Result, 1, 5);
end;

end.
