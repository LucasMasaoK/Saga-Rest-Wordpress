object frmCadastroProduto: TfrmCadastroProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 83
    Height = 15
    Caption = 'COD_PRODUTO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 80
    Width = 99
    Height = 15
    Caption = 'PROD_DESCRICAO'
    FocusControl = editNome
  end
  object Label3: TLabel
    Left = 8
    Top = 128
    Width = 28
    Height = 15
    Caption = 'QTDE'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 176
    Width = 62
    Height = 15
    Caption = 'PROD_CMV'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 48
    Width = 40
    Height = 23
    DataField = 'COD_PRODUTO'
    DataSource = sourceProdutos
    TabOrder = 0
  end
  object editNome: TDBEdit
    Left = 8
    Top = 96
    Width = 500
    Height = 23
    DataField = 'PROD_DESCRICAO'
    DataSource = sourceProdutos
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 144
    Width = 40
    Height = 23
    DataField = 'QTDE'
    DataSource = sourceProdutos
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 192
    Width = 154
    Height = 23
    DataField = 'PROD_CMV'
    DataSource = sourceProdutos
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 628
    Height = 74
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 367
    ExplicitWidth = 624
    object BitBtn1: TBitBtn
      Left = 16
      Top = 16
      Width = 91
      Height = 49
      Caption = 'Novo'
      DisabledImageName = 'btnNovo'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object bntEditar: TBitBtn
      Left = 128
      Top = 16
      Width = 91
      Height = 49
      Caption = 'Editar'
      TabOrder = 1
      OnClick = bntEditarClick
    end
    object BitBtn3: TBitBtn
      Left = 240
      Top = 16
      Width = 91
      Height = 49
      Caption = 'Salvar'
      DisabledImageName = 'btnSalvar'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 360
      Top = 16
      Width = 91
      Height = 49
      Caption = 'BitBtn1'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
  end
  object memoJson: TMemo
    Left = 224
    Top = 224
    Width = 185
    Height = 89
    Lines.Strings = (
      'memoJson')
    TabOrder = 5
  end
  object memoResponse: TMemo
    Left = 16
    Top = 240
    Width = 185
    Height = 89
    Lines.Strings = (
      'memoJson')
    TabOrder = 6
  end
  object queryProdutos: TFDQuery
    Active = True
    Connection = DataModule1.bancoConexao
    SQL.Strings = (
      'SELECT'
      'COD_PRODUTO,'
      'PROD_DESCRICAO,'
      'QTDE,'
      'PROD_CMV'
      'FROM PRODUTOS;')
    Left = 496
    Top = 368
    object queryProdutosCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryProdutosPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Origin = 'PROD_DESCRICAO'
      Size = 50
    end
    object queryProdutosQTDE: TCurrencyField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      currency = False
    end
    object queryProdutosPROD_CMV: TCurrencyField
      FieldName = 'PROD_CMV'
      Origin = 'PROD_CMV'
    end
  end
  object sourceProdutos: TDataSource
    DataSet = queryProdutos
    Left = 560
    Top = 368
  end
  object restRequest: TRESTRequest
    Client = restClient
    Method = rmPOST
    Params = <>
    Response = restResponse
    SynchronizedEvents = False
    Left = 432
    Top = 184
  end
  object restClient: TRESTClient
    Authenticator = SimpleAuthenticator1
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    ContentType = ' application/json'
    Params = <>
    SynchronizedEvents = False
    Left = 432
    Top = 280
  end
  object SimpleAuthenticator1: TSimpleAuthenticator
    Username = 'ck_f1b6e8c33b87879ba2b27d9573e2a98f07f4c269'
    Password = 'cs_7a0bf264d6f1871c765b89d7eecccabacbc19088'
    Left = 528
    Top = 208
  end
  object restResponse: TRESTResponse
    Left = 520
    Top = 304
  end
end