object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cliente'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 74
    Height = 15
    Caption = 'COD_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 49
    Height = 15
    Caption = 'CLI_CNPJ'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 74
    Height = 15
    Caption = 'CLI_FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 120
    Top = 16
    Width = 51
    Height = 15
    Caption = 'COD_SITE'
    FocusControl = DBEdit4
  end
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 628
    Height = 74
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -7
    ExplicitWidth = 635
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
    object btnPesquisa: TBitBtn
      Left = 360
      Top = 16
      Width = 91
      Height = 49
      Caption = 'Pesquisa'
      TabOrder = 3
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 32
    Width = 74
    Height = 23
    DataField = 'COD_CLIENTE'
    DataSource = dataClientes
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 80
    Width = 155
    Height = 23
    DataField = 'CLI_CNPJ'
    DataSource = dataClientes
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 128
    Width = 393
    Height = 23
    DataField = 'CLI_FANTASIA'
    DataSource = dataClientes
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 120
    Top = 32
    Width = 51
    Height = 23
    DataField = 'COD_SITE'
    DataSource = dataClientes
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 504
    Top = 0
    Width = 124
    Height = 368
    Align = alRight
    TabOrder = 5
    ExplicitTop = -2
    ExplicitHeight = 444
    object btnProdutos: TBitBtn
      Left = 6
      Top = 17
      Width = 113
      Height = 41
      Cancel = True
      Caption = 'Consulta Cliente'
      TabOrder = 0
      OnClick = btnProdutosClick
    end
  end
  object queryClientes: TFDQuery
    Active = True
    Connection = DataModule1.bancoConexao
    SQL.Strings = (
      
        'SELECT COD_CLIENTE,CLI_CNPJ,CLI_FANTASIA,COD_SITE FROM CLIENTES_' +
        'PESJURIDICA;')
    Left = 448
    Top = 288
    object queryClientesCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
      Size = 15
    end
    object queryClientesCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      Size = 50
    end
    object queryClientesCOD_SITE: TStringField
      FieldName = 'COD_SITE'
      Origin = 'COD_SITE'
      Size = 15
    end
  end
  object dataClientes: TDataSource
    DataSet = queryClientes
    Left = 512
    Top = 288
  end
end
