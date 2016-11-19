unit UIntObserver;

interface
uses Classes;

type
  ICustomObserver = interface(IInterface)
   ['{7AA5E5E7-98DD-42ED-B362-6E74860CA8AF}']
  end;

  IObserver = interface(ICustomObserver)
    ['{FD44A2F9-D198-4319-9589-4B15FEB28F65}']
    procedure Update(Observable: IInterface);
  end;

  IObserverObject = interface(ICustomObserver)
   ['{BB07A0C1-B24F-4533-A6E1-D92F597D8C44}']
   procedure Update(Observable: TObject);
  end;

  IObservable = interface
    ['{C34E7181-C555-4258-AF74-C4446E86A23C}']
    procedure Attach(Observer: ICustomObserver);
    procedure Detach(Observer: ICustomObserver);
    procedure Notify;
  end;

  TCustomObservable = class(TInterfacedObject, IObservable)
  private
    FObservers: IInterfaceList;
  protected
    procedure Notify; virtual; abstract;
  public
   procedure Attach(Observer: ICustomObserver);
   procedure Detach(Observer: ICustomObserver);
  end;

  TObservable = class(TCustomObservable)
  private
    FController: IInterface;
  protected
    procedure Notify; override;
    property Controller: IInterface read FController write FController;
  end;

  TObservableObject = class(TCustomObservable)
  private
    FController: TObject;
  protected
    procedure Notify; override;
    property Controller: TObject read FController write FController;
  end;
  
implementation

{ TObservable }

procedure TCustomObservable.Attach(Observer: ICustomObserver);
begin
  if Self.FObservers = nil then
   Self.FObservers := TInterfaceList.Create;

  Self.FObservers.Add(Observer);
end;

procedure TCustomObservable.Detach(Observer: ICustomObserver);
begin
  if Self.FObservers <> nil then
   begin
    Self.FObservers.Remove(Observer);

    if Self.FObservers.Count = 0 then Self.FObservers := nil;
   end;
end;


{ TObservable }


procedure TObservable.Notify;
var
 i: Integer;
begin
  if Self.FObservers <> nil then
   begin
    for i := 0 to Pred(Self.FObservers.Count) do
     IObserver(Self.FObservers[i]).Update(Self.FController);
   end;
end;

{ TObservableObject }

procedure TObservableObject.Notify;
var
 i: Integer;
begin
  if Self.FObservers <> nil then
   begin
    for i := 0 to Pred(Self.FObservers.Count) do
     IObserverObject(Self.FObservers[i]).Update(Self.FController);
   end;
end;

end.
