object FMensalidadeRel: TFMensalidadeRel
  Left = 232
  Top = 61
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 405
  ClientWidth = 419
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 419
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Filtro de Relat'#243'rio de Mensalidades'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 353
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 419
    Height = 343
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 421
    ExplicitHeight = 345
    object Label7: TLabel
      Left = 12
      Top = 67
      Width = 32
      Height = 15
      Caption = 'Aluno'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnaluno: TSpeedButton
      Left = 140
      Top = 63
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
      OnClick = btnalunoClick
    end
    object Label2: TLabel
      Left = 12
      Top = 92
      Width = 34
      Height = 15
      Caption = 'Curso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btncurso: TSpeedButton
      Left = 140
      Top = 87
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
      OnClick = btncursoClick
    end
    object Label1: TLabel
      Left = 12
      Top = 116
      Width = 36
      Height = 15
      Caption = 'Banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnbanco: TSpeedButton
      Left = 139
      Top = 111
      Width = 24
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
      OnClick = btnbancoClick
    end
    object Label3: TLabel
      Left = 275
      Top = 8
      Width = 33
      Height = 15
      Caption = 'Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 283
      Top = 33
      Width = 26
      Height = 15
      Caption = 'Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 12
      Top = 138
      Width = 65
      Height = 15
      Caption = 'Forma Pgto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnforma: TSpeedButton
      Left = 140
      Top = 135
      Width = 24
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
      OnClick = btnformaClick
    end
    object txtaluno: TWSEdit
      Left = 79
      Top = 67
      Width = 60
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 4
      OnExit = txtalunoExit
      OnKeyDown = txtcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object RGModelo: TRadioGroup
      Left = 9
      Top = 155
      Width = 403
      Height = 85
      Caption = ' Modelo '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Anal'#237'tico'
        'Por Aluno'
        'Por Curso/Aluno'
        'Por Curso'
        'Data Vcto ou Pagto'
        'Inadimpl'#234'ncia Data'
        'Inadimpl'#234'ncia Aluno'
        'Resumo Por Curso'
        'Por Forma de Pagto')
      ParentFont = False
      TabOrder = 8
      OnClick = RGModeloClick
    end
    object txtcurso: TWSEdit
      Left = 79
      Top = 91
      Width = 60
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 5
      OnExit = txtcursoExit
      OnKeyDown = txtcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtbanco: TWSEdit
      Left = 79
      Top = 115
      Width = 60
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 6
      OnExit = txtbancoExit
      OnKeyDown = txtcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object RGSituacao: TRadioGroup
      Left = 9
      Top = 2
      Width = 127
      Height = 59
      Caption = ' Situa'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 2
      Items.Strings = (
        'Aberto'
        'Baixados'
        'Ambos')
      ParentFont = False
      TabOrder = 0
    end
    object txtvctofin: TWSMaskEdit
      Left = 311
      Top = 33
      Width = 75
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
      TabOrder = 3
      Text = '  /  /    '
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtvctoini: TWSMaskEdit
      Left = 311
      Top = 7
      Width = 75
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
      TabOrder = 2
      Text = '  /  /    '
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object RGSituacaoAluno: TRadioGroup
      Left = 10
      Top = 242
      Width = 402
      Height = 85
      Caption = ' Situa'#231#227'o '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Ativo'
        'Desistente'
        'Suspenso Tempor'#225'riamente'
        'Transferido'
        'Outro'
        'Extens'#227'o'
        'Pendente Monografia'
        'T'#233'rmino do Curso')
      ParentFont = False
      TabOrder = 9
      OnClick = RGModeloClick
    end
    object RGDataFiltrar: TRadioGroup
      Left = 144
      Top = 1
      Width = 129
      Height = 59
      Caption = ' Filtrar '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Data Vencimento'
        'Data Pagamento')
      ParentFont = False
      TabOrder = 1
    end
    object txtforma: TWSEdit
      Left = 79
      Top = 138
      Width = 60
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 7
      OnExit = txtformaExit
      OnKeyDown = txtcursoKeyDown
      OnKeyPress = txtformaKeyPress
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomealuno: TWSEdit
      Left = 165
      Top = 67
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
      TabOrder = 10
      OnKeyDown = txtcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomecurso: TWSEdit
      Left = 165
      Top = 90
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
      TabOrder = 11
      OnKeyDown = txtcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomebanco: TWSEdit
      Left = 165
      Top = 114
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
      TabOrder = 12
      OnKeyDown = txtcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomeforma: TWSEdit
      Left = 165
      Top = 138
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
      TabOrder = 13
      OnKeyDown = txtcursoKeyDown
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 367
    Width = 419
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
    ExplicitTop = 369
    ExplicitWidth = 421
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
  object RLReportSint: TRLReport
    Left = 406
    Top = 347
    Width = 1123
    Height = 794
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand8: TRLBand
      Left = 38
      Top = 111
      Width = 1047
      Height = 52
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel8: TRLLabel
        Left = 0
        Top = 0
        Width = 1047
        Height = 24
        Align = faTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Mensalidades - Anal'#237'tico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo6: TRLSystemInfo
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
    object RLBand6: TRLBand
      Left = 38
      Top = 229
      Width = 1047
      Height = 57
      BandType = btFooter
      object RLDBText13: TRLDBText
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
        Left = 474
        Top = 39
        Width = 239
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
      Left = 38
      Top = 163
      Width = 1047
      Height = 22
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 6
        Top = 2
        Width = 35
        Height = 15
        Caption = 'Aluno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 443
        Top = 2
        Width = 37
        Height = 15
        Caption = 'Curso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 645
        Top = 1
        Width = 71
        Height = 15
        Caption = 'Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 792
        Top = 2
        Width = 33
        Height = 15
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 848
        Top = 2
        Width = 65
        Height = 15
        Caption = 'Valor Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel62: TRLLabel
        Left = 241
        Top = 2
        Width = 34
        Height = 15
        Caption = 'Email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 205
      Width = 1047
      Height = 24
      BandType = btSummary
      object RLLabel7: TRLLabel
        Left = 645
        Top = 3
        Width = 61
        Height = 15
        Caption = 'Total ........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 825
        Top = 3
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALORPAGO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 732
        Top = 4
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENLIQUIDO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
    object RLBand15: TRLBand
      Left = 38
      Top = 185
      Width = 1047
      Height = 20
      BeforePrint = RLBand15BeforePrint
      object RLDBText11: TRLDBText
        Left = 735
        Top = 2
        Width = 89
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENLIQUIDO'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 643
        Top = 2
        Width = 91
        Height = 15
        AutoSize = False
        DataField = 'MENVENCIMENTO'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 444
        Top = 2
        Width = 200
        Height = 15
        AutoSize = False
        DataField = 'CURSO'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText19: TRLDBText
        Left = 2
        Top = 2
        Width = 240
        Height = 15
        AutoSize = False
        DataField = 'ALUNOME'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLDBText19BeforePrint
      end
      object RLDBText42: TRLDBText
        Left = 825
        Top = 2
        Width = 89
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALORPAGO'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 243
        Top = 2
        Width = 200
        Height = 15
        AutoSize = False
        DataField = 'ALUEMAIL'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 73
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBImage4: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText2: TRLDBRichText
        Left = 181
        Top = 0
        Width = 866
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
      object RLSystemInfo18: TRLSystemInfo
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
      object RLSystemInfo19: TRLSystemInfo
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
      object RLDraw7: TRLDraw
        Left = 0
        Top = 68
        Width = 1047
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportAluno: TRLReport
    Left = 385
    Top = 377
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
    object RLBand14: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel12: TRLLabel
        Left = 223
        Top = 5
        Width = 272
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Mensalidades'
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
      end
    end
    object RLBand16: TRLBand
      Left = 38
      Top = 250
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText24: TRLDBText
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
      object RLDBImage6: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText27: TRLDBText
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
      object RLDBText28: TRLDBText
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
      object RLDBText29: TRLDBText
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
      object RLDBText30: TRLDBText
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
      object RLDBText31: TRLDBText
        Left = 474
        Top = 39
        Width = 239
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
    object RLBand17: TRLBand
      Left = 38
      Top = 147
      Width = 718
      Height = 19
      BandType = btColumnHeader
      object RLLabel21: TRLLabel
        Left = 4
        Top = 1
        Width = 37
        Height = 15
        Caption = 'Curso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 189
        Top = 1
        Width = 71
        Height = 15
        Caption = 'Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 301
        Top = 1
        Width = 33
        Height = 15
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 344
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Acr'#233'scimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 411
        Top = 1
        Width = 57
        Height = 15
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 531
        Top = 1
        Width = 44
        Height = 15
        Caption = 'L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 580
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Valor Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 644
        Top = 1
        Width = 58
        Height = 15
        Caption = 'Data Pgto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel58: TRLLabel
        Left = 475
        Top = 0
        Width = 35
        Height = 15
        Caption = 'Bolsa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup3: TRLGroup
      Left = 38
      Top = 166
      Width = 718
      Height = 62
      DataFields = 'ALUNOME'
      object RLBand18: TRLBand
        Left = 0
        Top = 20
        Width = 718
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText33: TRLDBText
          Left = 6
          Top = 2
          Width = 179
          Height = 10
          AutoSize = False
          DataField = 'CURSO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText32: TRLDBText
          Left = 186
          Top = 2
          Width = 76
          Height = 10
          AutoSize = False
          DataField = 'MENVENCIMENTO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText34: TRLDBText
          Left = 263
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALOR'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText35: TRLDBText
          Left = 332
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENACRESCIMO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText36: TRLDBText
          Left = 401
          Top = 2
          Width = 62
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENDESCONTO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText37: TRLDBText
          Left = 504
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENLIQUIDO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText39: TRLDBText
          Left = 573
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALORPAGO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText40: TRLDBText
          Left = 642
          Top = 2
          Width = 76
          Height = 10
          AutoSize = False
          DataField = 'MENDATAPAGAMENTO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText80: TRLDBText
          Left = 464
          Top = 2
          Width = 39
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENBOLSA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand19: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 20
        BandType = btHeader
        object RLLabel24: TRLLabel
          Left = 3
          Top = 2
          Width = 38
          Height = 15
          Caption = 'Aluno:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 45
          Top = 2
          Width = 61
          Height = 15
          DataField = 'ALUNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText99: TRLDBText
          Left = 477
          Top = 2
          Width = 57
          Height = 12
          DataField = 'TELEFONES'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel76: TRLLabel
          Left = 411
          Top = 1
          Width = 62
          Height = 15
          Caption = 'Telefones:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 36
        Width = 718
        Height = 22
        BandType = btFooter
        object RLLabel10: TRLLabel
          Left = 130
          Top = 3
          Width = 110
          Height = 15
          Caption = 'Total do Aluno........:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult3: TRLDBResult
          Left = 332
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENACRESCIMO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 263
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALOR'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult5: TRLDBResult
          Left = 401
          Top = 7
          Width = 62
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENDESCONTO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult6: TRLDBResult
          Left = 504
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENLIQUIDO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult7: TRLDBResult
          Left = 573
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALORPAGO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult43: TRLDBResult
          Left = 464
          Top = 7
          Width = 39
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENBOLSA'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 228
      Width = 718
      Height = 22
      BandType = btSummary
      object RLLabel1: TRLLabel
        Left = 131
        Top = 3
        Width = 103
        Height = 15
        Caption = 'Total Geral............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 333
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENACRESCIMO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 264
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALOR'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult10: TRLDBResult
        Left = 402
        Top = 7
        Width = 61
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENDESCONTO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult11: TRLDBResult
        Left = 504
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENLIQUIDO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult12: TRLDBResult
        Left = 573
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALORPAGO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult44: TRLDBResult
        Left = 464
        Top = 7
        Width = 39
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENBOLSA'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
    object RLBand12: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 73
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBImage5: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText3: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
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
      object RLSystemInfo16: TRLSystemInfo
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
      object RLSystemInfo17: TRLSystemInfo
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
      object RLDraw6: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportCursoAluno: TRLReport
    Left = 350
    Top = 415
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
    object RLBand3: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel4: TRLLabel
        Left = 223
        Top = 5
        Width = 272
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Mensalidades'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo4: TRLSystemInfo
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
    object RLBand4: TRLBand
      Left = 38
      Top = 288
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText1: TRLDBText
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
      object RLDBImage2: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText2: TRLDBText
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
      object RLDBText3: TRLDBText
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
      object RLDBText4: TRLDBText
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
      object RLDBText5: TRLDBText
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
      object RLDBText6: TRLDBText
        Left = 474
        Top = 39
        Width = 239
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
    object RLBand11: TRLBand
      Left = 38
      Top = 147
      Width = 718
      Height = 19
      BandType = btColumnHeader
      object RLLabel5: TRLLabel
        Left = 4
        Top = 1
        Width = 35
        Height = 15
        Caption = 'Aluno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 185
        Top = 1
        Width = 71
        Height = 15
        Caption = 'Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 297
        Top = 1
        Width = 33
        Height = 15
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 340
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Acr'#233'scimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 406
        Top = 1
        Width = 57
        Height = 15
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 531
        Top = 1
        Width = 44
        Height = 15
        Caption = 'L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 580
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Valor Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 644
        Top = 1
        Width = 58
        Height = 15
        Caption = 'Data Pgto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel57: TRLLabel
        Left = 470
        Top = 0
        Width = 35
        Height = 15
        Caption = 'Bolsa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 166
      Width = 718
      Height = 100
      DataFields = 'CURSO'
      object RLBand20: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 20
        BandType = btHeader
        object RLLabel18: TRLLabel
          Left = 3
          Top = 2
          Width = 40
          Height = 15
          Caption = 'Curso:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 45
          Top = 2
          Width = 47
          Height = 15
          DataField = 'CURSO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand21: TRLBand
        Left = 0
        Top = 66
        Width = 718
        Height = 22
        BandType = btFooter
        object RLLabel30: TRLLabel
          Left = 131
          Top = 3
          Width = 112
          Height = 15
          Caption = 'Total do Curso........:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult13: TRLDBResult
          Left = 333
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENACRESCIMO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult14: TRLDBResult
          Left = 264
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALOR'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult15: TRLDBResult
          Left = 402
          Top = 7
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENDESCONTO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult16: TRLDBResult
          Left = 504
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENLIQUIDO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult17: TRLDBResult
          Left = 573
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALORPAGO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult39: TRLDBResult
          Left = 458
          Top = 7
          Width = 45
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENBOLSA'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
      end
      object RLGroup4: TRLGroup
        Left = 0
        Top = 20
        Width = 718
        Height = 46
        DataFields = 'CURSO_ALUNO'
        object RLBand43: TRLBand
          Left = 0
          Top = 1
          Width = 718
          Height = 16
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBText81: TRLDBText
            Left = 6
            Top = 2
            Width = 179
            Height = 10
            AutoSize = False
            DataField = 'ALUNOME'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText82: TRLDBText
            Left = 188
            Top = 2
            Width = 76
            Height = 10
            AutoSize = False
            DataField = 'MENVENCIMENTO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText83: TRLDBText
            Left = 265
            Top = 2
            Width = 68
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENVALOR'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText84: TRLDBText
            Left = 334
            Top = 2
            Width = 68
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENACRESCIMO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText85: TRLDBText
            Left = 403
            Top = 2
            Width = 54
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENDESCONTO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText86: TRLDBText
            Left = 504
            Top = 2
            Width = 68
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENLIQUIDO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText87: TRLDBText
            Left = 573
            Top = 2
            Width = 68
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENVALORPAGO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText88: TRLDBText
            Left = 642
            Top = 2
            Width = 76
            Height = 10
            AutoSize = False
            DataField = 'MENDATAPAGAMENTO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText89: TRLDBText
            Left = 458
            Top = 2
            Width = 45
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENBOLSA'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand44: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 1
          BandType = btHeader
        end
        object RLBand45: TRLBand
          Left = 0
          Top = 17
          Width = 718
          Height = 22
          BandType = btFooter
          object RLLabel60: TRLLabel
            Left = 131
            Top = 3
            Width = 110
            Height = 15
            Caption = 'Total do Aluno........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult45: TRLDBResult
            Left = 333
            Top = 7
            Width = 68
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENACRESCIMO'
            DataSource = DSRel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Info = riSum
            ParentFont = False
          end
          object RLDBResult46: TRLDBResult
            Left = 264
            Top = 7
            Width = 68
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENVALOR'
            DataSource = DSRel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Info = riSum
            ParentFont = False
          end
          object RLDBResult47: TRLDBResult
            Left = 402
            Top = 7
            Width = 55
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENDESCONTO'
            DataSource = DSRel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Info = riSum
            ParentFont = False
          end
          object RLDBResult48: TRLDBResult
            Left = 504
            Top = 7
            Width = 68
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENLIQUIDO'
            DataSource = DSRel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Info = riSum
            ParentFont = False
          end
          object RLDBResult49: TRLDBResult
            Left = 573
            Top = 7
            Width = 68
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENVALORPAGO'
            DataSource = DSRel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Info = riSum
            ParentFont = False
          end
          object RLDBResult50: TRLDBResult
            Left = 458
            Top = 7
            Width = 45
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MENBOLSA'
            DataSource = DSRel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Info = riSum
            ParentFont = False
          end
        end
      end
    end
    object RLBand22: TRLBand
      Left = 38
      Top = 266
      Width = 718
      Height = 22
      BandType = btSummary
      object RLLabel31: TRLLabel
        Left = 132
        Top = 3
        Width = 103
        Height = 15
        Caption = 'Total Geral............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult18: TRLDBResult
        Left = 334
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENACRESCIMO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult19: TRLDBResult
        Left = 265
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALOR'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult20: TRLDBResult
        Left = 403
        Top = 7
        Width = 54
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENDESCONTO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult21: TRLDBResult
        Left = 504
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENLIQUIDO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult22: TRLDBResult
        Left = 573
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALORPAGO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult40: TRLDBResult
        Left = 458
        Top = 7
        Width = 45
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENBOLSA'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 73
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
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText1: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
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
      object RLSystemInfo14: TRLSystemInfo
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
      object RLSystemInfo15: TRLSystemInfo
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
      object RLDraw5: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportVcto: TRLReport
    Left = 342
    Top = 436
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
    object RLBand24: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel32: TRLLabel
        Left = 223
        Top = 5
        Width = 272
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Mensalidades'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
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
    object RLBand25: TRLBand
      Left = 38
      Top = 250
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText41: TRLDBText
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
      object RLDBImage8: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText43: TRLDBText
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
      object RLDBText44: TRLDBText
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
      object RLDBText45: TRLDBText
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
      object RLDBText46: TRLDBText
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
      object RLDBText47: TRLDBText
        Left = 474
        Top = 39
        Width = 239
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
    object RLBand26: TRLBand
      Left = 38
      Top = 147
      Width = 718
      Height = 19
      BandType = btColumnHeader
      object RLLabel33: TRLLabel
        Left = 4
        Top = 1
        Width = 35
        Height = 15
        Caption = 'Aluno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel34: TRLLabel
        Left = 157
        Top = 1
        Width = 37
        Height = 15
        Caption = 'Curso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel35: TRLLabel
        Left = 297
        Top = 1
        Width = 33
        Height = 15
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel36: TRLLabel
        Left = 340
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Acr'#233'scimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel37: TRLLabel
        Left = 414
        Top = 1
        Width = 57
        Height = 15
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 531
        Top = 1
        Width = 44
        Height = 15
        Caption = 'L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 580
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Valor Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel40: TRLLabel
        Left = 644
        Top = 1
        Width = 58
        Height = 15
        Caption = 'Data Pgto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel56: TRLLabel
        Left = 473
        Top = 1
        Width = 35
        Height = 15
        Caption = 'Bolsa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 166
      Width = 718
      Height = 62
      DataFields = 'MENVENCIMENTO'
      object RLBand27: TRLBand
        Left = 0
        Top = 20
        Width = 718
        Height = 14
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText48: TRLDBText
          Left = 6
          Top = 2
          Width = 154
          Height = 10
          AutoSize = False
          DataField = 'ALUNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText49: TRLDBText
          Left = 162
          Top = 2
          Width = 97
          Height = 10
          AutoSize = False
          DataField = 'CURSO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText50: TRLDBText
          Left = 260
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALOR'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText51: TRLDBText
          Left = 329
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENACRESCIMO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText52: TRLDBText
          Left = 398
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENDESCONTO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText53: TRLDBText
          Left = 504
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENLIQUIDO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText54: TRLDBText
          Left = 573
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALORPAGO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText55: TRLDBText
          Left = 642
          Top = 2
          Width = 76
          Height = 10
          AutoSize = False
          DataField = 'MENDATAPAGAMENTO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText78: TRLDBText
          Left = 467
          Top = 2
          Width = 36
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENBOLSA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand28: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 20
        BandType = btHeader
        object RLLabel41: TRLLabel
          Left = 3
          Top = 2
          Width = 74
          Height = 15
          Caption = 'Vencimento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText56: TRLDBText
          Left = 74
          Top = 2
          Width = 107
          Height = 15
          DataField = 'MENVENCIMENTO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand29: TRLBand
        Left = 0
        Top = 34
        Width = 718
        Height = 22
        BandType = btFooter
        object RLLabel42: TRLLabel
          Left = 127
          Top = 3
          Width = 107
          Height = 15
          Caption = 'Total da Data ........:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult23: TRLDBResult
          Left = 329
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENACRESCIMO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult24: TRLDBResult
          Left = 260
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALOR'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult25: TRLDBResult
          Left = 398
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENDESCONTO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult26: TRLDBResult
          Left = 504
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENLIQUIDO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult27: TRLDBResult
          Left = 573
          Top = 7
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALORPAGO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult36: TRLDBResult
          Left = 467
          Top = 7
          Width = 36
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENBOLSA'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
      end
    end
    object RLBand30: TRLBand
      Left = 38
      Top = 228
      Width = 718
      Height = 22
      BandType = btSummary
      object RLLabel43: TRLLabel
        Left = 129
        Top = 3
        Width = 103
        Height = 15
        Caption = 'Total Geral............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult28: TRLDBResult
        Left = 331
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENACRESCIMO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult29: TRLDBResult
        Left = 262
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALOR'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult30: TRLDBResult
        Left = 400
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENDESCONTO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult31: TRLDBResult
        Left = 504
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENLIQUIDO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult32: TRLDBResult
        Left = 573
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALORPAGO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult37: TRLDBResult
        Left = 467
        Top = 7
        Width = 36
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENBOLSA'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
    object RLBand23: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 73
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBImage7: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText4: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
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
      object RLSystemInfo12: TRLSystemInfo
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
      object RLSystemInfo13: TRLSystemInfo
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
      object RLDraw4: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportData: TRLReport
    Left = 326
    Top = 458
    Width = 794
    Height = 1123
    DataSource = DSData
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand32: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel44: TRLLabel
        Left = 223
        Top = 5
        Width = 272
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Inadimpl'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
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
    object RLBand33: TRLBand
      Left = 38
      Top = 204
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText57: TRLDBText
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
      object RLDBImage10: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText58: TRLDBText
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
      object RLDBText59: TRLDBText
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
      object RLDBText60: TRLDBText
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
      object RLDBText61: TRLDBText
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
      object RLDBText62: TRLDBText
        Left = 474
        Top = 39
        Width = 239
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
    object RLBand34: TRLBand
      Left = 38
      Top = 147
      Width = 718
      Height = 19
      BandType = btColumnHeader
      object RLLabel45: TRLLabel
        Left = 4
        Top = 1
        Width = 29
        Height = 15
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel48: TRLLabel
        Left = 120
        Top = 1
        Width = 94
        Height = 15
        Caption = 'Valor a Receber'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel50: TRLLabel
        Left = 253
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Valor Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 363
        Top = 1
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
    end
    object RLBand38: TRLBand
      Left = 38
      Top = 182
      Width = 718
      Height = 22
      BandType = btSummary
      object RLLabel55: TRLLabel
        Left = 6
        Top = 3
        Width = 85
        Height = 15
        Caption = 'Total Geral......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult38: TRLDBResult
        Left = 110
        Top = 7
        Width = 100
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = DSData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult41: TRLDBResult
        Left = 216
        Top = 7
        Width = 100
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALORPAGO'
        DataSource = DSData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult42: TRLDBResult
        Left = 322
        Top = 7
        Width = 100
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'diferenca'
        DataSource = DSData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
    object RLBand35: TRLBand
      Left = 38
      Top = 166
      Width = 718
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText63: TRLDBText
        Left = 6
        Top = 2
        Width = 23
        Height = 10
        DataField = 'DATA'
        DataSource = DSData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText66: TRLDBText
        Left = 110
        Top = 2
        Width = 100
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = DSData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText68: TRLDBText
        Left = 216
        Top = 2
        Width = 100
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALORPAGO'
        DataSource = DSData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText70: TRLDBText
        Left = 322
        Top = 2
        Width = 100
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'diferenca'
        DataSource = DSData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand31: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 73
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBImage9: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText5: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
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
      object RLSystemInfo10: TRLSystemInfo
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
      object RLSystemInfo11: TRLSystemInfo
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
      object RLDraw3: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportAlunoInadim: TRLReport
    Left = 310
    Top = 488
    Width = 794
    Height = 1123
    DataSource = DSAluno
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand37: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel46: TRLLabel
        Left = 223
        Top = 5
        Width = 272
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Inadimpl'#234'ncia'
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
    object RLBand39: TRLBand
      Left = 38
      Top = 204
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText64: TRLDBText
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
      object RLDBImage12: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText65: TRLDBText
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
      object RLDBText67: TRLDBText
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
      object RLDBText69: TRLDBText
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
      object RLDBText71: TRLDBText
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
      object RLDBText72: TRLDBText
        Left = 474
        Top = 39
        Width = 239
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
    object RLBand40: TRLBand
      Left = 38
      Top = 147
      Width = 718
      Height = 19
      BandType = btColumnHeader
      object RLLabel47: TRLLabel
        Left = 4
        Top = 1
        Width = 35
        Height = 15
        Caption = 'Aluno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel49: TRLLabel
        Left = 296
        Top = 1
        Width = 94
        Height = 15
        Caption = 'Valor a Receber'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel51: TRLLabel
        Left = 429
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Valor Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 539
        Top = 1
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
    end
    object RLBand41: TRLBand
      Left = 38
      Top = 182
      Width = 718
      Height = 22
      BandType = btSummary
      object RLLabel54: TRLLabel
        Left = 182
        Top = 3
        Width = 85
        Height = 15
        Caption = 'Total Geral......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult33: TRLDBResult
        Left = 286
        Top = 7
        Width = 100
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult34: TRLDBResult
        Left = 392
        Top = 7
        Width = 100
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALORPAGO'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult35: TRLDBResult
        Left = 498
        Top = 7
        Width = 100
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'diferenca'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
    object RLBand42: TRLBand
      Left = 38
      Top = 166
      Width = 718
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText73: TRLDBText
        Left = 6
        Top = 2
        Width = 34
        Height = 10
        DataField = 'CODIGO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText74: TRLDBText
        Left = 286
        Top = 2
        Width = 100
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText75: TRLDBText
        Left = 392
        Top = 2
        Width = 100
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALORPAGO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText76: TRLDBText
        Left = 498
        Top = 2
        Width = 100
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'diferenca'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText77: TRLDBText
        Left = 62
        Top = 1
        Width = 219
        Height = 10
        AutoSize = False
        DataField = 'NOME'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand36: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 73
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBImage11: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText6: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
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
      object RLDraw2: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportCurso: TRLReport
    Left = 294
    Top = 509
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
    object RLBand13: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 56
      BandType = btHeader
      object RLDBImage13: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 56
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBRichText7: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
        Height = 56
        Align = faClient
        Behavior = [beSiteExpander]
        DataField = 'INSCAB'
        DataSource = DM.DSInstituto
      end
      object RLSystemInfo23: TRLSystemInfo
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
      object RLSystemInfo24: TRLSystemInfo
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
    end
    object RLBand46: TRLBand
      Left = 38
      Top = 94
      Width = 718
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel59: TRLLabel
        Left = 223
        Top = 5
        Width = 272
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Mensalidades'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo7: TRLSystemInfo
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
    object RLBand47: TRLBand
      Left = 38
      Top = 201
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText7: TRLDBText
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
      object RLDBImage14: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText8: TRLDBText
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
      object RLDBText12: TRLDBText
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
      object RLDBText20: TRLDBText
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
      object RLDBText21: TRLDBText
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
      object RLDBText22: TRLDBText
        Left = 474
        Top = 39
        Width = 239
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
    object RLBand48: TRLBand
      Left = 38
      Top = 130
      Width = 718
      Height = 19
      BandType = btColumnHeader
      object RLLabel61: TRLLabel
        Left = 4
        Top = 1
        Width = 37
        Height = 15
        Caption = 'Curso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel61BeforePrint
      end
      object RLLabel63: TRLLabel
        Left = 297
        Top = 1
        Width = 33
        Height = 15
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel64: TRLLabel
        Left = 340
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Acr'#233'scimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel65: TRLLabel
        Left = 406
        Top = 1
        Width = 57
        Height = 15
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel66: TRLLabel
        Left = 531
        Top = 1
        Width = 44
        Height = 15
        Caption = 'L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel67: TRLLabel
        Left = 580
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Valor Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel69: TRLLabel
        Left = 470
        Top = 0
        Width = 35
        Height = 15
        Caption = 'Bolsa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel77: TRLLabel
        Left = 657
        Top = 1
        Width = 46
        Height = 15
        Caption = 'Pagtos.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup5: TRLGroup
      Left = 38
      Top = 149
      Width = 718
      Height = 30
      DataFields = 'CURSO'
      object RLBand50: TRLBand
        Left = 0
        Top = 1
        Width = 718
        Height = 12
        BandType = btFooter
        object RLDBResult51: TRLDBResult
          Left = 333
          Top = 0
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENACRESCIMO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult52: TRLDBResult
          Left = 264
          Top = 0
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALOR'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult53: TRLDBResult
          Left = 402
          Top = 0
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENDESCONTO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult54: TRLDBResult
          Left = 504
          Top = 0
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENLIQUIDO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult55: TRLDBResult
          Left = 573
          Top = 0
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALORPAGO'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult56: TRLDBResult
          Left = 458
          Top = 0
          Width = 45
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENBOLSA'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object lblcurso: TRLLabel
          Left = 4
          Top = 0
          Width = 29
          Height = 10
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = lblcursoBeforePrint
        end
        object lblPgto: TRLLabel
          Left = 648
          Top = 1
          Width = 55
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
      object RLBand51: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand51BeforePrint
      end
    end
    object RLBand54: TRLBand
      Left = 38
      Top = 179
      Width = 718
      Height = 22
      BandType = btSummary
      object RLLabel73: TRLLabel
        Left = 132
        Top = 3
        Width = 103
        Height = 15
        Caption = 'Total Geral............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel73BeforePrint
      end
      object RLDBResult63: TRLDBResult
        Left = 334
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENACRESCIMO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult64: TRLDBResult
        Left = 265
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALOR'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult65: TRLDBResult
        Left = 403
        Top = 7
        Width = 54
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENDESCONTO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult66: TRLDBResult
        Left = 504
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENLIQUIDO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult67: TRLDBResult
        Left = 573
        Top = 7
        Width = 68
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALORPAGO'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult68: TRLDBResult
        Left = 458
        Top = 7
        Width = 45
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENBOLSA'
        DataSource = DSRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object lblPgtoTotal: TRLLabel
        Left = 648
        Top = 7
        Width = 55
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
  object RLReportFormaPgto: TRLReport
    Left = 270
    Top = 737
    Width = 794
    Height = 1123
    DataSource = DSAluno
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand52: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 58
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel68: TRLLabel
        Left = 123
        Top = 16
        Width = 472
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Mensalidades por Forma de Pgto.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo22: TRLSystemInfo
        Left = 8
        Top = 0
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
    object RLBand53: TRLBand
      Left = 38
      Top = 226
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
      object RLDBImage16: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText79: TRLDBText
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
      object RLDBText90: TRLDBText
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
      object RLDBText91: TRLDBText
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
      object RLDBText92: TRLDBText
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
      object RLDBText93: TRLDBText
        Left = 474
        Top = 39
        Width = 239
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
    object RLBand55: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 19
      BandType = btColumnHeader
      object RLLabel70: TRLLabel
        Left = 4
        Top = 1
        Width = 39
        Height = 15
        Caption = 'Forma'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel71: TRLLabel
        Left = 296
        Top = 1
        Width = 94
        Height = 15
        Caption = 'Valor a Receber'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel72: TRLLabel
        Left = 429
        Top = 1
        Width = 65
        Height = 15
        Caption = 'Valor Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel74: TRLLabel
        Left = 539
        Top = 1
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
    end
    object RLBand56: TRLBand
      Left = 38
      Top = 204
      Width = 718
      Height = 22
      BandType = btSummary
      object RLLabel75: TRLLabel
        Left = 182
        Top = 3
        Width = 85
        Height = 15
        Caption = 'Total Geral......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult57: TRLDBResult
        Left = 286
        Top = 7
        Width = 100
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult58: TRLDBResult
        Left = 392
        Top = 7
        Width = 100
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALORPAGO'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult59: TRLDBResult
        Left = 498
        Top = 7
        Width = 100
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'diferenca'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
    object RLBand57: TRLBand
      Left = 38
      Top = 188
      Width = 718
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText94: TRLDBText
        Left = 6
        Top = 2
        Width = 34
        Height = 10
        DataField = 'CODIGO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText95: TRLDBText
        Left = 286
        Top = 2
        Width = 100
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText96: TRLDBText
        Left = 392
        Top = 2
        Width = 100
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALORPAGO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText97: TRLDBText
        Left = 498
        Top = 2
        Width = 100
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'diferenca'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText98: TRLDBText
        Left = 62
        Top = 1
        Width = 219
        Height = 10
        AutoSize = False
        DataField = 'NOME'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand49: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 73
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBImage15: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText8: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
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
      object RLSystemInfo20: TRLSystemInfo
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
      object RLSystemInfo21: TRLSystemInfo
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
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object QRel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select (CURNOME||'#39'-'#39'||CURTURMA) as curso, (CURNOME||'#39'-'#39'||CURTURM' +
        'A||'#39'-'#39'||ALUNOME) as curso_aluno, ALUNOME, MENALUNO,MENNUMERO,'
      
        'MENVENCIMENTO,MENVALOR,MENACRESCIMO,MENDESCONTO,MENBOLSA,MENVALO' +
        'RPAGO,MENDATAPAGAMENTO,MENLIQUIDO,ALUEMAIL,'
      '((MENVENCIMENTO - CURRENT_DATE) * -1) AS DIAS,'
      
        'COALESCE(ALUFONE,'#39' '#39')||'#39' '#39'||COALESCE(ALUFAX,'#39' '#39')||'#39' '#39'||COALESCE(' +
        'ALUCELULAR,'#39' '#39') AS TELEFONES'
      'from TALUNO'
      'left outer join TMENSALIDADE on ALUCOD = MENALUNO'
      'left outer join TCURSO on CURCOD = ALUCURSO'
      ' ')
    SQLConnection = DM.SQLConnection
    Left = 4
    object QRelCURSO: TStringField
      FieldName = 'CURSO'
      Size = 61
    end
    object QRelCURSO_ALUNO: TStringField
      FieldName = 'CURSO_ALUNO'
      Size = 162
    end
    object QRelALUNOME: TStringField
      FieldName = 'ALUNOME'
      Size = 100
    end
    object QRelMENALUNO: TIntegerField
      FieldName = 'MENALUNO'
    end
    object QRelMENNUMERO: TIntegerField
      FieldName = 'MENNUMERO'
    end
    object QRelMENVENCIMENTO: TDateField
      FieldName = 'MENVENCIMENTO'
    end
    object QRelMENVALOR: TFloatField
      FieldName = 'MENVALOR'
    end
    object QRelMENACRESCIMO: TFloatField
      FieldName = 'MENACRESCIMO'
    end
    object QRelMENDESCONTO: TFloatField
      FieldName = 'MENDESCONTO'
    end
    object QRelMENVALORPAGO: TFloatField
      FieldName = 'MENVALORPAGO'
    end
    object QRelMENBOLSA: TFloatField
      FieldName = 'MENBOLSA'
    end
    object QRelMENDATAPAGAMENTO: TDateField
      FieldName = 'MENDATAPAGAMENTO'
    end
    object QRelMENLIQUIDO: TFloatField
      FieldName = 'MENLIQUIDO'
    end
    object QRelALUEMAIL: TStringField
      FieldName = 'ALUEMAIL'
      Size = 100
    end
    object QRelDIAS: TFMTBCDField
      FieldName = 'DIAS'
      Precision = 15
      Size = 0
    end
    object QRelTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 47
    end
  end
  object DSPRel: TDataSetProvider
    DataSet = QRel
    Left = 36
  end
  object CDSRel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRel'
    Left = 68
    Top = 2
    object CDSRelCURSO: TStringField
      FieldName = 'CURSO'
      Size = 61
    end
    object CDSRelCURSO_ALUNO: TStringField
      FieldName = 'CURSO_ALUNO'
      Size = 162
    end
    object CDSRelMENALUNO: TIntegerField
      FieldName = 'MENALUNO'
      Required = True
    end
    object CDSRelMENNUMERO: TIntegerField
      FieldName = 'MENNUMERO'
      Required = True
    end
    object CDSRelMENVENCIMENTO: TDateField
      FieldName = 'MENVENCIMENTO'
    end
    object CDSRelMENVALOR: TFloatField
      FieldName = 'MENVALOR'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelMENACRESCIMO: TFloatField
      FieldName = 'MENACRESCIMO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelMENDESCONTO: TFloatField
      FieldName = 'MENDESCONTO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelMENBOLSA: TFloatField
      FieldName = 'MENBOLSA'
      DisplayFormat = '0.00'
    end
    object CDSRelMENVALORPAGO: TFloatField
      FieldName = 'MENVALORPAGO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelMENDATAPAGAMENTO: TDateField
      FieldName = 'MENDATAPAGAMENTO'
    end
    object CDSRelMENLIQUIDO: TFloatField
      FieldName = 'MENLIQUIDO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSRelALUNOME: TStringField
      FieldName = 'ALUNOME'
      Size = 100
    end
    object CDSRelALUEMAIL: TStringField
      FieldName = 'ALUEMAIL'
      Size = 100
    end
    object CDSRelDIAS: TFMTBCDField
      FieldName = 'DIAS'
      Precision = 15
      Size = 0
    end
    object CDSRelTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 47
    end
  end
  object DSRel: TDataSource
    DataSet = CDSRel
    Left = 100
  end
  object DSData: TDataSource
    DataSet = CDSData
    Left = 239
    Top = 65534
  end
  object CDSData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPData'
    OnCalcFields = CDSDataCalcFields
    Left = 207
    object CDSDataDATA: TDateField
      FieldName = 'DATA'
    end
    object CDSDataVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSDataVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSDatadiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'diferenca'
      DisplayFormat = '#,###,###0.00'
      Calculated = True
    end
  end
  object DSPData: TDataSetProvider
    DataSet = QData
    Left = 175
    Top = 65534
  end
  object QData: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select data, valor, valorpago'
      'from vmensalidade_data'
      'order by data')
    SQLConnection = DM.SQLConnection
    Left = 143
    Top = 65534
    object QDataDATA: TDateField
      FieldName = 'DATA'
    end
    object QDataVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QDataVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
    end
  end
  object QAluno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo, nome, valor, valorpago'
      'from VMENSALIDADE_ALUNO'
      'where valor > 0 and valorpago > 0')
    SQLConnection = DM.SQLConnection
    Left = 300
    object QAlunoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QAlunoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object QAlunoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QAlunoVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
    end
  end
  object DSPAluno: TDataSetProvider
    DataSet = QAluno
    Left = 332
  end
  object CDSAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPAluno'
    OnCalcFields = CDSAlunoCalcFields
    Left = 364
    Top = 2
    object CDSAlunoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSAlunoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object CDSAlunoVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSAlunoVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSAlunodiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'diferenca'
      DisplayFormat = '#,###,###0.00'
      Calculated = True
    end
  end
  object DSAluno: TDataSource
    DataSet = CDSAluno
    Left = 396
  end
end
