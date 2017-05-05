unit unPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, System.Actions, Vcl.ActnList, Vcl.DBActns,
  Vcl.Buttons;

type
  TfrmPedido = class(TForm)
    GroupBox2: TGroupBox;
    DBComboBox1: TDBComboBox;
    Label2: TLabel;
    btnAdicionar: TButton;
    edtValor: TEdit;
    Label3: TLabel;
    edtQtde: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtValorUnitario: TDBEdit;
    procedure btnAdicionarClick(Sender: TObject);
    procedure edtQtdeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure INsereProduto;
  public
    { Public declarations }
  end;

var
  frmPedido: TfrmPedido;

implementation

{$R *.dfm}

uses dm;

procedure TfrmPedido.btnAdicionarClick(Sender: TObject);
begin
  InsereProduto;
end;

procedure TfrmPedido.edtQtdeExit(Sender: TObject);
begin
 edtValor.Text:= FloatToStr(strToFLoat(edtQtde.Text) * dmodule.queryProdutos.FieldByName('preco').AsFloat);
end;

procedure TfrmPedido.FormShow(Sender: TObject);
begin
  edtValor.Text := FloatToStr(StrToInt(edtQtde.Text) * dmodule.queryProdutos.FieldByName('preco').AsFloat);
end;

procedure TfrmPedido.INsereProduto;
begin
  with dmodule do
  begin
    queryVenda.Close;
    queryVenda.SQL.Clear;
    queryVenda.SQL.Append('insert into produtos_pedidos__ '+
    '(pedidos_id__,preco, produtos_id__, quantidade) '+
    'values (:pPedidos_id, :pPrecoPedido, :pProdutos_id, :pQuantidade) ');
    queryVenda.ParamByName('pPedidos_id').AsInteger := queryPedidos.FieldByName('id').AsInteger;
    queryVenda.ParamByName('pPrecoPedido').AsFloat := StrToInt(edtQtde.Text) * dmodule.queryProdutos.FieldByName('preco').AsFloat;
    queryVenda.ParamByName('pProdutos_id').AsInteger := queryProdutos.FieldByName('id').AsInteger;
    queryVenda.ParamByName('pQuantidade').AsInteger := strToInt(edtQtde.Text);
    queryVenda.ExecSQL;

    queryDetalhesPedido.Refresh;
  end;
end;

end.
