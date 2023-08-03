unit uCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
    btnPesquisa: TBitBtn;
    memoJson: TMemo;
    memoResponse: TMemo;
    restRequest: TRESTRequest;
    restClient: TRESTClient;
    SimpleAuthenticator1: TSimpleAuthenticator;
    restResponse: TRESTResponse;
    queryProdutosCOD_SITE: TIntegerField;
    queryProdutosPRODUTO_SITE: TIntegerField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    comboSite: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure bntEditarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    edit: Boolean;
    base_url, url_api, consumer_key, consumer_secret: String;
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

uses uDataModule;

procedure TfrmCadastroProduto.BitBtn1Click(Sender: TObject);
begin
  base_url := 'https://cvcacessorios.com.br/';
  consumer_key := 'ck_f1b6e8c33b87879ba2b27d9573e2a98f07f4c269';
  consumer_secret := 'cs_7a0bf264d6f1871c765b89d7eecccabacbc19088';
  edit := false;
  queryProdutos.Append;
end;

procedure TfrmCadastroProduto.BitBtn3Click(Sender: TObject);
begin
  if comboSite.ItemIndex = 0 then
  queryProdutosPRODUTO_SITE.AsInteger:=1;
  begin
    var
      JSON, Response: TJSONObject;
    JSON := TJSONObject.Create;

    base_url := 'https://cvcacessorios.com.br/';
    consumer_key := 'ck_f1b6e8c33b87879ba2b27d9573e2a98f07f4c269';
    consumer_secret := 'cs_7a0bf264d6f1871c765b89d7eecccabacbc19088';

    if edit = false then
    begin
      restRequest.Method := rmPOST;
      url_api := 'wp-json/wc/v3/products/';
      JSON.AddPair('name', '#Saga ' + queryProdutosPROD_DESCRICAO.Value);
      JSON.AddPair('type', 'simple');
      JSON.AddPair('regular_price', queryProdutosPROD_CMV.Value.ToString);
      JSON.AddPair('status', 'pending');
      JSON.AddPair('sku', queryProdutosCOD_PRODUTO.Value.ToString);
      JSON.AddPair('manage_stock', 'true');
      JSON.AddPair('stock_quantity', queryProdutosQTDE.Value.ToString);

      restClient.BaseURL := base_url + url_api + '?consumer_key=' + consumer_key
        + '&consumer_secret=' + consumer_secret;

      restRequest.AddBody(JSON);
      memoJson.Text := JSON.ToString;
      restRequest.Execute;
      Response := restResponse.JSONValue as TJSONObject;
      memoResponse.Text := Response.Values['id'].Value;
      queryProdutosCOD_SITE.AsInteger := Response.Values['id'].Value.ToInteger;
    end
    else
    begin
      restRequest.Method := rmPUT;
      url_api := '/wp-json/wc/v3/products/' + queryProdutosCOD_SITE.value.ToString;
      JSON.AddPair('name', '#EDITSaga ' + queryProdutosPROD_DESCRICAO.Value);
      JSON.AddPair('type', 'simple');
      JSON.AddPair('regular_price', queryProdutosPROD_CMV.Value.ToString);
      JSON.AddPair('status', 'pending');
      JSON.AddPair('sku', queryProdutosCOD_PRODUTO.Value.ToString);
      JSON.AddPair('manage_stock', 'true');
      JSON.AddPair('stock_quantity', queryProdutosQTDE.Value.ToString);

      restClient.BaseURL := base_url + url_api + '?consumer_key=' + consumer_key
        + '&consumer_secret=' + consumer_secret;

      restRequest.AddBody(JSON);
      memoJson.Text := JSON.ToString;
      restRequest.Execute;
      Response := restResponse.JSONValue as TJSONObject;
    end;

  end;
  queryProdutos.Post
end;

procedure TfrmCadastroProduto.btnPesquisaClick(Sender: TObject);
begin
  memoJson.Text := '';
  memoResponse.Text := '';
end;

procedure TfrmCadastroProduto.bntEditarClick(Sender: TObject);
begin
  base_url := 'https://cvcacessorios.com.br/';
  consumer_key := 'ck_f1b6e8c33b87879ba2b27d9573e2a98f07f4c269';
  consumer_secret := 'cs_7a0bf264d6f1871c765b89d7eecccabacbc19088';
  edit := True;
  queryProdutos.edit;
end;

end.
