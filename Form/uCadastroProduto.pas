unit uCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.JSON,
  REST.Authenticator.Simple, REST.Response.Adapter;

type
  TfrmCadastroProduto = class(TForm)
    queryProdutos: TFDQuery;
    sourceProdutos: TDataSource;
    queryProdutosCOD_PRODUTO: TIntegerField;
    queryProdutosPROD_DESCRICAO: TStringField;
    queryProdutosQTDE: TCurrencyField;
    queryProdutosPROD_CMV: TCurrencyField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    editNome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    bntEditar: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    memoJson: TMemo;
    memoResponse: TMemo;
    restRequest: TRESTRequest;
    restClient: TRESTClient;
    SimpleAuthenticator1: TSimpleAuthenticator;
    restResponse: TRESTResponse;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure bntEditarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

uses uDataModule;

procedure TfrmCadastroProduto.BitBtn1Click(Sender: TObject);
begin

queryProdutos.Append;
end;

procedure TfrmCadastroProduto.BitBtn3Click(Sender: TObject);
begin
var json, response:TJSONObject;
 json:=TJSONObject.Create;

 json.AddPair('name','#Saga ' + queryProdutosPROD_DESCRICAO.Value);
 json.AddPair('type','simple');
 json.AddPair('regular_price',queryProdutosPROD_CMV.Value.ToString);
 json.AddPair('status','pending');
 json.AddPair('sku',queryProdutosCOD_PRODUTO.Value.ToString);
 json.AddPair('manage_stock','true');
 json.AddPair('stock_quantity',queryProdutosQTDE.Value.ToString);


restClient.BaseURL:='https://cvcacessorios.com.br/wp-json/wc/v3/products/?consumer_key=ck_f1b6e8c33b87879ba2b27d9573e2a98f07f4c269&consumer_secret=cs_7a0bf264d6f1871c765b89d7eecccabacbc19088';
restRequest.AddBody(json);
memoJson.Text:=json.ToString;
restRequest.Execute;
memoResponse.Text:=restResponse.JSONText;
end;

procedure TfrmCadastroProduto.BitBtn4Click(Sender: TObject);
begin
  memoJson.Text:='';
 memoResponse.Text:='';
end;

procedure TfrmCadastroProduto.bntEditarClick(Sender: TObject);
begin
queryProdutos.Edit;
end;

end.