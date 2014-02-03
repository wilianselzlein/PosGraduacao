object FPrevPagamentoRel: TFPrevPagamentoRel
  Left = 254
  Top = 160
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 246
  ClientWidth = 420
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
    Width = 420
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
    Width = 420
    Height = 184
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 422
    ExplicitHeight = 186
    object Label7: TLabel
      Left = 16
      Top = 48
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
      Left = 131
      Top = 44
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
      Left = 16
      Top = 71
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
      Left = 131
      Top = 68
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
    object Label3: TLabel
      Left = 267
      Top = 19
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
    object txtaluno: TWSEdit
      Left = 52
      Top = 47
      Width = 78
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 2
      OnExit = txtalunoExit
      OnKeyDown = txtcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtcurso: TWSEdit
      Left = 52
      Top = 70
      Width = 78
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 3
      OnExit = txtcursoExit
      OnKeyDown = txtcursoKeyDown
      OnKeyPress = txtcursoKeyPress
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object RGModelo: TRadioGroup
      Left = 17
      Top = 7
      Width = 224
      Height = 35
      Caption = ' Modelo '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Por Aluno'
        'Por Curso')
      ParentFont = False
      TabOrder = 0
    end
    object txtano: TWSMaskEdit
      Left = 303
      Top = 18
      Width = 73
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
    object RGSituacao: TRadioGroup
      Left = 15
      Top = 92
      Width = 402
      Height = 81
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
      TabOrder = 4
    end
    object txtnomealuno: TWSEdit
      Left = 155
      Top = 47
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
      TabOrder = 5
      OnKeyDown = txtcursoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomecurso: TWSEdit
      Left = 155
      Top = 70
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
      TabOrder = 6
      OnKeyDown = txtcursoKeyDown
      OnKeyPress = txtcursoKeyPress
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 208
    Width = 420
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
    ExplicitTop = 210
    ExplicitWidth = 422
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
  object RLReportCurso: TRLReport
    Left = 150
    Top = 242
    Width = 1123
    Height = 794
    DataSource = DSCurso
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand32: TRLBand
      Left = 38
      Top = 111
      Width = 1047
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel44: TRLLabel
        Left = 336
        Top = 5
        Width = 374
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Previs'#227'o de Pagamento'
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
      Width = 1047
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
      object RLDBText27: TRLDBText
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
      object RLDBText28: TRLDBText
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
    object RLBand34: TRLBand
      Left = 38
      Top = 147
      Width = 1047
      Height = 19
      BandType = btColumnHeader
      object RLLabel45: TRLLabel
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
      object RLLabel48: TRLLabel
        Left = 229
        Top = 1
        Width = 24
        Height = 15
        Caption = 'Jan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel50: TRLLabel
        Left = 296
        Top = 1
        Width = 22
        Height = 15
        Caption = 'Fev'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 357
        Top = 1
        Width = 25
        Height = 15
        Caption = 'Mar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 558
        Top = 1
        Width = 24
        Height = 15
        Caption = 'Jun'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 493
        Top = 1
        Width = 23
        Height = 15
        Caption = 'Mai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 425
        Top = 1
        Width = 23
        Height = 15
        Caption = 'Abr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 757
        Top = 1
        Width = 22
        Height = 15
        Caption = 'Set'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 955
        Top = 1
        Width = 24
        Height = 15
        Caption = 'Dez'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 886
        Top = 1
        Width = 24
        Height = 15
        Caption = 'Nov'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 822
        Top = 1
        Width = 23
        Height = 15
        Caption = 'Out'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 690
        Top = 1
        Width = 25
        Height = 15
        Caption = 'Ago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 627
        Top = 1
        Width = 20
        Height = 15
        Caption = 'Jul'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 1011
        Top = 0
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
    object RLBand38: TRLBand
      Left = 38
      Top = 182
      Width = 1047
      Height = 22
      BandType = btSummary
      object RLLabel55: TRLLabel
        Left = 6
        Top = 3
        Width = 133
        Height = 15
        Caption = 'Total Geral .....................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult38: TRLDBResult
        Left = 188
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JANE'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult41: TRLDBResult
        Left = 254
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'FEVE'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult42: TRLDBResult
        Left = 320
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MARC'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 386
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ABRI'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 452
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MAIO'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 518
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JUNH'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult4: TRLDBResult
        Left = 782
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'OUTU'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult5: TRLDBResult
        Left = 848
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'NOVE'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 914
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DEZE'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 584
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JULH'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 650
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'AGOS'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 716
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SETE'
        DataSource = DSCurso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult10: TRLDBResult
        Left = 980
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = DSCurso
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
      Width = 1047
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText63: TRLDBText
        Left = 6
        Top = 2
        Width = 179
        Height = 10
        AutoSize = False
        DataField = 'CURSONOME'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText66: TRLDBText
        Left = 188
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JANE'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText68: TRLDBText
        Left = 254
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'FEVE'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText70: TRLDBText
        Left = 320
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MARC'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 386
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ABRI'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 452
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MAIO'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 518
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JUNH'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 782
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'OUTU'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 848
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'NOVE'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 914
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DEZE'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 716
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SETE'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 650
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'AGOS'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 584
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JULH'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 980
        Top = 2
        Width = 65
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = DSCurso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
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
        Width = 1047
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object RLReportAluno: TRLReport
    Left = 126
    Top = 438
    Width = 1123
    Height = 794
    DataSource = DSAluno
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand37: TRLBand
      Left = 38
      Top = 111
      Width = 1047
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel46: TRLLabel
        Left = 336
        Top = 5
        Width = 374
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Previs'#227'o de Pagamento'
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
      Top = 252
      Width = 1047
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
      object RLDBText29: TRLDBText
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
      object RLDBText30: TRLDBText
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
      Width = 1047
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
      object RLLabel11: TRLLabel
        Left = 331
        Top = 1
        Width = 24
        Height = 15
        Caption = 'Jan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 390
        Top = 1
        Width = 22
        Height = 15
        Caption = 'Fev'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 443
        Top = 1
        Width = 25
        Height = 15
        Caption = 'Mar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 617
        Top = 1
        Width = 24
        Height = 15
        Caption = 'Jun'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 559
        Top = 1
        Width = 23
        Height = 15
        Caption = 'Mai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 501
        Top = 1
        Width = 23
        Height = 15
        Caption = 'Abr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 787
        Top = 1
        Width = 22
        Height = 15
        Caption = 'Set'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 955
        Top = 1
        Width = 24
        Height = 15
        Caption = 'Dez'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 896
        Top = 1
        Width = 24
        Height = 15
        Caption = 'Nov'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 843
        Top = 1
        Width = 23
        Height = 15
        Caption = 'Out'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 730
        Top = 1
        Width = 25
        Height = 15
        Caption = 'Ago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 677
        Top = 1
        Width = 20
        Height = 15
        Caption = 'Jul'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 1011
        Top = 0
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
      object RLLabel24: TRLLabel
        Left = 154
        Top = 1
        Width = 42
        Height = 15
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 251
        Top = 1
        Width = 33
        Height = 15
        Caption = 'In'#237'cio'
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
      Top = 230
      Width = 1047
      Height = 22
      BandType = btSummary
      object RLLabel54: TRLLabel
        Left = 6
        Top = 3
        Width = 199
        Height = 15
        Caption = 'Total Geral ...........................................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult11: TRLDBResult
        Left = 307
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JANE'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult12: TRLDBResult
        Left = 363
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'FEVE'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult13: TRLDBResult
        Left = 419
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MARC'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult14: TRLDBResult
        Left = 475
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ABRI'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult15: TRLDBResult
        Left = 531
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MAIO'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult16: TRLDBResult
        Left = 587
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JUNH'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult17: TRLDBResult
        Left = 811
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'OUTU'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult18: TRLDBResult
        Left = 867
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'NOVE'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult19: TRLDBResult
        Left = 923
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DEZE'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult20: TRLDBResult
        Left = 643
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JULH'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult21: TRLDBResult
        Left = 699
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'AGOS'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult22: TRLDBResult
        Left = 755
        Top = 7
        Width = 55
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SETE'
        DataSource = DSAluno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult23: TRLDBResult
        Left = 980
        Top = 7
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL'
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
    object RLGroup1: TRLGroup
      Left = 38
      Top = 166
      Width = 1047
      Height = 64
      DataFields = 'CURSONOME'
      object RLBand42: TRLBand
        Left = 0
        Top = 18
        Width = 1047
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText73: TRLDBText
          Left = 6
          Top = 2
          Width = 147
          Height = 10
          AutoSize = False
          DataField = 'ALUNONOME'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 308
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JANE'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 364
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'FEVE'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 420
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MARC'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 476
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ABRI'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 532
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MAIO'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 588
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JUNH'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 812
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'OUTU'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 868
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NOVE'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 924
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DEZE'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 756
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SETE'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 700
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'AGOS'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 644
          Top = 2
          Width = 55
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JULH'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 980
          Top = 2
          Width = 65
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTAL'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 251
          Top = 2
          Width = 56
          Height = 10
          AutoSize = False
          DataField = 'ALUCURSOINICIO'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 154
          Top = 2
          Width = 96
          Height = 10
          AutoSize = False
          DataField = 'CIDADE'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 18
        BandType = btHeader
        object RLLabel26: TRLLabel
          Left = 4
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
        object RLDBText26: TRLDBText
          Left = 44
          Top = 2
          Width = 82
          Height = 15
          DataField = 'CURSONOME'
          DataSource = DSAluno
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 34
        Width = 1047
        Height = 21
        BandType = btFooter
        object RLLabel27: TRLLabel
          Left = 6
          Top = 1
          Width = 208
          Height = 15
          Caption = 'Total do Curso .......................................:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult24: TRLDBResult
          Left = 307
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JANE'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult25: TRLDBResult
          Left = 363
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'FEVE'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult26: TRLDBResult
          Left = 419
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MARC'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult27: TRLDBResult
          Left = 475
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ABRI'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult28: TRLDBResult
          Left = 531
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MAIO'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult29: TRLDBResult
          Left = 587
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JUNH'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult30: TRLDBResult
          Left = 811
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'OUTU'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult31: TRLDBResult
          Left = 867
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NOVE'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult32: TRLDBResult
          Left = 923
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DEZE'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult33: TRLDBResult
          Left = 643
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JULH'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult34: TRLDBResult
          Left = 699
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'AGOS'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult35: TRLDBResult
          Left = 755
          Top = 5
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SETE'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult36: TRLDBResult
          Left = 980
          Top = 5
          Width = 65
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTAL'
          DataSource = DSAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
      end
    end
    object RLBand4: TRLBand
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
      object RLDBImage1: TRLDBImage
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
      object RLSystemInfo3: TRLSystemInfo
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
      object RLSystemInfo4: TRLSystemInfo
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
        Width = 1047
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object DSCurso: TDataSource
    DataSet = CDSCurso
    Left = 280
    Top = 6
  end
  object CDSCurso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCurso'
    Left = 248
    Top = 8
    object CDSCursoCURSOCOD: TIntegerField
      FieldName = 'CURSOCOD'
    end
    object CDSCursoCURSONOME: TStringField
      FieldName = 'CURSONOME'
      Size = 50
    end
    object CDSCursoJANE: TFloatField
      FieldName = 'JANE'
      DisplayFormat = '0.00'
    end
    object CDSCursoFEVE: TFloatField
      FieldName = 'FEVE'
      DisplayFormat = '0.00'
    end
    object CDSCursoMARC: TFloatField
      FieldName = 'MARC'
      DisplayFormat = '0.00'
    end
    object CDSCursoABRI: TFloatField
      FieldName = 'ABRI'
      DisplayFormat = '0.00'
    end
    object CDSCursoMAIO: TFloatField
      FieldName = 'MAIO'
      DisplayFormat = '0.00'
    end
    object CDSCursoJUNH: TFloatField
      FieldName = 'JUNH'
      DisplayFormat = '0.00'
    end
    object CDSCursoJULH: TFloatField
      FieldName = 'JULH'
      DisplayFormat = '0.00'
    end
    object CDSCursoAGOS: TFloatField
      FieldName = 'AGOS'
      DisplayFormat = '0.00'
    end
    object CDSCursoSETE: TFloatField
      FieldName = 'SETE'
      DisplayFormat = '0.00'
    end
    object CDSCursoOUTU: TFloatField
      FieldName = 'OUTU'
      DisplayFormat = '0.00'
    end
    object CDSCursoNOVE: TFloatField
      FieldName = 'NOVE'
      DisplayFormat = '0.00'
    end
    object CDSCursoDEZE: TFloatField
      FieldName = 'DEZE'
      DisplayFormat = '0.00'
    end
    object CDSCursoTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '0.00'
    end
  end
  object DSPCurso: TDataSetProvider
    DataSet = QCurso
    Left = 216
    Top = 6
  end
  object QCurso: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select cursocod, cursonome, sum(jane) as jane, sum(feve) as feve' +
        ', sum(marc) as marc, sum(abri) as abri, sum(maio) as maio, sum(j' +
        'unh) as junh,'
      
        'sum(julh) as julh, sum(agos) as agos, sum(sete) as sete, sum(out' +
        'u) as outu, sum(nove) as nove, sum(deze) as deze, sum(total) as ' +
        'total'
      'FROM PPREVISAOPGTO(0,0,2007)'
      'GROUP BY CURSOCOD, CURSONOME ORDER BY CURSONOME')
    SQLConnection = DM.SQLConnection
    Left = 184
    Top = 6
    object QCursoCURSOCOD: TIntegerField
      FieldName = 'CURSOCOD'
    end
    object QCursoCURSONOME: TStringField
      FieldName = 'CURSONOME'
      Size = 50
    end
    object QCursoJANE: TFloatField
      FieldName = 'JANE'
    end
    object QCursoFEVE: TFloatField
      FieldName = 'FEVE'
    end
    object QCursoMARC: TFloatField
      FieldName = 'MARC'
    end
    object QCursoABRI: TFloatField
      FieldName = 'ABRI'
    end
    object QCursoMAIO: TFloatField
      FieldName = 'MAIO'
    end
    object QCursoJUNH: TFloatField
      FieldName = 'JUNH'
    end
    object QCursoJULH: TFloatField
      FieldName = 'JULH'
    end
    object QCursoAGOS: TFloatField
      FieldName = 'AGOS'
    end
    object QCursoSETE: TFloatField
      FieldName = 'SETE'
    end
    object QCursoOUTU: TFloatField
      FieldName = 'OUTU'
    end
    object QCursoNOVE: TFloatField
      FieldName = 'NOVE'
    end
    object QCursoDEZE: TFloatField
      FieldName = 'DEZE'
    end
    object QCursoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object QAluno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select (cursonome||alunonome) as curso_aluno, cursonome, alunoco' +
        'd, alunonome, ALUCURSOINICIO, (cidnome||'#39'-'#39'||ciduf) as cidade, j' +
        'ane, feve, marc, abri, maio, junh, julh, agos, sete, outu, nove,' +
        ' deze, total'
      'FROM TAluno'
      '   inner join PPREVISAOPGTO(0,0,2007)  on alucod = alunocod'
      '   inner join TCidade on alucidade = cidcod'
      'ORDER BY 1'
      ' ')
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 6
    object QAlunoCURSO_ALUNO: TStringField
      FieldName = 'CURSO_ALUNO'
      Size = 150
    end
    object QAlunoCURSONOME: TStringField
      FieldName = 'CURSONOME'
      Size = 50
    end
    object QAlunoALUNOCOD: TIntegerField
      FieldName = 'ALUNOCOD'
    end
    object QAlunoALUNONOME: TStringField
      FieldName = 'ALUNONOME'
      Size = 100
    end
    object QAlunoALUCURSOINICIO: TDateField
      FieldName = 'ALUCURSOINICIO'
    end
    object QAlunoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 106
    end
    object QAlunoJANE: TFloatField
      FieldName = 'JANE'
    end
    object QAlunoFEVE: TFloatField
      FieldName = 'FEVE'
    end
    object QAlunoMARC: TFloatField
      FieldName = 'MARC'
    end
    object QAlunoABRI: TFloatField
      FieldName = 'ABRI'
    end
    object QAlunoMAIO: TFloatField
      FieldName = 'MAIO'
    end
    object QAlunoJUNH: TFloatField
      FieldName = 'JUNH'
    end
    object QAlunoJULH: TFloatField
      FieldName = 'JULH'
    end
    object QAlunoAGOS: TFloatField
      FieldName = 'AGOS'
    end
    object QAlunoSETE: TFloatField
      FieldName = 'SETE'
    end
    object QAlunoOUTU: TFloatField
      FieldName = 'OUTU'
    end
    object QAlunoNOVE: TFloatField
      FieldName = 'NOVE'
    end
    object QAlunoDEZE: TFloatField
      FieldName = 'DEZE'
    end
    object QAlunoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object DSPAluno: TDataSetProvider
    DataSet = QAluno
    Left = 56
    Top = 6
  end
  object CDSAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPAluno'
    Left = 88
    Top = 8
    object CDSAlunoCURSO_ALUNO: TStringField
      FieldName = 'CURSO_ALUNO'
      Size = 150
    end
    object CDSAlunoCURSONOME: TStringField
      FieldName = 'CURSONOME'
      Size = 50
    end
    object CDSAlunoALUNOCOD: TIntegerField
      FieldName = 'ALUNOCOD'
    end
    object CDSAlunoALUNONOME: TStringField
      FieldName = 'ALUNONOME'
      Size = 100
    end
    object CDSAlunoALUCURSOINICIO: TDateField
      FieldName = 'ALUCURSOINICIO'
    end
    object CDSAlunoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 106
    end
    object CDSAlunoJANE: TFloatField
      FieldName = 'JANE'
      DisplayFormat = '0.00'
    end
    object CDSAlunoFEVE: TFloatField
      FieldName = 'FEVE'
      DisplayFormat = '0.00'
    end
    object CDSAlunoMARC: TFloatField
      FieldName = 'MARC'
      DisplayFormat = '0.00'
    end
    object CDSAlunoABRI: TFloatField
      FieldName = 'ABRI'
      DisplayFormat = '0.00'
    end
    object CDSAlunoMAIO: TFloatField
      FieldName = 'MAIO'
      DisplayFormat = '0.00'
    end
    object CDSAlunoJUNH: TFloatField
      FieldName = 'JUNH'
      DisplayFormat = '0.00'
    end
    object CDSAlunoJULH: TFloatField
      FieldName = 'JULH'
      DisplayFormat = '0.00'
    end
    object CDSAlunoAGOS: TFloatField
      FieldName = 'AGOS'
      DisplayFormat = '0.00'
    end
    object CDSAlunoSETE: TFloatField
      FieldName = 'SETE'
      DisplayFormat = '0.00'
    end
    object CDSAlunoOUTU: TFloatField
      FieldName = 'OUTU'
      DisplayFormat = '0.00'
    end
    object CDSAlunoNOVE: TFloatField
      FieldName = 'NOVE'
      DisplayFormat = '0.00'
    end
    object CDSAlunoDEZE: TFloatField
      FieldName = 'DEZE'
      DisplayFormat = '0.00'
    end
    object CDSAlunoTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '0.00'
    end
  end
  object DSAluno: TDataSource
    DataSet = CDSAluno
    Left = 120
    Top = 6
  end
end
