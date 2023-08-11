unit uConsultaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, Data.DB, Vcl.Grids,
  Vcl.DBGrids, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmConsultaCliente = class(TForm)
    restClient: TRESTClient;
    restResquest: TRESTRequest;
    restResponse: TRESTResponse;
    restResponseDataSetAdapter: TRESTResponseDataSetAdapter;
    DataSource1: TDataSource;
    gridClientes: TDBGrid;
    FDMemTable1: TFDMemTable;
    FDMemTable1id: TWideStringField;
    FDMemTable1date_created: TWideStringField;
    FDMemTable1email: TWideStringField;
    FDMemTable1first_name: TWideStringField;
    FDMemTable1last_name: TWideStringField;
    FDMemTable1username: TWideStringField;
    Panel1: TPanel;
    editPesquisa: TEdit;
    btnPesquisar: TBitBtn;
    btnEditarr: TBitBtn;
    procedure gridClientesCellClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation
 uses uCadastroClientes;
{$R *.dfm}

procedure TfrmConsultaCliente.btnPesquisarClick(Sender: TObject);
begin
restResquest.Execute;
end;

procedure TfrmConsultaCliente.gridClientesCellClick(Column: TColumn);
begin
frmCadastroCliente.queryClientesCOD_SITE.Value:=gridClientes.Fields[0].AsString;
close;
end;

end.
