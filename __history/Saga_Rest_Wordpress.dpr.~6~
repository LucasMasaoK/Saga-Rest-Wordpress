program Saga_Rest_Wordpress;

uses
  Vcl.Forms,
  utelaPrincipal in 'Form\utelaPrincipal.pas' {frmPrincipal},
  uCadastroProduto in 'Form\uCadastroProduto.pas' {frmCadastroProduto},
  uDataModule in 'Form\Data Module\uDataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmCadastroProduto, frmCadastroProduto);
  Application.Run;
end.
