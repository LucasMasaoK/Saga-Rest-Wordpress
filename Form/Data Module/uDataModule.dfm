object DataModule1: TDataModule1
  Height = 600
  Width = 800
  object bancoConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Lucas Marques\Documents\Cursos\Delphi Rest Sag' +
        'a\Saga-Rest-Wordpress\Banco de Dados\SAGA2000D.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Transaction = bancoTransacao
    Left = 614
    Top = 384
  end
  object bancoTransacao: TFDTransaction
    Connection = bancoConexao
    Left = 691
    Top = 397
  end
end
