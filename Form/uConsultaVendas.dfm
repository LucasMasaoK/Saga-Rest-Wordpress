object frmConsultaVendas: TfrmConsultaVendas
  Left = 0
  Top = 0
  Caption = 'Consulta de Vendas'
  ClientHeight = 458
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 933
    Height = 113
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 927
    object editPesquisa: TEdit
      Left = 16
      Top = 44
      Width = 209
      Height = 23
      TabOrder = 0
      TextHint = 'Digite o termo de pesquisa....'
    end
    object btnPesquisar: TBitBtn
      Left = 432
      Top = 31
      Width = 83
      Height = 49
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = btnPesquisarClick
    end
    object btnEditarr: TBitBtn
      Left = 544
      Top = 31
      Width = 83
      Height = 49
      Caption = 'Editar'
      TabOrder = 2
    end
    object Memo1: TMemo
      Left = 720
      Top = 32
      Width = 185
      Height = 89
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssVertical
      TabOrder = 3
    end
  end
  object dbVendas: TDBGrid
    Left = 0
    Top = 113
    Width = 933
    Height = 345
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = dbVendasCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parent_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_created'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'discount_total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'customer_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'order_key'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'billing'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shipping'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'payment_method'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'payment_method_title'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'transaction_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'customer_ip_address'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'customer_user_agent'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'created_via'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'customer_note'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_completed'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_paid'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cart_hash'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'number'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'meta_data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'line_items'
        Width = 3000
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tax_lines'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shipping_lines'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fee_lines'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'coupon_lines'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'refunds'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'payment_url'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'is_editable'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'needs_payment'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'needs_processing'
        Visible = True
      end>
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://cvcacessorios.com.br/wp-json/wc/v3/orders?consumer_key=c' +
      'k_f1b6e8c33b87879ba2b27d9573e2a98f07f4c269&consumer_secret=cs_7a' +
      '0bf264d6f1871c765b89d7eecccabacbc19088&status=pending'
    ContentType = 'application/json'
    Params = <>
    SynchronizedEvents = False
    Left = 328
    Top = 256
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 488
    Top = 296
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 528
    Top = 256
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 440
    Top = 224
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'parent_id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'status'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'currency'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'version'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'prices_include_tax'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_created'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_modified'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'discount_total'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'discount_tax'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'shipping_total'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'shipping_tax'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cart_tax'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'total'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'total_tax'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'customer_id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'order_key'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'billing'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'shipping'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'payment_method'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'payment_method_title'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'transaction_id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'customer_ip_address'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'customer_user_agent'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'created_via'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'customer_note'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_completed'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_paid'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cart_hash'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'number'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'meta_data'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'line_items'
        DataType = ftWideString
        Size = 1500
      end
      item
        Name = 'tax_lines'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'shipping_lines'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'fee_lines'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'coupon_lines'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'refunds'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'payment_url'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'is_editable'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'needs_payment'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'needs_processing'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_created_gmt'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_modified_gmt'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_completed_gmt'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_paid_gmt'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'currency_symbol'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = '_links'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 384
    Top = 352
    object FDMemTable1id: TWideStringField
      FieldName = 'id'
      Size = 255
    end
    object FDMemTable1parent_id: TWideStringField
      FieldName = 'parent_id'
      Size = 255
    end
    object FDMemTable1status: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object FDMemTable1date_created: TWideStringField
      FieldName = 'date_created'
      Size = 255
    end
    object FDMemTable1discount_total: TWideStringField
      FieldName = 'discount_total'
      Size = 255
    end
    object FDMemTable1total: TWideStringField
      FieldName = 'total'
      Size = 255
    end
    object FDMemTable1customer_id: TWideStringField
      FieldName = 'customer_id'
      Size = 255
    end
    object FDMemTable1order_key: TWideStringField
      FieldName = 'order_key'
      Size = 255
    end
    object FDMemTable1billing: TWideStringField
      FieldName = 'billing'
      Size = 255
    end
    object FDMemTable1shipping: TWideStringField
      FieldName = 'shipping'
      Size = 255
    end
    object FDMemTable1payment_method: TWideStringField
      FieldName = 'payment_method'
      Size = 255
    end
    object FDMemTable1payment_method_title: TWideStringField
      FieldName = 'payment_method_title'
      Size = 255
    end
    object FDMemTable1transaction_id: TWideStringField
      FieldName = 'transaction_id'
      Size = 255
    end
    object FDMemTable1customer_ip_address: TWideStringField
      FieldName = 'customer_ip_address'
      Size = 255
    end
    object FDMemTable1customer_user_agent: TWideStringField
      FieldName = 'customer_user_agent'
      Size = 255
    end
    object FDMemTable1created_via: TWideStringField
      FieldName = 'created_via'
      Size = 255
    end
    object FDMemTable1customer_note: TWideStringField
      FieldName = 'customer_note'
      Size = 255
    end
    object FDMemTable1date_completed: TWideStringField
      FieldName = 'date_completed'
      Size = 255
    end
    object FDMemTable1date_paid: TWideStringField
      FieldName = 'date_paid'
      Size = 255
    end
    object FDMemTable1cart_hash: TWideStringField
      FieldName = 'cart_hash'
      Size = 255
    end
    object FDMemTable1number: TWideStringField
      FieldName = 'number'
      Size = 255
    end
    object FDMemTable1meta_data: TWideStringField
      FieldName = 'meta_data'
      Size = 255
    end
    object FDMemTable1line_items: TWideStringField
      DisplayWidth = 1500
      FieldName = 'line_items'
      Size = 1500
    end
    object FDMemTable1tax_lines: TWideStringField
      FieldName = 'tax_lines'
      Size = 255
    end
    object FDMemTable1shipping_lines: TWideStringField
      FieldName = 'shipping_lines'
      Size = 255
    end
    object FDMemTable1fee_lines: TWideStringField
      FieldName = 'fee_lines'
      Size = 255
    end
    object FDMemTable1coupon_lines: TWideStringField
      FieldName = 'coupon_lines'
      Size = 255
    end
    object FDMemTable1refunds: TWideStringField
      FieldName = 'refunds'
      Size = 255
    end
    object FDMemTable1payment_url: TWideStringField
      FieldName = 'payment_url'
      Size = 255
    end
    object FDMemTable1is_editable: TWideStringField
      FieldName = 'is_editable'
      Size = 255
    end
    object FDMemTable1needs_payment: TWideStringField
      FieldName = 'needs_payment'
      Size = 255
    end
    object FDMemTable1needs_processing: TWideStringField
      FieldName = 'needs_processing'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 264
    Top = 304
  end
  object queryCliente: TFDQuery
    Active = True
    Connection = DataModule1.bancoConexao
    SQL.Strings = (
      'SELECT * FROM CLIENTES_PESJURIDICA')
    Left = 696
    Top = 360
  end
  object queryProdutos: TFDQuery
    Connection = DataModule1.bancoConexao
    SQL.Strings = (
      'SELECT * FROM PRODUTOS;')
    Left = 776
    Top = 360
  end
  object queryItensVendas: TFDQuery
    Connection = DataModule1.bancoConexao
    SQL.Strings = (
      'SELECT * FROM VENDAS_CLIENTES_ITENS;')
    Left = 592
    Top = 368
  end
end
