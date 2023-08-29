object frmCadastroVendas: TfrmCadastroVendas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Vendas'
  ClientHeight = 552
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 66
    Width = 73
    Height = 15
    Caption = 'DOCUMENTO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 114
    Width = 126
    Height = 15
    Caption = 'COD_SUBGRUPOCUSTO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 32
    Top = 162
    Width = 105
    Height = 15
    Caption = 'COD_GRUPOCUSTO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 32
    Top = 210
    Width = 88
    Height = 15
    Caption = 'COD_NATUREZA'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 224
    Top = 21
    Width = 100
    Height = 15
    Caption = 'COD_CONDPAGTO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 224
    Top = 69
    Width = 109
    Height = 15
    Caption = 'COD_FUNCIONARIO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 224
    Top = 117
    Width = 74
    Height = 15
    Caption = 'COD_CLIENTE'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 224
    Top = 165
    Width = 81
    Height = 15
    Caption = 'COD_EMPRESA'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 32
    Top = 21
    Width = 67
    Height = 15
    Caption = 'COD_LOCAL'
    FocusControl = DBEdit9
  end
  object Panel1: TPanel
    Left = 0
    Top = 478
    Width = 729
    Height = 74
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 469
    ExplicitWidth = 723
    object BitBtn1: TBitBtn
      Left = 16
      Top = 16
      Width = 91
      Height = 49
      Caption = 'Novo'
      DisabledImageName = 'btnNovo'
      TabOrder = 0
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
  object Panel2: TPanel
    Left = 605
    Top = 0
    Width = 124
    Height = 478
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 599
    ExplicitHeight = 469
    object btnvendas: TBitBtn
      Left = 6
      Top = 17
      Width = 113
      Height = 41
      Cancel = True
      Caption = 'Consulta Vendas'
      TabOrder = 0
      OnClick = btnvendasClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 82
    Width = 40
    Height = 23
    DataField = 'DOCUMENTO'
    DataSource = dataVendas
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 130
    Width = 40
    Height = 23
    DataField = 'COD_SUBGRUPOCUSTO'
    DataSource = dataVendas
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 178
    Width = 40
    Height = 23
    DataField = 'COD_GRUPOCUSTO'
    DataSource = dataVendas
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 32
    Top = 226
    Width = 40
    Height = 23
    DataField = 'COD_NATUREZA'
    DataSource = dataVendas
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 224
    Top = 37
    Width = 40
    Height = 23
    DataField = 'COD_CONDPAGTO'
    DataSource = dataVendas
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 224
    Top = 85
    Width = 40
    Height = 23
    DataField = 'COD_FUNCIONARIO'
    DataSource = dataVendas
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 224
    Top = 133
    Width = 40
    Height = 23
    DataField = 'COD_CLIENTE'
    DataSource = dataVendas
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 224
    Top = 181
    Width = 40
    Height = 23
    DataField = 'COD_EMPRESA'
    DataSource = dataVendas
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 32
    Top = 37
    Width = 40
    Height = 23
    DataField = 'COD_LOCAL'
    DataSource = dataVendas
    TabOrder = 10
  end
  object DBGrid1: TDBGrid
    Left = -8
    Top = 296
    Width = 673
    Height = 176
    DataSource = dataVendaItens
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object queryVendas: TFDQuery
    Active = True
    Connection = DataModule1.bancoConexao
    SQL.Strings = (
      'SELECT * FROM VENDAS_CLIENTES')
    Left = 392
    Top = 40
    object queryVendasDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryVendasCOD_SUBGRUPOCUSTO: TIntegerField
      FieldName = 'COD_SUBGRUPOCUSTO'
      Origin = 'COD_SUBGRUPOCUSTO'
    end
    object queryVendasCOD_GRUPOCUSTO: TIntegerField
      FieldName = 'COD_GRUPOCUSTO'
      Origin = 'COD_GRUPOCUSTO'
    end
    object queryVendasCOD_NATUREZA: TCurrencyField
      FieldName = 'COD_NATUREZA'
      Origin = 'COD_NATUREZA'
    end
    object queryVendasCOD_CONDPAGTO: TIntegerField
      FieldName = 'COD_CONDPAGTO'
      Origin = 'COD_CONDPAGTO'
    end
    object queryVendasCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COD_FUNCIONARIO'
    end
    object queryVendasCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object queryVendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object queryVendasDATALANC: TDateField
      FieldName = 'DATALANC'
      Origin = 'DATALANC'
    end
    object queryVendasBASEICMS: TCurrencyField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
    end
    object queryVendasVALORICMS: TCurrencyField
      FieldName = 'VALORICMS'
      Origin = 'VALORICMS'
    end
    object queryVendasBASEICMSSUB: TCurrencyField
      FieldName = 'BASEICMSSUB'
      Origin = 'BASEICMSSUB'
    end
    object queryVendasVALORICMSSUB: TCurrencyField
      FieldName = 'VALORICMSSUB'
      Origin = 'VALORICMSSUB'
    end
    object queryVendasVALORFRETE: TCurrencyField
      FieldName = 'VALORFRETE'
      Origin = 'VALORFRETE'
    end
    object queryVendasVALORSEGURO: TCurrencyField
      FieldName = 'VALORSEGURO'
      Origin = 'VALORSEGURO'
    end
    object queryVendasOUTRASDESPESAS: TCurrencyField
      FieldName = 'OUTRASDESPESAS'
      Origin = 'OUTRASDESPESAS'
    end
    object queryVendasVALORTOTALIPI: TCurrencyField
      FieldName = 'VALORTOTALIPI'
      Origin = 'VALORTOTALIPI'
    end
    object queryVendasVALORISS: TCurrencyField
      FieldName = 'VALORISS'
      Origin = 'VALORISS'
    end
    object queryVendasVALORDESCONTO: TFMTBCDField
      FieldName = 'VALORDESCONTO'
      Origin = 'VALORDESCONTO'
      Precision = 18
      Size = 6
    end
    object queryVendasVALORPRODUTOS: TFMTBCDField
      FieldName = 'VALORPRODUTOS'
      Origin = 'VALORPRODUTOS'
      Precision = 18
      Size = 6
    end
    object queryVendasVALORTOTALPROD: TFMTBCDField
      FieldName = 'VALORTOTALPROD'
      Origin = 'VALORTOTALPROD'
      Precision = 18
      Size = 6
    end
    object queryVendasVALORTOTALNOTA: TFMTBCDField
      FieldName = 'VALORTOTALNOTA'
      Origin = 'VALORTOTALNOTA'
      Precision = 18
      Size = 6
    end
    object queryVendasHORAS: TTimeField
      FieldName = 'HORAS'
      Origin = 'HORAS'
    end
    object queryVendasCOD_TRANSPORTADORA: TIntegerField
      FieldName = 'COD_TRANSPORTADORA'
      Origin = 'COD_TRANSPORTADORA'
    end
    object queryVendasCOD_LOCAL: TIntegerField
      FieldName = 'COD_LOCAL'
      Origin = 'COD_LOCAL'
    end
    object queryVendasBASEDESCONTO: TFMTBCDField
      FieldName = 'BASEDESCONTO'
      Origin = 'BASEDESCONTO'
      Precision = 18
      Size = 6
    end
    object queryVendasPERCDESCONTO: TFMTBCDField
      FieldName = 'PERCDESCONTO'
      Origin = 'PERCDESCONTO'
      Precision = 18
      Size = 6
    end
    object queryVendasNUMVOLUME: TIntegerField
      FieldName = 'NUMVOLUME'
      Origin = 'NUMVOLUME'
    end
    object queryVendasCUPOMFISCAL: TIntegerField
      FieldName = 'CUPOMFISCAL'
      Origin = 'CUPOMFISCAL'
    end
    object queryVendasPESO: TCurrencyField
      FieldName = 'PESO'
      Origin = 'PESO'
    end
    object queryVendasQTDETOTAL: TCurrencyField
      FieldName = 'QTDETOTAL'
      Origin = 'QTDETOTAL'
    end
    object queryVendasCOD_FINANCIADORA: TIntegerField
      FieldName = 'COD_FINANCIADORA'
      Origin = 'COD_FINANCIADORA'
    end
    object queryVendasCOD_TABELA: TIntegerField
      FieldName = 'COD_TABELA'
      Origin = 'COD_TABELA'
    end
    object queryVendasNO_PARCELAS: TSmallintField
      FieldName = 'NO_PARCELAS'
      Origin = 'NO_PARCELAS'
    end
    object queryVendasCARENCIA: TSmallintField
      FieldName = 'CARENCIA'
      Origin = 'CARENCIA'
    end
    object queryVendasCOD_CARTAO: TIntegerField
      FieldName = 'COD_CARTAO'
      Origin = 'COD_CARTAO'
    end
    object queryVendasCOD_FORMAPAGTO: TIntegerField
      FieldName = 'COD_FORMAPAGTO'
      Origin = 'COD_FORMAPAGTO'
    end
    object queryVendasCOD_TABPRECO: TIntegerField
      FieldName = 'COD_TABPRECO'
      Origin = 'COD_TABPRECO'
    end
    object queryVendasNUMERO_CONTRATO: TStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = 'NUMERO_CONTRATO'
    end
    object queryVendasCOD_EMBALAGEM: TIntegerField
      FieldName = 'COD_EMBALAGEM'
      Origin = 'COD_EMBALAGEM'
    end
    object queryVendasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object queryVendasDTDIGITACAO: TDateField
      FieldName = 'DTDIGITACAO'
      Origin = 'DTDIGITACAO'
    end
    object queryVendasTIPOFRETE: TStringField
      FieldName = 'TIPOFRETE'
      Origin = 'TIPOFRETE'
      Size = 3
    end
    object queryVendasDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
      Origin = 'DATAENTREGA'
    end
    object queryVendasCOD_IMPORTACAO: TIntegerField
      FieldName = 'COD_IMPORTACAO'
      Origin = 'COD_IMPORTACAO'
    end
    object queryVendasNO_PEDIDO: TIntegerField
      FieldName = 'NO_PEDIDO'
      Origin = 'NO_PEDIDO'
    end
    object queryVendasBASEOUTROS: TCurrencyField
      FieldName = 'BASEOUTROS'
      Origin = 'BASEOUTROS'
    end
    object queryVendasVALOROUTROS: TCurrencyField
      FieldName = 'VALOROUTROS'
      Origin = 'VALOROUTROS'
    end
    object queryVendasOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object queryVendasOBSERVACAO_1: TStringField
      FieldName = 'OBSERVACAO_1'
      Origin = 'OBSERVACAO_1'
      Size = 50
    end
    object queryVendasOBSERVACAO_2: TStringField
      FieldName = 'OBSERVACAO_2'
      Origin = 'OBSERVACAO_2'
      Size = 50
    end
    object queryVendasOBSERVACAO_3: TStringField
      FieldName = 'OBSERVACAO_3'
      Origin = 'OBSERVACAO_3'
      Size = 50
    end
    object queryVendasVALORDESCDEVOLUCAO: TCurrencyField
      FieldName = 'VALORDESCDEVOLUCAO'
      Origin = 'VALORDESCDEVOLUCAO'
    end
    object queryVendasHISTORICO_DEVOLUCAO: TStringField
      FieldName = 'HISTORICO_DEVOLUCAO'
      Origin = 'HISTORICO_DEVOLUCAO'
      Size = 255
    end
    object queryVendasVALORPROMOCAO: TFMTBCDField
      FieldName = 'VALORPROMOCAO'
      Origin = 'VALORPROMOCAO'
      Precision = 18
      Size = 6
    end
    object queryVendasVALORPROMOCAO_PERC: TFMTBCDField
      FieldName = 'VALORPROMOCAO_PERC'
      Origin = 'VALORPROMOCAO_PERC'
      Precision = 18
      Size = 6
    end
    object queryVendasPROT_DATA: TDateField
      FieldName = 'PROT_DATA'
      Origin = 'PROT_DATA'
    end
    object queryVendasPROT_HORA: TTimeField
      FieldName = 'PROT_HORA'
      Origin = 'PROT_HORA'
    end
    object queryVendasPROT_CHECK: TIntegerField
      FieldName = 'PROT_CHECK'
      Origin = 'PROT_CHECK'
    end
    object queryVendasPROT_USUARIO: TStringField
      FieldName = 'PROT_USUARIO'
      Origin = 'PROT_USUARIO'
    end
    object queryVendasNOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = 'NOME_CONSUMIDOR'
      Size = 100
    end
    object queryVendasSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 15
    end
  end
  object dataVendas: TDataSource
    DataSet = queryVendas
    Left = 456
    Top = 58
  end
  object queryVendaItens: TFDQuery
    Active = True
    Connection = DataModule1.bancoConexao
    SQL.Strings = (
      'SELECT * FROM VENDAS_CLIENTES_ITENS WHERE DOCUMENTO=1')
    Left = 416
    Top = 248
    object queryVendaItensCOD_VENDAS_CLIENTES_ITENS: TIntegerField
      FieldName = 'COD_VENDAS_CLIENTES_ITENS'
      Origin = 'COD_VENDAS_CLIENTES_ITENS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryVendaItensCOD_VENDAS_GRUPO_ITENS: TIntegerField
      FieldName = 'COD_VENDAS_GRUPO_ITENS'
      Origin = 'COD_VENDAS_GRUPO_ITENS'
    end
    object queryVendaItensDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object queryVendaItensCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
    end
    object queryVendaItensCOD_LOTE: TStringField
      FieldName = 'COD_LOTE'
      Origin = 'COD_LOTE'
      Size = 8
    end
    object queryVendaItensFAB_DESCRICAO: TStringField
      FieldName = 'FAB_DESCRICAO'
      Origin = 'FAB_DESCRICAO'
      Size = 30
    end
    object queryVendaItensPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Origin = 'PROD_DESCRICAO'
      Size = 50
    end
    object queryVendaItensMAR_DESCRICAO: TStringField
      FieldName = 'MAR_DESCRICAO'
      Origin = 'MAR_DESCRICAO'
      Size = 30
    end
    object queryVendaItensPROD_UNIDADE: TStringField
      FieldName = 'PROD_UNIDADE'
      Origin = 'PROD_UNIDADE'
      Size = 3
    end
    object queryVendaItensPROD_CLASSFISCAL: TIntegerField
      FieldName = 'PROD_CLASSFISCAL'
      Origin = 'PROD_CLASSFISCAL'
      Required = True
    end
    object queryVendaItensPROD_CLASSTRIB: TIntegerField
      FieldName = 'PROD_CLASSTRIB'
      Origin = 'PROD_CLASSTRIB'
      Required = True
    end
    object queryVendaItensQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 3
    end
    object queryVendaItensVALORPRODUTO: TFMTBCDField
      FieldName = 'VALORPRODUTO'
      Origin = 'VALORPRODUTO'
      Precision = 18
      Size = 6
    end
    object queryVendaItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 6
    end
    object queryVendaItensACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 6
    end
    object queryVendaItensICMS: TCurrencyField
      FieldName = 'ICMS'
      Origin = 'ICMS'
    end
    object queryVendaItensIPI: TCurrencyField
      FieldName = 'IPI'
      Origin = 'IPI'
    end
    object queryVendaItensVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 6
    end
    object queryVendaItensID_ORDEM: TIntegerField
      FieldName = 'ID_ORDEM'
      Origin = 'ID_ORDEM'
    end
    object queryVendaItensPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
    end
    object queryVendaItensNOCAIXA: TIntegerField
      FieldName = 'NOCAIXA'
      Origin = 'NOCAIXA'
    end
    object queryVendaItensDESC_PROGRESSIVO: TStringField
      FieldName = 'DESC_PROGRESSIVO'
      Origin = 'DESC_PROGRESSIVO'
      Size = 30
    end
    object queryVendaItensPROD_CUSTOMEDIO: TCurrencyField
      FieldName = 'PROD_CUSTOMEDIO'
      Origin = 'PROD_CUSTOMEDIO'
    end
    object queryVendaItensPROD_PRECOCUSTO: TCurrencyField
      FieldName = 'PROD_PRECOCUSTO'
      Origin = 'PROD_PRECOCUSTO'
    end
    object queryVendaItensNR_SERIE: TStringField
      FieldName = 'NR_SERIE'
      Origin = 'NR_SERIE'
    end
    object queryVendaItensQTDE_UND: TCurrencyField
      FieldName = 'QTDE_UND'
      Origin = 'QTDE_UND'
    end
    object queryVendaItensCOMPRIMENTO: TCurrencyField
      FieldName = 'COMPRIMENTO'
      Origin = 'COMPRIMENTO'
    end
    object queryVendaItensLARGURA: TCurrencyField
      FieldName = 'LARGURA'
      Origin = 'LARGURA'
    end
    object queryVendaItensESPESSURA: TCurrencyField
      FieldName = 'ESPESSURA'
      Origin = 'ESPESSURA'
    end
    object queryVendaItensVLR_DESCONTO: TFMTBCDField
      FieldName = 'VLR_DESCONTO'
      Origin = 'VLR_DESCONTO'
      Precision = 18
      Size = 6
    end
    object queryVendaItensVLR_ACRESCIMO: TFMTBCDField
      FieldName = 'VLR_ACRESCIMO'
      Origin = 'VLR_ACRESCIMO'
      Precision = 18
      Size = 6
    end
    object queryVendaItensCOD_COR: TIntegerField
      FieldName = 'COD_COR'
      Origin = 'COD_COR'
    end
    object queryVendaItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      Size = 3
    end
    object queryVendaItensVLR_DESCONTO_TOTAL: TFMTBCDField
      FieldName = 'VLR_DESCONTO_TOTAL'
      Origin = 'VLR_DESCONTO_TOTAL'
      Precision = 18
      Size = 6
    end
    object queryVendaItensVLR_ACRESCIMO_TOTAL: TFMTBCDField
      FieldName = 'VLR_ACRESCIMO_TOTAL'
      Origin = 'VLR_ACRESCIMO_TOTAL'
      Precision = 18
      Size = 6
    end
    object queryVendaItensVLR_PROMOCAO: TFMTBCDField
      FieldName = 'VLR_PROMOCAO'
      Origin = 'VLR_PROMOCAO'
      Precision = 18
      Size = 6
    end
    object queryVendaItensVLR_PROMOCAO_PERC: TFMTBCDField
      FieldName = 'VLR_PROMOCAO_PERC'
      Origin = 'VLR_PROMOCAO_PERC'
      Precision = 18
      Size = 6
    end
    object queryVendaItensCFOP: TCurrencyField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Required = True
    end
    object queryVendaItensOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
  end
  object dataVendaItens: TDataSource
    DataSet = queryVendaItens
    Left = 536
    Top = 264
  end
end
