object FAlunoCursoRel: TFAlunoCursoRel
  Left = 482
  Top = 386
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 435
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
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
    Width = 691
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Filtro de Relat'#243'rio de Alunos e Cursos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 382
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 691
    Height = 373
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Label7: TLabel
      Left = 290
      Top = 19
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
      Left = 427
      Top = 15
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
      Left = 290
      Top = 42
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
      Left = 427
      Top = 39
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
      Left = 290
      Top = 98
      Width = 57
      Height = 15
      Caption = 'Professor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnprofessor: TSpeedButton
      Left = 427
      Top = 95
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
      OnClick = btnprofessorClick
    end
    object btndisciplina: TSpeedButton
      Left = 427
      Top = 143
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
      OnClick = btndisciplinaClick
    end
    object Label3: TLabel
      Left = 290
      Top = 146
      Width = 55
      Height = 15
      Caption = 'Disciplina'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 290
      Top = 218
      Width = 48
      Height = 15
      Caption = 'Ano Inic.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblfiltrovalidade: TLabel
      Left = 532
      Top = 218
      Width = 48
      Height = 15
      Alignment = taRightJustify
      Caption = 'Validade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 290
      Top = 122
      Width = 61
      Height = 15
      Caption = 'Orientador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnorientador: TSpeedButton
      Left = 427
      Top = 119
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
      OnClick = btnorientadorClick
    end
    object LblData: TLabel
      Left = 290
      Top = 287
      Width = 36
      Height = 15
      Caption = 'Datas:'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RGModelo: TRadioGroup
      Left = 9
      Top = 9
      Width = 277
      Height = 352
      Caption = ' Modelo '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 4
      Items.Strings = (
        'Carteirinha'
        'Certificado'
        'Crach'#225
        'Sint'#233'tico'
        'Hist'#243'rico Esc.'
        'Sem Nota e Freq.'
        'Frequ'#234'ncia'
        'Melhores Notas'
        'Melhores Freq.'
        'Folha de Rosto'
        'Alunos por Turma'
        'Pendente Monogr.'
        'Listagem Numerada'
        'Freq. Di'#225'rio Classe')
      ParentFont = False
      TabOrder = 0
      OnClick = RGModeloClick
    end
    object txtcodcurso: TWSEdit
      Left = 350
      Top = 42
      Width = 75
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
      OnExit = txtcodcursoExit
      OnKeyDown = txtcodcursoKeyDown
      OnKeyPress = txtcodcursoKeyPress
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtprofessor: TWSEdit
      Left = 350
      Top = 98
      Width = 75
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
      OnExit = txtprofessorExit
      OnKeyDown = txtcodcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtcoddisciplina: TWSEdit
      Left = 350
      Top = 146
      Width = 75
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 11
      OnExit = txtcoddisciplinaExit
      OnKeyDown = txtcodcursoKeyDown
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtativo: TCheckBox
      Left = 291
      Top = 253
      Width = 143
      Height = 17
      Caption = 'Apenas Alunos Ativos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object txtano: TWSEdit
      Left = 350
      Top = 218
      Width = 75
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
      OnKeyDown = txtcodcursoKeyDown
      OnKeyPress = txtanoKeyPress
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomealuno: TWSEdit
      Left = 452
      Top = 19
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
      TabOrder = 4
      OnKeyDown = txtcodcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomeprofessor: TWSEdit
      Left = 452
      Top = 98
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
      TabOrder = 8
      OnKeyDown = txtcodcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtvalidade: TWSMaskEdit
      Left = 589
      Top = 218
      Width = 81
      height = 17
      BevelInner = bvNone
      EditMask = '99/99/9999;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      ParentShowHint = False
      TabOrder = 13
      Text = '  /  /    '
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object LstCurso: TListBox
      Left = 452
      Top = 41
      Width = 220
      Height = 51
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      Sorted = True
      TabOrder = 6
      OnKeyDown = LstCursoKeyDown
    end
    object txtorientador: TWSEdit
      Left = 350
      Top = 122
      Width = 75
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
      OnExit = txtorientadorExit
      OnKeyDown = txtcodcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomeorientador: TWSEdit
      Left = 452
      Top = 122
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
      OnKeyDown = txtcodcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object chkSemNotas: TCheckBox
      Left = 18
      Top = 339
      Width = 171
      Height = 17
      TabStop = False
      Caption = 'Apenas Alunos sem Notas'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object chkMensal: TCheckBox
      Left = 452
      Top = 253
      Width = 218
      Height = 17
      Caption = 'Apenas Alunos sem Mensalidades'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object TxtData1: TWSEdit
      Left = 350
      Top = 287
      Width = 105
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
      TabOrder = 16
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object TxtData2: TWSEdit
      Left = 458
      Top = 287
      Width = 105
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
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object TxtData3: TWSEdit
      Left = 566
      Top = 287
      Width = 105
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
      TabOrder = 18
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object TxtData6: TWSEdit
      Left = 566
      Top = 319
      Width = 105
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
      TabOrder = 22
      OnKeyPress = TxtData6KeyPress
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object TxtData4: TWSEdit
      Left = 350
      Top = 319
      Width = 105
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
      TabOrder = 19
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object TxtData5: TWSEdit
      Left = 458
      Top = 319
      Width = 105
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
      TabOrder = 20
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object chkTCC: TCheckBox
      Left = 17
      Top = 245
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir TCC'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object chkBranco: TCheckBox
      Left = 198
      Top = 339
      Width = 82
      Height = 17
      TabStop = False
      Caption = 'Em branco'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object LstDisciplina: TListBox
      Left = 452
      Top = 145
      Width = 220
      Height = 51
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      Sorted = True
      TabOrder = 21
      OnKeyDown = LstCursoKeyDown
    end
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 397
    Width = 691
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
  object RLReportSint: TRLReport
    Left = 398
    Top = 294
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
    object RLBand8: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 52
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand8BeforePrint
      object RLLabel8: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        Align = faTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Alunos/Cursos - Sint'#233'tico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblobs: TRLLabel
        Left = 5
        Top = 32
        Width = 37
        Height = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
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
    object RLBand6: TRLBand
      Left = 38
      Top = 273
      Width = 718
      Height = 60
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
        Height = 51
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
      object RLDBText154: TRLDBText
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
      Left = 38
      Top = 163
      Width = 718
      Height = 3
      BandType = btColumnHeader
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 166
      Width = 718
      Height = 107
      DataFields = 'ALUNO_CURSO'
      object RLBand15: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 103
        BandType = btHeader
        object RLDBText10: TRLDBText
          Left = 383
          Top = 35
          Width = 100
          Height = 15
          AutoSize = False
          DataField = 'ALUCURSOFIM'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object RLDBText9: TRLDBText
          Left = 106
          Top = 1
          Width = 230
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
        end
        object RLDBText19: TRLDBText
          Left = 383
          Top = 2
          Width = 239
          Height = 15
          AutoSize = False
          DataField = 'CURNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 383
          Top = 18
          Width = 100
          Height = 15
          AutoSize = False
          DataField = 'ALUCURSOINICIO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object RLDBText155: TRLDBText
          Left = 52
          Top = 17
          Width = 110
          Height = 15
          AutoSize = False
          DataField = 'ALUIDENTIDADE'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel112: TRLLabel
          Left = 26
          Top = 17
          Width = 22
          Height = 15
          Caption = 'RG:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 11
          Top = 0
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
        object RLDBText156: TRLDBText
          Left = 254
          Top = 32
          Width = 74
          Height = 15
          AutoSize = False
          DataField = 'ALUORGAOEXPEDIDOR'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel113: TRLLabel
          Left = 179
          Top = 32
          Width = 68
          Height = 15
          Caption = 'Org'#227'o Exp.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 341
          Top = 0
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
        object RLDBText157: TRLDBText
          Left = 52
          Top = 34
          Width = 110
          Height = 15
          AutoSize = False
          DataField = 'ALUCPF'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel114: TRLLabel
          Left = 20
          Top = 34
          Width = 28
          Height = 15
          Caption = 'CPF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel115: TRLLabel
          Left = 9
          Top = 51
          Width = 38
          Height = 15
          Caption = 'Nasc.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText158: TRLDBText
          Left = 52
          Top = 51
          Width = 110
          Height = 15
          AutoSize = False
          DataField = 'ALUNASCIMENTO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText159: TRLDBText
          Left = 52
          Top = 1
          Width = 52
          Height = 15
          AutoSize = False
          DataField = 'ALUCOD'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel117: TRLLabel
          Left = 340
          Top = 17
          Width = 36
          Height = 15
          Caption = 'In'#237'cio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel118: TRLLabel
          Left = 351
          Top = 34
          Width = 26
          Height = 15
          Caption = 'Fim:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBImage7: TRLDBImage
          Left = 625
          Top = 2
          Width = 90
          Height = 80
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataField = 'ALUFOTO'
          DataSource = DSRel
          Stretch = True
        end
        object RLLabel5: TRLLabel
          Left = 11
          Top = 67
          Width = 63
          Height = 15
          Caption = 'T'#237'tulo TCC:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel122: TRLLabel
          Left = 11
          Top = 84
          Width = 67
          Height = 15
          Caption = 'Orientador:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel123: TRLLabel
          Left = 345
          Top = 84
          Width = 32
          Height = 15
          Caption = 'Nota:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 81
          Top = 67
          Width = 536
          Height = 15
          AutoSize = False
          DataField = 'ALUMONOTITULO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText163: TRLDBText
          Left = 81
          Top = 85
          Width = 262
          Height = 15
          AutoSize = False
          DataField = 'ORIENTADOR'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText164: TRLDBText
          Left = 385
          Top = 85
          Width = 94
          Height = 15
          DataField = 'ALUMONONOTA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 103
        Width = 718
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
      end
    end
    object RLBand7: TRLBand
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
      object RLSystemInfo11: TRLSystemInfo
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
      object RLSystemInfo12: TRLSystemInfo
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
      object RLDraw17: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportFreq: TRLReport
    Left = 376
    Top = 332
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DSFreq
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand3: TRLBand
      Left = 39
      Top = 360
      Width = 716
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
      object RLDBText153: TRLDBText
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
    object RLBand11: TRLBand
      Left = 39
      Top = 178
      Width = 716
      Height = 64
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel3: TRLLabel
        Left = 5
        Top = 5
        Width = 339
        Height = 15
        Caption = 'Professor: _______________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 7
        Top = 45
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
      object RLLabel11: TRLLabel
        Left = 5
        Top = 22
        Width = 337
        Height = 15
        Caption = 'Disciplina: _______________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 416
        Top = 46
        Width = 40
        Height = 15
        Caption = 'Turma'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 371
        Top = 46
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
      object RLLabel6: TRLLabel
        Left = 560
        Top = 45
        Width = 65
        Height = 15
        Caption = 'Assinatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 455
        Top = 5
        Width = 203
        Height = 15
        Caption = 'Turno: _______________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel119: TRLLabel
        Left = 447
        Top = 22
        Width = 212
        Height = 15
        Caption = 'Hor'#225'rio: _______________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 39
      Top = 39
      Width = 716
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
        Width = 535
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
      object RLSystemInfo13: TRLSystemInfo
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
      object RLSystemInfo14: TRLSystemInfo
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
      object RLDraw16: TRLDraw
        Left = 0
        Top = 68
        Width = 716
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLBand4: TRLBand
      Left = 39
      Top = 242
      Width = 716
      Height = 22
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText23: TRLDBText
        Left = 67
        Top = 3
        Width = 295
        Height = 15
        AutoSize = False
        DataField = 'ALUNOME'
        DataSource = DSFreq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw4: TRLDraw
        Left = 461
        Top = -1
        Width = 4
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDBText160: TRLDBText
        Left = 3
        Top = 3
        Width = 56
        Height = 15
        AutoSize = False
        DataField = 'ALUCOD'
        DataSource = DSFreq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText161: TRLDBText
        Left = 414
        Top = 3
        Width = 71
        Height = 15
        DataField = 'CURTURMA'
        DataSource = DSFreq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText162: TRLDBText
        Left = 371
        Top = 3
        Width = 64
        Height = 15
        DataField = 'CURSIGLA'
        DataSource = DSFreq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw18: TRLDraw
        Left = 409
        Top = -1
        Width = 4
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw19: TRLDraw
        Left = 366
        Top = -1
        Width = 4
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw20: TRLDraw
        Left = 61
        Top = -1
        Width = 4
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
    end
    object RLBand2: TRLBand
      Left = 39
      Top = 112
      Width = 716
      Height = 66
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel120: TRLLabel
        Left = 5
        Top = 42
        Width = 40
        Height = 15
        Caption = 'Curso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel5BeforePrint
      end
      object MemoCursos: TRLMemo
        Left = 47
        Top = 43
        Width = 546
        Height = 15
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
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
      object RLLabel121: TRLLabel
        Left = 235
        Top = 0
        Width = 246
        Height = 24
        Align = faCenterTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Frequ'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand10: TRLBand
      Left = 39
      Top = 264
      Width = 716
      Height = 96
      BandType = btSummary
      object RLDraw25: TRLDraw
        Left = 0
        Top = 55
        Width = 716
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw24: TRLDraw
        Left = 0
        Top = 18
        Width = 716
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLLabel1: TRLLabel
        Left = 7
        Top = 77
        Width = 92
        Height = 15
        Caption = 'Total de alunos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw21: TRLDraw
        Left = 61
        Top = -1
        Width = 2
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw22: TRLDraw
        Left = 366
        Top = -1
        Width = 2
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw23: TRLDraw
        Left = 409
        Top = -1
        Width = 2
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 103
        Top = 77
        Width = 79
        Height = 16
        Info = itDetailCount
      end
      object RLDraw26: TRLDraw
        Left = 461
        Top = -1
        Width = 2
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
    end
  end
  object RLReportAluno: TRLReport
    Left = 331
    Top = 386
    Width = 794
    Height = 1123
    DataSource = DSMelhores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand21: TRLBand
      Left = 38
      Top = 188
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText44: TRLDBText
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
      object RLDBText45: TRLDBText
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
      object RLDBText46: TRLDBText
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
      object RLDBText47: TRLDBText
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
      object RLDBText48: TRLDBText
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
      object RLDBText49: TRLDBText
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
      object RLDBText152: TRLDBText
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
    object RLBand23: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel29: TRLLabel
        Left = 257
        Top = 5
        Width = 204
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Alunos'
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
    object RLBand24: TRLBand
      Left = 38
      Top = 147
      Width = 718
      Height = 21
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel30: TRLLabel
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
      object RLLabel31: TRLLabel
        Left = 294
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
      object RLLabel32: TRLLabel
        Left = 573
        Top = 1
        Width = 29
        Height = 15
        Caption = 'Nota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel33: TRLLabel
        Left = 653
        Top = 1
        Width = 66
        Height = 15
        Caption = 'Frequ'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand25: TRLBand
      Left = 38
      Top = 168
      Width = 718
      Height = 20
      object RLDBText50: TRLDBText
        Left = 5
        Top = 2
        Width = 285
        Height = 15
        AutoSize = False
        DataField = 'ALUNONOME'
        DataSource = DSMelhores
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText51: TRLDBText
        Left = 296
        Top = 2
        Width = 200
        Height = 15
        AutoSize = False
        DataField = 'CURSONOME'
        DataSource = DSMelhores
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText53: TRLDBText
        Left = 608
        Top = 2
        Width = 108
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'FREQ'
        DataSource = DSMelhores
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText52: TRLDBText
        Left = 497
        Top = 2
        Width = 108
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'NOTA'
        DataSource = DSMelhores
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand22: TRLBand
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
      object RLDBImage8: TRLDBImage
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
      object RLSystemInfo15: TRLSystemInfo
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
      object RLSystemInfo16: TRLSystemInfo
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
      object RLDraw15: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportFolhaFicha: TRLReport
    Left = 296
    Top = 422
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
    object RLBand26: TRLBand
      Left = 38
      Top = 1041
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText20: TRLDBText
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
      object RLDBImage13: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText21: TRLDBText
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
      object RLDBText32: TRLDBText
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
      object RLDBText40: TRLDBText
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
      object RLDBText150: TRLDBText
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
    object RLBand28: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel7: TRLLabel
        Left = 191
        Top = 5
        Width = 336
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Folha de Rosto - Ficha Cadastral'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo5: TRLSystemInfo
        Left = 0
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
    object RLBand29: TRLBand
      Left = 38
      Top = 147
      Width = 718
      Height = 894
      object RLDBText54: TRLDBText
        Left = 5
        Top = 4
        Width = 71
        Height = 18
        DataField = 'ALUCOD'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 2
        Top = 36
        Width = 60
        Height = 15
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText55: TRLDBText
        Left = 61
        Top = 36
        Width = 95
        Height = 15
        DataField = 'ALUENDERECO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText56: TRLDBText
        Left = 46
        Top = 54
        Width = 71
        Height = 15
        DataField = 'ALUBAIRRO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 2
        Top = 53
        Width = 41
        Height = 15
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel40: TRLLabel
        Left = 2
        Top = 138
        Width = 64
        Height = 15
        Caption = 'Comercial:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText58: TRLDBText
        Left = 65
        Top = 139
        Width = 47
        Height = 15
        DataField = 'ALUFAX'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText59: TRLDBText
        Left = 42
        Top = 156
        Width = 60
        Height = 15
        DataField = 'ALUEMAIL'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel41: TRLLabel
        Left = 3
        Top = 155
        Width = 37
        Height = 15
        Caption = 'Email:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel42: TRLLabel
        Left = 2
        Top = 87
        Width = 29
        Height = 15
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText60: TRLDBText
        Left = 33
        Top = 88
        Width = 51
        Height = 15
        DataField = 'ALUCEP'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText61: TRLDBText
        Left = 47
        Top = 71
        Width = 48
        Height = 15
        DataField = 'CIDADE'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel43: TRLLabel
        Left = 2
        Top = 70
        Width = 45
        Height = 15
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel44: TRLLabel
        Left = 2
        Top = 104
        Width = 72
        Height = 15
        Caption = 'Residencial:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText62: TRLDBText
        Left = 71
        Top = 105
        Width = 59
        Height = 15
        DataField = 'ALUFONE'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText63: TRLDBText
        Left = 50
        Top = 121
        Width = 82
        Height = 15
        DataField = 'ALUCELULAR'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel45: TRLLabel
        Left = 2
        Top = 121
        Width = 46
        Height = 15
        Caption = 'Celular:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel46: TRLLabel
        Left = 3
        Top = 172
        Width = 28
        Height = 15
        Caption = 'CPF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText64: TRLDBText
        Left = 36
        Top = 173
        Width = 50
        Height = 15
        DataField = 'ALUCPF'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel47: TRLLabel
        Left = 3
        Top = 189
        Width = 65
        Height = 15
        Caption = 'Identidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText65: TRLDBText
        Left = 72
        Top = 190
        Width = 98
        Height = 15
        DataField = 'ALUIDENTIDADE'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText66: TRLDBText
        Left = 103
        Top = 3
        Width = 82
        Height = 18
        DataField = 'ALUNOME'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText67: TRLDBText
        Left = 104
        Top = 206
        Width = 139
        Height = 15
        DataField = 'ALUORGAOEXPEDIDOR'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel48: TRLLabel
        Left = 3
        Top = 206
        Width = 101
        Height = 15
        Caption = 'Org'#227'o Expedidor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText68: TRLDBText
        Left = 98
        Top = 224
        Width = 124
        Height = 15
        DataField = 'ALUDATAEXPEDICAO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel49: TRLLabel
        Left = 3
        Top = 223
        Width = 94
        Height = 15
        Caption = 'Data Expedi'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel50: TRLLabel
        Left = 3
        Top = 240
        Width = 86
        Height = 15
        Caption = 'Nacionalidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText69: TRLDBText
        Left = 87
        Top = 241
        Width = 122
        Height = 15
        DataField = 'ALUNACIONALIDADE'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel51: TRLLabel
        Left = 3
        Top = 257
        Width = 78
        Height = 15
        Caption = 'Naturalidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText70: TRLDBText
        Left = 83
        Top = 258
        Width = 94
        Height = 15
        DataField = 'NATURALIDADE'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 3
        Top = 274
        Width = 74
        Height = 15
        Caption = 'Nascimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText71: TRLDBText
        Left = 76
        Top = 275
        Width = 104
        Height = 15
        DataField = 'ALUNASCIMENTO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 3
        Top = 291
        Width = 56
        Height = 15
        Caption = 'Situa'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText72: TRLDBText
        Left = 61
        Top = 288
        Width = 97
        Height = 16
        DataField = 'ALUSITUACAO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText73: TRLDBText
        Left = 104
        Top = 308
        Width = 139
        Height = 15
        DataField = 'ALUORGAOEXPEDIDOR'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel54: TRLLabel
        Left = 3
        Top = 308
        Width = 101
        Height = 15
        Caption = 'Org'#227'o Expedidor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText74: TRLDBText
        Left = 98
        Top = 326
        Width = 124
        Height = 15
        DataField = 'ALUDATAEXPEDICAO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel55: TRLLabel
        Left = 3
        Top = 325
        Width = 94
        Height = 15
        Caption = 'Data Expedi'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel56: TRLLabel
        Left = 3
        Top = 342
        Width = 71
        Height = 15
        Caption = 'Estado Civil:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText75: TRLDBText
        Left = 76
        Top = 342
        Width = 103
        Height = 15
        DataField = 'ALUESTADOCIVIL'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel57: TRLLabel
        Left = 3
        Top = 359
        Width = 35
        Height = 15
        Caption = 'Sexo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText76: TRLDBText
        Left = 41
        Top = 360
        Width = 58
        Height = 15
        DataField = 'ALUSEXO'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel58: TRLLabel
        Left = 3
        Top = 376
        Width = 60
        Height = 15
        Caption = 'Nome Pai:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText77: TRLDBText
        Left = 65
        Top = 377
        Width = 79
        Height = 15
        DataField = 'ALUNOMEPAI'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel59: TRLLabel
        Left = 3
        Top = 393
        Width = 66
        Height = 15
        Caption = 'Nome M'#227'e:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText78: TRLDBText
        Left = 72
        Top = 394
        Width = 85
        Height = 15
        DataField = 'ALUNOMEMAE'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel60: TRLLabel
        Left = 4
        Top = 413
        Width = 77
        Height = 15
        Caption = 'Ocorr'#234'ncias:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel61: TRLLabel
        Left = 4
        Top = 637
        Width = 103
        Height = 15
        Caption = 'Hist'#243'rico Escolar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBMemo1: TRLDBMemo
        Left = 5
        Top = 432
        Width = 705
        Height = 203
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'ALUOCORRENCIAS'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBMemo2: TRLDBMemo
        Left = 5
        Top = 654
        Width = 705
        Height = 206
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'ALUHISTESCOLAR'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBImage16: TRLDBImage
        Left = 575
        Top = 44
        Width = 137
        Height = 129
        DataField = 'ALUFOTO'
        DataSource = DSAluno
        Stretch = True
      end
    end
    object RLBand27: TRLBand
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
      object RLDBImage14: TRLDBImage
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
      object RLSystemInfo17: TRLSystemInfo
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
      object RLSystemInfo18: TRLSystemInfo
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
      object RLDraw13: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportFolhaHist: TRLReport
    Left = 274
    Top = 474
    Width = 794
    Height = 1123
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand32: TRLBand
      Left = 38
      Top = 433
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText80: TRLDBText
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
      object RLDBImage19: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText81: TRLDBText
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
      object RLDBText82: TRLDBText
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
      object RLDBText83: TRLDBText
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
      object RLDBText84: TRLDBText
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
      object RLDBText85: TRLDBText
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
      object RLDBText149: TRLDBText
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
    object RLBand33: TRLBand
      Left = 38
      Top = 147
      Width = 718
      Height = 29
      BandType = btColumnHeader
      object RLDBText79: TRLDBText
        Left = 103
        Top = 3
        Width = 82
        Height = 18
        DataField = 'ALUNOME'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText98: TRLDBText
        Left = 5
        Top = 4
        Width = 71
        Height = 18
        DataField = 'ALUCOD'
        DataSource = DSAluno
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup4: TRLGroup
      Left = 38
      Top = 176
      Width = 718
      Height = 257
      DataFields = 'ALUNO_CURSO'
      PageBreaking = pbAfterPrint
      object RLBand34: TRLBand
        Left = 0
        Top = 130
        Width = 718
        Height = 17
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand34BeforePrint
        object RLDBText86: TRLDBText
          Left = 573
          Top = 2
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISFREQUENCIA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText87: TRLDBText
          Left = 6
          Top = 2
          Width = 294
          Height = 12
          AutoSize = False
          DataField = 'DISNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText88: TRLDBText
          Left = 643
          Top = 2
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DataField = 'ALUDISNOTA'
          DataSource = DSRel
          DisplayMask = '0.0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText89: TRLDBText
          Left = 275
          Top = 2
          Width = 174
          Height = 12
          AutoSize = False
          DataField = 'PROFESSOR'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText90: TRLDBText
          Left = 450
          Top = 2
          Width = 80
          Height = 12
          AutoSize = False
          DataField = 'PRORESUMOTITULACAO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText91: TRLDBText
          Left = 533
          Top = 2
          Width = 38
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISHA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand35: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 130
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand35BeforePrint
        object RLLabel64: TRLLabel
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
          BeforePrint = RLLabel64BeforePrint
        end
        object RLLabel66: TRLLabel
          Left = 3
          Top = 18
          Width = 132
          Height = 15
          Caption = 'Per'#237'odo de Realiza'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText93: TRLDBText
          Left = 44
          Top = 3
          Width = 65
          Height = 15
          DataField = 'CURNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel67: TRLLabel
          Left = 3
          Top = 34
          Width = 230
          Height = 15
          Caption = 'Sistema de Avalia'#231#227'o de Aprendizagem:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel69: TRLLabel
          Left = 3
          Top = 50
          Width = 187
          Height = 15
          Caption = 'Crit'#233'rios M'#237'nimos de Aprova'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel70: TRLLabel
          Left = 4
          Top = 111
          Width = 58
          Height = 15
          Caption = 'Disciplina'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel71: TRLLabel
          Left = 276
          Top = 111
          Width = 126
          Height = 15
          Caption = 'Docente Respons'#225'vel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel72: TRLLabel
          Left = 450
          Top = 111
          Width = 55
          Height = 15
          Caption = 'Titula'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel73: TRLLabel
          Left = 514
          Top = 111
          Width = 65
          Height = 15
          Caption = 'Horas Aula'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel74: TRLLabel
          Left = 688
          Top = 110
          Width = 29
          Height = 15
          Caption = 'Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel75: TRLLabel
          Left = 583
          Top = 112
          Width = 66
          Height = 15
          Caption = 'Freq'#252#234'ncia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 107
          Width = 756
          Height = 3
          DrawKind = dkLine
        end
        object RLLabel77: TRLLabel
          Left = 140
          Top = 18
          Width = 64
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText96: TRLDBText
          Left = 239
          Top = 34
          Width = 143
          Height = 15
          DataField = 'CURSISTEMAAVALIACAO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText97: TRLDBText
          Left = 191
          Top = 50
          Width = 158
          Height = 15
          DataField = 'CURCRITERIOSAVALIACAO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel63: TRLLabel
          Left = 3
          Top = 82
          Width = 67
          Height = 15
          Caption = 'Orientador:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel65: TRLLabel
          Left = 3
          Top = 66
          Width = 66
          Height = 15
          Caption = 'Secret'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText92: TRLDBText
          Left = 73
          Top = 82
          Width = 99
          Height = 15
          DataField = 'COORDENADOR'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText94: TRLDBText
          Left = 71
          Top = 66
          Width = 107
          Height = 15
          DataField = 'CURSECRETARIO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand36: TRLBand
        Left = 0
        Top = 147
        Width = 718
        Height = 102
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand36BeforePrint
        object RLLabel78: TRLLabel
          Left = 644
          Top = 63
          Width = 72
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel79: TRLLabel
          Left = 572
          Top = 63
          Width = 72
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 495
          Top = 64
          Width = 78
          Height = 12
          Alignment = taRightJustify
          DataField = 'ALUDISHA'
          DataSource = DSRel
          DisplayMask = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 0
          Top = 79
          Width = 756
          Height = 2
          DrawKind = dkLine
        end
        object RLLabel83: TRLLabel
          Left = 571
          Top = 1
          Width = 72
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel84: TRLLabel
          Left = 528
          Top = 1
          Width = 44
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel87: TRLLabel
          Left = 274
          Top = 1
          Width = 174
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel88: TRLLabel
          Left = 450
          Top = 1
          Width = 77
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel89: TRLLabel
          Left = 643
          Top = 1
          Width = 72
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo2: TRLMemo
          Left = 5
          Top = 2
          Width = 268
          Height = 12
          Behavior = [beSiteExpander]
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = -1
          Top = 61
          Width = 756
          Height = 2
          DrawKind = dkLine
        end
        object lblsituacao: TRLLabel
          Left = 60
          Top = 82
          Width = 63
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel76: TRLLabel
          Left = 3
          Top = 82
          Width = 56
          Height = 15
          Caption = 'Situa'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          BeforePrint = RLLabel76BeforePrint
        end
      end
    end
    object RLBand31: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel62: TRLLabel
        Left = 184
        Top = 5
        Width = 350
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Folha de Rosto - Hist'#243'rico Escolar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo6: TRLSystemInfo
        Left = 0
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
    object RLBand30: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 73
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDBImage17: TRLDBImage
        Left = 1
        Top = 1
        Width = 181
        Height = 66
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText6: TRLDBRichText
        Left = 182
        Top = 1
        Width = 535
        Height = 66
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
      object RLSystemInfo19: TRLSystemInfo
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
      object RLSystemInfo20: TRLSystemInfo
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
      object RLDraw12: TRLDraw
        Left = 1
        Top = 67
        Width = 716
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportMesalidade: TRLReport
    Left = 254
    Top = 500
    Width = 794
    Height = 1123
    DataSource = DSMensalidade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand38: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel68: TRLLabel
        Left = 201
        Top = 5
        Width = 316
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Folha de Rosto - Mensalidades'
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
    object RLBand39: TRLBand
      Left = 38
      Top = 260
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText95: TRLDBText
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
      object RLDBImage21: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText99: TRLDBText
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
      object RLDBText100: TRLDBText
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
      object RLDBText101: TRLDBText
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
      object RLDBText102: TRLDBText
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
      object RLDBText103: TRLDBText
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
      object RLDBText148: TRLDBText
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
    object RLBand40: TRLBand
      Left = 38
      Top = 147
      Width = 718
      Height = 19
      BandType = btColumnHeader
      object RLLabel81: TRLLabel
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
      object RLLabel82: TRLLabel
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
      object RLLabel85: TRLLabel
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
      object RLLabel86: TRLLabel
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
      object RLLabel90: TRLLabel
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
      object RLLabel91: TRLLabel
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
      object RLLabel92: TRLLabel
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
      object RLLabel93: TRLLabel
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
    object RLGroup5: TRLGroup
      Left = 38
      Top = 166
      Width = 718
      Height = 94
      DataFields = 'ALUNOME'
      object RLBand41: TRLBand
        Left = 0
        Top = 20
        Width = 718
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText105: TRLDBText
          Left = 186
          Top = 2
          Width = 76
          Height = 10
          AutoSize = False
          DataField = 'MENVENCIMENTO'
          DataSource = DSMensalidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLDBText105BeforePrint
        end
        object RLDBText106: TRLDBText
          Left = 263
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALOR'
          DataSource = DSMensalidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText107: TRLDBText
          Left = 332
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENACRESCIMO'
          DataSource = DSMensalidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText108: TRLDBText
          Left = 401
          Top = 2
          Width = 62
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENDESCONTO'
          DataSource = DSMensalidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText109: TRLDBText
          Left = 504
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENLIQUIDO'
          DataSource = DSMensalidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText110: TRLDBText
          Left = 573
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENVALORPAGO'
          DataSource = DSMensalidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText111: TRLDBText
          Left = 642
          Top = 2
          Width = 76
          Height = 10
          AutoSize = False
          DataField = 'MENDATAPAGAMENTO'
          DataSource = DSMensalidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText112: TRLDBText
          Left = 464
          Top = 2
          Width = 39
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MENBOLSA'
          DataSource = DSMensalidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand42: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 20
        BandType = btHeader
        object RLLabel94: TRLLabel
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
        object RLDBText113: TRLDBText
          Left = 45
          Top = 2
          Width = 61
          Height = 15
          DataField = 'ALUNOME'
          DataSource = DSMensalidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText104: TRLDBText
          Left = 464
          Top = 2
          Width = 47
          Height = 15
          DataField = 'CURSO'
          DataSource = DSMensalidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel80: TRLLabel
          Left = 422
          Top = 1
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
      end
      object RLBand43: TRLBand
        Left = 0
        Top = 36
        Width = 718
        Height = 48
        BandType = btFooter
        object RLLabel95: TRLLabel
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
          DataSource = DSMensalidade
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
          DataSource = DSMensalidade
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
          DataSource = DSMensalidade
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
          DataSource = DSMensalidade
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
          DataSource = DSMensalidade
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
          DataSource = DSMensalidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLLabel96: TRLLabel
          Left = 3
          Top = 26
          Width = 56
          Height = 15
          Caption = 'Situa'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          BeforePrint = RLLabel76BeforePrint
        end
        object lblmensituacao: TRLLabel
          Left = 60
          Top = 27
          Width = 325
          Height = 15
          Caption = 'O(A) aluno(a) est'#225' apto(a) para a impress'#227'o do certificado.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand37: TRLBand
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
      object RLDBImage20: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText7: TRLDBRichText
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
      object RLSystemInfo21: TRLSystemInfo
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
      object RLSystemInfo22: TRLSystemInfo
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
      object RLDraw11: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportSemNotaFreq: TRLReport
    Left = 246
    Top = 526
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
    object RLBand44: TRLBand
      Left = 38
      Top = 201
      Width = 1047
      Height = 57
      BandType = btFooter
      object RLDBText114: TRLDBText
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
      object RLDBImage22: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText115: TRLDBText
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
      object RLDBText116: TRLDBText
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
      object RLDBText117: TRLDBText
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
      object RLDBText118: TRLDBText
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
      object RLDBText119: TRLDBText
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
      object RLDBText147: TRLDBText
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
    object RLBand46: TRLBand
      Left = 38
      Top = 111
      Width = 1047
      Height = 52
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel97: TRLLabel
        Left = 280
        Top = 27
        Width = 486
        Height = 24
        Align = faCenterBottom
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Alunos sem Notas e/ou Frequ'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo8: TRLSystemInfo
        Left = 8
        Top = 4
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
      Top = 163
      Width = 1047
      Height = 21
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel98: TRLLabel
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
      object RLLabel99: TRLLabel
        Left = 223
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
      object RLLabel100: TRLLabel
        Left = 901
        Top = 1
        Width = 29
        Height = 15
        Caption = 'Nota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel101: TRLLabel
        Left = 981
        Top = 1
        Width = 66
        Height = 15
        Caption = 'Frequ'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel102: TRLLabel
        Left = 407
        Top = 2
        Width = 58
        Height = 15
        Caption = 'Disciplina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel103: TRLLabel
        Left = 616
        Top = 2
        Width = 60
        Height = 15
        Caption = 'Professor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand48: TRLBand
      Left = 38
      Top = 184
      Width = 1047
      Height = 17
      object RLDBText120: TRLDBText
        Left = 5
        Top = 2
        Width = 218
        Height = 13
        AutoSize = False
        DataField = 'ALUNOME'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText121: TRLDBText
        Left = 224
        Top = 2
        Width = 184
        Height = 13
        AutoSize = False
        DataField = 'CURNOME'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText122: TRLDBText
        Left = 936
        Top = 2
        Width = 108
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ALUDISFREQUENCIA'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText123: TRLDBText
        Left = 825
        Top = 2
        Width = 108
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ALUDISNOTA'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText124: TRLDBText
        Left = 616
        Top = 2
        Width = 208
        Height = 13
        AutoSize = False
        DataField = 'PROFESSOR'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText125: TRLDBText
        Left = 409
        Top = 2
        Width = 205
        Height = 13
        AutoSize = False
        DataField = 'DISNOME'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand45: TRLBand
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
      object RLDBImage23: TRLDBImage
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
      object RLDraw10: TRLDraw
        Left = 0
        Top = 68
        Width = 1047
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportCertificado: TRLReport
    Left = 222
    Top = 556
    Width = 794
    Height = 1123
    DataSource = DSCertificado
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand50: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 38
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand8BeforePrint
      object RLLabel104: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        Align = faTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Alunos/Certificado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo9: TRLSystemInfo
        Left = 544
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
    object RLBand51: TRLBand
      Left = 38
      Top = 189
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText126: TRLDBText
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
      object RLDBImage27: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText127: TRLDBText
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
      object RLDBText128: TRLDBText
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
      object RLDBText129: TRLDBText
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
      object RLDBText130: TRLDBText
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
      object RLDBText131: TRLDBText
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
      object RLDBText146: TRLDBText
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
    object RLBand52: TRLBand
      Left = 38
      Top = 149
      Width = 718
      Height = 22
      BandType = btColumnHeader
      object RLLabel106: TRLLabel
        Left = 396
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
      object RLLabel107: TRLLabel
        Left = 5
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
      object RLLabel108: TRLLabel
        Left = 344
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
    end
    object RLBand53: TRLBand
      Left = 38
      Top = 171
      Width = 718
      Height = 18
      object RLDBText132: TRLDBText
        Left = 334
        Top = 1
        Width = 60
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'CODIGO'
        DataSource = DSCertificado
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText133: TRLDBText
        Left = 396
        Top = 1
        Width = 316
        Height = 15
        AutoSize = False
        DataField = 'NOME'
        DataSource = DSCertificado
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText134: TRLDBText
        Left = 3
        Top = 1
        Width = 329
        Height = 15
        AutoSize = False
        DataField = 'CURNOME'
        DataSource = DSCertificado
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
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
      object RLDBImage25: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText9: TRLDBRichText
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
      object RLSystemInfo25: TRLSystemInfo
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
      object RLSystemInfo26: TRLSystemInfo
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
      object RLDraw9: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportAlunoPorCurso: TRLReport
    Left = 198
    Top = 584
    Width = 794
    Height = 1123
    DataSource = DSAlunoPorCurso
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand55: TRLBand
      Left = 38
      Top = 112
      Width = 718
      Height = 37
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand8BeforePrint
      object RLLabel105: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        Align = faTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Alunos Por Turma'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo10: TRLSystemInfo
        Left = 544
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
    object RLBand56: TRLBand
      Left = 38
      Top = 207
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText8: TRLDBText
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
      object RLDBImage30: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText12: TRLDBText
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
      object RLDBText22: TRLDBText
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
      object RLDBText135: TRLDBText
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
      object RLDBText136: TRLDBText
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
      object RLDBText137: TRLDBText
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
      object RLDBText145: TRLDBText
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
    object RLBand57: TRLBand
      Left = 38
      Top = 149
      Width = 718
      Height = 22
      BandType = btColumnHeader
      object RLLabel110: TRLLabel
        Left = 5
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
      object lblano1: TRLLabel
        Left = 128
        Top = 3
        Width = 44
        Height = 15
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblano2: TRLLabel
        Left = 188
        Top = 3
        Width = 44
        Height = 15
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblano3: TRLLabel
        Left = 254
        Top = 3
        Width = 44
        Height = 15
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblano4: TRLLabel
        Left = 318
        Top = 3
        Width = 44
        Height = 15
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblano5: TRLLabel
        Left = 380
        Top = 3
        Width = 44
        Height = 15
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel109: TRLLabel
        Left = 456
        Top = 3
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
    object RLBand58: TRLBand
      Left = 38
      Top = 171
      Width = 718
      Height = 18
      object RLDBText138: TRLDBText
        Left = 110
        Top = 1
        Width = 60
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ANO1'
        DataSource = DSAlunoPorCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText140: TRLDBText
        Left = 3
        Top = 1
        Width = 102
        Height = 15
        AutoSize = False
        DataField = 'CURSO'
        DataSource = DSAlunoPorCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText139: TRLDBText
        Left = 174
        Top = 1
        Width = 60
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ANO2'
        DataSource = DSAlunoPorCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText141: TRLDBText
        Left = 302
        Top = 1
        Width = 60
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ANO4'
        DataSource = DSAlunoPorCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText142: TRLDBText
        Left = 238
        Top = 1
        Width = 60
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ANO3'
        DataSource = DSAlunoPorCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText143: TRLDBText
        Left = 365
        Top = 1
        Width = 60
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ANO5'
        DataSource = DSAlunoPorCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText144: TRLDBText
        Left = 429
        Top = 1
        Width = 60
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = DSAlunoPorCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand59: TRLBand
      Left = 38
      Top = 189
      Width = 718
      Height = 18
      BandType = btSummary
      object RLLabel111: TRLLabel
        Left = 5
        Top = 0
        Width = 73
        Height = 15
        Caption = 'Total ............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 111
        Top = 1
        Width = 58
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ANO1'
        DataSource = DSAlunoPorCurso
        DisplayMask = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 175
        Top = 1
        Width = 58
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ANO2'
        DataSource = DSAlunoPorCurso
        DisplayMask = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult10: TRLDBResult
        Left = 239
        Top = 1
        Width = 58
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ANO3'
        DataSource = DSAlunoPorCurso
        DisplayMask = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult11: TRLDBResult
        Left = 303
        Top = 1
        Width = 58
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ANO4'
        DataSource = DSAlunoPorCurso
        DisplayMask = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult12: TRLDBResult
        Left = 366
        Top = 1
        Width = 58
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ANO5'
        DataSource = DSAlunoPorCurso
        DisplayMask = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult13: TRLDBResult
        Left = 430
        Top = 0
        Width = 58
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = DSAlunoPorCurso
        DisplayMask = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
    object RLBand54: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 74
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBImage28: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 69
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText10: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
        Height = 69
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
      object RLSystemInfo27: TRLSystemInfo
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
      object RLSystemInfo28: TRLSystemInfo
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
      object RLDraw8: TRLDraw
        Left = 0
        Top = 69
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportListagem: TRLReport
    Left = 174
    Top = 617
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
      Top = 111
      Width = 718
      Height = 31
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel124: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        Align = faTop
        Alignment = taCenter
        Caption = 'Rela'#231#227'o de Alunos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo31: TRLSystemInfo
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
    object RLBand60: TRLBand
      Left = 38
      Top = 247
      Width = 718
      Height = 60
      BandType = btFooter
      object RLDBText165: TRLDBText
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
      object RLDBImage9: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 51
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText166: TRLDBText
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
      object RLDBText167: TRLDBText
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
      object RLDBText168: TRLDBText
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
      object RLDBText169: TRLDBText
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
      object RLDBText170: TRLDBText
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
      object RLDBText171: TRLDBText
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
    object RLBand64: TRLBand
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
      object RLDBImage12: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText11: TRLDBRichText
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
      object RLSystemInfo32: TRLSystemInfo
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
      object RLSystemInfo33: TRLSystemInfo
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
      object RLDraw27: TRLDraw
        Left = 0
        Top = 68
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLBand65: TRLBand
      Left = 38
      Top = 142
      Width = 718
      Height = 84
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel140: TRLLabel
        Left = 9
        Top = 64
        Width = 32
        Height = 15
        Caption = 'N'#250'm.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel142: TRLLabel
        Left = 105
        Top = 64
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
      object RLLabel143: TRLLabel
        Left = 59
        Top = 64
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
      object RLLabel125: TRLLabel
        Left = 7
        Top = 3
        Width = 63
        Height = 15
        Caption = 'Professor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel125BeforePrint
      end
      object RLLabel126: TRLLabel
        Left = 28
        Top = 21
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
      object RLLabel127: TRLLabel
        Left = 8
        Top = 39
        Width = 61
        Height = 15
        Caption = 'Disciplina:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbllistagemprofessor: TRLLabel
        Left = 71
        Top = 3
        Width = 300
        Height = 16
        AutoSize = False
        Caption = ' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbllistagemcurso: TRLLabel
        Left = 71
        Top = 21
        Width = 300
        Height = 16
        AutoSize = False
        Caption = ' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbllistagemdisciplina: TRLLabel
        Left = 71
        Top = 39
        Width = 300
        Height = 16
        AutoSize = False
        Caption = ' '
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
      Top = 226
      Width = 718
      Height = 21
      DataFields = 'ALUNO_CURSO'
      object RLBand61: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        BandType = btHeader
        object RLDBText173: TRLDBText
          Left = 106
          Top = 1
          Width = 607
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
        end
        object RLDBText180: TRLDBText
          Left = 52
          Top = 1
          Width = 52
          Height = 15
          AutoSize = False
          DataField = 'ALUCOD'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo34: TRLSystemInfo
          Left = 5
          Top = 1
          Width = 49
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Info = itRecNo
          ParentFont = False
        end
      end
      object RLBand63: TRLBand
        Left = 0
        Top = 18
        Width = 718
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
      end
    end
  end
  object RLReportDiarioClasse: TRLReport
    Left = 136
    Top = 679
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DSFreq
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand62: TRLBand
      Left = 20
      Top = 360
      Width = 754
      Height = 57
      BandType = btFooter
      object RLDBText172: TRLDBText
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
      object RLDBImage11: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = DM.DSInstituto
        Stretch = True
      end
      object RLDBText174: TRLDBText
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
      object RLDBText175: TRLDBText
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
      object RLDBText176: TRLDBText
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
      object RLDBText177: TRLDBText
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
      object RLDBText178: TRLDBText
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
      object RLDBText179: TRLDBText
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
    object RLBand66: TRLBand
      Left = 20
      Top = 178
      Width = 754
      Height = 64
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel116: TRLLabel
        Left = 5
        Top = 5
        Width = 339
        Height = 15
        Caption = 'Professor: _______________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel128: TRLLabel
        Left = 7
        Top = 45
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
      object RLLabel129: TRLLabel
        Left = 5
        Top = 22
        Width = 337
        Height = 15
        Caption = 'Disciplina: _______________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel130: TRLLabel
        Left = 368
        Top = 46
        Width = 40
        Height = 15
        Caption = 'Turma'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel131: TRLLabel
        Left = 323
        Top = 46
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
      object LblData1: TRLLabel
        Left = 418
        Top = 45
        Width = 37
        Height = 15
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel133: TRLLabel
        Left = 455
        Top = 5
        Width = 203
        Height = 15
        Caption = 'Turno: _______________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel134: TRLLabel
        Left = 447
        Top = 22
        Width = 212
        Height = 15
        Caption = 'Hor'#225'rio: _______________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblData2: TRLLabel
        Left = 459
        Top = 45
        Width = 37
        Height = 15
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblData4: TRLLabel
        Left = 543
        Top = 45
        Width = 37
        Height = 15
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblData3: TRLLabel
        Left = 501
        Top = 45
        Width = 37
        Height = 15
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblData6: TRLLabel
        Left = 627
        Top = 45
        Width = 37
        Height = 15
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblData5: TRLLabel
        Left = 585
        Top = 45
        Width = 37
        Height = 15
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel132: TRLLabel
        Left = 718
        Top = 45
        Width = 29
        Height = 15
        Caption = 'Nota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel138: TRLLabel
        Left = 671
        Top = 45
        Width = 40
        Height = 15
        Caption = '%Freq.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand67: TRLBand
      Left = 20
      Top = 39
      Width = 754
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
      object RLDBRichText12: TRLDBRichText
        Left = 181
        Top = 0
        Width = 573
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
      object RLSystemInfo35: TRLSystemInfo
        Left = 639
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
      object RLSystemInfo36: TRLSystemInfo
        Left = 691
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
      object RLDraw28: TRLDraw
        Left = 0
        Top = 68
        Width = 754
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLBand68: TRLBand
      Left = 20
      Top = 242
      Width = 754
      Height = 22
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText181: TRLDBText
        Left = 67
        Top = 3
        Width = 250
        Height = 15
        AutoSize = False
        DataField = 'ALUNOME'
        DataSource = DSFreq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw29: TRLDraw
        Left = 413
        Top = -1
        Width = 4
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDBText182: TRLDBText
        Left = 3
        Top = 3
        Width = 56
        Height = 15
        AutoSize = False
        DataField = 'ALUCOD'
        DataSource = DSFreq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLDBText182BeforePrint
      end
      object RLDBText183: TRLDBText
        Left = 366
        Top = 3
        Width = 42
        Height = 15
        AutoSize = False
        DataField = 'CURTURMA'
        DataSource = DSFreq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText184: TRLDBText
        Left = 323
        Top = 3
        Width = 36
        Height = 15
        AutoSize = False
        DataField = 'CURSIGLA'
        DataSource = DSFreq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw30: TRLDraw
        Left = 361
        Top = -1
        Width = 3
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw31: TRLDraw
        Left = 318
        Top = -1
        Width = 4
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw32: TRLDraw
        Left = 61
        Top = -1
        Width = 4
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw39: TRLDraw
        Left = 457
        Top = -1
        Width = 4
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw40: TRLDraw
        Left = 497
        Top = -1
        Width = 4
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw41: TRLDraw
        Left = 539
        Top = -1
        Width = 3
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw42: TRLDraw
        Left = 582
        Top = -1
        Width = 3
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw43: TRLDraw
        Left = 623
        Top = -1
        Width = 3
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw49: TRLDraw
        Left = 670
        Top = -1
        Width = 3
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw50: TRLDraw
        Left = 711
        Top = -1
        Width = 3
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
    end
    object RLBand69: TRLBand
      Left = 20
      Top = 112
      Width = 754
      Height = 66
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel135: TRLLabel
        Left = 5
        Top = 42
        Width = 40
        Height = 15
        Caption = 'Curso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel5BeforePrint
      end
      object RLMemo1: TRLMemo
        Left = 47
        Top = 43
        Width = 688
        Height = 15
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo37: TRLSystemInfo
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
      object RLLabel136: TRLLabel
        Left = 254
        Top = 0
        Width = 246
        Height = 24
        Align = faCenterTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Frequ'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand70: TRLBand
      Left = 20
      Top = 264
      Width = 754
      Height = 96
      BandType = btSummary
      object RLDraw33: TRLDraw
        Left = 0
        Top = 55
        Width = 754
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw34: TRLDraw
        Left = 0
        Top = 18
        Width = 754
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLLabel137: TRLLabel
        Left = 7
        Top = 77
        Width = 92
        Height = 15
        Caption = 'Total de alunos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw35: TRLDraw
        Left = 61
        Top = -1
        Width = 2
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw36: TRLDraw
        Left = 318
        Top = -1
        Width = 2
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw37: TRLDraw
        Left = 361
        Top = -1
        Width = 2
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLSystemInfo38: TRLSystemInfo
        Left = 103
        Top = 77
        Width = 79
        Height = 16
        Info = itDetailCount
      end
      object RLDraw38: TRLDraw
        Left = 413
        Top = -1
        Width = 2
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw44: TRLDraw
        Left = 457
        Top = -1
        Width = 4
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw45: TRLDraw
        Left = 497
        Top = -1
        Width = 4
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw46: TRLDraw
        Left = 539
        Top = -1
        Width = 3
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw47: TRLDraw
        Left = 582
        Top = -1
        Width = 3
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw48: TRLDraw
        Left = 623
        Top = -1
        Width = 3
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw51: TRLDraw
        Left = 670
        Top = -1
        Width = 3
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
      object RLDraw52: TRLDraw
        Left = 711
        Top = -1
        Width = 3
        Height = 76
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psClear
      end
    end
  end
  object RLReportAna: TRLReport
    Left = 326
    Top = 386
    Width = 794
    Height = 1123
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand14: TRLBand
      Left = 38
      Top = 111
      Width = 718
      Height = 12
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
    end
    object RLBand16: TRLBand
      Left = 38
      Top = 514
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
      object RLDBText151: TRLDBText
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
    object RLBand17: TRLBand
      Left = 38
      Top = 123
      Width = 718
      Height = 73
      BandType = btColumnHeader
      object RLLabel18: TRLLabel
        Left = 270
        Top = 0
        Width = 178
        Height = 24
        Align = faCenterTop
        Alignment = taCenter
        Caption = 'Hist'#243'rico Escolar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel18BeforePrint
      end
      object RLDBText37: TRLDBText
        Left = 315
        Top = 54
        Width = 88
        Height = 19
        Align = faCenterBottom
        DataField = 'CURNOME'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTipo: TRLLabel
        Left = 247
        Top = 27
        Width = 224
        Height = 19
        Align = faCenter
        Alignment = taCenter
        Caption = 'P'#243's-Gradua'#231#227'o - Lato Sensu'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup3: TRLGroup
      Left = 38
      Top = 196
      Width = 718
      Height = 318
      DataFields = 'ALUNO_CURSO'
      PageBreaking = pbAfterPrint
      object RLBand18: TRLBand
        Left = 0
        Top = 105
        Width = 718
        Height = 17
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand18BeforePrint
        object txtfreq: TRLDBText
          Left = 573
          Top = 2
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISFREQUENCIA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText33: TRLDBText
          Left = 6
          Top = 2
          Width = 268
          Height = 12
          AutoSize = False
          DataField = 'DISNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object txtnota: TRLDBText
          Left = 643
          Top = 2
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DataField = 'ALUDISNOTA'
          DataSource = DSRel
          DisplayMask = '0.0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText36: TRLDBText
          Left = 276
          Top = 2
          Width = 173
          Height = 12
          AutoSize = False
          DataField = 'PROFESSOR'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText41: TRLDBText
          Left = 450
          Top = 2
          Width = 82
          Height = 12
          AutoSize = False
          DataField = 'PRORESUMOTITULACAO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 533
          Top = 2
          Width = 38
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISHA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand19: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 105
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand19BeforePrint
        object RLLabel23: TRLLabel
          Left = 3
          Top = 18
          Width = 86
          Height = 15
          Caption = 'Nacionalidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 3
          Top = 2
          Width = 91
          Height = 15
          Caption = 'Nome do Aluno:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLLabel24BeforePrint
        end
        object RLDBText38: TRLDBText
          Left = 101
          Top = 3
          Width = 60
          Height = 15
          DataField = 'ALUNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 3
          Top = 34
          Width = 130
          Height = 15
          Caption = 'Per'#237'odo de Realiza'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText39: TRLDBText
          Left = 95
          Top = 18
          Width = 122
          Height = 15
          DataField = 'ALUNACIONALIDADE'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 3
          Top = 50
          Width = 223
          Height = 15
          Caption = 'Sistema de Avalia'#231#227'o de Aprendizagem:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 516
          Top = 18
          Width = 119
          Height = 15
          Caption = 'Data do Nascimento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 3
          Top = 66
          Width = 180
          Height = 15
          Caption = 'Crit'#233'rios M'#237'nimos de Aprova'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 4
          Top = 87
          Width = 58
          Height = 15
          Caption = 'Disciplina'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 276
          Top = 87
          Width = 125
          Height = 15
          Caption = 'Docente Respons'#225'vel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 450
          Top = 87
          Width = 53
          Height = 15
          Caption = 'Titula'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 514
          Top = 87
          Width = 64
          Height = 15
          Caption = 'Horas Aula'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 688
          Top = 86
          Width = 29
          Height = 15
          Caption = 'Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 583
          Top = 88
          Width = 65
          Height = 15
          Caption = 'Frequ'#234'ncia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 283
          Top = 18
          Width = 77
          Height = 15
          Caption = 'Naturalidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 83
          Width = 756
          Height = 2
          DrawKind = dkLine
        end
        object RLDBText26: TRLDBText
          Left = 368
          Top = 18
          Width = 59
          Height = 15
          DataField = 'CIDNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText42: TRLDBText
          Left = 638
          Top = 18
          Width = 104
          Height = 15
          DataField = 'ALUNASCIMENTO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbldatacurso: TRLLabel
          Left = 136
          Top = 34
          Width = 71
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText43: TRLDBText
          Left = 235
          Top = 50
          Width = 143
          Height = 15
          DataField = 'CURSISTEMAAVALIACAO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText57: TRLDBText
          Left = 187
          Top = 66
          Width = 158
          Height = 15
          DataField = 'CURCRITERIOSAVALIACAO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand20: TRLBand
        Left = 0
        Top = 122
        Width = 718
        Height = 186
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand20BeforePrint
        object lblnota: TRLLabel
          Left = 644
          Top = 63
          Width = 72
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblfreq: TRLLabel
          Left = 572
          Top = 63
          Width = 72
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 495
          Top = 64
          Width = 78
          Height = 12
          Alignment = taRightJustify
          DataField = 'ALUDISHA'
          DataSource = DSRel
          DisplayMask = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 79
          Width = 756
          Height = 2
          DrawKind = dkLine
        end
        object lbldeclara: TRLMemo
          Left = 2
          Top = 81
          Width = 751
          Height = 15
          Behavior = [beSiteExpander]
          BeforePrint = lbldeclaraBeforePrint
        end
        object lblcidadedata: TRLLabel
          Left = 345
          Top = 111
          Width = 66
          Height = 14
          Alignment = taCenter
        end
        object RLLabel34: TRLLabel
          Left = 355
          Top = 156
          Width = 59
          Height = 15
          Caption = 'Secretaria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 571
          Top = 148
          Width = 76
          Height = 15
          Caption = 'Coordenador'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object RLLabel26: TRLLabel
          Left = 571
          Top = 1
          Width = 72
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 528
          Top = 1
          Width = 44
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblsecretario: TRLLabel
          Left = 345
          Top = 141
          Width = 72
          Height = 15
          Alignment = taCenter
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblcoordenador: TRLLabel
          Left = 560
          Top = 133
          Width = 86
          Height = 15
          Alignment = taCenter
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblorientador: TRLLabel
          Left = 274
          Top = 1
          Width = 174
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblorientadortitulacao: TRLLabel
          Left = 450
          Top = 1
          Width = 77
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblmononota: TRLLabel
          Left = 643
          Top = 1
          Width = 72
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblmonografia: TRLMemo
          Left = 5
          Top = 2
          Width = 268
          Height = 12
          Behavior = [beSiteExpander]
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = lbldeclaraBeforePrint
        end
        object RLDraw3: TRLDraw
          Left = -1
          Top = 61
          Width = 756
          Height = 2
          DrawKind = dkLine
        end
      end
    end
    object RLBand12: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 73
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object RLDBImage5: TRLDBImage
        Left = 1
        Top = 1
        Width = 181
        Height = 67
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = DM.DSInstituto
      end
      object RLDBRichText3: TRLDBRichText
        Left = 182
        Top = 1
        Width = 535
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
      object RLSystemInfo29: TRLSystemInfo
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
      object RLSystemInfo30: TRLSystemInfo
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
      object RLDraw14: TRLDraw
        Left = 1
        Top = 68
        Width = 716
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportAna1: TRLReport
    Left = 288
    Top = 411
    Width = 794
    Height = 1123
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLGroup6: TRLGroup
      Left = 38
      Top = 38
      Width = 718
      Height = 493
      DataFields = 'ALUNO_CURSO'
      object RLBand74: TRLBand
        Left = 0
        Top = 215
        Width = 718
        Height = 17
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand74BeforePrint
        object RLDBText194: TRLDBText
          Left = 6
          Top = 2
          Width = 279
          Height = 12
          AutoSize = False
          DataField = 'DISNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText197: TRLDBText
          Left = 288
          Top = 2
          Width = 44
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISNOTA1'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText201: TRLDBText
          Left = 333
          Top = 2
          Width = 44
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISFREQUENCIA1'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText204: TRLDBText
          Left = 378
          Top = 2
          Width = 44
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISNOTA2'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText205: TRLDBText
          Left = 423
          Top = 2
          Width = 44
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISFREQUENCIA2'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText198: TRLDBText
          Left = 468
          Top = 2
          Width = 44
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISNOTA3'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText206: TRLDBText
          Left = 513
          Top = 2
          Width = 44
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISFREQUENCIA3'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText193: TRLDBText
          Left = 603
          Top = 2
          Width = 44
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISNOTA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText195: TRLDBText
          Left = 558
          Top = 2
          Width = 44
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISNOTA4'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText207: TRLDBText
          Left = 648
          Top = 2
          Width = 44
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALUDISFREQUENCIA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText208: TRLDBText
          Left = 693
          Top = 1
          Width = 44
          Height = 12
          AutoSize = False
          DataField = 'ALUDISSITUACAO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand75: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 215
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand75BeforePrint
        object RLLabel141: TRLLabel
          Left = 3
          Top = 108
          Width = 40
          Height = 15
          Caption = 'Curso:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel144: TRLLabel
          Left = 3
          Top = 92
          Width = 91
          Height = 15
          Caption = 'Nome do Aluno:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLLabel144BeforePrint
        end
        object RLDBText199: TRLDBText
          Left = 99
          Top = 93
          Width = 60
          Height = 15
          DataField = 'ALUNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel145: TRLLabel
          Left = 3
          Top = 124
          Width = 59
          Height = 15
          Caption = 'Ano/S'#233'rie:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText200: TRLDBText
          Left = 99
          Top = 108
          Width = 122
          Height = 15
          DataField = 'ALUNACIONALIDADE'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel146: TRLLabel
          Left = 3
          Top = 140
          Width = 42
          Height = 15
          Caption = 'Turma:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel147: TRLLabel
          Left = 516
          Top = 92
          Width = 119
          Height = 15
          Caption = 'Data do Nascimento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel148: TRLLabel
          Left = 3
          Top = 156
          Width = 27
          Height = 15
          Caption = 'Ano:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel149: TRLLabel
          Left = 4
          Top = 175
          Width = 87
          Height = 15
          Caption = #193'rea de Estudo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel151: TRLLabel
          Left = 338
          Top = 175
          Width = 45
          Height = 15
          Caption = '1'#186' Trim.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel152: TRLLabel
          Left = 426
          Top = 175
          Width = 45
          Height = 15
          Caption = '2'#186' Trim.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel153: TRLLabel
          Left = 600
          Top = 174
          Width = 90
          Height = 15
          Caption = 'Resultado Final'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel154: TRLLabel
          Left = 495
          Top = 176
          Width = 45
          Height = 15
          Caption = '3'#186' Trim.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw53: TRLDraw
          Left = 0
          Top = 171
          Width = 756
          Height = 2
          DrawKind = dkLine
        end
        object RLDBText202: TRLDBText
          Left = 638
          Top = 92
          Width = 104
          Height = 15
          DataField = 'ALUNASCIMENTO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel156: TRLLabel
          Left = 99
          Top = 156
          Width = 71
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText203: TRLDBText
          Left = 99
          Top = 124
          Width = 71
          Height = 15
          DataField = 'CURTURMA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText185: TRLDBText
          Left = 99
          Top = 140
          Width = 98
          Height = 15
          DataField = 'CURNUMTURMA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel150: TRLLabel
          Left = 306
          Top = 194
          Width = 29
          Height = 15
          Caption = 'Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel155: TRLLabel
          Left = 346
          Top = 194
          Width = 31
          Height = 15
          Caption = 'Freq.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel157: TRLLabel
          Left = 394
          Top = 194
          Width = 29
          Height = 15
          Caption = 'Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel158: TRLLabel
          Left = 434
          Top = 194
          Width = 31
          Height = 15
          Caption = 'Freq.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel162: TRLLabel
          Left = 482
          Top = 194
          Width = 29
          Height = 15
          Caption = 'Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel163: TRLLabel
          Left = 523
          Top = 194
          Width = 31
          Height = 15
          Caption = 'Freq.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel166_: TRLLabel
          Left = 562
          Top = 194
          Width = 41
          Height = 15
          Caption = 'Prov'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel167: TRLLabel
          Left = 659
          Top = 194
          Width = 31
          Height = 15
          Caption = 'Freq.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel168: TRLLabel
          Left = 694
          Top = 194
          Width = 19
          Height = 15
          Caption = 'RF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel169: TRLLabel
          Left = 614
          Top = 194
          Width = 29
          Height = 15
          Caption = 'Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBImage24: TRLDBImage
          Left = 1
          Top = 1
          Width = 181
          Height = 71
          DataField = 'INSFIGURA'
          DataSource = DM.DSInstituto
        end
        object RLDBRichText13: TRLDBRichText
          Left = 185
          Top = 1
          Width = 526
          Height = 71
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
        object RLLabel12: TRLLabel
          Left = 270
          Top = 72
          Width = 178
          Height = 24
          Alignment = taCenter
          Caption = 'Hist'#243'rico Escolar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand76: TRLBand
        Left = 0
        Top = 232
        Width = 718
        Height = 104
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand76BeforePrint
        object RLLabel159: TRLLabel
          Left = 345
          Top = 6
          Width = 66
          Height = 14
          Alignment = taCenter
        end
        object RLLabel160: TRLLabel
          Left = 118
          Top = 75
          Width = 60
          Height = 15
          Alignment = taCenter
          Caption = 'Secretaria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel161: TRLLabel
          Left = 568
          Top = 75
          Width = 76
          Height = 15
          Alignment = taCenter
          Caption = 'Coordenador'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel164: TRLLabel
          Left = 113
          Top = 60
          Width = 72
          Height = 15
          Alignment = taCenter
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel165: TRLLabel
          Left = 567
          Top = 60
          Width = 72
          Height = 15
          Alignment = taCenter
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel139: TRLLabel
          Left = 326
          Top = 75
          Width = 58
          Height = 15
          Alignment = taCenter
          Caption = 'Professor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblBolProfessor: TRLLabel
          Left = 311
          Top = 60
          Width = 88
          Height = 15
          Alignment = taCenter
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object QRel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select (ALUCOD||'#39'-'#39'||ALUCURSO) as ALUNO_CURSO,'
      
        '(ALUCURSO||'#39'-'#39'||TBPROFESSOR.PRONOME||'#39'-'#39'||DISCOD) as CURSO_PROFE' +
        'SSOR_DISCIPLINA,'
      
        'ALUNOME, CURNOME, TBORIENTADOR.PRONOME as ORIENTADOR, TBORIENTAD' +
        'OR.PRORESUMOTITULACAO as ORIENTADORTITULACAO, ALUCARTEIRINHA,ALU' +
        'CRACHA,'
      
        'ALUCERTIFICADO, DISNOME, TBPROFESSOR.PRONOME AS PROFESSOR, ALUDI' +
        'SNOTA,'
      
        'ALUDISFREQUENCIA, TBPROFESSOR.PRORESUMOTITULACAO, CURVALOR, ALUC' +
        'OD,ALUCURSO, CIDNOME,'
      
        'ALUNACIONALIDADE, ALUNASCIMENTO, ALUCURSOINICIO, ALUCURSOFIM, CU' +
        'RSISTEMAAVALIACAO, CURCRITERIOSAVALIACAO,'
      
        'CURSECRETARIO, TBCOORDENADOR.PRONOME AS COORDENADOR, ALUDISHA, A' +
        'LUMONOTITULO, ALUMONONOTA, ALUMONODATA,'
      'CAST(0.00 AS DOUBLE PRECISION) as MEDIANOTA,'
      'CAST(0.00 AS DOUBLE PRECISION) as MEDIAFREQ,'
      'ALUIDENTIDADE, ALUORGAOEXPEDIDOR, ALUCPF, ALUFOTO,'
      
        'ALUDISSITUACAO, ALUDISNOTA1, ALUDISNOTA2, ALUDISNOTA3, ALUDISNOT' +
        'A4, ALUDISFREQUENCIA1, ALUDISFREQUENCIA2, ALUDISFREQUENCIA3, ALU' +
        'DISFREQUENCIA4'
      'CURTIPO, CURTURMA, CURNUMTURMA, CURTIPO'
      'from'
      'TALUNO'
      
        '   left outer join TPROFESSOR TBORIENTADOR on TBORIENTADOR.PROCO' +
        'D = ALUORIENTADOR'
      '   inner join TCIDADE on CIDCOD = ALUNATURALIDADE,'
      'TALUNODISCIPLINA'
      '   inner join TDISCIPLINA on DISCOD = ALUDISDISCIPLINA'
      
        '   inner join TPROFESSOR TBPROFESSOR on TBPROFESSOR.PROCOD = ALU' +
        'DISPROFESSOR,'
      'TCURSO'
      
        '   inner join TPROFESSOR TBCOORDENADOR on TBCOORDENADOR.PROCOD =' +
        ' CURCOORDENADOR'
      'where ALUCOD = ALUDISALUNO')
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 16
    object QRelALUNO_CURSO: TStringField
      FieldName = 'ALUNO_CURSO'
      Size = 23
    end
    object QRelCURSO_PROFESSOR_DISCIPLINA: TStringField
      FieldName = 'CURSO_PROFESSOR_DISCIPLINA'
      Size = 124
    end
    object QRelALUNOME: TStringField
      FieldName = 'ALUNOME'
      Size = 100
    end
    object QRelCURNOME: TStringField
      FieldName = 'CURNOME'
      Size = 50
    end
    object QRelORIENTADOR: TStringField
      FieldName = 'ORIENTADOR'
      Size = 100
    end
    object QRelALUCARTEIRINHA: TStringField
      FieldName = 'ALUCARTEIRINHA'
      Size = 1
    end
    object QRelALUCRACHA: TStringField
      FieldName = 'ALUCRACHA'
      Size = 1
    end
    object QRelALUCERTIFICADO: TStringField
      FieldName = 'ALUCERTIFICADO'
      Size = 1
    end
    object curti: TStringField
      FieldName = 'DISNOME'
      Size = 100
    end
    object QRelPROFESSOR: TStringField
      FieldName = 'PROFESSOR'
      Size = 100
    end
    object QRelALUDISNOTA: TFloatField
      FieldName = 'ALUDISNOTA'
    end
    object QRelALUDISFREQUENCIA: TFloatField
      FieldName = 'ALUDISFREQUENCIA'
    end
    object QRelPRORESUMOTITULACAO: TStringField
      FieldName = 'PRORESUMOTITULACAO'
      Size = 50
    end
    object QRelCURVALOR: TFloatField
      FieldName = 'CURVALOR'
    end
    object QRelALUCOD: TIntegerField
      FieldName = 'ALUCOD'
      Required = True
    end
    object QRelALUCURSO: TIntegerField
      FieldName = 'ALUCURSO'
    end
    object QRelALUMONOTITULO: TStringField
      FieldName = 'ALUMONOTITULO'
      Size = 200
    end
    object QRelALUMONONOTA: TFloatField
      FieldName = 'ALUMONONOTA'
    end
    object QRelALUMONODATA: TDateField
      FieldName = 'ALUMONODATA'
    end
    object QRelMEDIANOTA: TFloatField
      FieldName = 'MEDIANOTA'
    end
    object QRelMEDIAFREQ: TFloatField
      FieldName = 'MEDIAFREQ'
    end
    object QRelCIDNOME: TStringField
      FieldName = 'CIDNOME'
      Size = 100
    end
    object QRelALUNASCIMENTO: TDateField
      FieldName = 'ALUNASCIMENTO'
    end
    object QRelALUNACIONALIDADE: TStringField
      FieldName = 'ALUNACIONALIDADE'
      Size = 50
    end
    object QRelALUCURSOINICIO: TDateField
      FieldName = 'ALUCURSOINICIO'
    end
    object QRelALUCURSOFIM: TDateField
      FieldName = 'ALUCURSOFIM'
    end
    object QRelCURSISTEMAAVALIACAO: TStringField
      FieldName = 'CURSISTEMAAVALIACAO'
      Size = 100
    end
    object QRelCURCRITERIOSAVALIACAO: TStringField
      FieldName = 'CURCRITERIOSAVALIACAO'
      Size = 100
    end
    object QRelCURSECRETARIO: TStringField
      FieldName = 'CURSECRETARIO'
      Size = 50
    end
    object QRelCOORDENADOR: TStringField
      FieldName = 'COORDENADOR'
      Size = 100
    end
    object QRelORIENTADORTITULACAO: TStringField
      FieldName = 'ORIENTADORTITULACAO'
      Size = 50
    end
    object QRelALUDISHA: TIntegerField
      FieldName = 'ALUDISHA'
    end
    object QRelALUIDENTIDADE: TStringField
      FieldName = 'ALUIDENTIDADE'
      Size = 30
    end
    object QRelALUORGAOEXPEDIDOR: TStringField
      FieldName = 'ALUORGAOEXPEDIDOR'
      Size = 10
    end
    object QRelALUCPF: TStringField
      FieldName = 'ALUCPF'
      Size = 25
    end
    object QRelALUFOTO: TBlobField
      FieldName = 'ALUFOTO'
      Size = 1
    end
    object QRelALUDISSITUACAO: TStringField
      FieldName = 'ALUDISSITUACAO'
      Size = 1
    end
    object QRelALUDISNOTA1: TFloatField
      FieldName = 'ALUDISNOTA1'
    end
    object QRelALUDISNOTA2: TFloatField
      FieldName = 'ALUDISNOTA2'
    end
    object QRelALUDISNOTA3: TFloatField
      FieldName = 'ALUDISNOTA3'
    end
    object QRelALUDISNOTA4: TFloatField
      FieldName = 'ALUDISNOTA4'
    end
    object QRelALUDISFREQUENCIA1: TFloatField
      FieldName = 'ALUDISFREQUENCIA1'
    end
    object QRelALUDISFREQUENCIA2: TFloatField
      FieldName = 'ALUDISFREQUENCIA2'
    end
    object QRelALUDISFREQUENCIA3: TFloatField
      FieldName = 'ALUDISFREQUENCIA3'
    end
    object QRelCURTURMA: TStringField
      FieldName = 'CURTURMA'
      Size = 10
    end
    object QRelCURNUMTURMA: TIntegerField
      FieldName = 'CURNUMTURMA'
    end
    object QRelCURTIPO: TStringField
      FieldName = 'CURTIPO'
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
    Top = 16
    object CDSRelALUNO_CURSO: TStringField
      FieldName = 'ALUNO_CURSO'
      Size = 23
    end
    object CDSRelCURSO_PROFESSOR_DISCIPLINA: TStringField
      FieldName = 'CURSO_PROFESSOR_DISCIPLINA'
      Size = 124
    end
    object CDSRelALUNOME: TStringField
      FieldName = 'ALUNOME'
      Size = 100
    end
    object CDSRelCURNOME: TStringField
      FieldName = 'CURNOME'
      Size = 50
    end
    object CDSRelORIENTADOR: TStringField
      FieldName = 'ORIENTADOR'
      Size = 100
    end
    object CDSRelALUCARTEIRINHA: TStringField
      FieldName = 'ALUCARTEIRINHA'
      Size = 1
    end
    object CDSRelALUCRACHA: TStringField
      FieldName = 'ALUCRACHA'
      Size = 1
    end
    object CDSRelALUCERTIFICADO: TStringField
      FieldName = 'ALUCERTIFICADO'
      Size = 1
    end
    object CDSRelDISNOME: TStringField
      FieldName = 'DISNOME'
      Size = 100
    end
    object CDSRelPROFESSOR: TStringField
      FieldName = 'PROFESSOR'
      Size = 100
    end
    object CDSRelALUDISNOTA: TFloatField
      FieldName = 'ALUDISNOTA'
      DisplayFormat = '0.0'
    end
    object CDSRelALUDISFREQUENCIA: TFloatField
      FieldName = 'ALUDISFREQUENCIA'
    end
    object CDSRelPRORESUMOTITULACAO: TStringField
      FieldName = 'PRORESUMOTITULACAO'
      Size = 50
    end
    object CDSRelCURVALOR: TFloatField
      FieldName = 'CURVALOR'
    end
    object CDSRelALUCOD: TIntegerField
      FieldName = 'ALUCOD'
      Required = True
    end
    object CDSRelALUCURSO: TIntegerField
      FieldName = 'ALUCURSO'
    end
    object CDSRelALUMONOTITULO: TStringField
      FieldName = 'ALUMONOTITULO'
      Size = 200
    end
    object CDSRelALUMONONOTA: TFloatField
      FieldName = 'ALUMONONOTA'
    end
    object CDSRelALUMONODATA: TDateField
      FieldName = 'ALUMONODATA'
    end
    object CDSRelMEDIANOTA: TFloatField
      FieldName = 'MEDIANOTA'
      DisplayFormat = '0.00'
    end
    object CDSRelMEDIAFREQ: TFloatField
      FieldName = 'MEDIAFREQ'
      DisplayFormat = '0.00'
    end
    object CDSRelCIDNOME: TStringField
      FieldName = 'CIDNOME'
      Size = 100
    end
    object CDSRelALUNASCIMENTO: TDateField
      FieldName = 'ALUNASCIMENTO'
    end
    object CDSRelALUDISHA: TIntegerField
      FieldName = 'ALUDISHA'
    end
    object CDSRelALUNACIONALIDADE: TStringField
      FieldName = 'ALUNACIONALIDADE'
      Size = 50
    end
    object CDSRelALUCURSOINICIO: TDateField
      FieldName = 'ALUCURSOINICIO'
    end
    object CDSRelALUCURSOFIM: TDateField
      FieldName = 'ALUCURSOFIM'
    end
    object CDSRelCURSISTEMAAVALIACAO: TStringField
      FieldName = 'CURSISTEMAAVALIACAO'
      Size = 100
    end
    object CDSRelCURCRITERIOSAVALIACAO: TStringField
      FieldName = 'CURCRITERIOSAVALIACAO'
      Size = 100
    end
    object CDSRelCURSECRETARIO: TStringField
      FieldName = 'CURSECRETARIO'
      Size = 50
    end
    object CDSRelCOORDENADOR: TStringField
      FieldName = 'COORDENADOR'
      Size = 100
    end
    object CDSRelORIENTADORTITULACAO: TStringField
      FieldName = 'ORIENTADORTITULACAO'
      Size = 50
    end
    object CDSRelALUIDENTIDADE: TStringField
      FieldName = 'ALUIDENTIDADE'
      Size = 30
    end
    object CDSRelALUORGAOEXPEDIDOR: TStringField
      FieldName = 'ALUORGAOEXPEDIDOR'
      Size = 10
    end
    object CDSRelALUCPF: TStringField
      FieldName = 'ALUCPF'
      Size = 25
    end
    object CDSRelALUFOTO: TBlobField
      FieldName = 'ALUFOTO'
      Size = 1
    end
    object CDSRelALUDISSITUACAO: TStringField
      FieldName = 'ALUDISSITUACAO'
      Size = 1
    end
    object CDSRelALUDISNOTA1: TFloatField
      FieldName = 'ALUDISNOTA1'
    end
    object CDSRelALUDISNOTA2: TFloatField
      FieldName = 'ALUDISNOTA2'
    end
    object CDSRelALUDISNOTA3: TFloatField
      FieldName = 'ALUDISNOTA3'
    end
    object CDSRelALUDISNOTA4: TFloatField
      FieldName = 'ALUDISNOTA4'
    end
    object CDSRelALUDISFREQUENCIA1: TFloatField
      FieldName = 'ALUDISFREQUENCIA1'
    end
    object CDSRelALUDISFREQUENCIA2: TFloatField
      FieldName = 'ALUDISFREQUENCIA2'
    end
    object CDSRelALUDISFREQUENCIA3: TFloatField
      FieldName = 'ALUDISFREQUENCIA3'
    end
    object CDSRelCURTURMA: TStringField
      FieldName = 'CURTURMA'
      Size = 10
    end
    object CDSRelCURNUMTURMA: TIntegerField
      FieldName = 'CURNUMTURMA'
    end
    object CDSRelCURTIPO: TStringField
      FieldName = 'CURTIPO'
    end
  end
  object DSRel: TDataSource
    DataSet = CDSRel
    Left = 120
    Top = 14
  end
  object DSMelhores: TDataSource
    DataSet = CDSMelhores
    Left = 272
    Top = 14
  end
  object CDSMelhores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMelhores'
    Left = 240
    Top = 16
    object CDSMelhoresALUNONOME: TStringField
      FieldName = 'ALUNONOME'
      Size = 100
    end
    object CDSMelhoresCURSONOME: TStringField
      FieldName = 'CURSONOME'
      Size = 50
    end
    object CDSMelhoresNOTA: TFloatField
      FieldName = 'NOTA'
      DisplayFormat = '0.00'
    end
    object CDSMelhoresFREQ: TFloatField
      FieldName = 'FREQ'
      DisplayFormat = '0.00'
    end
  end
  object DSPMelhores: TDataSetProvider
    DataSet = QMelhores
    Left = 208
    Top = 14
  end
  object QMelhores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ALUNONOME, CURSONOME, NOTA, FREQ FROM VALUNO_CURSO_MEDIAS')
    SQLConnection = DM.SQLConnection
    Left = 176
    Top = 14
    object QMelhoresALUNONOME: TStringField
      FieldName = 'ALUNONOME'
      Size = 100
    end
    object QMelhoresCURSONOME: TStringField
      FieldName = 'CURSONOME'
      Size = 50
    end
    object QMelhoresNOTA: TFloatField
      FieldName = 'NOTA'
    end
    object QMelhoresFREQ: TFloatField
      FieldName = 'FREQ'
    end
  end
  object CDSAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPAluno'
    Left = 584
    Top = 48
    object CDSAlunoALUCOD: TIntegerField
      FieldName = 'ALUCOD'
      Required = True
    end
    object CDSAlunoALUNOME: TStringField
      FieldName = 'ALUNOME'
      Size = 100
    end
    object CDSAlunoALUENDERECO: TStringField
      FieldName = 'ALUENDERECO'
      Size = 100
    end
    object CDSAlunoALUBAIRRO: TStringField
      FieldName = 'ALUBAIRRO'
      Size = 50
    end
    object CDSAlunoALUCIDADE: TIntegerField
      FieldName = 'ALUCIDADE'
    end
    object CDSAlunoALUCEP: TStringField
      FieldName = 'ALUCEP'
      Size = 10
    end
    object CDSAlunoALUFONE: TStringField
      FieldName = 'ALUFONE'
      Size = 15
    end
    object CDSAlunoALUFAX: TStringField
      FieldName = 'ALUFAX'
      Size = 15
    end
    object CDSAlunoALUCELULAR: TStringField
      FieldName = 'ALUCELULAR'
      Size = 15
    end
    object CDSAlunoALUEMAIL: TStringField
      FieldName = 'ALUEMAIL'
      Size = 100
    end
    object CDSAlunoALUCPF: TStringField
      FieldName = 'ALUCPF'
      Size = 25
    end
    object CDSAlunoALUIDENTIDADE: TStringField
      FieldName = 'ALUIDENTIDADE'
      Size = 30
    end
    object CDSAlunoALUORGAOEXPEDIDOR: TStringField
      FieldName = 'ALUORGAOEXPEDIDOR'
      Size = 10
    end
    object CDSAlunoALUDATAEXPEDICAO: TDateField
      FieldName = 'ALUDATAEXPEDICAO'
    end
    object CDSAlunoALUCARTEIRA: TStringField
      FieldName = 'ALUCARTEIRA'
      Size = 1
    end
    object CDSAlunoALUFOTO: TBlobField
      FieldName = 'ALUFOTO'
      Size = 1
    end
    object CDSAlunoALUOCORRENCIAS: TMemoField
      FieldName = 'ALUOCORRENCIAS'
      BlobType = ftMemo
      Size = 1
    end
    object CDSAlunoALUHISTESCOLAR: TMemoField
      FieldName = 'ALUHISTESCOLAR'
      BlobType = ftMemo
      Size = 1
    end
    object CDSAlunoALUNACIONALIDADE: TStringField
      FieldName = 'ALUNACIONALIDADE'
      Size = 50
    end
    object CDSAlunoALUNASCIMENTO: TDateField
      FieldName = 'ALUNASCIMENTO'
    end
    object CDSAlunoALUNATURALIDADE: TIntegerField
      FieldName = 'ALUNATURALIDADE'
    end
    object CDSAlunoALUSITUACAO: TStringField
      FieldName = 'ALUSITUACAO'
      Size = 50
    end
    object CDSAlunoALUESTADOCIVIL: TStringField
      FieldName = 'ALUESTADOCIVIL'
      Size = 50
    end
    object CDSAlunoALUSEXO: TStringField
      FieldName = 'ALUSEXO'
      Size = 10
    end
    object CDSAlunoALUNOMEMAE: TStringField
      FieldName = 'ALUNOMEMAE'
      Size = 50
    end
    object CDSAlunoALUNOMEPAI: TStringField
      FieldName = 'ALUNOMEPAI'
      Size = 50
    end
    object CDSAlunoALUMIDIA: TStringField
      FieldName = 'ALUMIDIA'
      Size = 50
    end
    object CDSAlunoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object CDSAlunoNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 100
    end
  end
  object DSPAluno: TDataSetProvider
    DataSet = QAluno
    Left = 552
    Top = 46
  end
  object QAluno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select ALUCOD,ALUNOME,ALUENDERECO,ALUBAIRRO,ALUCIDADE,ALUCEP,ALU' +
        'FONE,ALUFAX,ALUCELULAR,'
      
        'ALUEMAIL,ALUCPF,ALUIDENTIDADE,ALUORGAOEXPEDIDOR,ALUDATAEXPEDICAO' +
        ','
      'ALUCARTEIRA,ALUFOTO,ALUOCORRENCIAS,ALUHISTESCOLAR,'
      'ALUNACIONALIDADE, ALUNASCIMENTO, ALUNATURALIDADE,'
      'ALUSITUACAO, ALUESTADOCIVIL,'
      
        'ALUSEXO, ALUNOMEMAE, ALUNOMEPAI, ALUMIDIA, TBCIDADE.CIDNOME AS C' +
        'IDADE,'
      'TBNATURAL.CIDNOME AS NATURALIDADE'
      'from TALUNO'
      'INNER JOIN TCIDADE TBCIDADE ON ALUCIDADE = TBCIDADE.CIDCOD'
      
        'INNER JOIN TCIDADE TBNATURAL ON ALUNATURALIDADE = TBNATURAL.CIDC' +
        'OD'
      'WHERE ALUCOD > 0')
    SQLConnection = DM.SQLConnection
    Left = 520
    Top = 46
    object QAlunoALUCOD: TIntegerField
      FieldName = 'ALUCOD'
      Required = True
    end
    object QAlunoALUNOME: TStringField
      FieldName = 'ALUNOME'
      Size = 100
    end
    object QAlunoALUENDERECO: TStringField
      FieldName = 'ALUENDERECO'
      Size = 100
    end
    object QAlunoALUBAIRRO: TStringField
      FieldName = 'ALUBAIRRO'
      Size = 50
    end
    object QAlunoALUCIDADE: TIntegerField
      FieldName = 'ALUCIDADE'
    end
    object QAlunoALUCEP: TStringField
      FieldName = 'ALUCEP'
      Size = 10
    end
    object QAlunoALUFONE: TStringField
      FieldName = 'ALUFONE'
      Size = 15
    end
    object QAlunoALUFAX: TStringField
      FieldName = 'ALUFAX'
      Size = 15
    end
    object QAlunoALUCELULAR: TStringField
      FieldName = 'ALUCELULAR'
      Size = 15
    end
    object QAlunoALUEMAIL: TStringField
      FieldName = 'ALUEMAIL'
      Size = 100
    end
    object QAlunoALUCPF: TStringField
      FieldName = 'ALUCPF'
      Size = 25
    end
    object QAlunoALUIDENTIDADE: TStringField
      FieldName = 'ALUIDENTIDADE'
      Size = 30
    end
    object QAlunoALUORGAOEXPEDIDOR: TStringField
      FieldName = 'ALUORGAOEXPEDIDOR'
      Size = 10
    end
    object QAlunoALUDATAEXPEDICAO: TDateField
      FieldName = 'ALUDATAEXPEDICAO'
    end
    object QAlunoALUCARTEIRA: TStringField
      FieldName = 'ALUCARTEIRA'
      Size = 1
    end
    object QAlunoALUFOTO: TBlobField
      FieldName = 'ALUFOTO'
      Size = 1
    end
    object QAlunoALUOCORRENCIAS: TMemoField
      FieldName = 'ALUOCORRENCIAS'
      BlobType = ftMemo
      Size = 1
    end
    object QAlunoALUHISTESCOLAR: TMemoField
      FieldName = 'ALUHISTESCOLAR'
      BlobType = ftMemo
      Size = 1
    end
    object QAlunoALUNACIONALIDADE: TStringField
      FieldName = 'ALUNACIONALIDADE'
      Size = 50
    end
    object QAlunoALUNASCIMENTO: TDateField
      FieldName = 'ALUNASCIMENTO'
    end
    object QAlunoALUNATURALIDADE: TIntegerField
      FieldName = 'ALUNATURALIDADE'
    end
    object QAlunoALUSITUACAO: TStringField
      FieldName = 'ALUSITUACAO'
      Size = 50
    end
    object QAlunoALUESTADOCIVIL: TStringField
      FieldName = 'ALUESTADOCIVIL'
      Size = 50
    end
    object QAlunoALUSEXO: TStringField
      FieldName = 'ALUSEXO'
      Size = 10
    end
    object QAlunoALUNOMEMAE: TStringField
      FieldName = 'ALUNOMEMAE'
      Size = 50
    end
    object QAlunoALUNOMEPAI: TStringField
      FieldName = 'ALUNOMEPAI'
      Size = 50
    end
    object QAlunoALUMIDIA: TStringField
      FieldName = 'ALUMIDIA'
      Size = 50
    end
    object QAlunoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QAlunoNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 100
    end
  end
  object DSAluno: TDataSource
    DataSet = CDSAluno
    Left = 616
    Top = 46
  end
  object DSMensalidade: TDataSource
    DataSet = CDSMensalidade
    Left = 616
    Top = 86
  end
  object CDSMensalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMensalidade'
    Left = 584
    Top = 88
    object CDSMensalidadeCURSO: TStringField
      FieldName = 'CURSO'
      Size = 61
    end
    object CDSMensalidadeCURSO_ALUNO: TStringField
      FieldName = 'CURSO_ALUNO'
      Size = 162
    end
    object CDSMensalidadeALUNOME: TStringField
      FieldName = 'ALUNOME'
      Size = 100
    end
    object CDSMensalidadeMENALUNO: TIntegerField
      FieldName = 'MENALUNO'
    end
    object CDSMensalidadeMENNUMERO: TIntegerField
      FieldName = 'MENNUMERO'
      DisplayFormat = '0000'
    end
    object CDSMensalidadeMENVENCIMENTO: TDateField
      FieldName = 'MENVENCIMENTO'
    end
    object CDSMensalidadeMENVALOR: TFloatField
      FieldName = 'MENVALOR'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSMensalidadeMENACRESCIMO: TFloatField
      FieldName = 'MENACRESCIMO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSMensalidadeMENDESCONTO: TFloatField
      FieldName = 'MENDESCONTO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSMensalidadeMENBOLSA: TFloatField
      FieldName = 'MENBOLSA'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSMensalidadeMENVALORPAGO: TFloatField
      FieldName = 'MENVALORPAGO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSMensalidadeMENDATAPAGAMENTO: TDateField
      FieldName = 'MENDATAPAGAMENTO'
    end
    object CDSMensalidadeMENLIQUIDO: TFloatField
      FieldName = 'MENLIQUIDO'
      DisplayFormat = '#,###,###0.00'
    end
    object CDSMensalidadeDIAS: TFMTBCDField
      FieldName = 'DIAS'
      Precision = 15
      Size = 0
    end
  end
  object DSPMensalidade: TDataSetProvider
    DataSet = QMensalidade
    Left = 552
    Top = 86
  end
  object QMensalidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select (CURNOME||'#39'-'#39'||CURTURMA) as curso, (CURNOME||'#39'-'#39'||CURTURM' +
        'A||'#39'-'#39'||ALUNOME) as curso_aluno, ALUNOME, MENALUNO,MENNUMERO,'
      
        'MENVENCIMENTO,MENVALOR,MENACRESCIMO,MENDESCONTO,MENBOLSA,MENVALO' +
        'RPAGO,MENDATAPAGAMENTO,MENLIQUIDO,'
      '((MENVENCIMENTO - CURRENT_DATE) * -1) AS DIAS'
      'from TALUNO'
      'left outer join TMENSALIDADE on ALUCOD = MENALUNO'
      'left outer join TCURSO on CURCOD = ALUCURSO')
    SQLConnection = DM.SQLConnection
    Left = 520
    Top = 86
    object QMensalidadeCURSO: TStringField
      FieldName = 'CURSO'
      Size = 61
    end
    object QMensalidadeCURSO_ALUNO: TStringField
      FieldName = 'CURSO_ALUNO'
      Size = 162
    end
    object QMensalidadeALUNOME: TStringField
      FieldName = 'ALUNOME'
      Size = 100
    end
    object QMensalidadeMENALUNO: TIntegerField
      FieldName = 'MENALUNO'
    end
    object QMensalidadeMENNUMERO: TIntegerField
      FieldName = 'MENNUMERO'
    end
    object QMensalidadeMENVENCIMENTO: TDateField
      FieldName = 'MENVENCIMENTO'
    end
    object QMensalidadeMENVALOR: TFloatField
      FieldName = 'MENVALOR'
    end
    object QMensalidadeMENACRESCIMO: TFloatField
      FieldName = 'MENACRESCIMO'
    end
    object QMensalidadeMENDESCONTO: TFloatField
      FieldName = 'MENDESCONTO'
    end
    object QMensalidadeMENBOLSA: TFloatField
      FieldName = 'MENBOLSA'
    end
    object QMensalidadeMENVALORPAGO: TFloatField
      FieldName = 'MENVALORPAGO'
    end
    object QMensalidadeMENDATAPAGAMENTO: TDateField
      FieldName = 'MENDATAPAGAMENTO'
    end
    object QMensalidadeMENLIQUIDO: TFloatField
      FieldName = 'MENLIQUIDO'
    end
    object QMensalidadeDIAS: TFMTBCDField
      FieldName = 'DIAS'
      Precision = 15
      Size = 0
    end
  end
  object DSCertificado: TDataSource
    DataSet = CDSCertificado
    Left = 616
    Top = 126
  end
  object CDSCertificado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCertificado'
    Left = 584
    Top = 128
    object CDSCertificadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSCertificadoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object CDSCertificadoCURNOME: TStringField
      FieldName = 'CURNOME'
      Size = 50
    end
  end
  object DSPCertificado: TDataSetProvider
    DataSet = QCertificado
    Left = 552
    Top = 118
  end
  object QCertificado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo, nome, curnome from vcertificado'
      'inner join tcurso on curcod = curso'
      'order by curnome, codigo')
    SQLConnection = DM.SQLConnection
    Left = 520
    Top = 118
    object QCertificadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QCertificadoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object QCertificadoCURNOME: TStringField
      FieldName = 'CURNOME'
      Size = 50
    end
  end
  object DSFreq: TDataSource
    DataSet = CDSFreq
    Left = 616
    Top = 158
  end
  object CDSFreq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFreq'
    Left = 584
    Top = 160
    object CDSFreqALUCOD: TIntegerField
      FieldName = 'ALUCOD'
      Required = True
    end
    object CDSFreqALUNOME: TStringField
      FieldName = 'ALUNOME'
      Size = 100
    end
    object CDSFreqCURNOME: TStringField
      FieldName = 'CURNOME'
      Size = 50
    end
    object CDSFreqCURTURMA: TStringField
      FieldName = 'CURTURMA'
      Size = 10
    end
    object CDSFreqCURSIGLA: TStringField
      FieldName = 'CURSIGLA'
      Size = 3
    end
  end
  object DSPFreq: TDataSetProvider
    DataSet = QFreq
    Left = 552
    Top = 158
  end
  object QFreq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select distinct  (TBPROFESSOR.PRONOME||'#39'-'#39'||DISNOME) as PROF_DIS' +
        'C, ALUCOD, ALUNOME, CURNOME, CURSIGLA, CURTURMA, TBPROFESSOR.PRO' +
        'NOME, DISNOME'
      'from'
      'TALUNO'
      
        '   left outer join TPROFESSOR TBORIENTADOR on TBORIENTADOR.PROCO' +
        'D = ALUORIENTADOR'
      '   inner join TCIDADE on CIDCOD = ALUNATURALIDADE,'
      'TALUNODISCIPLINA'
      '   inner join TDISCIPLINA on DISCOD = ALUDISDISCIPLINA'
      
        '   inner join TPROFESSOR TBPROFESSOR on TBPROFESSOR.PROCOD = ALU' +
        'DISPROFESSOR,'
      'TCURSO'
      
        '   inner join TPROFESSOR TBCOORDENADOR on TBCOORDENADOR.PROCOD =' +
        ' CURCOORDENADOR'
      
        'where ALUCOD = ALUDISALUNO AND CURCOD = ALUCURSO AND TALUNO.ALUB' +
        'LOQ <> '#39'S'#39
      'and ALUCOD is null'
      ' ')
    SQLConnection = DM.SQLConnection
    Left = 520
    Top = 160
    object QFreqALUCOD: TIntegerField
      FieldName = 'ALUCOD'
      Required = True
    end
    object QFreqALUNOME: TStringField
      FieldName = 'ALUNOME'
      Size = 100
    end
    object QFreqCURNOME: TStringField
      FieldName = 'CURNOME'
      Size = 50
    end
    object QFreqCURTURMA: TStringField
      FieldName = 'CURTURMA'
      Size = 10
    end
    object QFreqCURSIGLA: TStringField
      FieldName = 'CURSIGLA'
      Size = 3
    end
  end
  object QAlunoPorCurso: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT CURSO, ANO1, ANO2, ANO3, ANO4, ANO5, CAST(TOTAL AS DOUBLE' +
        ' PRECISION) AS TOTAL FROM PALUNOPORCURSO('#39#39', 2007)'
      'ORDER BY CURSO'
      ' '
      ' ')
    SQLConnection = DM.SQLConnection
    Left = 176
    Top = 46
    object QAlunoPorCursoCURSO: TStringField
      FieldName = 'CURSO'
      Size = 3
    end
    object QAlunoPorCursoANO1: TIntegerField
      FieldName = 'ANO1'
    end
    object QAlunoPorCursoANO2: TIntegerField
      FieldName = 'ANO2'
    end
    object QAlunoPorCursoANO3: TIntegerField
      FieldName = 'ANO3'
    end
    object QAlunoPorCursoANO4: TIntegerField
      FieldName = 'ANO4'
    end
    object QAlunoPorCursoANO5: TIntegerField
      FieldName = 'ANO5'
    end
    object QAlunoPorCursoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object DSPAlunoPorCurso: TDataSetProvider
    DataSet = QAlunoPorCurso
    Left = 208
    Top = 46
  end
  object CDSAlunoPorCurso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPAlunoPorCurso'
    Left = 240
    Top = 48
    object CDSAlunoPorCursoCURSO: TStringField
      FieldName = 'CURSO'
      Size = 3
    end
    object CDSAlunoPorCursoANO1: TIntegerField
      FieldName = 'ANO1'
    end
    object CDSAlunoPorCursoANO2: TIntegerField
      FieldName = 'ANO2'
    end
    object CDSAlunoPorCursoANO3: TIntegerField
      FieldName = 'ANO3'
    end
    object CDSAlunoPorCursoANO4: TIntegerField
      FieldName = 'ANO4'
    end
    object CDSAlunoPorCursoANO5: TIntegerField
      FieldName = 'ANO5'
    end
    object CDSAlunoPorCursoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object DSAlunoPorCurso: TDataSource
    DataSet = CDSAlunoPorCurso
    Left = 272
    Top = 46
  end
end
