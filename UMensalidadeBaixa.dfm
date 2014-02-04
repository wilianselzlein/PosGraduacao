object FMensalidadeBaixa: TFMensalidadeBaixa
  Left = 590
  Top = 224
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FMensalidadeBaixa'
  ClientHeight = 351
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 554
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Baixar Mensalidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 196
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 321
    Width = 554
    Height = 30
    Align = alBottom
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 74
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Images = Dm.ImageList
    List = True
    ParentFont = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object BtnBaixar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Baixar Parcela'
      Caption = 'Baixar'
      Enabled = False
      ImageIndex = 14
      OnClick = BtnBaixarClick
    end
    object btncancelar: TToolButton
      Left = 74
      Top = 0
      Hint = 'Cancelar Baixa da Mensalidade'
      Caption = 'Cancel'
      Enabled = False
      ImageIndex = 13
      OnClick = btncancelarClick
    end
    object ToolButton1: TToolButton
      Left = 148
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnrecibo: TToolButton
      Left = 156
      Top = 0
      Caption = 'Recibo'
      ImageIndex = 8
      OnClick = btnreciboClick
    end
    object ToolButton3: TToolButton
      Left = 230
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 14
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 238
      Top = 0
      Hint = 'Sair - Esc'
      Caption = 'Sair'
      ImageIndex = 12
      OnClick = btnsairClick
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 554
    Height = 297
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object Label7: TLabel
      Left = 17
      Top = 8
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
      Left = 191
      Top = 4
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
    object Label4: TLabel
      Left = 18
      Top = 31
      Width = 67
      Height = 15
      Caption = 'Vencimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 276
      Top = 31
      Width = 26
      Height = 15
      Caption = 'N'#250'm'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbldisciplina: TLabel
      Left = 343
      Top = 30
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
    object txtaluno: TWSEdit
      Left = 108
      Top = 8
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
      TabOrder = 0
      OnExit = txtalunoExit
      OnKeyDown = txtalunoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object PanMens: TPanel
      Left = 1
      Top = 70
      Width = 552
      Height = 226
      Align = alBottom
      TabOrder = 5
      object Label8: TLabel
        Left = 19
        Top = 105
        Width = 47
        Height = 15
        Caption = '(+) Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 19
        Top = 151
        Width = 69
        Height = 15
        Caption = '(-) Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 19
        Top = 80
        Width = 94
        Height = 15
        Caption = 'Data Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 19
        Top = 201
        Width = 59
        Height = 15
        Caption = '(=) L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 19
        Top = 129
        Width = 85
        Height = 15
        Caption = '(+) Juros/Multa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnformapgto: TSpeedButton
        Left = 188
        Top = 6
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
        OnClick = btnformapgtoClick
      end
      object Label6: TLabel
        Left = 19
        Top = 5
        Width = 68
        Height = 15
        Caption = 'Forma Pgto.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 19
        Top = 56
        Width = 75
        Height = 15
        Caption = 'Recebido por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblbolsa: TLabel
        Left = 19
        Top = 175
        Width = 47
        Height = 15
        Caption = '(-) Bolsa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 19
        Top = 32
        Width = 65
        Height = 15
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblMensagem: TLabel
        Left = 264
        Top = 104
        Width = 249
        Height = 49
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object WSDBEdit1: TWSDBEdit
        Left = 108
        Top = 104
        Width = 106
        DataField = 'MENVALOR'
        DataSource = DSMens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 5
        OnKeyDown = txtalunoKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtdesconto: TWSDBEdit
        Left = 108
        Top = 152
        Width = 106
        DataField = 'MENDESCONTO'
        DataSource = DSMens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 7
        OnKeyDown = txtalunoKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtdatapagamento: TWSDBEdit
        Left = 108
        Top = 79
        Width = 106
        DataField = 'MENDATAPAGAMENTO'
        DataSource = DSMens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 4
        OnKeyDown = txtalunoKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object S: TWSDBEdit
        Left = 108
        Top = 200
        Width = 106
        DataField = 'liquido'
        DataSource = DSMens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        TabOrder = 9
        OnKeyDown = txtalunoKeyDown
        OnKeyPress = SKeyPress
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit5: TWSDBEdit
        Left = 108
        Top = 128
        Width = 106
        DataField = 'MENACRESCIMO'
        DataSource = DSMens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 6
        OnKeyDown = txtalunoKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtformapgto: TWSDBEdit
        Left = 108
        Top = 8
        Width = 72
        DataField = 'MENFORMAPGTO'
        DataSource = DSMens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 0
        OnExit = txtformapgtoExit
        OnKeyDown = txtalunoKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtreceb: TWSDBEdit
        Left = 108
        Top = 55
        Width = 427
        DataField = 'MENRECEBEU'
        DataSource = DSMens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 3
        OnEnter = txtrecebEnter
        OnKeyDown = txtalunoKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtbolsa: TWSDBEdit
        Left = 108
        Top = 176
        Width = 106
        DataField = 'MENBOLSA'
        DataSource = DSMens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 8
        OnKeyDown = txtalunoKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit3: TWSDBEdit
        Left = 108
        Top = 31
        Width = 132
        DataField = 'MENDOCUMENTO'
        DataSource = DSMens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 2
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtnomeformapgto: TWSEdit
        Left = 221
        Top = 8
        Width = 314
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
        ReadOnly = True
        TabOrder = 1
        OnKeyDown = txtalunoKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
    end
    object txtvcto: TWSMaskEdit
      Left = 108
      Top = 30
      Width = 103
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
      OnExit = txtvctoExit
      OnKeyDown = txtalunoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomealuno: TWSEdit
      Left = 223
      Top = 8
      Width = 313
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
      ReadOnly = True
      TabOrder = 1
      OnKeyDown = txtalunoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object WSDBEdit4: TWSDBEdit
      Left = 304
      Top = 30
      Width = 32
      DataField = 'MENNUMERO'
      DataSource = DSMens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 3
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object DBNavigator1: TDBNavigator
      Left = 214
      Top = 31
      Width = 60
      Height = 18
      DataSource = DSMens
      VisibleButtons = [nbPrior, nbNext]
      Flat = True
      Ctl3D = True
      Hints.Strings = (
        'First record'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        'Last record'
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
      Kind = dbnHorizontal
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object txtdisciplina: TWSDBEdit
      Left = 396
      Top = 30
      Width = 141
      DataField = 'disciplina'
      DataSource = DSMens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 4
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object RLReportRecibo: TRLReport
    Left = 413
    Top = 203
    Width = 794
    Height = 1123
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
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel13: TRLLabel
        Left = 321
        Top = 5
        Width = 76
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Recibo'
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
      object RLDBText1: TRLDBText
        Left = 416
        Top = 7
        Width = 175
        Height = 22
        Alignment = taJustify
        DataField = 'MENDOCUMENTO'
        DataSource = DSMens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 147
      Width = 718
      Height = 399
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel14: TRLLabel
        Left = 11
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
      object RLLabel17: TRLLabel
        Left = 6
        Top = 68
        Width = 172
        Height = 15
        Caption = 'Recebemos a import'#226'ncia de '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 211
        Top = 68
        Width = 101
        Height = 15
        Alignment = taJustify
        DataField = 'MENVALORPAGO'
        DataSource = DSMens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblextenso: TRLLabel
        Left = 6
        Top = 85
        Width = 59
        Height = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 6
        Top = 101
        Width = 66
        Height = 15
        Caption = 'refer'#234'nte a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblreferente: TRLLabel
        Left = 101
        Top = 102
        Width = 65
        Height = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblcidadedata: TRLLabel
        Left = 5
        Top = 262
        Width = 77
        Height = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 422
        Top = 333
        Width = 65
        Height = 15
        Caption = 'Tesouraria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 355
        Top = 293
        Width = 206
        Height = 15
        Caption = '_____________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 3
        Top = 133
        Width = 75
        Height = 15
        Alignment = taRightJustify
        Caption = 'Valor.............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 3
        Top = 151
        Width = 75
        Height = 15
        Alignment = taRightJustify
        Caption = 'Desconto.....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 5
        Top = 185
        Width = 73
        Height = 15
        Alignment = taRightJustify
        Caption = 'Multa/Juros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 4
        Top = 203
        Width = 74
        Height = 15
        Alignment = taRightJustify
        Caption = 'L'#237'quido.........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 85
        Top = 134
        Width = 150
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALOR'
        DataSource = DSMens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 4
        Top = 221
        Width = 74
        Height = 15
        Alignment = taRightJustify
        Caption = 'Valor Pago..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText20: TRLDBText
        Left = 85
        Top = 152
        Width = 150
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENDESCONTO'
        DataSource = DSMens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText21: TRLDBText
        Left = 85
        Top = 186
        Width = 150
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENACRESCIMO'
        DataSource = DSMens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 85
        Top = 204
        Width = 150
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENLIQUIDO'
        DataSource = DSMens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 85
        Top = 222
        Width = 150
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENVALORPAGO'
        DataSource = DSMens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 3
        Top = 168
        Width = 75
        Height = 15
        Alignment = taRightJustify
        Caption = '.......................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText24: TRLDBText
        Left = 85
        Top = 169
        Width = 150
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENBOLSA'
        DataSource = DSMens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblAluno: TRLLabel
        Left = 63
        Top = 3
        Width = 47
        Height = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblTestoureiro: TRLLabel
        Left = 414
        Top = 313
        Width = 82
        Height = 15
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 4
        Top = 168
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
    object RLBand11: TRLBand
      Left = 38
      Top = 546
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText27: TRLDBText
        Left = 189
        Top = 3
        Width = 524
        Height = 19
        AutoSize = False
        DataField = 'INSNOME'
        DataSource = Dm.DSInstituto
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
        DataSource = Dm.DSInstituto
        Stretch = True
      end
      object RLDBText28: TRLDBText
        Left = 190
        Top = 23
        Width = 283
        Height = 15
        AutoSize = False
        DataField = 'INSENDERECO'
        DataSource = Dm.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText29: TRLDBText
        Left = 475
        Top = 23
        Width = 238
        Height = 15
        AutoSize = False
        DataField = 'INSBAIRRO'
        DataSource = Dm.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText30: TRLDBText
        Left = 190
        Top = 39
        Width = 149
        Height = 15
        AutoSize = False
        DataField = 'INSCIDADE'
        DataSource = Dm.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText31: TRLDBText
        Left = 340
        Top = 39
        Width = 131
        Height = 15
        AutoSize = False
        DataField = 'INSFONE'
        DataSource = Dm.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText26: TRLDBText
        Left = 589
        Top = 39
        Width = 124
        Height = 15
        AutoSize = False
        DataField = 'INSSITE'
        DataSource = Dm.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText32: TRLDBText
        Left = 474
        Top = 39
        Width = 113
        Height = 15
        AutoSize = False
        DataField = 'INSEMAIL'
        DataSource = Dm.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 653
        Top = 3
        Width = 60
        Height = 16
        Alignment = taRightJustify
        DataField = 'INSCNPJ'
        DataSource = Dm.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
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
      object RLDBImage2: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 68
        Align = faLeft
        DataField = 'INSFIGURA'
        DataSource = Dm.DSInstituto
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
        DataSource = Dm.DSInstituto
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
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object QMens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ALUNO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VCTO'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select * from TMENSALIDADE'
      'where MENNUMERO > 0'
      'and MENALUNO = :ALUNO'
      'and MENVENCIMENTO = :VCTO'
      'and MENDATAPAGAMENTO is null'
      'order by MENALUNO, MENNUMERO'
      ' ')
    SQLConnection = Dm.SQLConnection
    Left = 16
    Top = 8
    object QMensMENALUNO: TIntegerField
      FieldName = 'MENALUNO'
      Required = True
    end
    object QMensMENNUMERO: TIntegerField
      FieldName = 'MENNUMERO'
      Required = True
    end
    object QMensMENVENCIMENTO: TDateField
      FieldName = 'MENVENCIMENTO'
    end
    object QMensMENVALOR: TFloatField
      FieldName = 'MENVALOR'
    end
    object QMensMENACRESCIMO: TFloatField
      FieldName = 'MENACRESCIMO'
    end
    object QMensMENDESCONTO: TFloatField
      FieldName = 'MENDESCONTO'
    end
    object QMensMENBOLSA: TFloatField
      FieldName = 'MENBOLSA'
    end
    object QMensMENVALORPAGO: TFloatField
      FieldName = 'MENVALORPAGO'
    end
    object QMensMENDATAPAGAMENTO: TDateField
      FieldName = 'MENDATAPAGAMENTO'
    end
    object QMensMENLIQUIDO: TFloatField
      FieldName = 'MENLIQUIDO'
    end
    object QMensMENFORMAPGTO: TIntegerField
      FieldName = 'MENFORMAPGTO'
    end
    object QMensMENBANCO: TIntegerField
      FieldName = 'MENBANCO'
    end
    object QMensMENOBS: TStringField
      FieldName = 'MENOBS'
      Size = 100
    end
    object QMensMENLCTOCONTABILMENSALIDADE: TIntegerField
      FieldName = 'MENLCTOCONTABILMENSALIDADE'
    end
    object QMensMENLCTOCONTABILDESCONTOS: TIntegerField
      FieldName = 'MENLCTOCONTABILDESCONTOS'
    end
    object QMensMENLCTOCONTABILJUROS: TIntegerField
      FieldName = 'MENLCTOCONTABILJUROS'
    end
    object QMensMENRECEBEU: TStringField
      FieldName = 'MENRECEBEU'
      Size = 50
    end
    object QMensMENTIPO: TStringField
      FieldName = 'MENTIPO'
      Size = 1
    end
    object QMensMENDOCUMENTO: TStringField
      FieldName = 'MENDOCUMENTO'
      Size = 15
    end
    object QMensMENDISCIPLINA: TIntegerField
      FieldName = 'MENDISCIPLINA'
    end
  end
  object DSPMens: TDataSetProvider
    DataSet = QMens
    Left = 48
    Top = 8
  end
  object CDSMens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMens'
    OnCalcFields = CDSMensCalcFields
    Left = 80
    Top = 8
    object CDSMensMENALUNO: TIntegerField
      FieldName = 'MENALUNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMensMENNUMERO: TIntegerField
      FieldName = 'MENNUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMensMENVENCIMENTO: TDateField
      FieldName = 'MENVENCIMENTO'
      EditMask = '99/99/9999;1;_'
    end
    object CDSMensMENVALOR: TFloatField
      FieldName = 'MENVALOR'
      DisplayFormat = '0.00'
    end
    object CDSMensMENACRESCIMO: TFloatField
      FieldName = 'MENACRESCIMO'
      DisplayFormat = '0.00'
    end
    object CDSMensMENDESCONTO: TFloatField
      FieldName = 'MENDESCONTO'
      DisplayFormat = '0.00'
    end
    object CDSMensMENBOLSA: TFloatField
      FieldName = 'MENBOLSA'
      DisplayFormat = '0.00'
    end
    object CDSMensMENVALORPAGO: TFloatField
      FieldName = 'MENVALORPAGO'
      DisplayFormat = '0.00'
    end
    object CDSMensMENDATAPAGAMENTO: TDateField
      FieldName = 'MENDATAPAGAMENTO'
      EditMask = '99/99/9999;1;_'
    end
    object CDSMensMENLIQUIDO: TFloatField
      FieldName = 'MENLIQUIDO'
      DisplayFormat = '0.00'
    end
    object CDSMensMENFORMAPGTO: TIntegerField
      FieldName = 'MENFORMAPGTO'
      DisplayFormat = '0000'
    end
    object CDSMensMENBANCO: TIntegerField
      FieldName = 'MENBANCO'
    end
    object CDSMensMENOBS: TStringField
      FieldName = 'MENOBS'
      Size = 100
    end
    object CDSMensMENLCTOCONTABILMENSALIDADE: TIntegerField
      FieldName = 'MENLCTOCONTABILMENSALIDADE'
    end
    object CDSMensMENLCTOCONTABILDESCONTOS: TIntegerField
      FieldName = 'MENLCTOCONTABILDESCONTOS'
    end
    object CDSMensMENLCTOCONTABILJUROS: TIntegerField
      FieldName = 'MENLCTOCONTABILJUROS'
    end
    object CDSMensMENRECEBEU: TStringField
      FieldName = 'MENRECEBEU'
      Size = 50
    end
    object CDSMensMENTIPO: TStringField
      FieldName = 'MENTIPO'
      Size = 1
    end
    object CDSMensMENDOCUMENTO: TStringField
      FieldName = 'MENDOCUMENTO'
      Size = 15
    end
    object CDSMensMENDISCIPLINA: TIntegerField
      FieldName = 'MENDISCIPLINA'
    end
    object CDSMensaluno: TStringField
      FieldKind = fkLookup
      FieldName = 'aluno'
      LookupDataSet = Dm.CDSAlunoLkp
      LookupKeyFields = 'ALUCOD'
      LookupResultField = 'ALUNOME'
      KeyFields = 'MENALUNO'
      Size = 50
      Lookup = True
    end
    object CDSMensliquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'liquido'
      DisplayFormat = '#,###,###0.00'
      Calculated = True
    end
    object CDSMensdisciplina: TStringField
      FieldKind = fkLookup
      FieldName = 'disciplina'
      LookupDataSet = Dm.CDSDisciplina
      LookupKeyFields = 'DISCOD'
      LookupResultField = 'DISNOME'
      KeyFields = 'mendisciplina'
      Size = 50
      Lookup = True
    end
  end
  object DSMens: TDataSource
    DataSet = CDSMens
    Left = 112
    Top = 8
  end
end
