unit USistemaControle;

interface

uses UControle, SqlExpr, Controls, DBClient, DBXCommon, Classes;

type
  TSistemaControle = class (TControle)
  private
    FCurrentTransaction: TDBXTransaction;
  protected
    property CurrentTransaction: TDBXTransaction read FCurrentTransaction;
  public
    constructor Create(SQLConnection: TSQLConnection); override;
    destructor Destroy; override;
    procedure CopiarQuery(const Message: string);
    function StartNewTransaction: TDBXTransaction; overload;
    function StartNewTransaction(const Isolation: integer): TDBXTransaction; overload;
    function InTransaction: boolean;
    procedure StartTransaction; overload;
    procedure StartTransaction(const Isolation: integer); overload;
    procedure Commit(var Transaction: TDBXTransaction); overload;
    procedure Commit; overload;
    procedure Rollback(var Transaction: TDBXTransaction); overload;
    procedure Rollback; overload;
    procedure ReportFileDeviceCreate(Sender: TObject);

//  published
//    property MesAno: TMesAno read FMesAno write FMesAno;
  end;

var
  Sistema: TSistemaControle;

implementation

uses Clipbrd, ppReport, ppTypes, ppXlsDevice;

{ TSistemaControle }

procedure TSistemaControle.Commit(var Transaction: TDBXTransaction);
begin
  Self.SQLConnection.CommitFreeAndNil(Transaction);
end;

procedure TSistemaControle.Commit;
begin
  if Self.InTransaction then
   Self.Commit(Self.FCurrentTransaction);
end;

procedure TSistemaControle.CopiarQuery(const Message: string);
begin
  Clipboard.AsText := Message;
end;

constructor TSistemaControle.Create(SQLConnection: TSQLConnection);
begin
  inherited;
//  FMesAno := TMesAno.Create(Date);
//  IMesAno(FMesAno)._AddRef;
end;

destructor TSistemaControle.Destroy;
begin
  inherited;
end;

function TSistemaControle.InTransaction: boolean;
begin
  Result := Self.SQLConnection.InTransaction;
end;

procedure TSistemaControle.ReportFileDeviceCreate(Sender: TObject);
begin
  if TppReport(Sender).FileDevice is TppXlsDeviceBase then
   begin
    TppReport(Sender).XLSSettings.ExportComponents    := [ecText, ecImage, ecRichText, ecBarCode, ecTable, ecOther];
    TppReport(Sender).XLSSettings.IncludeSingleHeader := True;
   end;

  if TppReport(Sender).FileDevice is TppXlsDataDevice then
   begin
    TppXlsDataDevice(TppReport(Sender).FileDevice).DefaultBands := [btDetail, btGroupHeader, btGroupFooter, btSummary];
//    TppReportFunctions.ConfigureXLSDataExport(TppReport(Sender));
   end;
end;

procedure TSistemaControle.Rollback;
begin
  if Self.InTransaction then
   Self.Rollback(Self.FCurrentTransaction);
end;

procedure TSistemaControle.Rollback(var Transaction: TDBXTransaction);
begin
  if Self.SQLConnection.InTransaction then
   Self.SQLConnection.RollbackFreeAndNil(Transaction);
end;

function TSistemaControle.StartNewTransaction: TDBXTransaction;
begin
  Result := Self.SQLConnection.BeginTransaction;
end;

procedure TSistemaControle.StartTransaction;
begin
  Self.FCurrentTransaction := Self.StartNewTransaction;
end;

function TSistemaControle.StartNewTransaction(
  const Isolation: integer): TDBXTransaction;
begin
  Result := Self.SQLConnection.BeginTransaction(Isolation);
end;

procedure TSistemaControle.StartTransaction(const Isolation: integer);
begin
  Self.FCurrentTransaction := Self.StartNewTransaction(Isolation);
end;

initialization

end.
