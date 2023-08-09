unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uModelConsulta, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDataModule, Vcl.Mask, Vcl.DBCtrls, uConsultaClientes;

type
  TfrmCadastroCliente = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    bntEditar: TBitBtn;
    BitBtn3: TBitBtn;
    btnPesquisa: TBitBtn;
    queryClientes: TFDQuery;
    queryClientesCOD_CLIENTE: TIntegerField;
    queryClientesCLI_CNPJ: TStringField;
    queryClientesCLI_FANTASIA: TStringField;
    queryClientesCOD_SITE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dataClientes: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel2: TPanel;
    btnProdutos: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure bntEditarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

procedure TfrmCadastroCliente.BitBtn1Click(Sender: TObject);
begin
queryClientes.Append;
end;

procedure TfrmCadastroCliente.BitBtn3Click(Sender: TObject);
begin
queryClientes.Post;
end;

procedure TfrmCadastroCliente.bntEditarClick(Sender: TObject);
begin
queryClientes.Edit;
end;

procedure TfrmCadastroCliente.btnProdutosClick(Sender: TObject);
begin
   frmConsultaCliente.ShowModal;
end;

end.
