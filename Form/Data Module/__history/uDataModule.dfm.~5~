object DataModule1: TDataModule1
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object bancoConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Lucas Marques\Documents\Cursos\Delphi Rest Sag' +
        'a\Saga-Rest-Wordpress\Banco de Dados\SAGA2000D.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Transaction = bancoTransacao
    Left = 768
    Top = 480
  end
  object bancoTransacao: TFDTransaction
    Connection = bancoConexao
    Left = 864
    Top = 496
  end
end
