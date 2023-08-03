unit utelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mainMenu: TMainMenu;
    menuProduto: TMenuItem;
    procedure menuProdutoClick(Sender: TObject);
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

procedure TfrmPrincipal.menuProdutoClick(Sender: TObject);
begin
frmCadastroProduto.ShowModal;
end;

end.
