object frmConsultaCliente: TfrmConsultaCliente
  Left = 0
  Top = 0
  Caption = 'Consulta de Clientes'
  ClientHeight = 562
  ClientWidth = 1114
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 113
    Width = 1114
    Height = 449
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'username'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'first_name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 300
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1114
    Height = 113
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -37
    ExplicitWidth = 665
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
    end
    object btnEditarr: TBitBtn
      Left = 544
      Top = 31
      Width = 83
      Height = 49
      Caption = 'Editar'
      TabOrder = 2
    end
  end
  object restClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://cvcacessorios.com.br/wp-json/wc/v3/customers?consumer_ke' +
      'y=ck_f1b6e8c33b87879ba2b27d9573e2a98f07f4c269&consumer_secret=cs' +
      '_7a0bf264d6f1871c765b89d7eecccabacbc19088&role=subscriber&orderb' +
      'y=id&order=desc&per_page=20'
    Params = <>
    SynchronizedEvents = False
    Left = 800
    Top = 24
  end
  object restResquest: TRESTRequest
    Client = restClient
    Params = <>
    Response = restResponse
    SynchronizedEvents = False
    Left = 856
    Top = 24
  end
  object restResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 1000
    Top = 24
  end
  object restResponseDataSetAdapter: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = restResponse
    Left = 928
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 744
    Top = 24
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
        Name = 'date_created'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_created_gmt'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_modified'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'date_modified_gmt'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'email'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'first_name'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'last_name'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'role'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'username'
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
        Name = 'is_paying_customer'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'avatar_url'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'meta_data'
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
    Left = 1056
    Top = 24
    object FDMemTable1id: TWideStringField
      FieldName = 'id'
      Size = 255
    end
    object FDMemTable1date_created: TWideStringField
      FieldName = 'date_created'
      Size = 255
    end
    object FDMemTable1email: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object FDMemTable1first_name: TWideStringField
      FieldName = 'first_name'
      Size = 255
    end
    object FDMemTable1last_name: TWideStringField
      FieldName = 'last_name'
      Size = 255
    end
    object FDMemTable1username: TWideStringField
      FieldName = 'username'
      Size = 255
    end
  end
end
