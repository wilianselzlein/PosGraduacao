object FBalanceteRel: TFBalanceteRel
  Left = 329
  Top = 157
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 407
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 538
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Relat'#243'rio Gerencial Anal'#237'tico'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 283
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 538
    Height = 345
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 195
      Width = 69
      Height = 15
      Caption = 'Conta Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btncontaini: TSpeedButton
      Left = 481
      Top = 190
      Width = 23
      Height = 22
      Hint = 'Abrir Cadastro'
      Flat = True
      Glyph.Data = {
        42060000424D360A000000000000360800002800000010000000100000000100
        1000030000000002000000000000000000000001000000000000007C0000E003
        00001F0000000000000000008000008000000080800080000000800080008080
        0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
        16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
        FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
        6600000099000000CC00003300000033330000336600003399000033CC000033
        FF00006600000066330000666600006699000066CC000066FF00009900000099
        330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
        990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
        6600330099003300CC003300FF00FF3300003333330033336600333399003333
        CC003333FF00336600003366330033666600336699003366CC003366FF003399
        00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
        660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
        FF00660000006600330066006600660099006600CC006600FF00663300006633
        330066336600663399006633CC006633FF006666000066663300666666006666
        99006666CC00669900006699330066996600669999006699CC006699FF0066CC
        000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
        CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
        3300990066009933CC009900FF00996600009966330099336600996699009966
        CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
        330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
        990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
        0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
        6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
        CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
        0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
        9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
        3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
        9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
        FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
        6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
        CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
        FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
        0000FFFFFF001F7C205E205E205E205E205E205E205E205E205E205E205E205E
        1F7C1F7C1F7C205E846A0E77507F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7FA76E
        63661F7C1F7C205EE972A76A947F4D7F4D7F4D7F4D7F4D7F4D7F4D7F4D7FC76E
        D97B205E1F7C205E4E7F205EB57F6F7F6F7F6F7F6F7F6F7F6F7F6F7F6F7FC86E
        D97B205E1F7C205E6F7F6362737B927F907F907F907F907F907F907F907FE96E
        D97B42621F7C205E907FC86E0C73D57FB17FB17FB17FB17FB17FB17FB17FE96E
        D97BD97B205E205EB17F6E7B6462FF7FD97FD97FD97FD97FD97FD97FD97F5373
        FD7FDA7F205E205ED27FD27F4262205E205E205E205E205E205E205E205E205E
        205E205E205E205ED37FD37FD37FD37FD37FD37FD37FD37FD37FD37FD37F215E
        1F7C1F7C1F7C205EFF7FF47FF47FF47FF47FF47FF47FF47FF47FF47FF47F215E
        1F7C1F7C1F7C1F7C205EFF7FF47FF47FF47F205E205E205E205E205E205E1F7C
        1F7C1F7C1F7C1F7C1F7C205E205E205E205E1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      OnClick = btncontainiClick
    end
    object btncontafin: TSpeedButton
      Left = 481
      Top = 214
      Width = 23
      Height = 22
      Hint = 'Abrir Cadastro'
      Flat = True
      Glyph.Data = {
        42060000424D360A000000000000360800002800000010000000100000000100
        1000030000000002000000000000000000000001000000000000007C0000E003
        00001F0000000000000000008000008000000080800080000000800080008080
        0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
        16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
        FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
        6600000099000000CC00003300000033330000336600003399000033CC000033
        FF00006600000066330000666600006699000066CC000066FF00009900000099
        330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
        990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
        6600330099003300CC003300FF00FF3300003333330033336600333399003333
        CC003333FF00336600003366330033666600336699003366CC003366FF003399
        00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
        660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
        FF00660000006600330066006600660099006600CC006600FF00663300006633
        330066336600663399006633CC006633FF006666000066663300666666006666
        99006666CC00669900006699330066996600669999006699CC006699FF0066CC
        000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
        CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
        3300990066009933CC009900FF00996600009966330099336600996699009966
        CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
        330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
        990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
        0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
        6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
        CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
        0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
        9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
        3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
        9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
        FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
        6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
        CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
        FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
        0000FFFFFF001F7C205E205E205E205E205E205E205E205E205E205E205E205E
        1F7C1F7C1F7C205E846A0E77507F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7FA76E
        63661F7C1F7C205EE972A76A947F4D7F4D7F4D7F4D7F4D7F4D7F4D7F4D7FC76E
        D97B205E1F7C205E4E7F205EB57F6F7F6F7F6F7F6F7F6F7F6F7F6F7F6F7FC86E
        D97B205E1F7C205E6F7F6362737B927F907F907F907F907F907F907F907FE96E
        D97B42621F7C205E907FC86E0C73D57FB17FB17FB17FB17FB17FB17FB17FE96E
        D97BD97B205E205EB17F6E7B6462FF7FD97FD97FD97FD97FD97FD97FD97F5373
        FD7FDA7F205E205ED27FD27F4262205E205E205E205E205E205E205E205E205E
        205E205E205E205ED37FD37FD37FD37FD37FD37FD37FD37FD37FD37FD37F215E
        1F7C1F7C1F7C205EFF7FF47FF47FF47FF47FF47FF47FF47FF47FF47FF47F215E
        1F7C1F7C1F7C1F7C205EFF7FF47FF47FF47F205E205E205E205E205E205E1F7C
        1F7C1F7C1F7C1F7C1F7C205E205E205E205E1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      OnClick = btncontafinClick
    end
    object Label3: TLabel
      Left = 25
      Top = 217
      Width = 62
      Height = 15
      Caption = 'Conta Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 33
      Top = 169
      Width = 55
      Height = 15
      Caption = 'Data Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnplanoneg: TSpeedButton
      Left = 480
      Top = 292
      Width = 23
      Height = 22
      Hint = 'Abrir Cadastro'
      Flat = True
      Glyph.Data = {
        42060000424D360A000000000000360800002800000010000000100000000100
        1000030000000002000000000000000000000001000000000000007C0000E003
        00001F0000000000000000008000008000000080800080000000800080008080
        0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
        16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
        FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
        6600000099000000CC00003300000033330000336600003399000033CC000033
        FF00006600000066330000666600006699000066CC000066FF00009900000099
        330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
        990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
        6600330099003300CC003300FF00FF3300003333330033336600333399003333
        CC003333FF00336600003366330033666600336699003366CC003366FF003399
        00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
        660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
        FF00660000006600330066006600660099006600CC006600FF00663300006633
        330066336600663399006633CC006633FF006666000066663300666666006666
        99006666CC00669900006699330066996600669999006699CC006699FF0066CC
        000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
        CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
        3300990066009933CC009900FF00996600009966330099336600996699009966
        CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
        330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
        990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
        0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
        6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
        CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
        0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
        9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
        3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
        9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
        FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
        6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
        CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
        FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
        0000FFFFFF001F7C205E205E205E205E205E205E205E205E205E205E205E205E
        1F7C1F7C1F7C205E846A0E77507F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7FA76E
        63661F7C1F7C205EE972A76A947F4D7F4D7F4D7F4D7F4D7F4D7F4D7F4D7FC76E
        D97B205E1F7C205E4E7F205EB57F6F7F6F7F6F7F6F7F6F7F6F7F6F7F6F7FC86E
        D97B205E1F7C205E6F7F6362737B927F907F907F907F907F907F907F907FE96E
        D97B42621F7C205E907FC86E0C73D57FB17FB17FB17FB17FB17FB17FB17FE96E
        D97BD97B205E205EB17F6E7B6462FF7FD97FD97FD97FD97FD97FD97FD97F5373
        FD7FDA7F205E205ED27FD27F4262205E205E205E205E205E205E205E205E205E
        205E205E205E205ED37FD37FD37FD37FD37FD37FD37FD37FD37FD37FD37F215E
        1F7C1F7C1F7C205EFF7FF47FF47FF47FF47FF47FF47FF47FF47FF47FF47F215E
        1F7C1F7C1F7C1F7C205EFF7FF47FF47FF47F205E205E205E205E205E205E1F7C
        1F7C1F7C1F7C1F7C1F7C205E205E205E205E1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      OnClick = btnplanonegClick
    end
    object Label6: TLabel
      Left = 13
      Top = 296
      Width = 105
      Height = 15
      Caption = 'Plano de Neg'#243'cios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 229
      Top = 126
      Width = 152
      Height = 15
      Caption = 'Ignorar movimento da data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDataIni: TLabel
      Left = 33
      Top = 147
      Width = 62
      Height = 15
      Caption = 'Data Inicial'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 13
      Top = 257
      Width = 108
      Height = 15
      Caption = 'Imprimir at'#233' o n'#237'vel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtcontaini: TWSEdit
      Left = 151
      Top = 193
      Width = 97
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      TabOrder = 10
      Text = '1'
      OnKeyDown = txtcontafinKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtcontafin: TWSEdit
      Left = 151
      Top = 217
      Width = 97
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      TabOrder = 13
      Text = '99999'
      OnKeyDown = txtcontafinKeyDown
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtdatafin: TWSMaskEdit
      Left = 97
      Top = 169
      Width = 68
      height = 17
      BevelInner = bvNone
      EditMask = '99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      ParentShowHint = False
      TabOrder = 8
      Text = '  /  /    '
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtdataini: TWSMaskEdit
      Left = 97
      Top = 146
      Width = 67
      height = 17
      BevelInner = bvNone
      EditMask = '99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      ParentShowHint = False
      TabOrder = 7
      Text = '01/01/2000'
      Visible = False
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object RGContasZeradas: TRadioGroup
      Left = 238
      Top = 74
      Width = 264
      Height = 44
      Caption = 'Listar Contas com Valores Zerados?'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentFont = False
      TabOrder = 3
    end
    object RGModelo_: TRadioGroup
      Left = 14
      Top = 30
      Width = 490
      Height = 38
      Caption = ' Imprimir '
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Balancete'
        'Balan'#231'o de Abertura'
        'Balan'#231'o')
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object RGRel: TRadioGroup
      Left = 15
      Top = 74
      Width = 215
      Height = 44
      Caption = 'Modelo'
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Di'#225'rio'
        'Anual'
        'Coluna')
      ParentFont = False
      TabOrder = 2
      OnClick = RGRelClick
    end
    object txtcodredini: TWSEdit
      Left = 90
      Top = 193
      Width = 59
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 9
      OnExit = txtcodrediniExit
      OnKeyDown = txtcontafinKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtcodredfin: TWSEdit
      Left = 90
      Top = 217
      Width = 59
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 12
      OnExit = txtcodredfinExit
      OnKeyDown = txtcontafinKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtplanoneg: TWSEdit
      Left = 125
      Top = 296
      Width = 124
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 16
      OnExit = txtplanonegExit
      OnKeyDown = txtcontafinKeyDown
      OnKeyPress = txtplanonegKeyPress
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomeplanoneg: TWSEdit
      Left = 252
      Top = 296
      Width = 220
      height = 17
      BevelInner = bvNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 17
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object chknivel1e2: TCheckBox
      Left = 16
      Top = 127
      Width = 150
      Height = 15
      Caption = 'Aparecer n'#237'veis 1 e 2'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object RGDados: TRadioGroup
      Left = 14
      Top = 10
      Width = 490
      Height = 44
      Caption = ' Imprimir '
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Controladoria'
        'Or'#231'amentos'
        'Or'#231'ado X Realizado')
      ParentFont = False
      TabOrder = 0
      OnClick = RGDadosClick
    end
    object txtdataexc: TWSMaskEdit
      Left = 390
      Top = 125
      Width = 74
      height = 17
      BevelInner = bvNone
      EditMask = '99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      ParentShowHint = False
      TabOrder = 5
      Text = '31/12/9999'
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object chkDataIni: TCheckBox
      Left = 16
      Top = 146
      Width = 14
      Height = 17
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
      OnClick = chkDataIniClick
    end
    object panano: TPanel
      Left = 16
      Top = 142
      Width = 149
      Height = 49
      BevelOuter = bvNone
      TabOrder = 6
      Visible = False
      object Label2: TLabel
        Left = 40
        Top = 17
        Width = 22
        Height = 15
        Caption = 'Ano'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 103
        Top = 17
        Width = 3
        Height = 15
        Caption = '/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 9
        Top = 17
        Width = 27
        Height = 15
        Caption = 'M'#234's/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtano: TWSMaskEdit
        Left = 107
        Top = 16
        Width = 39
        height = 17
        BevelInner = bvNone
        EditMask = '9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        ParentShowHint = False
        TabOrder = 1
        Text = '    '
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtmes: TWSMaskEdit
        Left = 73
        Top = 16
        Width = 28
        height = 17
        BevelInner = bvNone
        EditMask = '99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        ParentShowHint = False
        TabOrder = 0
        Text = '  '
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
    end
    object txtNivel: TWSComboBox
      Left = 127
      Top = 253
      Width = 55
      Height = 23
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      ParentShowHint = False
      TabOrder = 15
      Text = '6'
      Items.Strings = (
        '6'
        '5'
        '4'
        '3'
        '2'
        '1')
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomefin: TWSEdit
      Left = 250
      Top = 217
      Width = 223
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      TabOrder = 14
      OnKeyDown = txtcontafinKeyDown
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomeini: TWSEdit
      Left = 250
      Top = 193
      Width = 223
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      TabOrder = 11
      OnKeyDown = txtcontafinKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 369
    Width = 538
    Height = 38
    Align = alBottom
    AutoSize = True
    BorderWidth = 2
    ButtonHeight = 30
    ButtonWidth = 83
    EdgeOuter = esNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Images = DM.ImageList
    List = True
    ParentFont = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    Wrapable = False
    object BtnImprimir: TToolButton
      Left = 0
      Top = 0
      Hint = 'Imprimir - F8'
      Caption = '&Imprimir'
      ImageIndex = 8
      OnClick = BtnImprimirClick
    end
    object ToolButton1: TToolButton
      Left = 83
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 91
      Top = 0
      Hint = 'Sair - Esc'
      Caption = '&Sair'
      ImageIndex = 12
      OnClick = btnsairClick
    end
  end
  object RLReportAnual: TRLReport
    Left = 248
    Top = 352
    Width = 1123
    Height = 794
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand17: TRLBand
      Left = 19
      Top = 222
      Width = 1085
      Height = 57
      BandType = btFooter
      object RLDBText31: TRLDBText
        Left = 189
        Top = 3
        Width = 524
        Height = 19
        AutoSize = False
        DataField = 'INSNOME'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBImage5: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText32: TRLDBText
        Left = 190
        Top = 23
        Width = 283
        Height = 15
        AutoSize = False
        DataField = 'INSENDERECO'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText33: TRLDBText
        Left = 475
        Top = 23
        Width = 238
        Height = 15
        AutoSize = False
        DataField = 'INSBAIRRO'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText34: TRLDBText
        Left = 190
        Top = 39
        Width = 149
        Height = 15
        AutoSize = False
        DataField = 'INSCIDADE'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText35: TRLDBText
        Left = 340
        Top = 39
        Width = 131
        Height = 15
        AutoSize = False
        DataField = 'INSFONE'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 589
        Top = 39
        Width = 124
        Height = 15
        AutoSize = False
        DataField = 'INSSITE'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText24: TRLDBText
        Left = 474
        Top = 39
        Width = 113
        Height = 15
        AutoSize = False
        DataField = 'INSEMAIL'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand19: TRLBand
      Left = 19
      Top = 110
      Width = 1085
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLTituloAnual: TRLLabel
        Left = 457
        Top = 5
        Width = 170
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Balancete Anual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 8
        Top = 8
        Width = 37
        Height = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand20: TRLBand
      Left = 19
      Top = 146
      Width = 1085
      Height = 22
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel24: TRLLabel
        Left = 225
        Top = 2
        Width = 46
        Height = 15
        Caption = 'Janeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 21
        Top = 2
        Width = 141
        Height = 15
        Caption = 'Classifica'#231#227'o/Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 283
        Top = 1
        Width = 56
        Height = 15
        Caption = 'Fevereiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 363
        Top = 1
        Width = 39
        Height = 15
        Caption = 'Mar'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 435
        Top = 1
        Width = 29
        Height = 15
        Caption = 'Abril'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 502
        Top = 1
        Width = 30
        Height = 15
        Caption = 'Maio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 562
        Top = 1
        Width = 38
        Height = 15
        Caption = 'Junho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 631
        Top = 1
        Width = 34
        Height = 15
        Caption = 'Julho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 691
        Top = 1
        Width = 43
        Height = 15
        Caption = 'Agosto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 742
        Top = 1
        Width = 59
        Height = 15
        Caption = 'Setembro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 813
        Top = 1
        Width = 49
        Height = 15
        Caption = 'Outubro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 871
        Top = 1
        Width = 61
        Height = 15
        Caption = 'Novembro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 939
        Top = 1
        Width = 61
        Height = 15
        Caption = 'Dezembro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 1027
        Top = 2
        Width = 31
        Height = 15
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand21: TRLBand
      Left = 19
      Top = 168
      Width = 1085
      Height = 14
      object txtdesc: TRLDBText
        Left = 24
        Top = 2
        Width = 180
        Height = 10
        AutoSize = False
        DataField = 'TMPDESC'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = txtdescBeforePrint
      end
      object txtmes2: TRLDBText
        Left = 270
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES2'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes1: TRLDBText
        Left = 204
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES1'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes3: TRLDBText
        Left = 336
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES3'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes6: TRLDBText
        Left = 534
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES6'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes5: TRLDBText
        Left = 468
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES5'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes4: TRLDBText
        Left = 402
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES4'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes8: TRLDBText
        Left = 666
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES8'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes7: TRLDBText
        Left = 600
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES7'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes9: TRLDBText
        Left = 732
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES9'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes12: TRLDBText
        Left = 930
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES12'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes11: TRLDBText
        Left = 864
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES11'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtmes10: TRLDBText
        Left = 798
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES10'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txttotal: TRLDBText
        Left = 996
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPTOTALMES'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 38
      Width = 1085
      Height = 72
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBImage1: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 67
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText2: TRLDBRichText
        Left = 181
        Top = 0
        Width = 904
        Height = 67
        Align = faClient
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'INSCAB'
        DataSource = DM.DSInstituto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 975
        Top = 0
        Width = 50
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        Layout = tlCenter
        ParentFont = False
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 1027
        Top = 0
        Width = 50
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        Layout = tlCenter
        ParentFont = False
        Text = 'de '
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 67
        Width = 1085
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 182
      Width = 1085
      Height = 40
      BandType = btSummary
      object lblm1: TRLLabel
        Left = 205
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 21
        Top = 0
        Width = 155
        Height = 15
        Caption = 'Resultado Mensal ...............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel19BeforePrint
      end
      object lblm2: TRLLabel
        Left = 271
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblm4: TRLLabel
        Left = 403
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblm3: TRLLabel
        Left = 337
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblm5: TRLLabel
        Left = 469
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblm6: TRLLabel
        Left = 535
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblm8: TRLLabel
        Left = 667
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblm7: TRLLabel
        Left = 601
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblm10: TRLLabel
        Left = 799
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblm11: TRLLabel
        Left = 865
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbltotal: TRLLabel
        Left = 997
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblm12: TRLLabel
        Left = 931
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblm9: TRLLabel
        Left = 733
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla1: TRLLabel
        Left = 205
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 21
        Top = 16
        Width = 166
        Height = 15
        Caption = 'Resultado Acumulado ...........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel19BeforePrint
      end
      object lbla2: TRLLabel
        Left = 271
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla4: TRLLabel
        Left = 403
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla3: TRLLabel
        Left = 337
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla5: TRLLabel
        Left = 469
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla6: TRLLabel
        Left = 535
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla8: TRLLabel
        Left = 667
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla7: TRLLabel
        Left = 601
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla10: TRLLabel
        Left = 799
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla11: TRLLabel
        Left = 865
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblatotal: TRLLabel
        Left = 998
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla12: TRLLabel
        Left = 931
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbla9: TRLLabel
        Left = 733
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLReportDiario: TRLReport
    Left = 86
    Top = 419
    Width = 794
    Height = 1123
    Margins.LeftMargin = 17.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand8: TRLBand
      Left = 64
      Top = 111
      Width = 711
      Height = 57
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand8BeforePrint
      object RLTitulo: TRLLabel
        Left = 0
        Top = 0
        Width = 711
        Height = 24
        Align = faTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio Gerencial Anal'#237'tico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblperiodo: TRLLabel
        Left = 4
        Top = 25
        Width = 99
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 678
        Top = 26
        Width = 37
        Height = 15
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand6: TRLBand
      Left = 64
      Top = 231
      Width = 711
      Height = 57
      BandType = btFooter
      object RLDBText13: TRLDBText
        Left = 189
        Top = 3
        Width = 521
        Height = 19
        AutoSize = False
        DataField = 'INSNOME'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBImage3: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText14: TRLDBText
        Left = 190
        Top = 23
        Width = 283
        Height = 15
        AutoSize = False
        DataField = 'INSENDERECO'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 475
        Top = 23
        Width = 235
        Height = 15
        AutoSize = False
        DataField = 'INSBAIRRO'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 190
        Top = 39
        Width = 149
        Height = 15
        AutoSize = False
        DataField = 'INSCIDADE'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 340
        Top = 39
        Width = 131
        Height = 15
        AutoSize = False
        DataField = 'INSFONE'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 589
        Top = 39
        Width = 121
        Height = 15
        AutoSize = False
        DataField = 'INSSITE'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 474
        Top = 39
        Width = 113
        Height = 15
        AutoSize = False
        DataField = 'INSEMAIL'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 64
      Top = 168
      Width = 711
      Height = 22
      BandType = btColumnHeader
      object RLLabel10: TRLLabel
        Left = 5
        Top = 2
        Width = 141
        Height = 15
        Caption = 'Classifica'#231#227'o/Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblcodigo: TRLLabel
        Left = 299
        Top = 3
        Width = 42
        Height = 15
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblsaldoant: TRLLabel
        Left = 355
        Top = 3
        Width = 84
        Height = 15
        Caption = 'Saldo Anterior'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblcredito: TRLLabel
        Left = 556
        Top = 3
        Width = 44
        Height = 15
        Caption = 'Cr'#233'dito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbldebito: TRLLabel
        Left = 481
        Top = 4
        Width = 39
        Height = 15
        Caption = 'D'#233'bito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblsaldoatual: TRLLabel
        Left = 643
        Top = 4
        Width = 67
        Height = 15
        Caption = 'Saldo Atual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 64
      Top = 190
      Width = 711
      Height = 19
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object TxtNivelA: TRLDBText
        Left = 5
        Top = 2
        Width = 296
        Height = 15
        AutoSize = False
        DataField = 'NIVEL_DESC'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = TxtNivelABeforePrint
      end
      object txtCOdigo: TRLDBText
        Left = 302
        Top = 2
        Width = 40
        Height = 15
        AutoSize = False
        DataField = 'TMPCONTA'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtdebito: TRLDBText
        Left = 440
        Top = 2
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPDEBITO'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtcredito: TRLDBText
        Left = 521
        Top = 2
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPCREDITO'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtsaldoatual: TRLDBText
        Left = 602
        Top = 2
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPSALDO'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtsaldoant: TRLDBText
        Left = 343
        Top = 2
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPSALDOANTERIOR'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txttiposaldoant: TRLDBText
        Left = 424
        Top = 2
        Width = 15
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPTIPOSALDOANT'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object txttiposaldoatual: TRLDBText
        Left = 686
        Top = 2
        Width = 104
        Height = 16
        DataField = 'TMPTIPOSALDO'
        DataSource = DSRel
      end
    end
    object RLBand1: TRLBand
      Left = 64
      Top = 209
      Width = 711
      Height = 22
      BandType = btSummary
      BeforePrint = RLBand1BeforePrint
      object lbltotal2: TRLLabel
        Left = 381
        Top = 1
        Width = 58
        Height = 15
        Caption = 'Total .......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbltotaldebito: TRLLabel
        Left = 440
        Top = 1
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbltotalcredito: TRLLabel
        Left = 521
        Top = 1
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 64
      Top = 38
      Width = 711
      Height = 73
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBImage2: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText1: TRLDBRichText
        Left = 181
        Top = 0
        Width = 530
        Height = 68
        Align = faClient
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'INSCAB'
        DataSource = DM.DSInstituto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo8: TRLSystemInfo
        Left = 615
        Top = 0
        Width = 50
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        Layout = tlCenter
        ParentFont = False
      end
      object RLSystemInfo9: TRLSystemInfo
        Left = 667
        Top = 0
        Width = 50
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        Layout = tlCenter
        ParentFont = False
        Text = 'de '
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 68
        Width = 711
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportAcu: TRLReport
    Left = 61
    Top = 709
    Width = 794
    Height = 1123
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand7: TRLBand
      Left = 38
      Top = 234
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText25: TRLDBText
        Left = 189
        Top = 3
        Width = 524
        Height = 19
        AutoSize = False
        DataField = 'INSNOME'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBImage4: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText26: TRLDBText
        Left = 190
        Top = 23
        Width = 283
        Height = 15
        AutoSize = False
        DataField = 'INSENDERECO'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText27: TRLDBText
        Left = 475
        Top = 23
        Width = 238
        Height = 15
        AutoSize = False
        DataField = 'INSBAIRRO'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText28: TRLDBText
        Left = 190
        Top = 39
        Width = 149
        Height = 15
        AutoSize = False
        DataField = 'INSCIDADE'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText29: TRLDBText
        Left = 340
        Top = 39
        Width = 131
        Height = 15
        AutoSize = False
        DataField = 'INSFONE'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText30: TRLDBText
        Left = 589
        Top = 39
        Width = 124
        Height = 15
        AutoSize = False
        DataField = 'INSSITE'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText36: TRLDBText
        Left = 474
        Top = 39
        Width = 113
        Height = 15
        AutoSize = False
        DataField = 'INSEMAIL'
        DataSource = DM.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 110
      Width = 718
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabelOrcRel: TRLLabel
        Left = 257
        Top = 5
        Width = 204
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Or'#231'ado X Realizado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo5: TRLSystemInfo
        Left = 8
        Top = 8
        Width = 37
        Height = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLSystemInfo5BeforePrint
      end
    end
    object RLBand11: TRLBand
      Left = 38
      Top = 146
      Width = 718
      Height = 38
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel23: TRLLabel
        Left = 5
        Top = 18
        Width = 141
        Height = 15
        Caption = 'Classifica'#231#227'o/Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 188
        Top = 19
        Width = 42
        Height = 15
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 230
        Top = 1
        Width = 158
        Height = 15
        Caption = '------------- Mensal --------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel110: TRLLabel
        Left = 250
        Top = 20
        Width = 45
        Height = 15
        Caption = 'Or'#231'ado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel111: TRLLabel
        Left = 307
        Top = 19
        Width = 58
        Height = 15
        Caption = 'Realizado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel112: TRLLabel
        Left = 369
        Top = 19
        Width = 58
        Height = 15
        Caption = 'Diferen'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel113: TRLLabel
        Left = 454
        Top = 19
        Width = 12
        Height = 15
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 477
        Top = 1
        Width = 180
        Height = 15
        Caption = '---------- Total Acumulado ---------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 499
        Top = 20
        Width = 45
        Height = 15
        Caption = 'Or'#231'ado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 555
        Top = 20
        Width = 58
        Height = 15
        Caption = 'Realizado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 618
        Top = 20
        Width = 58
        Height = 15
        Caption = 'Diferen'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 699
        Top = 20
        Width = 12
        Height = 15
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand12: TRLBand
      Left = 38
      Top = 184
      Width = 718
      Height = 14
      object RLDBText41: TRLDBText
        Left = 3
        Top = 2
        Width = 201
        Height = 10
        AutoSize = False
        DataField = 'NIVEL_DESC'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLDBText41BeforePrint
      end
      object rltxtmes: TRLDBText
        Left = 295
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES1'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rltxtorc: TRLDBText
        Left = 229
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPMES1ORC'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rltxtdif: TRLDBText
        Left = 361
        Top = 1
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPDIF1'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rltxtp: TRLDBText
        Left = 427
        Top = 1
        Width = 40
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPP1'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText55: TRLDBText
        Left = 205
        Top = 2
        Width = 21
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPCONTA'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText54: TRLDBText
        Left = 477
        Top = 2
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPTOTALMESORC'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText56: TRLDBText
        Left = 675
        Top = 2
        Width = 41
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPTOTALP'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText57: TRLDBText
        Left = 609
        Top = 2
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPTOTALDIF'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText58: TRLDBText
        Left = 543
        Top = 2
        Width = 65
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TMPTOTALMES'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand13: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 72
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBImage6: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 67
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText3: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
        Height = 67
        Align = faClient
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'INSCAB'
        DataSource = DM.DSInstituto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo6: TRLSystemInfo
        Left = 610
        Top = 2
        Width = 50
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        Layout = tlCenter
        ParentFont = False
      end
      object RLSystemInfo7: TRLSystemInfo
        Left = 662
        Top = 2
        Width = 50
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        Layout = tlCenter
        ParentFont = False
        Text = 'de '
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 67
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLBand14: TRLBand
      Left = 38
      Top = 198
      Width = 718
      Height = 36
      BandType = btSummary
      object lblorc: TRLLabel
        Left = 229
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 5
        Top = 0
        Width = 167
        Height = 15
        Caption = 'Resultado Mensal ...................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel39BeforePrint
      end
      object lblmes: TRLLabel
        Left = 295
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblp: TRLLabel
        Left = 427
        Top = 4
        Width = 42
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbldif: TRLLabel
        Left = 361
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblacuorc: TRLLabel
        Left = 229
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RLLabel53: TRLLabel
        Left = 5
        Top = 18
        Width = 178
        Height = 15
        Caption = 'Resultado Acumulado ...............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        BeforePrint = RLLabel39BeforePrint
      end
      object lblacumes: TRLLabel
        Left = 295
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblacup: TRLLabel
        Left = 427
        Top = 20
        Width = 42
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblacudif: TRLLabel
        Left = 361
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblmesacu: TRLLabel
        Left = 543
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbldifacu: TRLLabel
        Left = 609
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblpacu: TRLLabel
        Left = 675
        Top = 4
        Width = 40
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblorcacu: TRLLabel
        Left = 477
        Top = 4
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblacumesacu: TRLLabel
        Left = 543
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblacudifacu: TRLLabel
        Left = 609
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblacupacu: TRLLabel
        Left = 675
        Top = 20
        Width = 40
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblacuorcacu: TRLLabel
        Left = 477
        Top = 20
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
    end
  end
  object QRel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT (TMPNIVEL||'#39'     '#39'||PLADESCRICAO) AS NIVEL_DESC, TMPCODAN' +
        'A, TMPCONTA, TMPDESC, TMPDEBITO, TMPCREDITO, TMPSALDOANTERIOR,'
      'TMPSALDO, TMPTIPOSALDO,PLASA, PLADC,PLANIVEL,'
      
        'TMPTIPOSALDOANT, TMPMES1, TMPMES2, TMPMES3, TMPMES4, TMPMES5, TM' +
        'PMES6, TMPMES7, TMPMES8, TMPMES9, TMPMES10, TMPMES11, TMPMES12,T' +
        'MPTOTALMES,'
      
        'TMPSALDOANTORC, TMPMES1ORC, TMPMES2ORC, TMPMES3ORC, TMPMES4ORC, ' +
        'TMPMES5ORC, TMPMES6ORC, TMPMES7ORC, TMPMES8ORC, TMPMES9ORC, TMPM' +
        'ES10ORC, TMPMES11ORC, TMPMES12ORC, TMPTOTALMESORC'
      
        'FROM TTMPBALANCETE inner join TPLANOCONTA on TMPCONTA = PLACODRE' +
        'D')
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 16
    object QRelNIVEL_DESC: TStringField
      FieldName = 'NIVEL_DESC'
      Size = 125
    end
    object QRelTMPCODANA: TStringField
      FieldName = 'TMPCODANA'
    end
    object QRelTMPCONTA: TStringField
      FieldName = 'TMPCONTA'
      Size = 10
    end
    object QRelTMPDESC: TStringField
      FieldName = 'TMPDESC'
      Size = 100
    end
    object QRelTMPDEBITO: TFloatField
      FieldName = 'TMPDEBITO'
    end
    object QRelTMPCREDITO: TFloatField
      FieldName = 'TMPCREDITO'
    end
    object QRelTMPSALDOANTERIOR: TFloatField
      FieldName = 'TMPSALDOANTERIOR'
    end
    object QRelTMPMES1: TFloatField
      FieldName = 'TMPMES1'
    end
    object QRelTMPMES2: TFloatField
      FieldName = 'TMPMES2'
    end
    object QRelTMPMES3: TFloatField
      FieldName = 'TMPMES3'
    end
    object QRelTMPMES4: TFloatField
      FieldName = 'TMPMES4'
    end
    object QRelTMPMES5: TFloatField
      FieldName = 'TMPMES5'
    end
    object QRelTMPMES6: TFloatField
      FieldName = 'TMPMES6'
    end
    object QRelTMPMES7: TFloatField
      FieldName = 'TMPMES7'
    end
    object QRelTMPMES8: TFloatField
      FieldName = 'TMPMES8'
    end
    object QRelTMPMES9: TFloatField
      FieldName = 'TMPMES9'
    end
    object QRelTMPMES10: TFloatField
      FieldName = 'TMPMES10'
    end
    object QRelTMPMES11: TFloatField
      FieldName = 'TMPMES11'
    end
    object QRelTMPMES12: TFloatField
      FieldName = 'TMPMES12'
    end
    object QRelTMPSALDO: TFloatField
      FieldName = 'TMPSALDO'
    end
    object QRelTMPTIPOSALDO: TStringField
      FieldName = 'TMPTIPOSALDO'
      Size = 1
    end
    object QRelTMPTIPOSALDOANT: TStringField
      FieldName = 'TMPTIPOSALDOANT'
      Size = 1
    end
    object QRelTMPTOTALMES: TFloatField
      FieldName = 'TMPTOTALMES'
    end
    object QRelTMPSALDOANTORC: TFloatField
      FieldName = 'TMPSALDOANTORC'
    end
    object QRelTMPMES1ORC: TFloatField
      FieldName = 'TMPMES1ORC'
    end
    object QRelTMPMES2ORC: TFloatField
      FieldName = 'TMPMES2ORC'
    end
    object QRelTMPMES3ORC: TFloatField
      FieldName = 'TMPMES3ORC'
    end
    object QRelTMPMES4ORC: TFloatField
      FieldName = 'TMPMES4ORC'
    end
    object QRelTMPMES5ORC: TFloatField
      FieldName = 'TMPMES5ORC'
    end
    object QRelTMPMES6ORC: TFloatField
      FieldName = 'TMPMES6ORC'
    end
    object QRelTMPMES7ORC: TFloatField
      FieldName = 'TMPMES7ORC'
    end
    object QRelTMPMES8ORC: TFloatField
      FieldName = 'TMPMES8ORC'
    end
    object QRelTMPMES9ORC: TFloatField
      FieldName = 'TMPMES9ORC'
    end
    object QRelTMPMES10ORC: TFloatField
      FieldName = 'TMPMES10ORC'
    end
    object QRelTMPMES11ORC: TFloatField
      FieldName = 'TMPMES11ORC'
    end
    object QRelTMPMES12ORC: TFloatField
      FieldName = 'TMPMES12ORC'
    end
    object QRelTMPTOTALMESORC: TFloatField
      FieldName = 'TMPTOTALMESORC'
    end
    object QRelPLASA: TStringField
      FieldName = 'PLASA'
      Size = 10
    end
    object QRelPLADC: TStringField
      FieldName = 'PLADC'
      Size = 10
    end
    object QRelPLANIVEL: TIntegerField
      FieldName = 'PLANIVEL'
    end
  end
  object DSPRel: TDataSetProvider
    DataSet = QRel
    Left = 56
    Top = 14
  end
  object CDSRel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRel'
    Left = 88
    Top = 14
    object CDSRelNIVEL_DESC: TStringField
      FieldName = 'NIVEL_DESC'
      Size = 125
    end
    object CDSRelTMPCODANA: TStringField
      FieldName = 'TMPCODANA'
    end
    object CDSRelTMPCONTA: TStringField
      FieldName = 'TMPCONTA'
      Size = 10
    end
    object CDSRelTMPDESC: TStringField
      FieldName = 'TMPDESC'
      Size = 100
    end
    object CDSRelTMPDEBITO: TFloatField
      FieldName = 'TMPDEBITO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPCREDITO: TFloatField
      FieldName = 'TMPCREDITO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPSALDOANTERIOR: TFloatField
      FieldName = 'TMPSALDOANTERIOR'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES1: TFloatField
      FieldName = 'TMPMES1'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES2: TFloatField
      FieldName = 'TMPMES2'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES3: TFloatField
      FieldName = 'TMPMES3'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES4: TFloatField
      FieldName = 'TMPMES4'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES5: TFloatField
      FieldName = 'TMPMES5'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES6: TFloatField
      FieldName = 'TMPMES6'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES7: TFloatField
      FieldName = 'TMPMES7'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES8: TFloatField
      FieldName = 'TMPMES8'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES9: TFloatField
      FieldName = 'TMPMES9'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES10: TFloatField
      FieldName = 'TMPMES10'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES11: TFloatField
      FieldName = 'TMPMES11'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES12: TFloatField
      FieldName = 'TMPMES12'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPSALDO: TFloatField
      FieldName = 'TMPSALDO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPTIPOSALDO: TStringField
      FieldName = 'TMPTIPOSALDO'
      Size = 1
    end
    object CDSRelTMPTIPOSALDOANT: TStringField
      FieldName = 'TMPTIPOSALDOANT'
      Size = 1
    end
    object CDSRelTMPTOTALMES: TFloatField
      FieldName = 'TMPTOTALMES'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPSALDOANTORC: TFloatField
      FieldName = 'TMPSALDOANTORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES1ORC: TFloatField
      FieldName = 'TMPMES1ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES2ORC: TFloatField
      FieldName = 'TMPMES2ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES3ORC: TFloatField
      FieldName = 'TMPMES3ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES4ORC: TFloatField
      FieldName = 'TMPMES4ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES5ORC: TFloatField
      FieldName = 'TMPMES5ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES6ORC: TFloatField
      FieldName = 'TMPMES6ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES7ORC: TFloatField
      FieldName = 'TMPMES7ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES8ORC: TFloatField
      FieldName = 'TMPMES8ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES9ORC: TFloatField
      FieldName = 'TMPMES9ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES10ORC: TFloatField
      FieldName = 'TMPMES10ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES11ORC: TFloatField
      FieldName = 'TMPMES11ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPMES12ORC: TFloatField
      FieldName = 'TMPMES12ORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPTOTALMESORC: TFloatField
      FieldName = 'TMPTOTALMESORC'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF1'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF2'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF3: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF3'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF4: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF4'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF5: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF5'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF6: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF6'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF7: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF7'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF8: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF8'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF9: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF9'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF10: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF10'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF11: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF11'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPDIF12: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPDIF12'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP1'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP2'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP3: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP3'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP4: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP4'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP5: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP5'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP6: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP6'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP7: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP7'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP8: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP8'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP9: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP9'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP10: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP10'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP11: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP11'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPP12: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPP12'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPTOTALDIF: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPTOTALDIF'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelTMPTOTALP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPTOTALP'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelPLASA: TStringField
      FieldName = 'PLASA'
      Size = 10
    end
    object CDSRelPLADC: TStringField
      FieldName = 'PLADC'
      Size = 10
    end
    object CDSRelPLANIVEL: TIntegerField
      FieldName = 'PLANIVEL'
    end
  end
  object DSRel: TDataSource
    DataSet = CDSRel
    Left = 120
    Top = 14
  end
end
