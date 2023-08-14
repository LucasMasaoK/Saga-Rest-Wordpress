unit utelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uCadastroClientes,
  uCadastroVendas;

type
  TfrmPrincipal = class(TForm)
    mainMenu: TMainMenu;
    menuProduto: TMenuItem;
    Cliente1: TMenuItem;
    Vendas: TMenuItem;
    procedure menuProdutoClick(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure VendasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadastroProduto;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
    frmCadastroCliente.ShowModal;

end;

procedure TfrmPrincipal.menuProdutoClick(Sender: TObject);
begin
frmCadastroProduto.ShowModal;
end;

procedure TfrmPrincipal.VendasClick(Sender: TObject);
begin
frmCadastroVendas.ShowModal;
end;

end.
