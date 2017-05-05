unit dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  Tdmodule = class(TDataModule)
    dsPedidos: TDataSource;
    dsClientes: TDataSource;
    queryClientes: TFDQuery;
    queryPedidos: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    Conn: TFDConnection;
    queryDetalhesPedido: TFDQuery;
    dsDetalhesPedido: TDataSource;
    queryPedidosid: TFDAutoIncField;
    queryPedidosdata: TDateTimeField;
    queryPedidoscliente_id__: TIntegerField;
    queryProdutos: TFDQuery;
    dsProdutos: TDataSource;
    queryProdutosid: TFDAutoIncField;
    queryProdutosdescricao: TStringField;
    queryProdutospreco: TFloatField;
    queryVenda: TFDQuery;
    dsVenda: TDataSource;
    queryDetalhesPedidodescricao: TStringField;
    queryDetalhesPedidopreco: TFloatField;
    queryDetalhesPedidoquantidade: TIntegerField;
    queryDetalhesPedidoid: TFDAutoIncField;
    queryDetalhesPedidoprodutos_id: TIntegerField;
    queryDetalhesPedidopedidos_id: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmodule: Tdmodule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
