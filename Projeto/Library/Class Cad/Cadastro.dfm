object frmCadastro: TfrmCadastro
  Left = 356
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadastro'
  ClientHeight = 208
  ClientWidth = 410
  Color = 16185078
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 410
    Height = 165
    Align = alClient
    ExplicitTop = -2
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 165
    Width = 410
    Height = 43
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      410
      43)
    object btnGravar: TSpeedButton
      Left = 138
      Top = 4
      Width = 48
      Height = 36
      Hint = 'Gravar (F11)'
      Anchors = [akLeft, akTop, akBottom]
      Flat = True
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        18000000000000180000120B0000120B00000000000000000000CCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCBCBCBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBCBCBC7C6
        C7C3C2C3C6C6C6CBCBCBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC5C5
        C5C1C1C1C5C5C5CACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBCBCBC4C3C49FB2
        9F88AB88B1B2B1C4C4C4CBCBCBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACAC2C2C2ABAB
        AB9F9F9FB0B0B0C3C3C3CACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBCBCBC4C3C49BB19B4BBC
        4A3AC63971AC71AFB0AFC3C3C3CACACACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACAC2C2C2A9A9A99A9A
        9A9D9D9D9B9B9BAEAEAEC2C2C2C8C8C8CACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBCBCBC4C2C49AB19A4BBF4A4ED8
        5F59DE7741CA426CAE6CACAEACC2C2C2CACACACCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACAC1C1C1A9A9A99C9C9CB3B3
        B3BDBDBDA2A2A2999999ACACACC1C1C1C8C8C8CACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBCBCBC3C2C399B2994BC04A4CD86044E6
        9644E9A150DF7D42CC4367B066AAADAAC2C2C2CACACACCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACAC1C1C1AAAAAA9D9D9DB3B3B3C7C7
        C7CCCCCCBEBEBEA3A3A3999999ABABABC1C1C1C8C8C8CACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCBCBCBC4C2C499B3994BC24A49D75F39E38E64EE
        B59FF5D262EAAB4FDE7D43CE4562B162A7ACA7C1C1C1CACACACCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACAC1C1C1ABABAB9E9E9EB2B2B2C4C4C4D7D7
        D7E6E6E6D2D2D2BDBDBDA5A5A5999999AAAAAAC0C0C0C8C8C8CACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCBCBCBC3C2C399B4984BC14945D65E2CDF833CE89C77F0
        BDA0F5D2B0F6D860E7A64CDC7C44CE475FB15DA5ACA5C0C0C0CACACACCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACAC1C1C1ABABAB9E9E9EB0B0B0BDBDBDCACACADBDB
        DBE6E6E6E8E8E8CECECEBCBCBCA6A6A6979797A9A9A9BEBEBEC8C8C8CACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCBCBCBC3C2C499B1954BB74140CF5721DA7813DE7E3BE59760EA
        AB7FEEBB95F1C790F0C44CE29648D87745C5425AAB52A2AAA1BFBFBFC9C9C9CC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACAC1C1C1A8A8A8949494AAAAAAB6B6B6B9B9B9C7C7C7D1D1
        D1DADADAE0E0E0DEDEDEC5C5C5B8B8B89E9E9E919191A6A6A6BDBDBDC7C7C7CA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCBCBCBC3C2C398AF934BAC373BC44C1ED56F09D76E0CD97323DD8042E2
        925BE5A06AE8A96CE8AB5EE6A132DA8043D26F47BA3A57A2469FA89DBEBEBEC9
        C9C9CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACAC1C1C1A6A6A68B8B8BA0A0A0B1B1B1B0B0B0B3B3B3BBBBBBC4C4
        C4CBCBCBCFCFCFD0D0D0CCCCCCB9B9B9B1B1B1969696878787A4A4A4BCBCBCC7
        C7C7CACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CBCBCBC3C2C398AD8F4AA02E37BB421BD1670CD2660DD3670DD36710D46920D7
        7333DA7F3FDC8640DD8739DB8327D87716D1663DCC6647AF335499399CA598BD
        BDBDC8C8C8CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACAC1C1C1A3A3A3808080969696ABABABABABABABABABABABABAEAEAEB3B3
        B3B9B9B9BDBDBDBEBEBEBBBBBBB5B5B5ABABABAAAAAA8C8C8C7F7F7FA1A1A1BC
        BCBCC7C7C7CACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        C4C3C497AA8D49962433B23A1ACC5E10CD5D0FCD5C0FCD5D13CE5F18CF6320D1
        692BD47031D5742ED47223D26A16CF610FCD5C11CB5938C65D47A62E518F2F98
        A292BCBBBCC8C8C8CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        C2C2C2A0A0A07777778E8E8EA5A5A5A6A6A6A6A6A6A6A6A6A8A8A8AAAAAAADAD
        ADB1B1B1B3B3B3B2B2B2AEAEAEA9A9A9A6A6A6A4A4A4A4A4A48484847474749C
        9C9CB9B9B9C7C7C7CACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        A5B29C488F232FAB3419C85612C85318C95628CD623DD27250D6805FDA8B69DC
        9265DB8E73DF9A76DF9C73DF9A69DC9354D88437D16E1EC85733C15445A02C4E
        8A2995A08EBBBABBC7C7C7CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        ABABAB727272888888A2A2A2A1A1A1A2A2A2A8A8A8B2B2B2B9B9B9BEBEBEC3C3
        C3C1C1C1C7C7C7C8C8C8C7C7C7C3C3C3BCBCBCAFAFAFA3A3A39E9E9E7F7F7F6F
        6F6F9A9A9AB9B9B9C6C6C6CACACACACACACACACACACACACACACACCCCCCCCCBCC
        91AD842FA43019BF491BC34E33CA6150D17763D7856CD98C71DA9074DB935DCE
        7C52BB6D61CE7E86E0A18DE2A692E3AA97E4AE96E4AD81DF9E53D0773EBD5344
        9B2A4B8526919D88BAB9BBC7C7C7CCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        A1A1A18282829898989C9C9CA7A7A7B3B3B3BCBCBCBFBFBFC1C1C1C3C3C3B3B3
        B3A1A1A1B4B4B4CBCBCBCECECED0D0D0D1D1D1D1D1D1C9C9C9B2B2B29C9C9C7A
        7A7A6C6C6C969696B8B8B8C6C6C6CACACACACACACACACACACACACCCCCCCCCCCC
        9EBCA229B2452CC14F51CD6F65D37E6BD5836FD68774D78B75D78C5AC46F78B4
        83B4BAB57EB68765C77691DFA399E2AA9DE3ADA2E4B2A8E6B7ABE7B988DA9848
        B7514296274980228D9A83B9B8B9C6C6C6CBCBCBCCCCCCCCCCCCCACACACACACA
        B3B3B38F8F8F9D9D9DAEAEAEB7B7B7BABABABDBDBDBEBEBEBEBEBEA9A9A9A3A3
        A3B7B7B7A7A7A7AEAEAECBCBCBD0D0D0D1D1D1D3D3D3D6D6D6D8D8D8C4C4C498
        9898777777676767939393B7B7B7C5C5C5CACACACACACACACACACCCCCCCCCCCC
        C8C9C88AB9904CB95966CE756FD27F73D38278D58776D3845ABB6484B288C2C2
        C2CCCCCCC6C7C686B38968BF709BDFA5A6E3B0AAE4B3AEE6B7B3E7BCBAEAC29B
        DBA24CB14C409024467B1F88977DB7B6B7C6C6C6CBCBCBCCCCCCCACACACACACA
        C7C7C7ABABAB9B9B9BB2B2B2B9B9B9B9B9B9BCBCBCBABABAA0A0A0A4A4A4C1C1
        C1CACACAC6C6C6A6A6A6A6A6A6CDCDCDD2D2D2D5D5D5D6D6D6D8D8D8DDDDDDC9
        C9C99393937171716262628E8E8EB5B5B5C5C5C5CACACACACACACCCCCCCCCCCC
        CCCCCCCACACA98B89856B1596ECB757ED38476CD7C5CB25D91B191C5C5C5CCCC
        CCCCCCCCCCCCCCC8C8C88EB18D6CB96BA4DEA8B3E5B7B6E6BABBE8BEBFE9C3C6
        ECCAABDEAC51AC4A3E8A2044761C839376B6B6B6C7C7C7CCCCCCCACACACACACA
        CACACAC8C8C8ADADAD969696B0B0B0BBBBBBB4B4B4989898A6A6A6C3C3C3CACA
        CACACACACACACAC7C7C7A5A5A5A1A1A1CCCCCCD5D5D5D8D8D8DADADADCDCDCE0
        E0E0CECECE8F8F8F6C6C6C5D5D5D8B8B8BB5B5B5C6C6C6CACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCBCCA3B9A15EAC5969BE655FAB5A9DB39BC8C7C8CCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCAC9CA96B2936DB267ACDDAABFE8BFC2E8C2C7EAC7CC
        ECCCD3EED2BBE2B858AA4C3B851D43711A909A85C3C3C3CBCBCBCACACACACACA
        CACACACACACACACACAB1B1B1939393A3A3A3939393ABABABC6C6C6CACACACACA
        CACACACACACACACACACAC7C7C7A8A8A89B9B9BCECECEDADADADCDCDCDFDFDFE1
        E1E1E5E5E5D5D5D58F8F8F696969595959949494C2C2C2CACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCBCCACBCAA77A76FAAB8A7CAC9CACCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCBCACB9EB39A6FAC65B1DCABCCEBC8CEEBCBD3
        EDD0D7EFD4DEF2DCCAE6C661AA543C831F849775C3C2C3CBCBCBCACACACACACA
        CACACACACACACACACACACACAB6B6B6969696B2B2B2C7C7C7CACACACACACACACA
        CACACACACACACACACACACACACAC9C9C9ABABAB989898CDCDCDE0E0E0E1E1E1E4
        E4E4E6E6E6EBEBEBDCDCDC9191916767678C8C8CC1C1C1CACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBCACBCCCBCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBCCA5B5A270A766B5DAADD8EED2DA
        EFD5DEF0D9E2F2DEEAF6E7CEE6C94E974094A88FC8C8C8CCCCCCCACACACACACA
        CACACACACACACACACACACACACACACAC9C9C9CACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACAAEAEAE949494CCCCCCE5E5E5E6
        E6E6E9E9E9ECECECF0F0F0DCDCDC7D7D7DA0A0A0C7C7C7CACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACB8A973A669B7D9AEE3
        F2DDE5F2DFEBF6E7DAECD686B57D8EA788C2C2C2CCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACAB2B2B2949494CCCCCCEB
        EBEBECECECF0F0F0E4E4E4A4A4A49D9D9DC1C1C1CACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB2BBB076A56CB7
        D7AFEEF7E9CFE5C97CAC7298AC94C7C6C7CCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACAB6B6B6949494CB
        CBCBF2F2F2DBDBDB9B9B9BA4A4A4C5C5C5CACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB8BEB67B
        A77197C38D7AA871A6B2A3CAC9CACCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACABABABA97
        9797B2B2B2989898ACACACC7C7C7CACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBD
        C2BC91AC8BB4BCB3CBCACBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACABE
        BEBEA2A2A2B8B8B8C9C9C9CACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACC}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnGravarClick
    end
    object btnCancelar: TSpeedButton
      Left = 188
      Top = 4
      Width = 48
      Height = 36
      Hint = 'Cancelar (ESC)'
      Anchors = [akLeft, akTop, akBottom]
      Flat = True
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        18000000000000180000120B0000120B00000000000000000000CCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBCBCBCACACACBCBCBCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB
        CBCBCACACACBCBCBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACAC8C8C8CACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACAC8C8C8CACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCACACAC5C5C5C1C1C1C4C4C4CACACACCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACAC6
        C6C6C1C1C1C3C3C3CACACACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACAC8C8C8C3C3C3C0C0C0C3C3C3C8C8C8CACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACAC8C8C8C5
        C5C5C0C0C0C2C2C2C8C8C8CACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCACACABEBFBF9695B89192B1B3B3B2C1C1C1CACACACCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACAC1C1C196
        97B38A8BAFAEAEAFC0C0C0C9C9C9CCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACAC8C8C8BDBDBD9B9B9B979797B1B1B1C0C0C0C8C8C8CACA
        CACACACACACACACACACACACACACACACACACACACACACACACACAC8C8C8C0C0C09B
        9B9B919191ADADADBEBEBEC7C7C7CACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCACACABFBFBE7282B33749D23247CE727EAAB1B0B0C1C1C1CACA
        CACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACAC1C1C07B87AF31
        47CB3345D16172A6ACACACBFBFBFC9C9C9CCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACAC8C8C8BDBDBD8A8A8A636363606060868686AEAEAEC0C0C0C8C8
        C8CACACACACACACACACACACACACACACACACACACACACAC8C8C8BFBFBF8D8D8D60
        60606060607B7B7BABABABBDBDBDC7C7C7CACACACACACACACACACCCCCCCCCCCC
        CCCCCCCBCBCBBFBFBF6F80B50E3BC62946DD2B46DF1136CB6E79AEB0B0AFC0C0
        C0C9C9C9CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACAC0C0BF7882B31236C829
        45DF2C47DE0937C55D6FA8ABABACC0C0C0CACACACCCCCCCCCCCCCACACACACACA
        CACACACACACABDBDBD898989555555626262646464525252818181AEAEAEBEBE
        BEC7C7C7CACACACACACACACACACACACACACACAC8C8C8BEBEBE8A8A8A51515162
        6262646464505050787878AAAAAABEBEBEC8C8C8CACACACACACACCCCCCCCCCCC
        CCCCCCC5C5C57081B90B39C72144DB6066F9696CFB3049E50F2DD36972B2AFAE
        AEBFBFBFC9C9C9CCCCCCCCCCCCCCCCCCCACACABFBFBE737CB70F2ED12D47E468
        6CFA6267FA2445DD0836C65B6EAAB2B2B2C7C7C7CCCCCCCCCCCCCACACACACACA
        CACACAC3C3C38B8B8B5252526060608282828989896767674D4D4D7D7D7DACAC
        ACBDBDBDC7C7C7CACACACACACACACACAC8C8C8BDBDBD8686864D4D4D65656589
        8989858585616161505050787878B0B0B0C6C6C6CACACACACACACCCCCCCCCCCC
        CCCCCCB7BAC1254CC32143DD6064FA6766FF6767FF7173FC3A4EEB0E26DB646C
        B7ADADAEBFBFBFC9C9C9CBCBCBCACACABEBDBD6E75BB0E26DA374BEA7073FC67
        67FF6766FF6165FA2444DE1B43BDA1A3ADC6C6C6CCCCCCCCCCCCCACACACACACA
        CACACABBBBBB6161615F5F5F8282828585858686868F8F8F6C6C6C4A4A4A7A7A
        7AABABABBDBDBDC7C7C7CACACAC8C8C8BCBCBC8181814A4A4A6969698F8F8F86
        8686858585848484616161585858A3A3A3C5C5C5CACACACACACACCCCCCCCCCCC
        CCCCCCBCBDC34B5ED55A5FFB6464FF6363FF6363FF6565FF7678FD4453EF0D20
        E25F65BBACACADBEBEBEC6C6C6BCBCBD696FBF0E21E14250EF7678FD6565FF63
        63FF6363FF6464FF5C60FC4155D1A6A8B1C8C8C8CCCCCCCCCCCCCACACACACACA
        CACACABDBDBD7575757E7E7E8484848383838383838585859292927171714646
        46757575ABABABBCBCBCC5C5C5BBBBBB7E7E7E4747476F6F6F92929285858583
        83838383838484847F7F7F6C6C6CA8A8A8C7C7C7CACACACACACACCCCCCCCCCCC
        CCCCCCC6C6C87E7EDE5C5BFE5959FF5A5AFF5A5AFF5A5AFF5C5BFF7576FE4E59
        F30D1DE75B61BEA9A9ACB0B0B26369C20D1EE54B57F27576FD5C5CFF5A5AFF5A
        5AFF5A5AFF5A5AFF5B5BFE7172D6B8B8BBCACACACCCCCCCCCCCCCACACACACACA
        CACACAC5C5C59292927D7D7D7B7B7B7C7C7C7C7C7C7C7C7C7D7D7D9292927777
        77454545737373A8A8A8AEAEAE7B7B7B4545457676769191917D7D7D7C7C7C7C
        7C7C7C7C7C7C7C7C7D7D7D868686B7B7B7C8C8C8CACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCB9BAC87A7BE15656FD4F4FFF4F4FFF4F4FFF4F4FFF5050FF7374
        FE5862F40E1EE7545BBE575EBE0E1EE65660F47474FE5151FF4F4FFF4F4FFF4F
        4FFF4F4FFF5556FD7273DBADADBDC9C9C9CCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACABCBCBC8E8E8E7878787373737373737373737373737474749090
        907F7F7F4747476F6F6F7171714646467D7D7D90909074747473737373737373
        7373737373787878888888AFAFAFC7C7C7CACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCBFBFC88586DD5354FC4545FF4545FF4545FF4545FF4545
        FF7070FE636BF20D1EE20C1DE2616AF27171FE4646FF4545FF4545FF4545FF45
        45FF5252FB7C7CD6B4B4BECACACACCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACABFBFBF9696967676766B6B6B6B6B6B6B6B6B6B6B6B6B6B
        6B8E8E8E8686864545454444448585858E8E8E6D6D6D6B6B6B6B6B6B6B6B6B6B
        6B6B7474748D8D8DB4B4B4C8C8C8CACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCC3C3C88F90D95353FA3A3AFF3939FF3A3AFF3C3C
        FF3F3FFF7272FE7179EF6F77EF7070FE3C3CFF3939FF3939FF3A3AFF3B3BFF52
        52F98686D2BABABFCBCBCBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACAC3C3C39E9E9E7575756363636262626363636464
        646767678F8F8F9090908F8F8F8E8E8E64646462626262626263636364646473
        7373949494BABABACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC6C7C89A9AD55B5BF74D4DFF5757FF5F5F
        FF6363FF6666FF8A8BFE8B8BFE6262FF5B5BFF5151FF4343FF3838FF5454F791
        91CDBEBEC0CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACAC6C6C6A6A6A67B7B7B7272727A7A7A7F7F
        7F838383858585A2A2A2A3A3A38383837D7D7D7474746969696262627676769C
        9C9CBCBCBCCACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8C8C9A6A7D28080F67271FF6F6F
        FF6F6FFF6F6FFF6D6DFF6D6DFF6F6FFF6F6FFF6F6FFF6E6EFF7475F49A9AC8C1
        C1C2CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACAC7C7C7AEAEAE9898988E8E8E8D8D
        8D8D8D8D8D8D8D8A8A8A8A8A8A8D8D8D8D8D8D8D8D8D8B8B8B8E8E8EA3A3A3C0
        C0C0CACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC6C6C6A3A4C8787AF27373
        FF7070FF7070FF7070FF7070FF7070FF7070FF7373FF7879F09797BBB7B7B6C7
        C7C7CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACAC5C5C5AAAAAA9292929090
        908E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E9090909191919C9C9CB5B5B5C6
        C6C6CACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACABABABC646BA9333DBF7576
        FA7474FF7373FF7373FF7373FF7373FF7474FF7576FA323DBE59619FA9A9ABBD
        BDBDC7C7C7CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACAC8C8C8B9B9B97676765656569191
        919090909090909090909090909090909090909191915656566C6C6CA8A8A8BC
        BCBCC6C6C6CACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCBCBCBC9C9C9B8B9BC6066A71520A8474CDE7676
        FE7777FF7777FF7777FF7777FF7777FF7777FF7676FE484CDF141FA8565C9EA7
        A8ABBDBDBDC7C7C7CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACAC7C7C7B8B8B87171713A3A3A6A6A6A9292
        929393939393939393939393939393939393939292926A6A6A3A3A3A686868A8
        A8A8BCBCBCC6C6C6CACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCBCBCBC9C9C9B7B7BB5D61A41219A43E41DE7878FE7E7E
        FE7E7EFE7E7EFE7F7FFE7F7FFE7E7EFE7E7EFE7E7EFE7877FE3E41DE1119A453
        579BA5A6AABCBCBCC6C6C6CBCBCBCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACAC7C7C7B6B6B66D6D6D3434346161619393939999
        9999999999999999999999999999999999999999999993939361616134343463
        6363A5A5A5BABABAC5C5C5CACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCBCBCBC8C8C8B5B5BA595AA10F12A03637DB7C7CFB8888FB8787
        FB8787FB8888FB7D7DF97D7DF98888FB8787FB8787FB8888FB7C7CFB3637DB0E
        119F505098A4A4A9BBBBBBC6C6C6CBCBCBCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACAC7C7C7B5B5B56868682F2F2F5858589595959F9F9F9E9E
        9E9E9E9E9F9F9F9696969696969F9F9F9E9E9E9E9E9E9F9F9F9595955858582E
        2E2E5E5E5EA3A3A3B9B9B9C5C5C5CACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCC9C9C9B4B4BB54559F0C0C9C3131D78282F89191F99090F99090
        F99191F97B7BF37E7ED67E7ED67B7BF39191F99090F99090F99191F98282F830
        31D70B0C9B4C4C96A2A2A8BBBBBBC7C7C7CCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACAC7C7C7B3B3B3636363292929535353999999A5A5A5A4A4A4A4A4
        A4A5A5A5929292909090909090929292A5A5A5A4A4A4A4A4A4A5A5A599999953
        53532828285A5A5AA1A1A1B9B9B9C6C6C6CACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCB6B6BF51519F0B0B9B3636D48B8BF69B9BF79A9AF79A9AF79999
        F77676ED7F7FCEBBBBC1C0C0C68282D27676ED9999F89A9AF79A9AF79B9BF78B
        8BF63636D40B0B9B474795A2A2AAC1C1C1CACACACCCCCCCCCCCCCACACACACACA
        CACACACACACAB7B7B75F5F5F272727565656A1A1A1ADADADADADADADADADACAC
        AC8E8E8E8E8E8EBBBBBBC0C0C09191918E8E8EACACACADADADADADADADADADA1
        A1A1565656272727565656A2A2A2C0C0C0C8C8C8CACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCB7F7FAF0D0D9C3E3ED39696F6A5A5F7A3A3F7A4A4F7A0A0F76F6F
        E67F7FC8BFBFC3CCCCCCCCCCCCC5C5C98282CB7070E6A0A0F7A4A4F7A3A3F7A5
        A5F79696F53D3DD30C0C9B6F6F9FBEBEBCCACACACCCCCCCCCCCCCACACACACACA
        CACACACACACA8888882A2A2A5C5C5CA9A9A9B5B5B5B3B3B3B4B4B4B1B1B18787
        878D8D8DBEBEBECACACACACACAC4C4C4909090888888B1B1B1B4B4B4B3B3B3B5
        B5B5A9A9A95B5B5B282828787878BBBBBBC8C8C8CACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCB7A7AB84848D1A2A2F6AEAEF7ACACF7ADADF7A6A6F66F6FDE8585
        C3C3C3C4CCCCCCCCCCCCCCCCCCCCCCCCC8C8C98888C66F6FDEA6A6F6ADADF7AC
        ACF7AEAEF7A2A2F64747D16D6DAAC1C1BFCACACACCCCCCCCCCCCCACACACACACA
        CACACACACACA868686646464B2B2B2BCBCBCBBBBBBBBBBBBB5B5B58686869191
        91C2C2C2CACACACACACACACACACACACAC7C7C7949494868686B5B5B5BBBBBBBB
        BBBBBCBCBCB2B2B2636363787878BFBFBFC8C8C8CACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCA2A2C67575DAAFAFF6B7B7F9B7B7F9AAAAF56F6FD79090C0C6C6
        C6CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACA9292C36F6FD7ABABF5B7
        B7F9B7B7F9AEAEF67070D69898BAC8C8C8CCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACAA8A8A8898989BDBDBDC3C3C3C3C3C3B9B9B9848484989898C5C5
        C5CACACACACACACACACACACACACACACACACACAC8C8C89B9B9B848484BABABAC3
        C3C3C3C3C3BCBCBC8585859D9D9DC7C7C7CACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCBA2A2C67A7AD6B0B0F6AEAEF57070D29A9ABFC8C8C7CCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBCBCB9C9CC26F6FD2AF
        AFF5AEAEF57575D09A9ABBC6C6C5CBCBCBCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACAA8A8A88C8C8CBDBDBDBCBCBC848484A1A1A1C7C7C7CACA
        CACACACACACACACACACACACACACACACACACACACACACACACACAA3A3A3838383BD
        BDBDBCBCBC878787A0A0A0C4C4C4CACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCAEAEC77B7BD17272CFA5A5C1C9C9C8CCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBA5A5C370
        70CE7676CBA6A6BDC9C9C8CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACAB2B2B28B8B8B858585AAAAAAC7C7C7CACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACAAAAAAA83
        8383878787A9A9A9C7C7C7CACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBEBEC9BCBCC8CCCCCBCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBA
        BAC6BCBCC5CCCCCBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACABEBEBEBDBDBDCACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACABC
        BCBCBCBCBCCACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACAFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCancelarClick
    end
  end
end
