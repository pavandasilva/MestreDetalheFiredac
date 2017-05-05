object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 745
  ClientWidth = 1304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 305
    Height = 745
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 403
    object Label1: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 15
      Width = 281
      Height = 13
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Clientes'
      ExplicitWidth = 38
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 331
      Width = 281
      Height = 13
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Pedidos'
      ExplicitTop = 206
      ExplicitWidth = 37
    end
    object dbGridClientes: TDBGrid
      AlignWithMargins = True
      Left = 12
      Top = 28
      Width = 281
      Height = 168
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      DataSource = dmodule.dsClientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Width = 180
          Visible = True
        end>
    end
    object dbgridPedidos: TDBGrid
      AlignWithMargins = True
      Left = 12
      Top = 344
      Width = 281
      Height = 177
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      DataSource = dmodule.dsPedidos
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data'
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 2
      Top = 256
      Width = 301
      Height = 25
      Action = actDeleteCliente
      Align = alTop
      Caption = 'Apagar Cliente'
      TabOrder = 2
      ExplicitLeft = 3
      ExplicitTop = 241
    end
    object Button2: TButton
      Left = 2
      Top = 206
      Width = 301
      Height = 25
      Action = actInsertCliente
      Align = alTop
      Caption = 'Novo Cliente'
      TabOrder = 3
      ExplicitLeft = 4
      ExplicitTop = 241
    end
    object Button3: TButton
      Left = 2
      Top = 281
      Width = 301
      Height = 25
      Action = actPostCliente
      Align = alTop
      Caption = 'Salvar Cliente'
      TabOrder = 4
      ExplicitLeft = 4
      ExplicitTop = 266
    end
    object Button4: TButton
      Left = 2
      Top = 306
      Width = 301
      Height = 25
      Action = actCancelarCliente
      Align = alTop
      Caption = 'Cancelar'
      TabOrder = 5
      ExplicitLeft = 3
      ExplicitTop = 291
    end
    object Button5: TButton
      Left = 2
      Top = 231
      Width = 301
      Height = 25
      Action = actEditarCliente
      Align = alTop
      TabOrder = 6
      ExplicitLeft = -2
      ExplicitTop = 250
    end
    object Button6: TButton
      Left = 2
      Top = 631
      Width = 301
      Height = 25
      Action = actCancelarPedido
      Align = alTop
      Caption = 'Cancelar'
      TabOrder = 7
      ExplicitLeft = -2
      ExplicitTop = 406
    end
    object Button7: TButton
      Left = 2
      Top = 556
      Width = 301
      Height = 25
      Action = actEditarPedido
      Align = alTop
      Caption = 'Editar Pedido'
      TabOrder = 8
      ExplicitLeft = -2
      ExplicitTop = 406
    end
    object Button8: TButton
      Left = 2
      Top = 531
      Width = 301
      Height = 25
      Action = actNovoPedido
      Align = alTop
      TabOrder = 9
      ExplicitLeft = -2
      ExplicitTop = 406
    end
    object Button9: TButton
      Left = 2
      Top = 606
      Width = 301
      Height = 25
      Action = actPostPedido
      Align = alTop
      Caption = 'Salvar Pedido'
      TabOrder = 10
      ExplicitLeft = -2
      ExplicitTop = 406
    end
    object Button10: TButton
      Left = 2
      Top = 581
      Width = 301
      Height = 25
      Action = actDeletePedido
      Align = alTop
      TabOrder = 11
      ExplicitLeft = -2
      ExplicitTop = 406
    end
  end
  object GroupBox2: TGroupBox
    Left = 305
    Top = 0
    Width = 488
    Height = 745
    Align = alLeft
    TabOrder = 1
    object Label3: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 15
      Width = 464
      Height = 13
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Produtos pedido'
      ExplicitLeft = 4
      ExplicitTop = 2
    end
    object Button16: TButton
      AlignWithMargins = True
      Left = 12
      Top = 218
      Width = 464
      Height = 26
      Hint = 'Insert'
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Align = alTop
      Caption = 'Inserir Produto Pedido'
      ImageIndex = 4
      TabOrder = 0
      OnClick = Button16Click
      ExplicitLeft = 2
      ExplicitTop = 524
      ExplicitWidth = 484
    end
    object dbgridDetalhesPedido: TDBGrid
      AlignWithMargins = True
      Left = 12
      Top = 28
      Width = 464
      Height = 185
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      DataSource = dmodule.dsDetalhesPedido
      Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'preco'
          Visible = True
        end>
    end
    object Button17: TButton
      AlignWithMargins = True
      Left = 12
      Top = 247
      Width = 464
      Height = 25
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Action = actExcluiProdutoPedido
      Align = alTop
      Caption = 'Remover Produto Pedido'
      TabOrder = 2
      ExplicitLeft = 208
      ExplicitTop = 360
      ExplicitWidth = 75
    end
  end
  object GroupBox3: TGroupBox
    Left = 793
    Top = 0
    Width = 416
    Height = 745
    Margins.Left = 10
    Margins.Top = 20
    Margins.Right = 20
    Align = alLeft
    TabOrder = 2
    object Label4: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 524
      Width = 392
      Height = 13
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Produtos'
      ExplicitLeft = 2
      ExplicitTop = 15
      ExplicitWidth = 43
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 412
      Height = 509
      Margins.Left = 10
      Margins.Top = 10
      Align = alTop
      DataSource = dmodule.dsProdutos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'C'#243'digo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 250
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'preco'
          Title.Caption = 'Pre'#231'o'
          Width = 80
          Visible = True
        end>
    end
    object Button11: TButton
      Left = 2
      Top = 637
      Width = 412
      Height = 25
      Action = actCancelarProduto
      Align = alTop
      Caption = 'Cancelar'
      TabOrder = 1
      ExplicitLeft = 18
      ExplicitTop = 431
      ExplicitWidth = 390
    end
    object Button12: TButton
      Left = 2
      Top = 612
      Width = 412
      Height = 25
      Action = actSalvarProduto
      Align = alTop
      Caption = 'Salvar Produto'
      TabOrder = 2
      ExplicitLeft = 18
      ExplicitTop = 431
      ExplicitWidth = 390
    end
    object Button13: TButton
      Left = 2
      Top = 587
      Width = 412
      Height = 25
      Action = actEditarProduto
      Align = alTop
      Caption = 'Editar Produto'
      TabOrder = 3
      ExplicitLeft = 18
      ExplicitTop = 431
      ExplicitWidth = 390
    end
    object Button14: TButton
      Left = 2
      Top = 562
      Width = 412
      Height = 25
      Action = actDeleteProduto
      Align = alTop
      Caption = 'Excluir Produto'
      TabOrder = 4
      ExplicitLeft = 18
      ExplicitTop = 431
      ExplicitWidth = 390
    end
    object Button15: TButton
      Left = 2
      Top = 537
      Width = 412
      Height = 25
      Action = actNovoProduto
      Align = alTop
      Caption = 'Novo Produto'
      TabOrder = 5
      ExplicitLeft = 18
      ExplicitTop = 431
      ExplicitWidth = 390
    end
  end
  object ActionList1: TActionList
    Left = 208
    Top = 120
    object actInsertCliente: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dmodule.dsClientes
    end
    object actDeleteCliente: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dmodule.dsClientes
    end
    object actPostCliente: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object actCancelarCliente: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dmodule.dsClientes
    end
    object actEditarCliente: TDataSetEdit
      Category = 'Dataset'
      Caption = 'Editar Cliente'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = dmodule.dsClientes
    end
    object actNovoPedido: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Novo Pedido'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dmodule.dsPedidos
    end
    object actDeletePedido: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Apagar Pedido'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dmodule.dsPedidos
    end
    object actEditarPedido: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = dmodule.dsPedidos
    end
    object actPostPedido: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dmodule.dsPedidos
    end
    object actCancelarPedido: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dmodule.dsPedidos
    end
    object actNovoProduto: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dmodule.dsProdutos
    end
    object actDeleteProduto: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dmodule.dsProdutos
    end
    object actEditarProduto: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = dmodule.dsProdutos
    end
    object actSalvarProduto: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dmodule.dsProdutos
    end
    object actCancelarProduto: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dmodule.dsProdutos
    end
    object actNovoProdutosPedido: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dmodule.dsDetalhesPedido
    end
    object actExcluiProdutoPedido: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dmodule.dsDetalhesPedido
    end
  end
end
