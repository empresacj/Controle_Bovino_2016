unit Movimentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, JvSpeedButton, Buttons, ExtCtrls, StdCtrls, DB, Cadastro,
  TabListN, DBClient, UPersistentObject, Clipbrd, cxGraphics,
  cxGridDBTableView, cxGridCustomTableView, UPersistentObjectDBX;

type
  TfrmMovimentacao = class(TForm)
    dsMov: TDataSource;
    pnl: TPanel;
    pnlBotoes: TPanel;
    btnExcluir: TSpeedButton;
    btnIncluir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnFechar: TSpeedButton;
    btnFirst: TSpeedButton;
    btnPrevious: TSpeedButton;
    btnNext: TSpeedButton;
    btnLast: TSpeedButton;
    tlt: TTableListN;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dsMovStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    bExec                    : Boolean;
    FStatus                  : String;  // Identifica o nome do campos de status
    FTemStatus               : Boolean;
    FTitle                   : String;
    FOpenMovDataSet          : boolean;
    procedure SetStatus(Status : String);
    procedure CheckGridCustomDraw;
  public
   { Public declarations }
   procedure CheckComponents;
   procedure HabButton(const Value: Boolean = True);
   procedure OpenDataSet(bForce: Boolean = False);
   procedure FormLookup(OriginField, LocalField: TField; InstanceClass: TComponentClass; var Reference); Overload;
   procedure FormLookup(OriginField: TField; var LocalValue: Variant; InstanceClass: TComponentClass; var Reference); Overload;
   procedure ExcluirRegistro; virtual;
   procedure AfterConstruction; override;

   property Status                 : String         read FStatus                  write SetStatus;
   property Title                  : String         read FTitle                   write FTitle;
   property OpenMovDataSet         : boolean        read FOpenMovDataSet          write FOpenMovDataSet;
  protected
   procedure FindInsertedRecord(PersistentObject: TPersistentObject); virtual;
   procedure OrderDatasetToReport(cds: TClientDataset; dbGrid: TcxGridDBTableView);
   function LoadReferences: Boolean; virtual;
   procedure Initialize; virtual;
   procedure DeInitialize; virtual;
   procedure InitPersistentObject(PersistentObject: TPersistentObjectDBX); virtual;

   class function GetPersistentClass: TPersistentObjectDBXClass; virtual;
   class function GetFormClass: TfrmCadastroClass; virtual;

   procedure PerformObjectInsert;
   procedure PerformObjectEdit;
   procedure PerformDBInsert;
   procedure PerformDBEdit;

   procedure GridCustomDraw(Sender: TcxCustomGridTableView;
    ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean); virtual;
  end;

var
  frmMovimentacao: TfrmMovimentacao;

implementation

uses
  Math, USistemaControle, UStringFunctions, UCdsFunctions, cxGridCustomView,
  cxGridDBDataDefinitions, UMsgFunctions, USistemaFunctions;

{$R *.dfm}

function TfrmMovimentacao.LoadReferences: Boolean;
begin
  Result := False;
end;

procedure TfrmMovimentacao.SetStatus(Status: String);
begin
  FStatus    := Status;
  FTemStatus := TStringFunctions.IsFull(FStatus);
end;

class function TfrmMovimentacao.GetFormClass: TfrmCadastroClass;
begin
  Result := nil;
end;

class function TfrmMovimentacao.GetPersistentClass: TPersistentObjectDBXClass;
begin
  Result := nil;
end;

procedure TfrmMovimentacao.HabButton(const Value: Boolean = True);
begin
  btnIncluir.Enabled  := Value and btnIncluir.Visible;
  btnEditar.Enabled   := Value and btnEditar.Visible;
  btnExcluir.Enabled  := Value and btnExcluir.Visible;
  btnFirst.Enabled    := Value;
  btnPrevious.Enabled := btnFirst.Enabled;
  btnNext.Enabled     := btnFirst.Enabled;
  btnLast.Enabled     := btnFirst.Enabled;
end;

procedure TfrmMovimentacao.OpenDataSet(bForce: Boolean = False);
var
  Item : TItem;
begin
//  if not (bExec or bForce) then Exit;
//
//  if Assigned(dsMov.DataSet) and (tlt.IndexOf(dsMov.DataSet) = -1) and (dsMov.DataSet.State <> dsInsert) and Self.OpenMovDataSet then
//   begin
//    Item := tlt.Items.Add;
//    Item.Table := dsMov.DataSet;
//   end;
//
//  tlt.Reopen;
//
//  if Assigned(dsMov.DataSet) and (dsMov.DataSet.IsEmpty) then Self.LoadDefaultFilterData(Self);
//
//  bExec := False;
end;

