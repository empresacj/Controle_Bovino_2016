unit UfraExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, cxGraphics, cxGrid, cxGridTableView,
  cxGridDBTableView, Generics.Collections;

type
  TfraExport = class(TFrame)
    acl: TActionList;
    actExportarExcel: TAction;
    actExportarHTML: TAction;
    actExportarXML: TAction;
    actCustomizacao: TAction;
    ImageList: TcxImageList;
    procedure actExportarExcelExecute(Sender: TObject);
    procedure actExportarHTMLExecute(Sender: TObject);
    procedure actExportarXMLExecute(Sender: TObject);
    procedure actCustomizacaoExecute(Sender: TObject);
  private
    FShowCustomizeButton: Boolean;
    FTableView: TcxGridDBTableView;
    FGrid: TcxGrid;
    FKeyDownEventList: TDictionary<TcxGridDBTableView,TKeyEvent>;
    procedure ExportData(Sender: TObject; const Filter, DefaultExt: string);
    function GetComponentView(Sender: TObject): TcxGridDBTableView;

    procedure CustomNavigationButtonClick(Sender: TObject;
     AButtonIndex: Integer; var ADone: Boolean);

    procedure AddCustomNavigationButton(const ImageIndex: Integer; const Hint: string);

    procedure TableViewKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;


    property Grid: TcxGrid read FGrid;
    property TableView: TcxGridDBTableView read FTableView;
  published
    procedure ConfigGrid(Parent: TComponent);
    property ShowCustomizeButton: Boolean read FShowCustomizeButton write FShowCustomizeButton;

  end;

implementation

uses
  cxCustomData, Math, Buttons, cxNavigator, cxGridExportLink, UDialogFunctions,
  UMsgFunctions, cxGridCustomTableView, cxCurrencyEdit,
  cxGridCustomView;

{$R *.dfm}


procedure TfraExport.actCustomizacaoExecute(Sender: TObject);
var
  objGrid  : TcxGridDBTableView;
begin
  objGrid := GetComponentView(Sender);

  objGrid.Controller.Customization := True;
end;

procedure TfraExport.actExportarExcelExecute(Sender: TObject);
begin
  Self.ExportData(Sender, 'Arquivos XLSX (*.xlsx)|*.xlsx', 'xlsx');
end;

procedure TfraExport.actExportarHTMLExecute(Sender: TObject);
begin
  Self.ExportData(Sender, 'Arquivos HTML (*.html)|*.html', 'html');
end;

procedure TfraExport.actExportarXMLExecute(Sender: TObject);
begin
  Self.ExportData(Sender, 'Arquivos XML (*.xml)|*.xml', 'xml');
end;

procedure TfraExport.ConfigGrid(Parent: TComponent);
var
  i: Integer;
begin
  for i := 0 to Parent.ComponentCount - 1 do
   if (Parent.Components[i] is TcxGrid) then
    FGrid := (Parent.Components[i] as TcxGrid)
   else if (Parent.Components[i] is TcxGridTableView) and (TcxGridDBTableView(Parent.Components[i]).ColumnCount >= 1) then
    begin
     FTableView := TcxGridDBTableView(Parent.Components[i]);

     TableView.Navigator.Buttons.Images := ImageList;

     TableView.OptionsBehavior.NavigatorHints := True;

     TableView.Navigator.Visible := True;
     TableView.Navigator.Buttons.First.Visible        := False;
     TableView.Navigator.Buttons.PriorPage.Visible    := False;
     TableView.Navigator.Buttons.Prior.Visible        := False;
     TableView.Navigator.Buttons.Next.Visible         := False;
     TableView.Navigator.Buttons.NextPage.Visible     := False;
     TableView.Navigator.Buttons.Last.Visible         := False;
     TableView.Navigator.Buttons.Insert.Visible       := False;
     TableView.Navigator.Buttons.Append.Visible       := False;
     TableView.Navigator.Buttons.Delete.Visible       := False;
     TableView.Navigator.Buttons.Edit.Visible         := False;
     TableView.Navigator.Buttons.Post.Visible         := False;
     TableView.Navigator.Buttons.Cancel.Visible       := False;
     TableView.Navigator.Buttons.Refresh.Visible      := False;
     TableView.Navigator.Buttons.SaveBookmark.Visible := False;
     TableView.Navigator.Buttons.GotoBookmark.Visible := False;
     TableView.Navigator.Buttons.Filter.Visible       := False;

     TableView.Navigator.Buttons.OnButtonClick := Self.CustomNavigationButtonClick;

     AddCustomNavigationButton(0, 'Exportar para Excel');
     AddCustomNavigationButton(1, 'Exportar para HTML');
     AddCustomNavigationButton(2, 'Exportar para XML');

     if Self.ShowCustomizeButton then
      AddCustomNavigationButton(3, 'Customizar colunas da grade');

     if Assigned(TableView.OnKeyDown) then
      FKeyDownEventList.Add(TableView, TableView.OnKeyDown);

     FTableView.OnKeyDown := Self.TableViewKeyDown;
    end;
