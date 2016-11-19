object dmConnection: TdmConnection
  OldCreateOrder = False
  Height = 60
  Width = 68
  object SQLConnection: TSQLConnection
    ConnectionName = 'Sistema'
    DriverName = 'DevartInterBase'
    GetDriverFunc = 'getSQLDriverInterBase'
    LibraryName = 'dbexpida40.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXDevartInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Devart.DbxIda.DriverLoader.TCRDynalinkDrive' +
        'rLoader,Devart.DbxIda.DriverLoader,Version=15.0.0.1,Culture=neut' +
        'ral,PublicKeyToken=09af7300eec23701'
      
        'MetaDataAssemblyLoader=Devart.DbxIda.DriverLoader.TDBXDevartInte' +
        'rBaseMetaDataCommandFactory,Devart.DbxIda.DriverLoader,Version=1' +
        '5.0.0.1,Culture=neutral,PublicKeyToken=09af7300eec23701'
      
        'MetaDataPackageLoader=TDBXDevartInterBaseMetaDataCommandFactory,' +
        'DbxDevartInterBaseDriver150.bpl'
      'ProductName=DevartInterBase'
      'GetDriverFunc=getSQLDriverInterBase'
      'LibraryName=dbexpida40.dll'
      'VendorLib=gds32.dll'
      'Database=127.0.0.1/3051:C:\Banco\TESTE.IDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'SQLDialect=3'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'DevartInterBase TransIsolation=ReadCommitted'
      'WaitOnLocks=True'
      'CharLength=1'
      'EnableBCD=True'
      'OptimizedNumerics=False'
      'LongStrings=True'
      'UseQuoteChar=False'
      'FetchAll=False'
      'DeferredBlobRead=False'
      'DeferredArrayRead=False'
      'UseUnicode=False')
    VendorLib = 'fbclient.dll'
    Connected = True
    Left = 16
    Top = 8
  end
end