procedure TfrmMovimentacao.btnIncluirClick(Sender: TObject);
begin
  if (Self.GetFormClass <> nil) and (Self.GetPersistentClass <> nil) then
   PerformObjectInsert
  else PerformDBInsert;
end;

procedure TfrmMovimentacao.btnFirstClick(Sender: TObject);
begin
//  if Sender = btnFirst then dsMov.DataSet.First
//  else if Sender = btnPrevious then dsMov.DataSet.Prior
//  else if Sender = btnNext then dsMov.DataSet.Next
//  else if Sender = btnLast then dsMov.DataSet.Last;
//
//  btnFirst.Enabled    := not dsMov.DataSet.BOF;
//  btnPrevious.Enabled := btnFirst.Enabled;
//  btnLast.Enabled     := not dsMov.DataSet.EOF;
//  btnNext.Enabled     := btnLast.Enabled;
end;

procedure TfrmMovimentacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.OnHint := nil;
  Release;
end;

procedure TfrmMovimentacao.btnEditarClick(Sender: TObject);
begin
  if (Self.GetFormClass <> nil) and (Self.GetPersistentClass <> nil) then
   PerformObjectEdit
  else PerformDBEdit;
end;

procedure TfrmMovimentacao.FindInsertedRecord(PersistentObject: TPersistentObject);
begin
  PersistentObject.Find('', rtLast);
end;

procedure TfrmMovimentacao.FormActivate(Sender: TObject);
begin
//  Self.LoadReferences;
//  Self.OpenDataSet;
//
//  if dsMov.DataSet.Tag = 3 then btnIncluir.Click;
end;

procedure TfrmMovimentacao.btnExcluirClick(Sender: TObject);
begin
 if dsMov.DataSet.RecordCount = 0 then
  begin
   TMsgFunctions.Error('N�o h� registros para serem exclu�dos!');
   Abort;
  end;

 if not TMsgFunctions.Question('Deseja realmente excluir o registro selecionado ?') then
  Abort;

 ExcluirRegistro;
end;

procedure TfrmMovimentacao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMovimentacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
   begin
    case Key of
     VK_UP   : if btnFirst.Enabled then btnFirst.Click;
     VK_LEFT : if btnPrevious.Enabled then btnPrevious.Click;
     VK_RIGHT: if btnNext.Enabled then btnNext.Click;
     VK_DOWN : if btnLast.Enabled then btnLast.Click;
    end;

    //Key := 0;
   end
  {$IFDEF DEBUG}
   else if Shift = [ssShift] then
    begin
     if Key = VK_UP then
     begin
      Clipboard.AsText := Self.Name;
      TMsgFunctions.Atention(Self.Name);
     end;
    end
  {$ENDIF}
   else
   case Key of
    VK_RETURN: if (ActiveControl is TcxGridSite) and btnEditar.Enabled then btnEditar.Click else Perform(WM_NextDlgCtl, 0, 0);
    VK_DELETE: if (ActiveControl is TcxGridSite) and btnExcluir.Enabled then btnExcluir.Click;
    VK_INSERT: if btnIncluir.Enabled then btnIncluir.Click;
    VK_ESCAPE: if btnFechar.Enabled then btnFechar.Click;
    VK_F5    : dsMov.DataSet.Refresh;
   end;
end;

procedure TfrmMovimentacao.FormShow(Sender: TObject);
begin
  HabButton;
end;

procedure TfrmMovimentacao.CheckComponents;
begin
  CheckGridCustomDraw;
end;

procedure TfrmMovimentacao.CheckGridCustomDraw;
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
   if (Self.Components[i] is TcxGridDBTableView) then
    (Self.Components[i] as TcxGridDBTableView).OnCustomDrawCell  := GridCustomDraw;
end;

procedure TfrmMovimentacao.Initialize;
begin
//
end;

procedure TfrmMovimentacao.InitPersistentObject(PersistentObject: TPersistentObjectDBX);
begin

end;

procedure TfrmMovimentacao.DeInitialize;
begin
//
end;

procedure TfrmMovimentacao.ExcluirRegistro;
begin
  dsMov.DataSet.Delete;
end;

procedure TfrmMovimentacao.FormLookup(OriginField, LocalField: TField; InstanceClass: TComponentClass; var Reference);
begin
 if TForm(Reference) = nil then
  Application.CreateForm(InstanceClass, Reference);

 OriginField.DataSet.Tag := 3;

 TForm(Reference).ShowModal;

 if OriginField.DataSet.Tag = 4 then
  LocalField.Value := OriginField.Value;

 OriginField.DataSet.Tag := 0;
end;

