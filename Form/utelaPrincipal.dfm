object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Saga Rest - Integra'#231#227'o Wordpress'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mainMenu
  Position = poDefault
  Scaled = False
  WindowState = wsMaximized
  WindowMenu = menuProduto
  TextHeight = 15
  object mainMenu: TMainMenu
    Left = 488
    Top = 8
    object menuProduto: TMenuItem
      Caption = 'Produto'
      OnClick = menuProdutoClick
    end
    object Cliente1: TMenuItem
      Caption = 'Cliente'
      OnClick = Cliente1Click
    end
    object Vendas: TMenuItem
      Caption = 'Vendas'
      OnClick = VendasClick
    end
  end
end
