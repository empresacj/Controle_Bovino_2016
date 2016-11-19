unit UdmConnection;

interface

uses
  SysUtils, Classes, DBXDevartInterBase, DB, SqlExpr;

type
  TdmConnection = class(TDataModule)
    SQLConnection: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConnection: TdmConnection;

implementation

{$R *.dfm}

end.
