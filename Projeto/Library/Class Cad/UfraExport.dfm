object fraExport: TfraExport
  Left = 0
  Top = 0
  Width = 88
  Height = 55
  TabOrder = 0
  TabStop = True
  Visible = False
  object acl: TActionList
    Left = 10
    Top = 8
    object actExportarExcel: TAction
      Category = 'Exporta'#231#227'o'
      Caption = 'actExportarExcel'
      Hint = 'Exportar os dados da grade para o formato XLS'
      ImageIndex = 0
      OnExecute = actExportarExcelExecute
    end
    object actExportarHTML: TAction
      Category = 'Exporta'#231#227'o'
      Caption = 'actExportarHTML'
      Hint = 'Exportar os dados da grade para o formato HTML'
      ImageIndex = 1
      OnExecute = actExportarHTMLExecute
    end
    object actExportarXML: TAction
      Category = 'Exporta'#231#227'o'
      Caption = 'actExportarXML'
      Hint = 'Exportar os dados da grade para o formato XML'
      ImageIndex = 2
      OnExecute = actExportarXMLExecute
    end
    object actCustomizacao: TAction
      Category = 'Customizacao'
      Caption = 'actCustomizacao'
      Hint = 'Adiciona ou remove campos da grade'
      ImageIndex = 3
      OnExecute = actCustomizacaoExecute
    end
  end
  object ImageList: TcxImageList
    Height = 12
    Width = 12
    FormatVersion = 1
    DesignInfo = 524334
    ImageInfo = <
      item
        Image.Data = {
          76020000424D760200000000000036000000280000000C0000000C0000000100
          20000000000040020000000000000000000000000000000000000905020D7949
          2AA2B16D42E9BC7343F8BB7243F7BB7143F7BB7244F7BA7243F7BC7344F8B26E
          42EB7444279D0905020D140A041CD9AE8EFFFCF0E4FEFCEFE2FFFCEEE1FFFCEE
          E0FFFFF4E9FFFEF3E8FFFFF6EDFFFEF9F2FEDBB196FF1309021C150C051DDAAF
          8CFFFCE6D4FFFBE2CFFEFFE6D4FFFFE8D7FFFFE8D6FFFFE5D3FFFAE2CFFEFCE7
          D7FFD9AC90FF140A031D16190B37C5AC85FFDFD8C1FFE5D8C1FF9EB895FF5396
          64FF519560FFAFBF9FFFFDE4D1FFFCE7D6FFDCB394FF150B041D115826C21C7C
          3DFF247F3EFE3E8952FF98C6A3FF79BC85FF439355FF90AE84FFFDE1CBFFFBE5
          CFFFDEB797FF150C051D0F130927497A3AFF35874DFFBBD7C2FF71BF86FF4693
          5CFFACBE9DFFF1DEC7FFFADFC8FFFAE3CCFFDEB794FF160D051D160E071C9293
          5EFFBEDAC8FF6CC48DFF579F6AFF498E59FFF2DEC9FFFCE0C9FFF8DCC2FFF8DF
          C8FFDFBA98FF160D061D253E2A6AAACBAFFF82D5A4FF57A26DFF4F9663FF579F
          6DFF5D9866FFD7CBABFFF5D5B6FFF4D7BBFFDEBB9BFF160E061D408251E95897
          66FF4A9560FF94B28CFF52925CFF267C3DFF308043FF5B9561FFEBE8DCFFF9F4
          EFFEDAB595FF160E061E12080312E6C0A1FFFFEAD8FFFEE3CFFEFFE6D1FFFFE5
          CFFFFFDFC6FFFFEEE1FFFCE7CFFEF4D7B4FFAA7A4DD00B06030F130C061AD7B9
          9BF6FAF0E5FDFCF0E4FFFCF0E4FFFBEFE2FFFAECDFFFFAF2EAFFEFCDA5FFD696
          66F92B1A1232000000000805030B79563599BD8C5BEAC79460F7C7945FF8C794
          60F7C89460F8BD8C5AEC885831AC130D09170000000000000000}
      end
      item
        Image.Data = {
          76020000424D760200000000000036000000280000000C0000000C0000000100
          2000000000004002000000000000000000000000000000000000000000000000
          00000B050211743C11B75A7912F87F9231FFAF7D2FFEBC7832F45931147D0C07
          02100000000000000000000000002F14064BAA4F24FB856A24FF149110FF0A8F
          10FE1D9214FF7D7F2AFFC8803DFFB27234E31C100626000000000C050212A549
          1CF98D5B1EFF139F1BFE0F9313FF09860BFF0F7703FF565B03FF983A04FEB15B
          20FFA46229DB0C070311682807A6AC4A14FF82510CFE0AAA2BFF139313FF387A
          06FFAF4000FFA63900FF9D3700FF9A3501FEAA4E14FF2F1302489F3D01F8AD48
          00FF944700FF7B8213FFAC8604FFEE9300FFE78A00FFD16900FFAC4400FF9838
          01FE864A1CFF692A11C2B1500AFF7F4500FEB55B03FFE18A0CFFFAD521FFFEDE
          1AFFFECB06FFF6A900FFD97200FF874A0EFF268431FF3F7039EEB87F3DFD7983
          0DFFC08B19FFF8ED5CFFFFFF79FFFFFF6CFFFFF541FFFFD610FFF09D00FF9968
          24FF2FD56CFF3A8147DDAA7B44E440C130FF25C918FEBAF7B5FFFFFFCBFFFFFF
          B7FFFFFF87FFFFF33BFFF4B705FFB3731AFE40DF81FF364D2E9C34220F4C5DB5
          3CFF00C205FE55F6A2FFDFFFFEFFFFFFEDFFFFFFB1FFFCF757FFF0B30CFF9488
          43FF9B6634FF150C04260A05030C867944C327C224FF46E264FFDBF3EAFEF5FC
          FCFFF8EED9FFF3DB76FED77D3EFF6D9157FF5246268B0201000200000000160A
          0917626B32AD5CB743FFB6D8B3FFCADAC6FFC4DAB8FFDCA26BFFBD875DFF4946
          307D0700010700000000000000000000000008030209151409265D3B238C856F
          52C47F6D51C249271566140E0A1E000000000000000000000000}
      end
      item
        Image.Data = {
          76020000424D760200000000000036000000280000000C0000000C0000000100
          2000000000004002000000000000000000000000000000000000000000010404
          04120000001F000000380000003B03030349030303490000003B000000380000
          001F04040412000000010202020A0D0D0D40B5B5B5D5FCFCFCFEFCFCFCFEFCFC
          FCFEFCFCFCFEFCFCFCFEFCFCFCFEB5B5B5D50D0D0D400202020A000000008F50
          00B1C07E27EED7943EFFD89641FFD7943EFFD89642FFD69137FFD7923BFFBF7A
          21EE8F5000B10000000000000000CC7300FFF4DFC4FFF2DABCFFE5B475FFEFD0
          A9FFE4B16FFFFFFFFFFFF9EFE1FFFBF2E7FFCA7200FE0000000000000000CC73
          00FFFAEFE1FFF6E6D0FFE4AB61FFECC695FFE2A75BFFFFFFFFFFF8E9D6FFE5AD
          66FFCA7200FE0000000000000000CC7300FFFBECDAFFF9E7D1FFF1CA99FFFFFD
          FAFFF9E6CEFFFFFFFFFFFEF9F2FFF2CB99FFCA7200FE00000000000000008F51
          00B3BC7A24EED2903AFFD2913CFFD18D34FFD2903BFFD18D35FFD18E37FFBD7C
          27EE8F5100B3000000000000000000000000A8A8A8C8F0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFA8A8A8C80000000000000000000000000000
          0000A6A6A6C8EDEDEDFFEDEDEDFFEDEDEDFFE2E2E2FFEBEBEBFFE6E6E6FEB1B1
          B1CD00000000000000000000000000000000A5A5A5C8EBEBEBFFEBEBEBFFEBEB
          EBFFD7D7D7FFFFFFFFFFDDDDDDEB000000170000000000000000000000000000
          0000A4A4A4C3E9E9E9FFE9E9E9FFE9E9E9FFD7D7D7FFFEFEFEFE0505052C0000
          000000000000000000000000000000000000000000050000000B0000000B0000
          000B0000000C0000000600000000000000000000000000000000}
      end
      item
        Image.Data = {
          76020000424D760200000000000036000000280000000C0000000C0000000100
          2000000000004002000000000000000000000000000000000000000000000000
          00000000000000000000030303060D0D0B1B0D0D0B1B03030306000000000000
          0000000000000000000000000000000000000909081323231E4C33332C6AAEAE
          9FFFAEAE9FFF33332C6A23231E4C090908130000000000000000000000000909
          08136F6F62CBB8B8A9F16D6D5FE6DDDDCFFDDDDDCFFD6D6D5FE6B8B8A9F16F6F
          62CB0909081300000000000000002424204CBBBBAEF1EDEDE0FFD8D8CCFCE8E8
          DBFEE8E8DBFED6D6CBFCEDEDE0FFBBBBAEF12424204C00000000030303063939
          326A757568E6DCDCD1FCE7E7DCFFB2B2A6F2B3B3A7F3E7E7DCFFD9D9CEFC7575
          68E63939326A030303060F0F0D1BBCBCAFFFE4E4DAFDEEEEE3FEBBBBAEF71B1B
          18311A1A1730B7B7ABF3EDEDE2FEE4E4DAFDBCBCAFFF0F0F0D1B0F0F0E1BC0C0
          B4FFE8E8DEFDF0F0E7FEBABAAFF21D1D1A331C1C1930B9B9AEF1EFEFE6FEE8E8
          DEFDC0C0B4FF0F0F0E1B040403063C3C3768838375E6E4E4DCFCEFEFE8FFBEBE
          B4F4BEBEB4F4EFEFE8FFE2E2DAFC838375E63C3C376804040306000000002B2B
          2649C8C8C1F1F9F9F4FFE6E6E0FCF4F4EFFEF4F4EFFEE4E4DEFCF9F9F4FFC8C8
          C1F12B2B264900000000000000000A0A0910838378CACDCDC5F18B8B7DE6EEEE
          E9FDEEEEE9FD8B8B7DE6C9C9C2F0828279C90A0A091000000000000000000000
          00000C0C0B132E2E2A4C43433D6ACCCCC2FFCCCCC2FF41413B672B2B27470A0A
          090F000000000000000000000000000000000000000000000000040404061111
          0F1B11110F1B0404040600000000000000000000000000000000}
      end>
  end
end