end;

procedure TfraExport.AddCustomNavigationButton(const ImageIndex: Integer;
  const Hint: string);
var
  objButton: TcxNavigatorCustomButton;
begin
  objButton            := TableView.Navigator.Buttons.CustomButtons.Add;
  objButton.Hint       := Hint;
  objButton.ImageIndex := ImageIndex;
end;

constructor TfraExport.Create(AOwner: TComponent);
begin
  inherited;
  FShowCustomizeButton := False;
  FKeyDownEventList    := TDictionary<TcxGridDBTableView, TKeyEvent>.Create();
end;

procedure TfraExport.CustomNavigationButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
const
  BUTTON_EXCEL = 16;
  BUTTON_HTML = 17;
  BUTTON_XML = 18;
  BUTTON_CUSTOMIZE = 19;
begin
  FGrid := TcxGrid(TcxGridViewNavigatorButtons(Sender).GridView.control);

  case AButtonIndex of
   BUTTON_EXCEL: actExportarExcel.Execute;
   BUTTON_HTML: actExportarHTML.Execute;
   BUTTON_XML: actExportarXML.Execute;
   BUTTON_CUSTOMIZE: actCustomizacao.Execute;
  end;
end;

destructor TfraExport.Destroy;
begin
  FKeyDownEventList.Free;
  inherited;
end;

procedure TfraExport.ExportData(Sender: TObject; const Filter, DefaultExt: string);
var
  sFileName: string;
begin
  sFileName := '';
  if TDialogFunctions.SaveDialog('Salvar arquivo', Filter, DefaultExt, sFileName) then
   begin
    try
     if Assigned(Grid) then
      if SameText(DefaultExt, 'xlsx') then
       ExportGridToXLSX(sFileName, Grid, True, True, True)
      else if SameText(DefaultExt, 'xml') then
       ExportGridToXML(sFileName, Grid)
      else if SameText(DefaultExt, 'html') then
       ExportGridToHTML(sFileName, Grid)

    finally
     //TODO
    end;
   end;
end;

function TfraExport.GetComponentView(Sender: TObject): TcxGridDBTableView;
var
  sAux: string;
begin
  sAux := TAction(Sender).ActionComponent.Name;
  sAux := Copy(sAux, 1, Pos('_', sAux) - 1);

  Result := Self.Owner.FindComponent(sAux) as TcxGridDBTableView;
end;


procedure TfraExport.TableViewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  objTableView: TcxGridDBTableView;
begin
  if (Sender is TcxGridSite) then
   begin
    objTableView := TcxGridDBTableView(TcxGridSite(Sender).GridView);

    if (Key > VK_HELP) and Assigned(objTableView.Controller.FocusedColumn) and (objTableView.Controller.FocusedColumn.Properties is TcxCurrencyEditProperties) then
     if Pos('R$', objTableView.Controller.IncSearchingText) = 0 then
      objTableView.Controller.IncSearchingText := 'R$ ' + objTableView.Controller.IncSearchingText;

    if FKeyDownEventList.ContainsKey(objTableView) then
     FKeyDownEventList[objTableView](Sender, Key, Shift);
   end;
end;

end.

