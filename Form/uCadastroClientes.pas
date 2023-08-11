unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uModelConsulta, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDataModule, Vcl.Mask, Vcl.DBCtrls, uConsultaClientes,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Authenticator.Basic, System.JSON;

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
    restClient: TRESTClient;
    restRequest: TRESTRequest;
    restResponse: TRESTResponse;
    HTTPBasicAuthenticator: THTTPBasicAuthenticator;
    Memo1: TMemo;
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

procedure TfrmCadastroCliente.BitBtn3Click(Sender: TObject);
begin
queryClientes.Post;

var jsonBody:TJSONObject;
queryClientes.edit;
restClient.BaseURL:='https://cvcacessorios.com.br/wp-json/wc/v3/customers/'+queryClientesCOD_SITE.Value;
restRequest.Method:=rmPUT;
restClient.ContentType:='application/json';

jsonBody:= TJSONObject.Create;
jsonBody.AddPair('first_name',queryClientesCOD_CLIENTE.Value.ToString);
restRequest.AddBody(jsonBody);
try
 restRequest.Execute;
except

end;
Memo1.Text:=restResponse.JSONText;
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
