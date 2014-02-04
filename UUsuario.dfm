object FUsuario: TFUsuario
  Left = 60
  Top = 40
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 512
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 633
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de Usu'#225'rios'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 218
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 482
    Width = 633
    Height = 30
    Align = alBottom
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 31
    Images = Dm.ImageList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object BtnPrimeiro: TToolButton
      Left = 0
      Top = 0
      Hint = 'Primeiro Registro'
      Caption = 'BtnPrimeiro'
      ImageIndex = 10
      OnClick = BtnPrimeiroClick
    end
    object BtnAnterior: TToolButton
      Left = 31
      Top = 0
      Hint = 'Registro Anterior'
      Caption = 'BtnAnterior'
      ImageIndex = 0
      OnClick = BtnAnteriorClick
    end
    object BtnProximo: TToolButton
      Left = 62
      Top = 0
      Hint = 'Pr'#243'ximo Registro'
      Caption = 'BtnProximo'
      ImageIndex = 11
      OnClick = BtnProximoClick
    end
    object BtnUltimo: TToolButton
      Left = 93
      Top = 0
      Hint = #218'ltimo Registro'
      Caption = 'BtnUltimo'
      ImageIndex = 16
      OnClick = BtnUltimoClick
    end
    object ToolButton10: TToolButton
      Left = 124
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object BtnIncluir: TToolButton
      Left = 132
      Top = 0
      Hint = 'Incluir Novo Registro - Insert'
      Caption = 'BtnIncluir'
      ImageIndex = 9
      OnClick = BtnIncluirClick
    end
    object btnnovopadrao: TToolButton
      Left = 163
      Top = 0
      Hint = 'Incluir novo registro pegando esse como padr'#227'o - F11'
      ImageIndex = 17
      OnClick = btnnovopadraoClick
    end
    object BtnAlterar: TToolButton
      Left = 194
      Top = 0
      Hint = 'Alterar Registro - F10'
      Caption = 'BtnAlterar'
      ImageIndex = 3
      OnClick = BtnAlterarClick
    end
    object ToolButton14: TToolButton
      Left = 225
      Top = 0
      Width = 8
      Caption = 'ToolButton14'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object BtnSalvar: TToolButton
      Left = 233
      Top = 0
      Hint = 'Salvar - F12'
      Caption = 'Salvar'
      ImageIndex = 14
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TToolButton
      Left = 264
      Top = 0
      Hint = 'Cancelar - Esc'
      Caption = 'Cancelar'
      ImageIndex = 13
      OnClick = BtnCancelarClick
    end
    object ToolButton4: TToolButton
      Left = 295
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object BtnImprimir: TToolButton
      Left = 303
      Top = 0
      Hint = 'Imprimir - F8'
      Caption = 'BtnImprimir'
      ImageIndex = 8
      OnClick = BtnImprimirClick
    end
    object btnhtml: TToolButton
      Left = 334
      Top = 0
      Hint = 'Exportar dados para HTML'
      Caption = 'btnhtml'
      ImageIndex = 7
      OnClick = btnhtmlClick
    end
    object btnexcel: TToolButton
      Left = 365
      Top = 0
      Hint = 'Exportar para o Excel'
      Caption = 'btnexcel'
      ImageIndex = 4
      OnClick = btnexcelClick
    end
    object ToolButton19: TToolButton
      Left = 396
      Top = 0
      Width = 8
      Caption = 'ToolButton19'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object BtnExcluir: TToolButton
      Left = 404
      Top = 0
      Hint = 'Excluir Registro - Ctrl + Delete'
      Caption = 'BtnExcluir'
      ImageIndex = 5
      OnClick = BtnExcluirClick
    end
    object ToolButton2: TToolButton
      Left = 435
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btndesconectar: TToolButton
      Left = 443
      Top = 0
      Hint = 'Desconectar - F7'
      Caption = 'btndesconectar'
      ImageIndex = 2
      OnClick = btndesconectarClick
    end
    object BtnFiltro: TToolButton
      Left = 474
      Top = 0
      Hint = 'Atualizar - F9'
      Caption = 'BtnFiltro'
      ImageIndex = 1
      OnClick = BtnFiltroClick
    end
    object ToolButton22: TToolButton
      Left = 505
      Top = 0
      Width = 8
      Caption = 'ToolButton22'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object btnexportar: TToolButton
      Left = 513
      Top = 0
      Hint = 'Exportar Dados - F4'
      ImageIndex = 18
      OnClick = btnexportarClick
    end
    object btnimportar: TToolButton
      Left = 544
      Top = 0
      Hint = 'Importar Dados - F2'
      ImageIndex = 19
      OnClick = btnimportarClick
    end
    object ToolButton1: TToolButton
      Left = 575
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 583
      Top = 0
      Hint = 'Sair - Esc'
      ImageIndex = 12
      OnClick = btnsairClick
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 67
    Width = 633
    Height = 415
    ActivePage = TabConsulta
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = False
    object TabConsulta: TTabSheet
      Caption = 'Consulta'
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 625
        Height = 200
        Align = alClient
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDblClick = DBGridDblClick
        OnKeyDown = txtpesquisaKeyDown
        OnTitleClick = DBGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'USULOGIN'
            Title.Caption = 'Login'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUNOME'
            Title.Caption = 'Nome'
            Width = 430
            Visible = True
          end>
      end
      object JvDBGrid1: TDBGrid
        Left = 0
        Top = 200
        Width = 625
        Height = 185
        Align = alBottom
        DataSource = Dm.DSItemUsuario
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDblClick = DBGridDblClick
        OnKeyDown = txtpesquisaKeyDown
        OnTitleClick = DBGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PRONOME'
            Title.Caption = 'Programa'
            Width = 370
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEACESSO'
            Title.Caption = 'Acesso'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEINSERCAO'
            Title.Caption = 'Inser'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEALTERACAO'
            Title.Caption = 'Altera'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEEXCLUSAO'
            Title.Caption = 'Exclus'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITERELATORIO'
            Title.Caption = 'Relat'#243'rio'
            Visible = True
          end>
      end
    end
    object TabCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 4
        Top = 12
        Width = 31
        Height = 15
        Caption = 'Login'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 133
        Top = 10
        Width = 33
        Height = 15
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 443
        Top = 12
        Width = 36
        Height = 15
        Caption = 'Senha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtlogin: TWSDBEdit
        Left = 38
        Top = 11
        Width = 86
        DataField = 'USULOGIN'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 0
        OnKeyDown = txtloginKeyDown
        Chave = True
        FocoNovo = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit2: TWSDBEdit
        Left = 171
        Top = 11
        Width = 259
        height = 18
        DataField = 'USUNOME'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 1
        OnKeyDown = txtloginKeyDown
        FocoAlterar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit3: TWSDBEdit
        Left = 481
        Top = 11
        Width = 76
        DataField = 'USUSENHA'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 2
        OnKeyDown = txtloginKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 43
        Width = 625
        Height = 342
        ActivePage = TabSheet1
        Align = alBottom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object TabSheet2: TTabSheet
          Caption = 'Dados'
          ImageIndex = 1
          object Label6: TLabel
            Left = 5
            Top = 168
            Width = 47
            Height = 15
            Caption = 'Tel. Res.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 5
            Top = 119
            Width = 35
            Height = 15
            Caption = 'Bairro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 5
            Top = 97
            Width = 54
            Height = 15
            Caption = 'Endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 211
            Top = 119
            Width = 39
            Height = 15
            Caption = 'Cidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 5
            Top = 144
            Width = 22
            Height = 15
            Caption = 'Cep'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 209
            Top = 169
            Width = 51
            Height = 15
            Caption = 'Tel. Com.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 5
            Top = 193
            Width = 34
            Height = 15
            Caption = 'E-Mail'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btncidade: TSpeedButton
            Tag = 99
            Left = 286
            Top = 116
            Width = 24
            Height = 23
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
            Visible = False
            OnClick = btncidadeClick
          end
          object Label18: TLabel
            Left = 211
            Top = 52
            Width = 81
            Height = 15
            Caption = 'Registro Geral'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 437
            Top = 71
            Width = 22
            Height = 15
            Caption = 'CPF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 409
            Top = 170
            Width = 43
            Height = 15
            Caption = 'Tel. Cel.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 210
            Top = 28
            Width = 72
            Height = 15
            Caption = 'Naturalidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnnaturalidade: TSpeedButton
            Tag = 99
            Left = 286
            Top = 25
            Width = 24
            Height = 23
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
            Visible = False
            OnClick = btnnaturalidadeClick
          end
          object Label15: TLabel
            Left = 5
            Top = 28
            Width = 80
            Height = 15
            Caption = 'Nacionalidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 5
            Top = 50
            Width = 46
            Height = 15
            Caption = 'Nascim.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 405
            Top = 197
            Width = 50
            Height = 15
            Caption = 'Situa'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 210
            Top = 144
            Width = 65
            Height = 15
            Caption = 'Estado Civil'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 5
            Top = 69
            Width = 53
            Height = 15
            Caption = 'Data Exp.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 209
            Top = 73
            Width = 62
            Height = 15
            Caption = 'Org'#227'o Exp.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 5
            Top = 4
            Width = 18
            Height = 15
            Caption = 'Pai'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 323
            Top = 4
            Width = 24
            Height = 15
            Caption = 'M'#227'e'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 5
            Top = 223
            Width = 57
            Height = 15
            Caption = 'Forma'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object WSDBComboBox2: TWSDBComboBox
            Left = 309
            Top = 142
            Width = 91
            Height = 23
            Style = csDropDownList
            DataField = 'USUESTADOCIVIL'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'Casado(a)'
              'Divorciado(a)'
              'Solteiro(a)'
              'Separado(a)'
              'Viuvo(a)')
            ParentFont = False
            ParentShowHint = False
            TabOrder = 15
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit1: TWSDBEdit
            Left = 87
            Top = 169
            Width = 122
            DataField = 'USUFONE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 16
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit5: TWSDBEdit
            Left = 87
            Top = 96
            Width = 496
            DataField = 'USUENDERECO'
            DataSource = DataSource
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
          object WSDBEdit6: TWSDBEdit
            Left = 87
            Top = 120
            Width = 122
            DataField = 'USUBAIRRO'
            DataSource = DataSource
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
          object txtcodcidade: TWSDBEdit
            Left = 309
            Top = 120
            Width = 70
            DataField = 'USUCIDADE'
            DataSource = DataSource
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
          object txtcidade: TWSDBEdit
            Left = 381
            Top = 120
            Width = 202
            DataField = 'Cidade'
            DataSource = DataSource
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
          object WSDBEdit8: TWSDBEdit
            Left = 87
            Top = 144
            Width = 121
            DataField = 'USUCEP'
            DataSource = DataSource
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
          object WSDBEdit10: TWSDBEdit
            Left = 277
            Top = 169
            Width = 122
            DataField = 'USUFAX'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 17
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit11: TWSDBEdit
            Left = 87
            Top = 193
            Width = 312
            DataField = 'USUEMAIL'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 19
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit16: TWSDBEdit
            Left = 312
            Top = 51
            Width = 121
            DataField = 'USUIDENTIDADE'
            DataSource = DataSource
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
          object txtcpf: TWSDBEdit
            Left = 463
            Top = 72
            Width = 122
            DataField = 'USUCPF'
            DataSource = DataSource
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
          object WSDBEdit7: TWSDBEdit
            Left = 461
            Top = 169
            Width = 122
            DataField = 'USUCELULAR'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 18
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcodnaturalidade: TWSDBEdit
            Left = 312
            Top = 28
            Width = 68
            DataField = 'USUNATURALIDADE'
            DataSource = DataSource
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
          object txtnaturalidade: TWSDBEdit
            Left = 381
            Top = 27
            Width = 202
            DataField = 'naturalidade'
            DataSource = DataSource
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
          object WSDBEdit4: TWSDBEdit
            Left = 87
            Top = 27
            Width = 120
            DataField = 'USUNACIONALIDADE'
            DataSource = DataSource
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
          object txtnasc: TWSDBEdit
            Left = 87
            Top = 50
            Width = 122
            DataField = 'USUNASCIMENTO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            ParentShowHint = False
            TabOrder = 5
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtsituacao: TWSDBComboBox
            Left = 460
            Top = 193
            Width = 123
            Height = 23
            Style = csDropDownList
            DataField = 'USUSITUACAO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'Ativo'
              'Desistente'
              'Suspenso Tempor'#225'riamente'
              'Transferido'
              'Outro'
              'Extens'#227'o'
              'Pendente Monografia'
              'T'#233'rmino do Curso'
              'Pendente Matr'#237'cula')
            ParentFont = False
            ParentShowHint = False
            TabOrder = 20
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit9: TWSDBEdit
            Left = 87
            Top = 73
            Width = 121
            DataField = 'USUDATAEXPEDICAO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            ParentShowHint = False
            TabOrder = 7
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit12: TWSDBEdit
            Left = 311
            Top = 73
            Width = 120
            DataField = 'USUORGAOEXPEDIDOR'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 8
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit14: TWSDBEdit
            Left = 87
            Top = 3
            Width = 229
            DataField = 'USUNOMEPAI'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 0
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit15: TWSDBEdit
            Left = 355
            Top = 3
            Width = 229
            DataField = 'USUNOMEMAE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 1
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBMemo1: TWSDBMemo
            Left = 87
            Top = 216
            Width = 313
            height = 82
            BevelInner = bvNone
            DataField = 'USUHISTESCOLAR'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 21
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Acessos'
          object Label21: TLabel
            Left = 13
            Top = 36
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
          object DBGrid1: TDBGrid
            Left = 0
            Top = 64
            Width = 617
            Height = 204
            TabStop = False
            Align = alBottom
            DataSource = Dm.DSItemUsuario
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -12
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            OnKeyDown = txtpesquisaKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'PRONOME'
                Title.Caption = 'Programa'
                Width = 309
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEACESSO'
                Title.Caption = 'Acesso'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEINSERCAO'
                Title.Caption = 'Inser'#231#227'o'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEALTERACAO'
                Title.Caption = 'Altera'#231#227'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEEXCLUSAO'
                Title.Caption = 'Exclus'#227'o'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITERELATORIO'
                Title.Caption = 'Relat'#243'rio'
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 0
            Top = 268
            Width = 617
            Height = 44
            Align = alBottom
            TabOrder = 1
            object Label5: TLabel
              Left = 5
              Top = 3
              Width = 57
              Height = 15
              Caption = 'Programa'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnprograma: TSpeedButton
              Left = 104
              Top = 16
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
              OnClick = btnprogramaClick
            end
            object txtprograma: TWSEdit
              Left = 5
              Top = 19
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
              TabOrder = 0
              OnKeyDown = txtloginKeyDown
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
            object chkacesso: TCheckBox
              Left = 128
              Top = 18
              Width = 79
              Height = 17
              Caption = 'Acesso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnKeyDown = txtloginKeyDown
            end
            object chkinsercao: TCheckBox
              Left = 208
              Top = 18
              Width = 86
              Height = 17
              Caption = 'Inser'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnKeyDown = txtloginKeyDown
            end
            object chkexclusao: TCheckBox
              Left = 376
              Top = 18
              Width = 86
              Height = 17
              Caption = 'Exclus'#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              OnKeyDown = txtloginKeyDown
            end
            object chkalteracao: TCheckBox
              Left = 296
              Top = 18
              Width = 79
              Height = 17
              Caption = 'Altera'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              OnKeyDown = txtloginKeyDown
            end
            object chkrelatorio: TCheckBox
              Left = 463
              Top = 18
              Width = 86
              Height = 17
              Caption = 'Relat'#243'rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              OnKeyDown = txtloginKeyDown
              OnKeyPress = chkrelatorioKeyPress
            end
            object ToolBarItem: TToolBar
              Left = 546
              Top = 1
              Width = 70
              Height = 42
              Align = alRight
              BorderWidth = 2
              ButtonHeight = 30
              ButtonWidth = 31
              Caption = 'ToolBarItem'
              Images = Dm.ImageList
              TabOrder = 6
              object btnsalvaritem: TToolButton
                Left = 0
                Top = 0
                Hint = 'Salvar'
                Caption = 'btnsalvaritem'
                ImageIndex = 14
                ParentShowHint = False
                ShowHint = True
                OnClick = btnsalvaritemClick
              end
              object btnexcluiritem: TToolButton
                Left = 31
                Top = 0
                Hint = 'Excluir'
                Caption = 'btnexcluiritem'
                ImageIndex = 5
                ParentShowHint = False
                ShowHint = True
                OnClick = btnexcluiritemClick
              end
            end
            object chkTodos: TCheckBox
              Left = 128
              Top = 0
              Width = 410
              Height = 17
              Caption = 'Lan'#231'ar todos os acessos como padr'#227'o os itens selecionados abaixo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
              OnKeyDown = txtloginKeyDown
            end
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 131
            Top = 2
            Width = 95
            Height = 30
            Caption = ' N'#227'o Inclui Alunos '
            Columns = 2
            DataField = 'USUNAOINCLUI'
            DataSource = DataSource
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = True
            ParentFont = False
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
            OnChange = DBRadioGroup3Change
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 235
            Top = 2
            Width = 95
            Height = 30
            Caption = ' N'#227'o Exclui Alunos '
            Columns = 2
            DataField = 'USUNAOEXCLUI'
            DataSource = DataSource
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = True
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              'S'
              'N')
            OnChange = DBRadioGroup3Change
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 339
            Top = 2
            Width = 95
            Height = 30
            Caption = ' N'#227'o Altera Alunos '
            Columns = 2
            DataField = 'USUNAOALTERA'
            DataSource = DataSource
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = True
            ParentFont = False
            TabOrder = 4
            Values.Strings = (
              'S'
              'N')
            OnChange = DBRadioGroup3Change
          end
          object DBRadioGroup4: TDBRadioGroup
            Left = 443
            Top = 2
            Width = 95
            Height = 30
            Caption = ' N'#227'o Consulta '
            Columns = 2
            DataField = 'USUNAOCONSULTA'
            DataSource = DataSource
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = True
            ParentFont = False
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
            Visible = False
            OnChange = DBRadioGroup3Change
          end
          object RGCoordenador: TDBRadioGroup
            Left = 2
            Top = 2
            Width = 127
            Height = 30
            Caption = ' Coordenador '
            Columns = 2
            DataField = 'USUCOORDENADOR'
            DataSource = DataSource
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = True
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              'S'
              'N')
            OnChange = DBRadioGroup3Change
          end
          object WSDBEdit13: TWSDBEdit
            Left = 79
            Top = 35
            Width = 66
            DataField = 'USUPROFESSOR'
            DataSource = DataSource
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
          object txtprofessor: TWSDBEdit
            Left = 177
            Top = 35
            Width = 356
            DataField = 'PRONOME'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 8
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object btnProf: TButton
            Left = 147
            Top = 34
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 9
            OnClick = btnProfClick
          end
        end
      end
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 633
    Height = 43
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 10
      Top = 14
      Width = 33
      Height = 15
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtpesquisa: TWSEdit
      Left = 47
      Top = 13
      Width = 121
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
      OnKeyDown = txtpesquisaKeyDown
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object RLReport: TRLReport
    Left = 153
    Top = 497
    Width = 794
    Height = 1123
    DataSource = Dm.DSUsuario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 188
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
        DataSource = Dm.DSInstituto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBImage1: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = Dm.DSInstituto
        Stretch = True
      end
      object RLDBText2: TRLDBText
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
      object RLDBText3: TRLDBText
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
      object RLDBText4: TRLDBText
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
      object RLDBText5: TRLDBText
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
      object RLDBText11: TRLDBText
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
      object RLDBText6: TRLDBText
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
    end
    object RLBand3: TRLBand
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
      object RLLabel1: TRLLabel
        Left = 248
        Top = 5
        Width = 222
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Usu'#225'rios'
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
    object RLBand4: TRLBand
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
      object RLLabel2: TRLLabel
        Left = 11
        Top = 2
        Width = 34
        Height = 15
        Caption = 'Login'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 173
        Top = 2
        Width = 36
        Height = 15
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 168
      Width = 718
      Height = 20
      object RLDBText7: TRLDBText
        Left = 12
        Top = 2
        Width = 66
        Height = 15
        DataField = 'USULOGIN'
        DataSource = Dm.DSUsuario
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 173
        Top = 2
        Width = 442
        Height = 15
        AutoSize = False
        DataField = 'USUNOME'
        DataSource = Dm.DSUsuario
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
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
  object DataSource: TDataSource
    DataSet = Dm.CDSUsuario
    Left = 8
    Top = 8
  end
  object WSInformacao: TWSInformacao
    Tabela = 'TUSUARIO'
    Programa = 18
    Campo = 'USULOGIN'
    Left = 40
    Top = 8
  end
end