procedure TfrmMovimentacao.FormLookup(OriginField: TField; var LocalValue: Variant; InstanceClass: TComponentClass; var Reference);
begin
 if TForm(Reference) = nil then
  Application.CreateForm(InstanceClass, Reference);

 OriginField.DataSet.Tag := 3;

 TForm(Reference).ShowModal;

 if OriginField.DataSet.Tag = 4 then
  LocalValue := OriginField.Value;

 OriginField.DataSet.Tag := 0;
end;

procedure TfrmMovimentacao.PerformDBEdit;
begin
  HabButton(False);
  if dsMov.DataSet.RecordCount = 0 then
   begin
    btnIncluir.Click;
    HabButton(True);
    Abort;
   end
  else
   begin
    if dsMov.DataSet.Tag = 0 then dsMov.DataSet.Tag := 1;
    dsMov.DataSet.Edit;
   end;
end;

procedure TfrmMovimentacao.PerformDBInsert;
begin
  HabButton(False);
//  if dsMov.DataSet.Tag <> 3 then dsMov.DataSet.Tag := 2;
//  if not (dsMov.DataSet.State in [dsEdit, dsInsert]) then dsMov.DataSet.Append;

end;

procedure TfrmMovimentacao.PerformObjectEdit;
var
  PersistentObject: TPersistentObjectDBX;
  BookMark : Pointer;
begin
  if dsMov.DataSet.RecordCount = 0 then
   begin
    btnIncluir.Click;
    Abort;
   end;

  PersistentObject := Self.GetPersistentClass.Create(Sistema.SQLConnection);

  try
   Self.GetPersistentClass.FromDataSet(dsMov.DataSet, PersistentObject, nil);

   PersistentObject.New := false;
   BookMark             := dsMov.DataSet.GetBookmark;

   if Self.GetFormClass.Execute(PersistentObject, nil) then
    begin
     dsMov.DataSet.Refresh;
    end;


   dsMov.DataSet.GotoBookmark(BookMark);
   dsMov.DataSet.FreeBookmark(BookMark);
  finally
   PersistentObject.Free;
  end;
end;

procedure TfrmMovimentacao.PerformObjectInsert;
var
  PersistentObject: TPersistentObjectDBX;
  bIncluiu: boolean;
begin
  PersistentObject := Self.GetPersistentClass.Create(Sistema.SQLConnection);

  Self.InitPersistentObject(PersistentObject);

  try
   bIncluiu := Self.GetFormClass.Execute(PersistentObject, nil);

   if dsMov.DataSet.State = dsInsert then
    dsMov.DataSet.Cancel;

   dsMov.DataSet.Refresh;

   if dsMov.DataSet.Tag = 3 then
    begin
     if bIncluiu then
      begin
       Self.FindInsertedRecord(PersistentObject);
       PersistentObject.SetDataSetCursorFromObject(dsMov.DataSet, PersistentObject);

       dsMov.DataSet.Tag := 4;
      end;

     PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  finally
   PersistentObject.Free;
  end;
end;

procedure TfrmMovimentacao.dsMovStateChange(Sender: TObject);
begin
  HabButton(dsMov.State = dsBrowse);
end;

procedure TfrmMovimentacao.FormCreate(Sender: TObject);
begin
  // Setando vari�vel para abrir tabelas
  bExec           := True;
  // Armazendando caption da tela para uso futuro
  Self.Title          := Self.Caption;
  Self.OpenMovDataSet := True;
  Self.CheckComponents;
  Initialize;
  // Previne que o evento FormShow seja chamado na instancia��o de forms do tipo MDI Child.
  if Self.FormStyle = fsMDIChild then
   Exclude(FFormState, fsVisible);
end;

procedure TfrmMovimentacao.FormDestroy(Sender: TObject);
begin
  DeInitialize;
end;

procedure TfrmMovimentacao.AfterConstruction;
begin
  if Self.FormStyle = fsMDIChild then
   Exclude(FFormState, fsVisible);

  inherited;
end;

procedure TfrmMovimentacao.OrderDatasetToReport(cds: TClientDataset; dbGrid: TcxGridDBTableView);
var
 s: String;
begin
  s := '';
  if dbGrid.SortedItemCount > 0 then
   s := TcxGridItemDBDataBinding(dbGrid.SortedItems[0].DataBinding).FieldName;

  if (s <> '') then
   begin
    TCdsFunctions.DefineOrder(cds, s, false);
    cds.Close;
    cds.Open;
   end;
end;

procedure TfrmMovimentacao.GridCustomDraw(Sender: TcxCustomGridTableView;
    ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (FTemStatus) then
   if Copy(Trim(VarToStr(AViewInfo.GridRecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName(FStatus).Index])), 1, 1) = 'I' then
    ACanvas.Font.Color := clRed;
end;

end.
