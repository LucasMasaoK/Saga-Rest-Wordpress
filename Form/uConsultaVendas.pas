unit uConsultaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, REST.Types, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.JSON, FireDAC.Stan.Async, FireDAC.DApt;

type
  TfrmConsultaVendas = class(TForm)
    Panel1: TPanel;
    editPesquisa: TEdit;
    btnPesquisar: TBitBtn;
    btnEditarr: TBitBtn;
    dbVendas: TDBGrid;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    FDMemTable1id: TWideStringField;
    FDMemTable1parent_id: TWideStringField;
    FDMemTable1status: TWideStringField;
    FDMemTable1date_created: TWideStringField;
    FDMemTable1discount_total: TWideStringField;
    FDMemTable1total: TWideStringField;
    FDMemTable1customer_id: TWideStringField;
    FDMemTable1order_key: TWideStringField;
    FDMemTable1billing: TWideStringField;
    FDMemTable1shipping: TWideStringField;
    FDMemTable1payment_method: TWideStringField;
    FDMemTable1payment_method_title: TWideStringField;
    FDMemTable1transaction_id: TWideStringField;
    FDMemTable1customer_ip_address: TWideStringField;
    FDMemTable1customer_user_agent: TWideStringField;
    FDMemTable1created_via: TWideStringField;
    FDMemTable1customer_note: TWideStringField;
    FDMemTable1date_completed: TWideStringField;
    FDMemTable1date_paid: TWideStringField;
    FDMemTable1cart_hash: TWideStringField;
    FDMemTable1number: TWideStringField;
    FDMemTable1meta_data: TWideStringField;
    FDMemTable1line_items: TWideStringField;
    FDMemTable1tax_lines: TWideStringField;
    FDMemTable1shipping_lines: TWideStringField;
    FDMemTable1fee_lines: TWideStringField;
    FDMemTable1coupon_lines: TWideStringField;
    FDMemTable1refunds: TWideStringField;
    FDMemTable1payment_url: TWideStringField;
    FDMemTable1is_editable: TWideStringField;
    FDMemTable1needs_payment: TWideStringField;
    FDMemTable1needs_processing: TWideStringField;
    Memo1: TMemo;
    queryCliente: TFDQuery;
    procedure dbVendasCellClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaVendas: TfrmConsultaVendas;

implementation

{$R *.dfm}

uses uCadastroVendas, uDataModule;

procedure TfrmConsultaVendas.btnPesquisarClick(Sender: TObject);
begin
  RESTRequest1.Execute;

end;

procedure TfrmConsultaVendas.dbVendasCellClick(Column: TColumn);
begin
  var
    jsonProdutos: TJSonValue;
  jsonProdutos := TJSONObject.ParseJSONValue(dbVendas.Fields[22].AsString);
  Memo1.Text:= dbVendas.Fields[22].AsString;
  {queryCliente.Edit;
  if queryCliente.Locate('COD_SITE', dbVendas.Fields[6].AsInteger) then
  begin
    frmCadastroVendas.queryVendasCOD_CLIENTE.Value := dbVendas.Fields[6]
      .AsInteger;
    frmConsultaVendas.Close;
  end
  else
  begin
    ShowMessage('Cliente n�o encontrado');
    abort;
  end;      }

end;

end.
