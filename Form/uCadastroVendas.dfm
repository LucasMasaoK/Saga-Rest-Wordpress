object frmCadastroVendas: TfrmCadastroVendas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Vendas'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 628
    Height = 74
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 359
    ExplicitWidth = 622
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
    Left = 504
    Top = 0
    Width = 124
    Height = 368
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 498
    ExplicitHeight = 359
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
end
