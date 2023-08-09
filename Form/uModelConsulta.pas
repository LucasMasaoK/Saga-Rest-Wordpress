unit uModelConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  REST.Response.Adapter, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmConsulta = class(TForm)
    restClient: TRESTClient;
    restRequest: TRESTRequest;
    restResponse: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    editPesquisa: TEdit;
    btnPesquisar: TBitBtn;
    btnEditarr: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
  var
    base_url, consumer_key, consumer_secret, url_api: String;
  end;

var
  frmConsulta: TfrmConsulta;

implementation

uses uCadastroProduto;
{$R *.dfm}

procedure TfrmConsulta.btnPesquisarClick(Sender: TObject);
begin

  restClient.BaseURL := base_url + url_api + '&search=' + editPesquisa.Text +
    '&consumer_key=' + consumer_key + '&consumer_secret=' + consumer_secret;
  restRequest.Execute;
end;

procedure TfrmConsulta.DBGrid1CellClick(Column: TColumn);
begin
  var
    teste: string;
  frmCadastroProduto.queryProdutosCOD_SITE.Value:= DBGrid1.columns.items[0].field.Text.ToInteger;
  frmCadastroProduto.queryProdutosPROD_DESCRICAO_SITE.Value := DBGrid1.columns.items[1].field.Text;
 close;
end;

procedure TfrmConsulta.FormCreate(Sender: TObject);
begin
  base_url := 'https://cvcacessorios.com.br/';
  consumer_key := 'ck_f1b6e8c33b87879ba2b27d9573e2a98f07f4c269';
  consumer_secret := 'cs_7a0bf264d6f1871c765b89d7eecccabacbc19088';
  url_api := 'wp-json/wc/v3/products/?sku=&status=publish&per_page=50';

end;

end.
