unit uCadastroVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uConsultaVendas, uDataModule, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, system.JSON, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroVendas = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    bntEditar: TBitBtn;
    BitBtn3: TBitBtn;
    btnPesquisa: TBitBtn;
    Panel2: TPanel;
    btnvendas: TBitBtn;
    queryVendas: TFDQuery;
    queryVendasDOCUMENTO: TIntegerField;
    queryVendasCOD_SUBGRUPOCUSTO: TIntegerField;
    queryVendasCOD_GRUPOCUSTO: TIntegerField;
    queryVendasCOD_NATUREZA: TCurrencyField;
    queryVendasCOD_CONDPAGTO: TIntegerField;
    queryVendasCOD_FUNCIONARIO: TIntegerField;
    queryVendasCOD_CLIENTE: TIntegerField;
    queryVendasCOD_EMPRESA: TIntegerField;
    queryVendasDATALANC: TDateField;
    queryVendasBASEICMS: TCurrencyField;
    queryVendasVALORICMS: TCurrencyField;
    queryVendasBASEICMSSUB: TCurrencyField;
    queryVendasVALORICMSSUB: TCurrencyField;
    queryVendasVALORFRETE: TCurrencyField;
    queryVendasVALORSEGURO: TCurrencyField;
    queryVendasOUTRASDESPESAS: TCurrencyField;
    queryVendasVALORTOTALIPI: TCurrencyField;
    queryVendasVALORISS: TCurrencyField;
    queryVendasVALORDESCONTO: TFMTBCDField;
    queryVendasVALORPRODUTOS: TFMTBCDField;
    queryVendasVALORTOTALPROD: TFMTBCDField;
    queryVendasVALORTOTALNOTA: TFMTBCDField;
    queryVendasHORAS: TTimeField;
    queryVendasCOD_TRANSPORTADORA: TIntegerField;
    queryVendasCOD_LOCAL: TIntegerField;
    queryVendasBASEDESCONTO: TFMTBCDField;
    queryVendasPERCDESCONTO: TFMTBCDField;
    queryVendasNUMVOLUME: TIntegerField;
    queryVendasCUPOMFISCAL: TIntegerField;
    queryVendasPESO: TCurrencyField;
    queryVendasQTDETOTAL: TCurrencyField;
    queryVendasCOD_FINANCIADORA: TIntegerField;
    queryVendasCOD_TABELA: TIntegerField;
    queryVendasNO_PARCELAS: TSmallintField;
    queryVendasCARENCIA: TSmallintField;
    queryVendasCOD_CARTAO: TIntegerField;
    queryVendasCOD_FORMAPAGTO: TIntegerField;
    queryVendasCOD_TABPRECO: TIntegerField;
    queryVendasNUMERO_CONTRATO: TStringField;
    queryVendasCOD_EMBALAGEM: TIntegerField;
    queryVendasUSUARIO: TStringField;
    queryVendasDTDIGITACAO: TDateField;
    queryVendasTIPOFRETE: TStringField;
    queryVendasDATAENTREGA: TDateField;
    queryVendasCOD_IMPORTACAO: TIntegerField;
    queryVendasNO_PEDIDO: TIntegerField;
    queryVendasBASEOUTROS: TCurrencyField;
    queryVendasVALOROUTROS: TCurrencyField;
    queryVendasOBSERVACAO: TMemoField;
    queryVendasOBSERVACAO_1: TStringField;
    queryVendasOBSERVACAO_2: TStringField;
    queryVendasOBSERVACAO_3: TStringField;
    queryVendasVALORDESCDEVOLUCAO: TCurrencyField;
    queryVendasHISTORICO_DEVOLUCAO: TStringField;
    queryVendasVALORPROMOCAO: TFMTBCDField;
    queryVendasVALORPROMOCAO_PERC: TFMTBCDField;
    queryVendasPROT_DATA: TDateField;
    queryVendasPROT_HORA: TTimeField;
    queryVendasPROT_CHECK: TIntegerField;
    queryVendasPROT_USUARIO: TStringField;
    queryVendasNOME_CONSUMIDOR: TStringField;
    queryVendasSTATUS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dataVendas: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    queryVendaItens: TFDQuery;
    queryVendaItensCOD_VENDAS_CLIENTES_ITENS: TIntegerField;
    queryVendaItensCOD_VENDAS_GRUPO_ITENS: TIntegerField;
    queryVendaItensDOCUMENTO: TIntegerField;
    queryVendaItensCOD_PRODUTO: TIntegerField;
    queryVendaItensCOD_LOTE: TStringField;
    queryVendaItensFAB_DESCRICAO: TStringField;
    queryVendaItensPROD_DESCRICAO: TStringField;
    queryVendaItensMAR_DESCRICAO: TStringField;
    queryVendaItensPROD_UNIDADE: TStringField;
    queryVendaItensPROD_CLASSFISCAL: TIntegerField;
    queryVendaItensPROD_CLASSTRIB: TIntegerField;
    queryVendaItensQTDE: TFMTBCDField;
    queryVendaItensVALORPRODUTO: TFMTBCDField;
    queryVendaItensDESCONTO: TFMTBCDField;
    queryVendaItensACRESCIMO: TFMTBCDField;
    queryVendaItensICMS: TCurrencyField;
    queryVendaItensIPI: TCurrencyField;
    queryVendaItensVALORTOTAL: TFMTBCDField;
    queryVendaItensID_ORDEM: TIntegerField;
    queryVendaItensPRECO_CUSTO: TCurrencyField;
    queryVendaItensNOCAIXA: TIntegerField;
    queryVendaItensDESC_PROGRESSIVO: TStringField;
    queryVendaItensPROD_CUSTOMEDIO: TCurrencyField;
    queryVendaItensPROD_PRECOCUSTO: TCurrencyField;
    queryVendaItensNR_SERIE: TStringField;
    queryVendaItensQTDE_UND: TCurrencyField;
    queryVendaItensCOMPRIMENTO: TCurrencyField;
    queryVendaItensLARGURA: TCurrencyField;
    queryVendaItensESPESSURA: TCurrencyField;
    queryVendaItensVLR_DESCONTO: TFMTBCDField;
    queryVendaItensVLR_ACRESCIMO: TFMTBCDField;
    queryVendaItensCOD_COR: TIntegerField;
    queryVendaItensTAMANHO: TStringField;
    queryVendaItensVLR_DESCONTO_TOTAL: TFMTBCDField;
    queryVendaItensVLR_ACRESCIMO_TOTAL: TFMTBCDField;
    queryVendaItensVLR_PROMOCAO: TFMTBCDField;
    queryVendaItensVLR_PROMOCAO_PERC: TFMTBCDField;
    queryVendaItensCFOP: TCurrencyField;
    queryVendaItensOBS: TStringField;
    DBGrid1: TDBGrid;
    dataVendaItens: TDataSource;
    procedure btnvendasClick(Sender: TObject);
    procedure bntEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroVendas: TfrmCadastroVendas;
  arrayItens:TJSONObject;

implementation

{$R *.dfm}

procedure TfrmCadastroVendas.bntEditarClick(Sender: TObject);
begin
queryVendas.Edit;
queryVendaItens.Edit;
end;

procedure TfrmCadastroVendas.btnvendasClick(Sender: TObject);
begin
frmConsultaVendas.ShowModal;
end;

end.
