object dmodule: Tdmodule
  OldCreateOrder = False
  Height = 403
  Width = 391
  object dsPedidos: TDataSource
    DataSet = queryPedidos
    Left = 88
    Top = 134
  end
  object dsClientes: TDataSource
    DataSet = queryClientes
    Left = 88
    Top = 80
  end
  object queryClientes: TFDQuery
    Active = True
    Connection = Conn
    SQL.Strings = (
      'select * from clientes')
    Left = 24
    Top = 80
  end
  object queryPedidos: TFDQuery
    Active = True
    IndexFieldNames = 'cliente_id__'
    MasterSource = dsClientes
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = Conn
    SQL.Strings = (
      'select * from pedidos where cliente_id__ = :id')
    Left = 24
    Top = 134
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object queryPedidosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object queryPedidosdata: TDateTimeField
      FieldName = 'data'
      Origin = 'data'
    end
    object queryPedidoscliente_id__: TIntegerField
      FieldName = 'cliente_id__'
      Origin = 'cliente_id__'
    end
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 88
    Top = 8
  end
  object Conn: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\roger\Documents\desenvolvimento\delphi\tutoria' +
        'is\Firedac\mestre_detalhe\teste.db'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 8
  end
  object queryDetalhesPedido: TFDQuery
    Active = True
    MasterSource = dsPedidos
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = Conn
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select produtos.descricao, produtos_pedidos__.preco, produtos_pe' +
        'didos__.quantidade, produtos.id, produtos_pedidos__.produtos_id_' +
        '_ as produtos_id,'
      
        'produtos_pedidos__.pedidos_id__ as pedidos_id  from produtos_ped' +
        'idos__'
      'inner join produtos'
      'on produtos.id = produtos_pedidos__.produtos_id__ '
      'inner join pedidos'
      'on produtos_pedidos__.pedidos_id__ = pedidos.id'
      'inner join clientes'
      'on pedidos.cliente_id__ = clientes.id'
      'where pedidos.id = :id')
    Left = 24
    Top = 192
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
    object queryDetalhesPedidodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object queryDetalhesPedidopreco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object queryDetalhesPedidoquantidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'quantidade'
      Origin = 'quantidade'
      ProviderFlags = []
      ReadOnly = True
    end
    object queryDetalhesPedidoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object queryDetalhesPedidoprodutos_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'produtos_id'
      Origin = 'produtos_id__'
      ProviderFlags = [pfInWhere]
    end
    object queryDetalhesPedidopedidos_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pedidos_id'
      Origin = 'pedidos_id__'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsDetalhesPedido: TDataSource
    DataSet = queryDetalhesPedido
    Left = 88
    Top = 192
  end
  object queryProdutos: TFDQuery
    Active = True
    Connection = Conn
    SQL.Strings = (
      'select * from produtos')
    Left = 24
    Top = 256
    object queryProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object queryProdutosdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object queryProdutospreco: TFloatField
      FieldName = 'preco'
      Origin = 'preco'
      currency = True
    end
  end
  object dsProdutos: TDataSource
    DataSet = queryProdutos
    Left = 88
    Top = 256
  end
  object queryVenda: TFDQuery
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'id'
    MasterSource = dsPedidos
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = Conn
    SQL.Strings = (
      'select produtos_pedidos__.id, produtos_pedidos__.pedidos_id__,'
      'produtos_pedidos__.preco, produtos_pedidos__.produtos_id__,'
      'produtos_pedidos__.quantidade from produtos_pedidos__'
      'inner join pedidos'
      'on produtos_pedidos__.pedidos_id__ = pedidos.id'
      'where pedidos.id = :id')
    Left = 24
    Top = 328
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsVenda: TDataSource
    DataSet = queryVenda
    Left = 88
    Top = 328
  end
end
