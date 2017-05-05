unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.DBActns, System.Actions, Vcl.ActnList;

type
  TfrmPrincipal = class(TForm)
    dbGridClientes: TDBGrid;
    dbgridPedidos: TDBGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    ActionList1: TActionList;
    actInsertCliente: TDataSetInsert;
    actDeleteCliente: TDataSetDelete;
    actPostCliente: TDataSetPost;
    actCancelarCliente: TDataSetCancel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    actEditarCliente: TDataSetEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    actNovoPedido: TDataSetInsert;
    actDeletePedido: TDataSetDelete;
    actEditarPedido: TDataSetEdit;
    actPostPedido: TDataSetPost;
    actCancelarPedido: TDataSetCancel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    actNovoProduto: TDataSetInsert;
    actDeleteProduto: TDataSetDelete;
    actEditarProduto: TDataSetEdit;
    actSalvarProduto: TDataSetPost;
    actCancelarProduto: TDataSetCancel;
    actNovoProdutosPedido: TDataSetInsert;
    Button16: TButton;
    dbgridDetalhesPedido: TDBGrid;
    Button17: TButton;
    actExcluiProdutoPedido: TDataSetDelete;
    procedure Button16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses dm, unPedido;

procedure TfrmPrincipal.Button16Click(Sender: TObject);
begin
  if frmPedido = nil then
    frmPedido := TfrmPedido.Create(Self);
    try
      frmPedido.ShowModal;
    finally
       FreeAndNil(frmPedido);
    end;
end;

end.
