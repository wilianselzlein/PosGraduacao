object FcontaPagarBaixa: TFcontaPagarBaixa
  Left = 267
  Top = 261
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FcontaPagarBaixa'
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
    Caption = 'Pagamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 115
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
    Images = DM.ImageList
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
    object btnsair: TToolButton
      Left = 156
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
      Width = 65
      Height = 15
      Caption = 'Fornecedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnfornecedor: TSpeedButton
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
      OnClick = btnfornecedorClick
    end
    object Label4: TLabel
      Left = 18
      Top = 31
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
    object txtcodfornecedor: TWSEdit
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
      OnExit = txtcodfornecedorExit
      OnKeyDown = txtcodfornecedorKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object PanContaPagar: TPanel
      Left = 1
      Top = 70
      Width = 552
      Height = 226
      Align = alBottom
      TabOrder = 4
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
        Top = 127
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
        Width = 62
        Height = 15
        Caption = 'Liquida'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 19
        Top = 177
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
        Top = 153
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
        Top = 9
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
      object Label9: TLabel
        Left = 371
        Top = 81
        Width = 43
        Height = 15
        Caption = 'Cheque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 371
        Top = 103
        Width = 50
        Height = 15
        Caption = 'Portador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 371
        Top = 129
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
      object Label14: TLabel
        Left = 371
        Top = 151
        Width = 46
        Height = 15
        Caption = 'Ag'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 371
        Top = 175
        Width = 33
        Height = 15
        Caption = 'Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 243
        Top = 81
        Width = 117
        Height = 15
        Caption = 'Outras informa'#231#245'es:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object WSDBEdit1: TWSDBEdit
        Left = 108
        Top = 104
        Width = 106
        DataField = 'CTPVALOR'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 5
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtdesconto: TWSDBEdit
        Left = 108
        Top = 128
        Width = 106
        DataField = 'CTPMULTA'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 6
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtdatapagamento: TWSDBEdit
        Left = 108
        Top = 79
        Width = 106
        DataField = 'CTPLIQUIDACAO'
        DataSource = DSContaPagar
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
      object S: TWSDBEdit
        Left = 108
        Top = 176
        Width = 106
        DataField = 'liquido'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        TabOrder = 8
        OnKeyDown = txtcodfornecedorKeyDown
        OnKeyPress = SKeyPress
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit5: TWSDBEdit
        Left = 108
        Top = 152
        Width = 106
        DataField = 'CTPJURO'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 7
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtformapgto: TWSDBEdit
        Left = 108
        Top = 8
        Width = 72
        DataField = 'CTPFORMAPGTO'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 0
        OnExit = txtformapgtoExit
        OnKeyDown = txtcodfornecedorKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtreceb: TWSDBEdit
        Left = 108
        Top = 55
        Width = 427
        DataField = 'CTPUSUARIO'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 3
        OnEnter = txtrecebEnter
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit3: TWSDBEdit
        Left = 108
        Top = 31
        Width = 109
        DataField = 'CTPDOCUMENTO'
        DataSource = DSContaPagar
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
        HelpType = htKeyword
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
        OnKeyDown = txtcodfornecedorKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit2: TWSDBEdit
        Left = 428
        Top = 104
        Width = 106
        DataField = 'CTPPORTADOR'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 10
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit4: TWSDBEdit
        Left = 428
        Top = 80
        Width = 106
        DataField = 'CTPCHEQUE'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 9
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit6: TWSDBEdit
        Left = 428
        Top = 152
        Width = 106
        DataField = 'CTPAGENCIA'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 12
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit7: TWSDBEdit
        Left = 428
        Top = 128
        Width = 106
        DataField = 'CTPBANCODEPTO'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 11
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit8: TWSDBEdit
        Left = 428
        Top = 176
        Width = 106
        DataField = 'CTPCONTACORRENTE'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 13
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit9: TWSDBEdit
        Left = 221
        Top = 31
        Width = 40
        DataField = 'CTPSERIE'
        DataSource = DSContaPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 14
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
    end
    object txtdocumento: TWSMaskEdit
      Left = 108
      Top = 30
      Width = 112
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
      OnKeyDown = txtcodfornecedorKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomefornecedor: TWSEdit
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
      OnKeyDown = txtcodfornecedorKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtserie: TWSMaskEdit
      Left = 223
      Top = 30
      Width = 40
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
      OnExit = txtserieExit
      OnKeyDown = txtcodfornecedorKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object QContaPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'FORN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOCTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SERIE'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select * from TCONTAPAGAR'
      'where CTPCOD > 0'
      'and CTPLIQUIDACAO is null'
      'and CTPFORNECEDOR = :FORN'
      'and CTPDOCUMENTO = :DOCTO'
      'and CTPSERIE = :SERIE'
      'order by CTPFORNECEDOR, CTPDOCUMENTO')
    SQLConnection = DM.SQLConnection
    Left = 16
    Top = 8
    object QContaPagarCTPCOD: TIntegerField
      FieldName = 'CTPCOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QContaPagarCTPFORNECEDOR: TIntegerField
      FieldName = 'CTPFORNECEDOR'
    end
    object QContaPagarCTPTIPOCONTA: TStringField
      FieldName = 'CTPTIPOCONTA'
    end
    object QContaPagarCTPCADASTRO: TDateField
      FieldName = 'CTPCADASTRO'
    end
    object QContaPagarCTPEMISSAO: TDateField
      FieldName = 'CTPEMISSAO'
    end
    object QContaPagarCTPVENCIMENTO: TDateField
      FieldName = 'CTPVENCIMENTO'
    end
    object QContaPagarCTPLIQUIDACAO: TDateField
      FieldName = 'CTPLIQUIDACAO'
    end
    object QContaPagarCTPDOCUMENTO: TIntegerField
      FieldName = 'CTPDOCUMENTO'
    end
    object QContaPagarCTPSERIE: TStringField
      FieldName = 'CTPSERIE'
      Size = 10
    end
    object QContaPagarCTPBANCO: TIntegerField
      FieldName = 'CTPBANCO'
    end
    object QContaPagarCTPVALOR: TFloatField
      FieldName = 'CTPVALOR'
    end
    object QContaPagarCTPSALDO: TFloatField
      FieldName = 'CTPSALDO'
    end
    object QContaPagarCTPJURO: TFloatField
      FieldName = 'CTPJURO'
    end
    object QContaPagarCTPMULTA: TFloatField
      FieldName = 'CTPMULTA'
    end
    object QContaPagarCTPCONTA: TStringField
      FieldName = 'CTPCONTA'
      Size = 10
    end
    object QContaPagarCTPSITUACAO: TStringField
      FieldName = 'CTPSITUACAO'
      Size = 10
    end
    object QContaPagarCTPOBSERVACAO: TStringField
      FieldName = 'CTPOBSERVACAO'
      Size = 100
    end
    object QContaPagarCTPUSUARIO: TStringField
      FieldName = 'CTPUSUARIO'
    end
    object QContaPagarCTPCHEQUE: TStringField
      FieldName = 'CTPCHEQUE'
    end
    object QContaPagarCTPPORTADOR: TStringField
      FieldName = 'CTPPORTADOR'
      Size = 100
    end
    object QContaPagarCTPBANCODEPTO: TStringField
      FieldName = 'CTPBANCODEPTO'
      Size = 10
    end
    object QContaPagarCTPAGENCIA: TStringField
      FieldName = 'CTPAGENCIA'
      Size = 10
    end
    object QContaPagarCTPCONTACORRENTE: TStringField
      FieldName = 'CTPCONTACORRENTE'
    end
    object QContaPagarCTPLIBERADO: TStringField
      FieldName = 'CTPLIBERADO'
      Size = 3
    end
    object QContaPagarCTPFORMAPGTO: TIntegerField
      FieldName = 'CTPFORMAPGTO'
    end
    object QContaPagarCTPLCTOCONTABILVALOR: TIntegerField
      FieldName = 'CTPLCTOCONTABILVALOR'
    end
    object QContaPagarCTPLCTOCONTABILDESCONTO: TIntegerField
      FieldName = 'CTPLCTOCONTABILDESCONTO'
    end
    object QContaPagarCTPLCTOCONTABILJUROS: TIntegerField
      FieldName = 'CTPLCTOCONTABILJUROS'
    end
  end
  object DSPContaPagar: TDataSetProvider
    DataSet = QContaPagar
    Left = 48
    Top = 8
  end
  object CDSContaPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPContaPagar'
    OnCalcFields = CDSContaPagarCalcFields
    Left = 80
    Top = 8
    object CDSContaPagarliquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'liquido'
      DisplayFormat = '#,###,###0.00'
      Calculated = True
    end
    object CDSContaPagarCTPCOD: TIntegerField
      FieldName = 'CTPCOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSContaPagarCTPFORNECEDOR: TIntegerField
      FieldName = 'CTPFORNECEDOR'
    end
    object CDSContaPagarCTPTIPOCONTA: TStringField
      FieldName = 'CTPTIPOCONTA'
    end
    object CDSContaPagarCTPCADASTRO: TDateField
      FieldName = 'CTPCADASTRO'
    end
    object CDSContaPagarCTPEMISSAO: TDateField
      FieldName = 'CTPEMISSAO'
    end
    object CDSContaPagarCTPVENCIMENTO: TDateField
      FieldName = 'CTPVENCIMENTO'
    end
    object CDSContaPagarCTPLIQUIDACAO: TDateField
      FieldName = 'CTPLIQUIDACAO'
      EditMask = '99/99/9999'
    end
    object CDSContaPagarCTPDOCUMENTO: TIntegerField
      FieldName = 'CTPDOCUMENTO'
    end
    object CDSContaPagarCTPSERIE: TStringField
      FieldName = 'CTPSERIE'
      Size = 10
    end
    object CDSContaPagarCTPBANCO: TIntegerField
      FieldName = 'CTPBANCO'
    end
    object CDSContaPagarCTPVALOR: TFloatField
      FieldName = 'CTPVALOR'
      currency = True
    end
    object CDSContaPagarCTPSALDO: TFloatField
      FieldName = 'CTPSALDO'
      currency = True
    end
    object CDSContaPagarCTPJURO: TFloatField
      FieldName = 'CTPJURO'
      currency = True
    end
    object CDSContaPagarCTPMULTA: TFloatField
      FieldName = 'CTPMULTA'
      currency = True
    end
    object CDSContaPagarCTPCONTA: TStringField
      FieldName = 'CTPCONTA'
      Size = 10
    end
    object CDSContaPagarCTPSITUACAO: TStringField
      FieldName = 'CTPSITUACAO'
      Size = 10
    end
    object CDSContaPagarCTPOBSERVACAO: TStringField
      FieldName = 'CTPOBSERVACAO'
      Size = 100
    end
    object CDSContaPagarCTPUSUARIO: TStringField
      FieldName = 'CTPUSUARIO'
    end
    object CDSContaPagarCTPCHEQUE: TStringField
      FieldName = 'CTPCHEQUE'
    end
    object CDSContaPagarCTPPORTADOR: TStringField
      FieldName = 'CTPPORTADOR'
      Size = 100
    end
    object CDSContaPagarCTPBANCODEPTO: TStringField
      FieldName = 'CTPBANCODEPTO'
      Size = 10
    end
    object CDSContaPagarCTPAGENCIA: TStringField
      FieldName = 'CTPAGENCIA'
      Size = 10
    end
    object CDSContaPagarCTPCONTACORRENTE: TStringField
      FieldName = 'CTPCONTACORRENTE'
    end
    object CDSContaPagarCTPLIBERADO: TStringField
      FieldName = 'CTPLIBERADO'
      Size = 3
    end
    object CDSContaPagarCTPFORMAPGTO: TIntegerField
      FieldName = 'CTPFORMAPGTO'
    end
    object CDSContaPagarCTPLCTOCONTABILVALOR: TIntegerField
      FieldName = 'CTPLCTOCONTABILVALOR'
    end
    object CDSContaPagarCTPLCTOCONTABILDESCONTO: TIntegerField
      FieldName = 'CTPLCTOCONTABILDESCONTO'
    end
    object CDSContaPagarCTPLCTOCONTABILJUROS: TIntegerField
      FieldName = 'CTPLCTOCONTABILJUROS'
    end
  end
  object DSContaPagar: TDataSource
    DataSet = CDSContaPagar
    Left = 112
    Top = 8
  end
end
