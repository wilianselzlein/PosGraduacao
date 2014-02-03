object FAluno: TFAluno
  Left = 258
  Top = 10
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 563
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 628
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de Alunos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 199
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 533
    Width = 628
    Height = 30
    Align = alBottom
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 31
    Images = DM.ImageList
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
    Top = 53
    Width = 628
    Height = 480
    ActivePage = TabConsulta
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabStop = False
    object TabConsulta: TTabSheet
      Caption = '&Consulta'
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 620
        Height = 452
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'ALUCOD'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALUNOME'
            Title.Caption = 'Nome'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Caption = 'Cidade'
            Width = 200
            Visible = True
          end>
      end
    end
    object TabCadastro: TTabSheet
      Caption = 'Cadastro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Panel_Cima: TPanel
        Left = 0
        Top = 0
        Width = 620
        Height = 46
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 6
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 16
          Top = 26
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
        object Label21: TLabel
          Left = 230
          Top = 5
          Width = 29
          Height = 15
          Caption = 'Sexo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txtcod: TWSDBEdit
          Left = 98
          Top = 5
          Width = 121
          DataField = 'ALUCOD'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          TabOrder = 0
          OnKeyDown = txtcodKeyDown
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object txtnome: TWSDBEdit
          Left = 98
          Top = 26
          Width = 495
          DataField = 'ALUNOME'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          TabOrder = 1
          OnExit = txtnomeExit
          OnKeyDown = txtcodKeyDown
          FocoNovo = True
          FocoAlterar = True
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object WSDBComboBox3: TWSDBComboBox
          Left = 265
          Top = 2
          Width = 120
          Height = 23
          Style = csDropDownList
          DataField = 'ALUSEXO'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Items.Strings = (
            'Masculino'
            'Feminino')
          ParentFont = False
          ParentShowHint = False
          TabOrder = 2
          OnKeyDown = txtcodKeyDown
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
      end
      object PageControl1: TPageControl
        Tag = 99
        Left = 0
        Top = 46
        Width = 620
        Height = 406
        ActivePage = TabSheet1
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = False
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          Caption = 'Dados'
          object Label3: TLabel
            Left = 5
            Top = 172
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
          object Label6: TLabel
            Left = 5
            Top = 128
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
          object Label7: TLabel
            Left = 5
            Top = 106
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
            Left = 254
            Top = 128
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
            Top = 151
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
            Left = 212
            Top = 173
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
            Top = 195
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
            Left = 357
            Top = 125
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
            OnClick = btncidadeClick
          end
          object Label18: TLabel
            Left = 214
            Top = 61
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
            Top = 80
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
          object Label8: TLabel
            Left = 409
            Top = 174
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
          object Label22: TLabel
            Left = 479
            Top = 283
            Width = 81
            Height = 15
            Caption = 'Emitir carteira'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 213
            Top = 37
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
            Left = 359
            Top = 34
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
            OnClick = btnnaturalidadeClick
          end
          object Label15: TLabel
            Left = 5
            Top = 37
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
            Top = 62
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
            Left = 5
            Top = 280
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
            Left = 213
            Top = 151
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
            Top = 84
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
            Left = 212
            Top = 82
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
          object Label27: TLabel
            Left = 424
            Top = 261
            Width = 139
            Height = 15
            Caption = 'Entregou Diploma Auten.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 293
            Top = 13
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
            Left = 434
            Top = 13
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
          object Label54: TLabel
            Left = 400
            Top = 195
            Width = 61
            Height = 15
            Caption = 'Senha Site'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label56: TLabel
            Left = 486
            Top = 213
            Width = 76
            Height = 15
            Caption = 'Entregou CPF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label58: TLabel
            Left = 492
            Top = 236
            Width = 70
            Height = 15
            Caption = 'Entregou RG'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 5
            Top = 237
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
          object Label34: TLabel
            Left = 228
            Top = 281
            Width = 44
            Height = 15
            Caption = 'Bolsa %'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 5
            Top = 216
            Width = 55
            Height = 15
            Caption = 'E-Mail Alt.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblalterar: TLabel
            Left = 409
            Top = 304
            Width = 159
            Height = 15
            Caption = 'Permitir alt. de outros users'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblsituacao: TDBText
            Left = 88
            Top = 283
            Width = 62
            Height = 15
            AutoSize = True
            DataField = 'ALUSITUACAO'
            DataSource = DataSource
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label38: TLabel
            Left = 208
            Top = 305
            Width = 66
            Height = 15
            Caption = 'Desconto %'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 6
            Top = 305
            Width = 79
            Height = 15
            Caption = 'Data Situa'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 8
            Top = 13
            Width = 73
            Height = 15
            Caption = 'Respons'#225'vel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label53: TLabel
            Left = 143
            Top = 13
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
          object btnapagar: TSpeedButton
            Tag = 99
            Left = 184
            Top = 56
            Width = 21
            Height = 21
            Hint = 'Apagar data'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
              555557777F777555F55500000000555055557777777755F75555005500055055
              555577F5777F57555555005550055555555577FF577F5FF55555500550050055
              5555577FF77577FF555555005050110555555577F757777FF555555505099910
              555555FF75777777FF555005550999910555577F5F77777775F5500505509990
              3055577F75F77777575F55005055090B030555775755777575755555555550B0
              B03055555F555757575755550555550B0B335555755555757555555555555550
              BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
              50BB555555555555575F555555555555550B5555555555555575}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnapagarClick
          end
          object btnapagarexpedicao: TSpeedButton
            Tag = 99
            Left = 184
            Top = 80
            Width = 21
            Height = 21
            Hint = 'Apagar data'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
              555557777F777555F55500000000555055557777777755F75555005500055055
              555577F5777F57555555005550055555555577FF577F5FF55555500550050055
              5555577FF77577FF555555005050110555555577F757777FF555555505099910
              555555FF75777777FF555005550999910555577F5F77777775F5500505509990
              3055577F75F77777575F55005055090B030555775755777575755555555550B0
              B03055555F555757575755550555550B0B335555755555757555555555555550
              BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
              50BB555555555555575F555555555555550B5555555555555575}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnapagarexpedicaoClick
          end
          object btnapagarcursosituacao: TSpeedButton
            Tag = 99
            Left = 184
            Top = 304
            Width = 21
            Height = 21
            Hint = 'Apagar data'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
              555557777F777555F55500000000555055557777777755F75555005500055055
              555577F5777F57555555005550055555555577FF577F5FF55555500550050055
              5555577FF77577FF555555005050110555555577F757777FF555555505099910
              555555FF75777777FF555005550999910555577F5F77777775F5500505509990
              3055577F75F77777575F55005055090B030555775755777575755555555550B0
              B03055555F555757575755550555550B0B335555755555757555555555555550
              BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
              50BB555555555555575F555555555555550B5555555555555575}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnapagarcursosituacaoClick
          end
          object Label55: TLabel
            Left = 6
            Top = 338
            Width = 56
            Height = 15
            Caption = 'Solicitado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnapagarsol: TSpeedButton
            Tag = 99
            Left = 184
            Top = 337
            Width = 21
            Height = 21
            Hint = 'Apagar data'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
              555557777F777555F55500000000555055557777777755F75555005500055055
              555577F5777F57555555005550055555555577FF577F5FF55555500550050055
              5555577FF77577FF555555005050110555555577F757777FF555555505099910
              555555FF75777777FF555005550999910555577F5F77777775F5500505509990
              3055577F75F77777575F55005055090B030555775755777575755555555550B0
              B03055555F555757575755550555550B0B335555755555757555555555555550
              BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
              50BB555555555555575F555555555555550B5555555555555575}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnapagarsolClick
          end
          object Label57: TLabel
            Left = 220
            Top = 340
            Width = 51
            Height = 15
            Caption = 'Entregue'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnapagarent: TSpeedButton
            Tag = 99
            Left = 371
            Top = 334
            Width = 21
            Height = 21
            Hint = 'Apagar data'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
              555557777F777555F55500000000555055557777777755F75555005500055055
              555577F5777F57555555005550055555555577FF577F5FF55555500550050055
              5555577FF77577FF555555005050110555555577F757777FF555555505099910
              555555FF75777777FF555005550999910555577F5F77777775F5500505509990
              3055577F75F77777575F55005055090B030555775755777575755555555550B0
              B03055555F555757575755550555550B0B335555755555757555555555555550
              BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
              50BB555555555555575F555555555555550B5555555555555575}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnapagarentClick
          end
          object Bevel1: TBevel
            Left = 2
            Top = 330
            Width = 571
            Height = 2
          end
          object Label59: TLabel
            Left = 8
            Top = 322
            Width = 62
            Height = 15
            Caption = 'Certificado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object WSDBComboBox2: TWSDBComboBox
            Left = 309
            Top = 149
            Width = 91
            Height = 23
            Style = csDropDownList
            DataField = 'ALUESTADOCIVIL'
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
              'Viuvo(a)'
              'Amasiado(a)')
            ParentFont = False
            ParentShowHint = False
            TabOrder = 17
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtsenha: TWSDBEdit
            Left = 461
            Top = 194
            Width = 121
            DataField = 'ALUSENHA'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 22
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit21: TWSDBEdit
            Left = 564
            Top = 236
            Width = 16
            height = 18
            DataField = 'ALUENTREGOURG'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 30
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit19: TWSDBEdit
            Left = 564
            Top = 214
            Width = 16
            DataField = 'ALUENTREGOUCPF'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 29
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit3: TWSDBEdit
            Left = 87
            Top = 173
            Width = 122
            DataField = 'ALUFONE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 18
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit5: TWSDBEdit
            Left = 88
            Top = 105
            Width = 496
            DataField = 'ALUENDERECO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 12
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit6: TWSDBEdit
            Left = 87
            Top = 129
            Width = 160
            DataField = 'ALUBAIRRO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 13
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcodcidade: TWSDBEdit
            Left = 305
            Top = 130
            Width = 46
            DataField = 'ALUCIDADE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 14
            OnExit = txtcodcidadeExit
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcidade: TWSDBEdit
            Left = 381
            Top = 129
            Width = 202
            DataField = 'CIDADE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 15
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit8: TWSDBEdit
            Left = 87
            Top = 151
            Width = 121
            DataField = 'ALUCEP'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 16
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit10: TWSDBEdit
            Left = 277
            Top = 173
            Width = 122
            DataField = 'ALUFAX'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 19
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit11: TWSDBEdit
            Left = 87
            Top = 195
            Width = 312
            DataField = 'ALUEMAIL'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 21
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit16: TWSDBEdit
            Left = 312
            Top = 60
            Width = 121
            DataField = 'ALUIDENTIDADE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 8
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcpf: TWSDBEdit
            Left = 463
            Top = 81
            Width = 122
            DataField = 'ALUCPF'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 11
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit7: TWSDBEdit
            Left = 461
            Top = 173
            Width = 122
            DataField = 'ALUCELULAR'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 20
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcarteira: TWSDBEdit
            Left = 564
            Top = 282
            Width = 16
            DataField = 'ALUCARTEIRA'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 32
            OnKeyDown = txtcodKeyDown
            EnterClicar = True
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcodnaturalidade: TWSDBEdit
            Left = 311
            Top = 36
            Width = 48
            DataField = 'ALUNATURALIDADE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 5
            OnExit = txtcodnaturalidadeExit
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtnaturalidade: TWSDBEdit
            Left = 381
            Top = 36
            Width = 202
            DataField = 'NATURALIDADE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 6
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit1: TWSDBEdit
            Left = 87
            Top = 36
            Width = 120
            DataField = 'ALUNACIONALIDADE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 4
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtnasc: TWSDBEdit
            Left = 87
            Top = 59
            Width = 97
            DataField = 'ALUNASCIMENTO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 7
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtsituacao: TWSDBComboBox
            Left = 87
            Top = 279
            Width = 135
            Height = 23
            Style = csDropDownList
            DataField = 'ALUSITUACAO'
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
              'Termino do Curso'
              'Pendente Matr'#237'cula')
            ParentFont = False
            ParentShowHint = False
            TabOrder = 25
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit4: TWSDBEdit
            Left = 87
            Top = 82
            Width = 96
            DataField = 'ALUDATAEXPEDICAO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 9
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit9: TWSDBEdit
            Left = 311
            Top = 82
            Width = 120
            DataField = 'ALUORGAOEXPEDIDOR'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 10
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit12: TWSDBEdit
            Left = 564
            Top = 260
            Width = 16
            DataField = 'ALUENTREGOUDIPLOMA'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 31
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit13: TWSDBEdit
            Left = 311
            Top = 12
            Width = 124
            DataField = 'ALUNOMEPAI'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 2
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit14: TWSDBEdit
            Left = 459
            Top = 12
            Width = 124
            DataField = 'ALUNOMEMAE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 3
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBMemo1: TWSDBMemo
            Left = 87
            Top = 237
            Width = 313
            height = 38
            BevelInner = bvNone
            DataField = 'ALUHISTESCOLAR'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 24
            OnKeyDown = txtocorrenciasKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit2: TWSDBEdit
            Left = 277
            Top = 281
            Width = 124
            DataField = 'ALUBOLSA'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 26
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit17: TWSDBEdit
            Left = 87
            Top = 216
            Width = 312
            DataField = 'ALUEMAILALT'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 23
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtalterar: TWSDBEdit
            Left = 564
            Top = 303
            Width = 16
            DataField = 'ALUALTERAR'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 33
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit22: TWSDBEdit
            Left = 277
            Top = 305
            Width = 124
            DataField = 'ALUDESCONTO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 28
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit23: TWSDBEdit
            Left = 88
            Top = 305
            Width = 94
            DataField = 'ALUDATAPENDMONO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 27
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtresponsavel: TWSDBComboBox
            Left = 87
            Top = 10
            Width = 54
            Height = 23
            Style = csDropDownList
            DataField = 'ALURESPONSAVEL'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              ''
              'Pai'
              'M'#227'e')
            ParentFont = False
            ParentShowHint = False
            TabOrder = 0
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit24: TWSDBEdit
            Left = 166
            Top = 12
            Width = 124
            DataField = 'ALURESPONSAVELCPF'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 1
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit25: TWSDBEdit
            Left = 88
            Top = 338
            Width = 94
            DataField = 'ALUCERTSOLICITADO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 34
            OnKeyDown = txtcodKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit26: TWSDBEdit
            Left = 278
            Top = 338
            Width = 94
            DataField = 'ALUCERTENTREGA'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 35
            OnKeyDown = txtcodKeyDown
            EnterClicar = True
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Hist'#243'rico'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object PanCurso: TPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 378
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 0
            object pandisciplinas: TPanel
              Left = 2
              Top = 29
              Width = 608
              Height = 297
              Align = alClient
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = clWhite
              TabOrder = 0
              object DBGrid1: TDBGrid
                Left = 2
                Top = 42
                Width = 435
                Height = 253
                TabStop = False
                Align = alClient
                DataSource = DM.DSAlunoDisciplina
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 1
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -9
                TitleFont.Name = 'Arial'
                TitleFont.Style = [fsBold]
                OnKeyDown = txtpesquisaKeyDown
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DISNOME'
                    Title.Caption = 'Disciplina'
                    Width = 160
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRONOME'
                    Title.Caption = 'Professor'
                    Width = 160
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ALUDISHA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'HA'
                    Width = 31
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'ALUDISDATA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Data'
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'ALUDISNOTA1'
                    Title.Alignment = taRightJustify
                    Title.Caption = '1'#186' T'
                    Width = 50
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'ALUDISFREQUENCIA1'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Freq. %'
                    Width = 50
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'ALUDISNOTA2'
                    Title.Alignment = taRightJustify
                    Title.Caption = '2'#186' T'
                    Width = 50
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'ALUDISFREQUENCIA2'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Freq. %'
                    Width = 50
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'ALUDISNOTA3'
                    Title.Alignment = taRightJustify
                    Title.Caption = '3'#186' T'
                    Width = 50
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'ALUDISFREQUENCIA3'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Freq. %'
                    Width = 50
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'ALUDISNOTA4'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Prov'
                    Width = 50
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'ALUDISFREQUENCIA4'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Freq. %'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'ALUDISNOTA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Notas'
                    Width = 50
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ALUDISFREQUENCIA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Freq. %'
                    Width = 50
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'ALUDISSITUACAO'
                    PickList.Strings = (
                      'A'
                      'R')
                    Title.Caption = 'Sit.'
                    Visible = True
                  end>
              end
              object DBGridDiscData: TDBGrid
                Left = 437
                Top = 42
                Width = 169
                Height = 253
                Align = alRight
                DataSource = DM.DSAlunoDisciplinaData
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 2
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -9
                TitleFont.Name = 'Arial'
                TitleFont.Style = [fsBold]
                OnKeyDown = txtpesquisaKeyDown
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ALUDISDATADATA'
                    Title.Caption = 'Data'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ALUDISDATAINICIO'
                    Title.Caption = 'In'#237'cio'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ALUDISDATAFIM'
                    Title.Caption = 'Fim'
                    Visible = True
                  end>
              end
              object Panel1: TPanel
                Left = 2
                Top = 2
                Width = 604
                Height = 40
                Align = alTop
                TabOrder = 0
                object Label42: TLabel
                  Left = 5
                  Top = 1
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
                object Label43: TLabel
                  Left = 232
                  Top = 1
                  Width = 26
                  Height = 15
                  Caption = 'Nota'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object btndisciplina: TSpeedButton
                  Left = 59
                  Top = 17
                  Width = 22
                  Height = 21
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
                object Label44: TLabel
                  Left = 301
                  Top = 1
                  Width = 63
                  Height = 15
                  Caption = 'Frequ'#234'ncia'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label49: TLabel
                  Left = 87
                  Top = 1
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
                object btndisprofessor: TSpeedButton
                  Left = 139
                  Top = 17
                  Width = 23
                  Height = 21
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
                  OnClick = btndisprofessorClick
                end
                object Label28: TLabel
                  Left = 164
                  Top = 1
                  Width = 62
                  Height = 15
                  Caption = 'Horas Aula'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object btnimportardisciplinas: TSpeedButton
                  Left = 373
                  Top = 10
                  Width = 85
                  Height = 22
                  Hint = 'Importar disciplinas do curso para o aluno'
                  Caption = 'Importar'
                  Flat = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
                    078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
                    BE078DBEFF00FFFF00FF078DBE25A1D172C7E785D7FA66CDF965CDF965CDF965
                    CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FF078DBE4CBCE7
                    39A8D1A0E2FB6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
                    D984D7EB078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
                    DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9AEF1F9078DBEFF00FF078DBE79DDFB
                    1899C79ADFF392E7FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
                    DAB3F4F9078DBEFF00FF078DBE82E3FC43B7DC65C3E0ACF0FD8DEBFC8DEBFC8D
                    EBFD8DEBFD8DEBFC8DEBFD0C85184CBBDAB6F7F96DCAE0078DBE078DBE8AEAFC
                    77DCF3229CC6FDFFFFC8F7FEC9F7FEC9F7FEC9F7FEC8F7FE0C85183CBC5D0C85
                    18DEF9FBD6F6F9078DBE078DBE93F0FE93F0FD1697C5078DBE078DBE078DBE07
                    8DBE078DBE0C851852D97F62ED9741C4650C8518078DBE078DBE078DBE9BF5FE
                    9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE0C851846CE6C59E48858E18861EB
                    9440C1650C8518FF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFE0C
                    85180C85180C85180C851856E18447CD6E0C85180C85180C8518FF00FF078DBE
                    FEFEFEA5FEFFA5FEFFA5FEFF078CB643B7DC43B7DC43B7DC0C85184EDD7936BA
                    540C8518FF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
                    00FFFF00FFFF00FF0C851840D0650C8518FF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0C85182AB7432DBA490C85
                    18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FF0C851821B5380C8518FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FF0C85180C85180C85180C8518FF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0C85180C85180C
                    85180C8518FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnimportardisciplinasClick
                end
                object txtdisciplina: TWSEdit
                  Left = 5
                  Top = 19
                  Width = 53
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
                  OnKeyDown = txtcodKeyDown
                  ColorOnFocus = clBlack
                  ColorOnNotFocus = clGray
                end
                object ToolBarItem: TToolBar
                  Left = 469
                  Top = 1
                  Width = 134
                  Height = 38
                  Align = alRight
                  BorderWidth = 2
                  ButtonHeight = 30
                  ButtonWidth = 31
                  Caption = 'ToolBarItem'
                  Images = DM.ImageList
                  TabOrder = 5
                  Transparent = False
                  object btnmonografia: TToolButton
                    Left = 0
                    Top = 0
                    Hint = 'Mostrar TCC'
                    Caption = 'btnmonografia'
                    ImageIndex = 21
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnmonografiaClick
                  end
                  object btndiscdatas: TToolButton
                    Left = 31
                    Top = 0
                    Hint = 'Data das aulas'
                    Caption = 'Importar'
                    ImageIndex = 6
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btndiscdatasClick
                  end
                  object btnsalvaritem: TToolButton
                    Left = 62
                    Top = 0
                    Hint = 'Salvar Disciplina'
                    ImageIndex = 14
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnsalvaritemClick
                  end
                  object btnexcluiritem: TToolButton
                    Left = 93
                    Top = 0
                    Hint = 'Excluir Disciplina'
                    ImageIndex = 5
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnexcluiritemClick
                  end
                end
                object txtfrequencia: TWSEdit
                  Left = 300
                  Top = 18
                  Width = 65
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
                  OnKeyDown = txtcodKeyDown
                  enterclicar = True
                  ColorOnFocus = clBlack
                  ColorOnNotFocus = clGray
                end
                object txtnota: TWSEdit
                  Left = 232
                  Top = 18
                  Width = 65
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
                  OnKeyDown = txtcodKeyDown
                  ColorOnFocus = clBlack
                  ColorOnNotFocus = clGray
                end
                object txtdisprofessor: TWSEdit
                  Left = 85
                  Top = 19
                  Width = 53
                  height = 17
                  BevelInner = bvNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  TabOrder = 1
                  OnKeyDown = txtcodKeyDown
                  ColorOnFocus = clBlack
                  ColorOnNotFocus = clGray
                end
                object txtha: TWSEdit
                  Left = 164
                  Top = 18
                  Width = 65
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
                  OnKeyDown = txtcodKeyDown
                  ColorOnFocus = clBlack
                  ColorOnNotFocus = clGray
                end
              end
            end
            object PanMonografia: TPanel
              Left = 2
              Top = 326
              Width = 608
              Height = 50
              Align = alBottom
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = clWhite
              TabOrder = 1
              Visible = False
              object Label51: TLabel
                Left = 449
                Top = 27
                Width = 26
                Height = 15
                Caption = 'Nota'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label52: TLabel
                Left = 9
                Top = 4
                Width = 57
                Height = 15
                Caption = 'T'#237'tulo TCC'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label36: TLabel
                Left = 8
                Top = 27
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
              object btnprofessor: TSpeedButton
                Left = 128
                Top = 24
                Width = 23
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
                OnClick = btnprofessorClick
              end
              object txtmonotitulo: TWSDBEdit
                Left = 87
                Top = 5
                Width = 482
                DataField = 'ALUMONOTITULO'
                DataSource = DataSource
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                TabOrder = 0
                OnKeyDown = txtcodKeyDown
                ColorOnFocus = clBlack
                ColorOnNotFocus = clGray
              end
              object WSDBEdit20: TWSDBEdit
                Left = 479
                Top = 28
                Width = 88
                DataField = 'ALUMONONOTA'
                DataSource = DataSource
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                TabOrder = 3
                OnKeyDown = txtcodKeyDown
                ColorOnFocus = clBlack
                ColorOnNotFocus = clGray
              end
              object txtcodprofessor: TWSDBEdit
                Left = 86
                Top = 28
                Width = 43
                DataField = 'ALUORIENTADOR'
                DataSource = DataSource
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                TabOrder = 1
                OnExit = txtcodprofessorExit
                OnKeyDown = txtcodKeyDown
                ColorOnFocus = clBlack
                ColorOnNotFocus = clGray
              end
              object txtprofessor: TWSDBEdit
                Left = 151
                Top = 28
                Width = 292
                DataField = 'PRONOME'
                DataSource = DataSource
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                TabOrder = 2
                OnKeyDown = txtcodKeyDown
                ColorOnFocus = clBlack
                ColorOnNotFocus = clGray
              end
            end
            object Panel3: TPanel
              Left = 2
              Top = 2
              Width = 608
              Height = 27
              Align = alTop
              TabOrder = 2
              object Label48: TLabel
                Left = 487
                Top = 5
                Width = 20
                Height = 15
                Caption = 'Fim'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label37: TLabel
                Left = 6
                Top = 7
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
                Left = 124
                Top = 2
                Width = 23
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
                OnClick = btncursoClick
              end
              object Label47: TLabel
                Left = 351
                Top = 5
                Width = 30
                Height = 15
                Caption = 'In'#237'cio'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object btnapagarcursoinicio: TSpeedButton
                Tag = 99
                Left = 462
                Top = 4
                Width = 21
                Height = 21
                Hint = 'Apagar data'
                Flat = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                  555557777F777555F55500000000555055557777777755F75555005500055055
                  555577F5777F57555555005550055555555577FF577F5FF55555500550050055
                  5555577FF77577FF555555005050110555555577F757777FF555555505099910
                  555555FF75777777FF555005550999910555577F5F77777775F5500505509990
                  3055577F75F77777575F55005055090B030555775755777575755555555550B0
                  B03055555F555757575755550555550B0B335555755555757555555555555550
                  BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
                  50BB555555555555575F555555555555550B5555555555555575}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = btnapagarcursoinicioClick
              end
              object btnapagarcursofim: TSpeedButton
                Tag = 99
                Left = 589
                Top = 3
                Width = 21
                Height = 21
                Hint = 'Apagar data'
                Flat = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                  555557777F777555F55500000000555055557777777755F75555005500055055
                  555577F5777F57555555005550055555555577FF577F5FF55555500550050055
                  5555577FF77577FF555555005050110555555577F757777FF555555505099910
                  555555FF75777777FF555005550999910555577F5F77777775F5500505509990
                  3055577F75F77777575F55005055090B030555775755777575755555555550B0
                  B03055555F555757575755550555550B0B335555755555757555555555555550
                  BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
                  50BB555555555555575F555555555555550B5555555555555575}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = btnapagarcursofimClick
              end
              object WSDBEdit18: TWSDBEdit
                Left = 512
                Top = 6
                Width = 75
                DataField = 'ALUCURSOFIM'
                DataSource = DataSource
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                TabOrder = 0
                OnKeyDown = txtcodKeyDown
                ColorOnFocus = clBlack
                ColorOnNotFocus = clGray
              end
              object WSDBEdit15: TWSDBEdit
                Left = 386
                Top = 6
                Width = 75
                DataField = 'ALUCURSOINICIO'
                DataSource = DataSource
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                TabOrder = 1
                OnExit = WSDBEdit15Exit
                OnKeyDown = txtcodKeyDown
                ColorOnFocus = clBlack
                ColorOnNotFocus = clGray
              end
              object txtcodcurso: TWSDBEdit
                Left = 74
                Top = 6
                Width = 47
                DataField = 'ALUCURSO'
                DataSource = DataSource
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                TabOrder = 2
                OnExit = txtcodcursoExit
                OnKeyDown = txtcodKeyDown
                ColorOnFocus = clBlack
                ColorOnNotFocus = clGray
              end
              object txtcurso: TWSDBEdit
                Left = 148
                Top = 6
                Width = 200
                DataField = 'CURNOME'
                DataSource = DataSource
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                TabOrder = 3
                OnKeyDown = txtcodKeyDown
                ColorOnFocus = clBlack
                ColorOnNotFocus = clGray
              end
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Mensalidades'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object PanMensalidade: TPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 378
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = clWhite
            TabOrder = 0
            object Label46: TLabel
              Left = 2
              Top = 2
              Width = 79
              Height = 15
              Align = alTop
              Alignment = taCenter
              Caption = 'Mensalidades'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBGrid2: TDBGrid
              Left = 2
              Top = 45
              Width = 608
              Height = 287
              Align = alClient
              DataSource = DM.DSAlunoMensalidade
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 2
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -9
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid2DrawColumnCell
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'MENVENCIMENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vcto'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MENVALOR'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Valor'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MENDESCONTO'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Desconto'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MENBOLSA'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Bolsa'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MENACRESCIMO'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Jur./Multas'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MENLIQUIDO'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'L'#237'quido'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MENVALORPAGO'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Valor Pago'
                  Width = 55
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'MENDATAPAGAMENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data Pgto.'
                  Visible = True
                end>
            end
            object Panel5: TPanel
              Left = 2
              Top = 332
              Width = 608
              Height = 44
              Align = alBottom
              TabOrder = 1
              object Label13: TLabel
                Left = 8
                Top = 5
                Width = 62
                Height = 15
                Caption = 'Valor Total:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText1: TDBText
                Left = 8
                Top = 22
                Width = 65
                Height = 17
                DataField = 'Valor'
                DataSource = DM.DSAlunoMensalidade
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBText2: TDBText
                Left = 90
                Top = 22
                Width = 65
                Height = 17
                DataField = 'Desconto'
                DataSource = DM.DSAlunoMensalidade
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 88
                Top = 5
                Width = 64
                Height = 15
                Caption = 'Descontos:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label24: TLabel
                Left = 152
                Top = 5
                Width = 42
                Height = 15
                Caption = 'Bolsas:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText3: TDBText
                Left = 154
                Top = 22
                Width = 65
                Height = 17
                DataField = 'Bolsa'
                DataSource = DM.DSAlunoMensalidade
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label31: TLabel
                Left = 224
                Top = 5
                Width = 77
                Height = 15
                Caption = 'Juros/Multas:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText4: TDBText
                Left = 226
                Top = 22
                Width = 65
                Height = 17
                DataField = 'Acrescimo'
                DataSource = DM.DSAlunoMensalidade
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBText5: TDBText
                Left = 306
                Top = 22
                Width = 65
                Height = 17
                DataField = 'Liquido'
                DataSource = DM.DSAlunoMensalidade
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label32: TLabel
                Left = 304
                Top = 5
                Width = 44
                Height = 15
                Caption = 'L'#237'quido:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label33: TLabel
                Left = 368
                Top = 5
                Width = 64
                Height = 15
                Caption = 'Valor Pago:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText6: TDBText
                Left = 370
                Top = 22
                Width = 65
                Height = 17
                DataField = 'ValorPago'
                DataSource = DM.DSAlunoMensalidade
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object btnbloquear: TSpeedButton
                Left = 440
                Top = 10
                Width = 63
                Height = 23
                Hint = 'Bloquear Aluno'
                Caption = 'Bloquear Aluno'
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Glyph.Data = {
                  76080000424D7608000000000000360000002800000020000000160000000100
                  1800000000004008000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF1228923042B52735AD2D3AB43342BC2F40B82A45
                  B32947B02B45AF2D45AF3145B23145B23246B33146B33A4FBC384EB73249AD30
                  42A1344098575EAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF2B58A9274CAE3F5DCE415DD94865E64A67ED3D5CE74168
                  FA4068FC446CFB4A6EFA4C70FA4B6FF94A6DF9496BFA3556E93756E74560EC4D
                  63E54051C6424DB54F54B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF21529E234DAE0D31A30526A50D2DB61C3FCB2147DB1542
                  DF1747E31F4FE32555E32857E12554DE214FDD1B4ADC234CE80E36D20D2DC615
                  30BD2136B03C4DB44751A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF25509F5579DD3D5BD23C5ADD3957E4395AED3E65F7416F
                  FC4579FC5186FF5890FF5A92FD548EF84982F5417AF53769F12D5CE62F57DF33
                  55D1425FC7627BCB485B98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF4162B1728CF04A62D4566CEA576DF4546DF95D7AFF6487
                  FF6A92FF79A3FF82AFFF81B3FF77AAFF6A9EFF6092FF507DFC567FFF597CFF4B
                  6AE35671D37C93DE57699EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF4F64AF8C99F5909CFF8590FFA6B3FF8090FF9DACFFA7B5
                  FFADBBFFB4C5FFB9CEFFB7CFFFAFCAFFA4C0FF9DB8FF8BA4FF7A91FF93A5FF7E
                  8EFF8D99FF8790E77278B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF6971B4676DB65358A75C65B54D58A84F5AAC5253
                  A95657A8595CA65B61A259639F5460A04C5BA44654AC4958BF3F4DBD4E59CB3F
                  49B4585EB7696EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = btnbloquearClick
              end
              object ToolBar1: TToolBar
                Left = 503
                Top = 1
                Width = 104
                Height = 42
                Align = alRight
                AutoSize = True
                BorderWidth = 3
                ButtonHeight = 30
                ButtonWidth = 92
                Caption = 'ToolBarItem'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Images = DM.ImageList
                List = True
                ParentFont = False
                ParentShowHint = False
                ShowCaptions = True
                ShowHint = True
                TabOrder = 0
                Transparent = True
                object btnbaixartudo: TToolButton
                  Left = 0
                  Top = 0
                  Hint = 'Baixar todas as mensalidades sem integrar na contabilidade'
                  Caption = 'Baixar Tudo'
                  ImageIndex = 5
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnbaixartudoClick
                end
              end
            end
            object Panel6: TPanel
              Left = 2
              Top = 17
              Width = 608
              Height = 28
              Align = alTop
              TabOrder = 0
              object Label60: TLabel
                Left = 11
                Top = 8
                Width = 100
                Height = 15
                Caption = 'Resp. Pagamento'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object btnresppgto: TSpeedButton
                Left = 206
                Top = 2
                Width = 23
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
                OnClick = btnresppgtoClick
              end
              object txtcodresppgto: TWSDBEdit
                Left = 116
                Top = 6
                Width = 90
                DataField = 'ALURESPPGTO'
                DataSource = DataSource
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                TabOrder = 0
                OnExit = txtcodresppgtoExit
                OnKeyDown = txtcodKeyDown
                ColorOnFocus = clBlack
                ColorOnNotFocus = clGray
              end
              object txtresppgto: TWSDBEdit
                Left = 233
                Top = 6
                Width = 377
                DataField = 'NETNOME'
                DataSource = DataSource
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                TabOrder = 1
                OnKeyDown = txtcodKeyDown
                ColorOnFocus = clBlack
                ColorOnNotFocus = clGray
              end
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Negocia'#231#227'o Financeira'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object WSDBMemo2: TWSDBMemo
            Left = 0
            Top = 38
            Width = 612
            height = 340
            Align = alClient
            BevelInner = bvNone
            DataField = 'ALUNEGFINANCEIRA'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 0
            OnKeyDown = txtocorrenciasKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object ToolBar3: TToolBar
            Left = 0
            Top = 0
            Width = 612
            Height = 38
            AutoSize = True
            BorderWidth = 2
            ButtonHeight = 30
            ButtonWidth = 31
            Caption = 'ToolBarItem'
            Images = DM.ImageList
            TabOrder = 1
            Transparent = False
            object BtnImprimirTexto: TToolButton
              Left = 0
              Top = 0
              Hint = '&Imprimir'
              Caption = 'Imprimir'
              ImageIndex = 8
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnImprimirTextoClick
            end
          end
          object RLReportAna1: TRLReport
            Left = 202
            Top = 241
            Width = 794
            Height = 1123
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            PreviewOptions.ShowModal = True
            Visible = False
            object RLBand71: TRLBand
              Left = 38
              Top = 111
              Width = 718
              Height = 31
              BandType = btTitle
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              object RLLabel12: TRLLabel
                Left = 270
                Top = 1
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
              end
            end
            object RLBand72: TRLBand
              Left = 38
              Top = 1020
              Width = 718
              Height = 57
              BandType = btFooter
              object RLDBText186: TRLDBText
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
              object RLDBImage18: TRLDBImage
                Left = 8
                Top = 2
                Width = 178
                Height = 52
                DataField = 'INSLOGO'
                DataSource = DM.DSInstituto
                Stretch = True
              end
              object RLDBText187: TRLDBText
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
              object RLDBText188: TRLDBText
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
              object RLDBText189: TRLDBText
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
              object RLDBText190: TRLDBText
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
              object RLDBText191: TRLDBText
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
              object RLDBText192: TRLDBText
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
            object RLBand73: TRLBand
              Left = 38
              Top = 142
              Width = 718
              Height = 16
              BandType = btColumnHeader
            end
            object RLGroup6: TRLGroup
              Left = 38
              Top = 158
              Width = 718
              Height = 862
              DataFields = 'ALUCOD'
              PageBreaking = pbAfterPrint
              object RLBand74: TRLBand
                Left = 0
                Top = 105
                Width = 718
                Height = 621
                Borders.Sides = sdCustom
                Borders.DrawLeft = True
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = True
                object RLDBMemo1: TRLDBMemo
                  Left = 1
                  Top = 386
                  Width = 716
                  Height = 234
                  Align = faClient
                  Behavior = [beSiteExpander]
                  DataField = 'ALUNEGFINANCEIRA'
                  DataSource = DataSource
                end
                object RLImage1: TRLImage
                  Left = 1
                  Top = 0
                  Width = 716
                  Height = 386
                  Align = faTop
                  Center = True
                  Picture.Data = {
                    0A544A504547496D61676536080200FFD8FFE000104A46494600010101006000
                    600000FFDB004300020101020101020202020202020203050303030303060404
                    0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
                    0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
                    0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
                    0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080176026C03012200021101031101
                    FFC4001F0000010501010101010100000000000000000102030405060708090A
                    0BFFC400B5100002010303020403050504040000017D01020300041105122131
                    410613516107227114328191A1082342B1C11552D1F02433627282090A161718
                    191A25262728292A3435363738393A434445464748494A535455565758595A63
                    6465666768696A737475767778797A838485868788898A92939495969798999A
                    A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
                    D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
                    01010101010101010000000000000102030405060708090A0BFFC400B5110002
                    0102040403040705040400010277000102031104052131061241510761711322
                    328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
                    292A35363738393A434445464748494A535455565758595A636465666768696A
                    737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
                    A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
                    E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD8D
                    F86DA378BBE2CEB7E36BA9BE26F8C747834BF13DEE996767A7D968FE45BC116C
                    D8A0CD632484FCC796726BAAFF008527E25FFA2C1F117FF00B41FF00E56D52FD
                    97BFE6A27FD8EFA97FED2AF52A00F3AFF8527E25FF00A2C1F117FF0000B41FFE
                    56D1FF000A4FC4BFF4583E22FF00E01683FF00CADAF45A2803CEBFE149F897FE
                    8B07C45FFC02D07FF95B47FC293F12FF00D160F88BFF00805A0FFF002B6BD168
                    A00F3AFF008527E25FFA2C1F117FF00B41FF00E56D1FF0A4FC4BFF004583E22F
                    FE01683FFCADAF45A2803CEBFE149F897FE8B07C45FF00C02D07FF0095B47FC2
                    93F12FFD160F88BFF805A0FF00F2B6BD168A00F3AFF8527E25FF00A2C1F117FF
                    0000B41FFE56D1FF000A4FC4BFF4583E22FF00E01683FF00CADAF45A2803CEBF
                    E149F897FE8B07C45FFC02D07FF95B47FC293F12FF00D160F88BFF00805A0FFF
                    002B6BD168A00F3AFF008527E25FFA2C1F117FF00B41FF00E56D1FF0A4FC4BFF
                    004583E22FFE01683FFCADAF45A2803CEBFE149F897FE8B07C45FF00C02D07FF
                    0095B47FC293F12FFD160F88BFF805A0FF00F2B6BD168A00F3AFF8527E25FF00
                    A2C1F117FF0000B41FFE56D1FF000A4FC4BFF4583E22FF00E01683FF00CADAF4
                    5A2803CEBFE149F897FE8B07C45FFC02D07FF95B47FC293F12FF00D160F88BFF
                    00805A0FFF002B6BD168A00F3AFF008527E25FFA2C1F117FF00B41FF00E56D1F
                    F0A4FC4BFF004583E22FFE01683FFCADAF45A2803CEBFE149F897FE8B07C45FF
                    00C02D07FF0095B47FC293F12FFD160F88BFF805A0FF00F2B6BD168A00F3AFF8
                    527E25FF00A2C1F117FF0000B41FFE56D1FF000A4FC4BFF4583E22FF00E01683
                    FF00CADAF45A2803CEBFE149F897FE8B07C45FFC02D07FF95B47FC293F12FF00
                    D160F88BFF00805A0FFF002B6BD168A00F3AFF008527E25FFA2C1F117FF00B41
                    FF00E56D1FF0A4FC4BFF004583E22FFE01683FFCADAF45A2803CEBFE149F897F
                    E8B07C45FF00C02D07FF0095B47FC293F12FFD160F88BFF805A0FF00F2B6BD16
                    8A00F3AFF8527E25FF00A2C1F117FF0000B41FFE56D1FF000A4FC4BFF4583E22
                    FF00E01683FF00CADAF45A2803CEBFE149F897FE8B07C45FFC02D07FF95B47FC
                    293F12FF00D160F88BFF00805A0FFF002B6BD168A00F3AFF008527E25FFA2C1F
                    117FF00B41FF00E56D1FF0A4FC4BFF004583E22FFE01683FFCADAF45A2803CEB
                    FE149F897FE8B07C45FF00C02D07FF0095B47FC293F12FFD160F88BFF805A0FF
                    00F2B6BD168A00F3AFF8527E25FF00A2C1F117FF0000B41FFE56D1FF000A4FC4
                    BFF4583E22FF00E01683FF00CADAF45A2803CEBFE149F897FE8B07C45FFC02D0
                    7FF95B47FC293F12FF00D160F88BFF00805A0FFF002B6BD168A00F3AFF008527
                    E25FFA2C1F117FF00B41FF00E56D1FF0A4FC4BFF004583E22FFE01683FFCADAF
                    45A2803CEBFE149F897FE8B07C45FF00C02D07FF0095B47FC293F12FFD160F88
                    BFF805A0FF00F2B6BD168A00F3AFF8527E25FF00A2C1F117FF0000B41FFE56D1
                    FF000A4FC4BFF4583E22FF00E01683FF00CADAF45A2803CEBFE149F897FE8B07
                    C45FFC02D07FF95B47FC293F12FF00D160F88BFF00805A0FFF002B6BD168A00F
                    3AFF008527E25FFA2C1F117FF00B41FF00E56D1FF0A4FC4BFF004583E22FFE01
                    683FFCADAF45A2803CEBFE149F897FE8B07C45FF00C02D07FF0095B47FC293F1
                    2FFD160F88BFF805A0FF00F2B6BD168A00F3AFF8527E25FF00A2C1F117FF0000
                    B41FFE56D1FF000A4FC4BFF4583E22FF00E01683FF00CADAF45A2803CEBFE149
                    F897FE8B07C45FFC02D07FF95B47FC293F12FF00D160F88BFF00805A0FFF002B
                    6BD168A00F1EF89BF0CBC5BE14F86FE21D52D3E307C42175A6E9B73750EFB1D0
                    5977C71332E47F66F232051F0CBE1978B7C57F0DFC3DAA5DFC60F8846EB52D36
                    DAEA6D963A0AAEF922566C0FECDE0649AEE3E397FC914F187FD812F7FF00443D
                    1F037FE48A783FFEC0965FFA212803E6EFDBEFE3078A3F626F863A26BEBF12BC
                    4B7A35BD663D20DF789352D13C3FA0691BE2964135F6A09A1DD7D9A363188919
                    A12AD2CB1A9640DB8705A8FF00C1457C2DF0B35FD4B48F89DF1BBE21F83B57D2
                    ADAC5AE2D34ED062D7BC89E7D2A4D4E58CCD078705BBA2410CEC93412CA92AC3
                    21F9194A0FACBF693FD9FEEBF688F08DAE936BE3FF001BFC3F104D234F71E1C1
                    A748DA842F0BC4F6D3C57F6975049110FBB1E56E0CAA430C73F2A7C44FF837FB
                    E1C78E75969AC7E28FC66F0AE98BA759E950693A55C686F696B6F6BA3DC68F1A
                    A35D69934E49B2BBBA425A563BA72C30563D8937C93EFD3EEFCAFEAFD2DEF5DA
                    0E506DD959DFF4FEAF6B79BD3D93F662F891A27ED91E03BBF12FC39F8FDF1235
                    FD1EC6F9F4DB9924D0B4BB0960B854490A34373A4C728CC7246EAC576B248ACA
                    4A906BABF89DF0CBC5DE14F86DE21D56CFE307C42FB5E9BA65CDD41BEC7412BB
                    E38999723FB3791902B3BF615FD83F44FD827C19E23D1743F17F8DBC611789F5
                    44D5EEAE3C4ADA7B4D14CB6905A011FD8ED2D902F956D08C15272B9CE49CFA4F
                    C7319F827E31E71FF123BDFF00D10F5AD6504FF777B597DF657FC6F6F239E8BA
                    8E3FBDB5EEF6ED7D3F0B1F9E1FB11FFC14A7C69FB4368DE3ED57C69E37B8F0DF
                    87BE11DBEA07C6375A0F8934DF10EB5A41B39248FED136971F862364867F2277
                    8C24B24BB501F2C83B87BC7ECF9FB65FC38FDA97E2DDCF813C11FB477C52D4FC
                    57696935EBD8DD7846D34D2D14261F30A4975A2C71BB28B8818A2B16D93C4F8D
                    8EAC707F66BFF8248691E1BFD9CF55D163F8C9F1865D0BE276897D26AD60D1F8
                    7516397568A46B99239A3D25673B5AE6668E3965921466CF9648046FFECA9FF0
                    472F0B7EC9DFB46DB7C4ED3FE297C5BF15EB96D1DFA1B3D79F44FB0CE6F20B38
                    26665B5D36090129A7D9636B800C19C7CEFB8A6E0DA55345C9D37E7B3DFCAF6D
                    BA7E1B621ABC9D1FE7764FA434B7CF7BDFF1EB81A17FC145BE10F88FC37E23D5
                    6DFF00691F8C11DB7855B65EC575E005B5BA94FDAA4B322DADE5D0566BBDB731
                    49137D9924D8E855B06B1BE28FFC14DFE1A780FC13E20D5B49F8E3F1C7C5D278
                    7E2D32495349F0024F6CDFDA42D9AC3FD29341687F7EB770B47862CE0B045664
                    6514BF679FF8224BCFF0DBC48BF16BC6BE274F13789355D40FD9BC2FAE413699
                    A6E9171ADDCEABFD9D0B4BA6C124914EF3AFDA16E16524A7EEDD17007A3783FF
                    00E08D1E04F077C0CF16FC3F8FC7BF142F746F150F0E159AE67D2BED5A3BE851
                    DB476325B32582A96DB676FBC4EB2AB14E837364A518DAF55EBEEEDDAFAFCEDD
                    3BDD5F44DCCAFED5A5F0DDAF3E96F96FAF6B34B56955B3FDA42C7E2BFC49D0BC
                    3BF0F3F682F1DEB37B6BE2E8F40F11412E87A540D6F1B59EA2F988CBA520900B
                    8B1788C91EF412413C64874755FA0CFC13F1360E3E2FFC4527B7FA1E83FF00CA
                    DAF9D7C2BFF04EEF87FF00B10FC66F0D6B7E0C49DAF3E23FC516D635292EF4FD
                    356E23965D3F579A4417505AC575346659A4654B99A611EEDB1EC5F96BECF232
                    08C91EFE9513B5972F657F5B6BF882BF33ED776F4E973F317E1DFF00C14DFC67
                    E3AF1DF8CFC0FAC789F5EF877E38F87BA9EA70F8820F10EB7A5FD8E2D26DAD6E
                    E6835CB165F0E87BFB491ECE5475DB0346401B98902BD2FF00674FDB6748F137
                    C33F00C9E3BFDA5B5F5F1578EF51B9D2ACFF00B17C2B15A5919E1BD163B674BC
                    D1566B066B868E2DB79E5813CAB0ABC8DB59FD7F5DFF008263F83BC5569A5DF6
                    A9E29F1CDDF8EB45D3F5CD2AC7C710CD6161E21B5B5D584BE7C4B2DB5AC50811
                    B4BBE23E4E5191492D96DDC4783BFE0887F0A3C149E1A86DFC41F1126B2F0EEB
                    12EAF25ACDA8DA797AC06D523D5A3B6BA2B6CAE618AFE35993CB68E4CE519DE3
                    250DD070E68C6AEDA7335BE97BB57EAD59BE97725AA5141885752953DEEECBA5
                    ACB7EBA3BA5DD72DECF99BFA0BFE149F897FE8B07C45FF00C02D07FF0095B581
                    FB087C4AF107C54F80B7F7FE27D565D6F55D2FC6FE30F0E8BE96086096E2DB4C
                    F136A9A75A97585123DE2DED610C5514330270335EC95E01FF0004D4FF009375
                    F11FFD955F88DFFA9BEBB51D067C5575FB47FC57F0B7C6DF8BB63A17C4FF0010
                    685A65BF8FF588E1B3B6D2B4796389567DA0069ECA490FCA00E58F4F5CD5CFF8
                    6B0F8DFF00F459BC57FF00824D03FF0095D5C47883FE4BE7C62FFB285AD7FE94
                    9A7D203B4FF86B0F8DFF00F459BC57FF00824D03FF0095D47FC3587C6FFF00A2
                    CDE2BFFC12681FFCAEAE2E8A00ED3FE1AC3E37FF00D166F15FFE09340FFE5751
                    FF000D61F1BFFE8B378AFF00F049A07FF2BAB8BA2803B4FF0086B0F8DFFF0045
                    9BC57FF824D03FF95D47FC3587C6FF00FA2CDE2BFF00C12681FF00CAEAE2E8A0
                    0ED3FE1AC3E37FFD166F15FF00E09340FF00E5751FF0D61F1BFF00E8B378AFFF
                    00049A07FF002BAB8BA2803B4FF86B0F8DFF00F459BC57FF00824D03FF0095D4
                    7FC3587C6FFF00A2CDE2BFFC12681FFCAEAE2E8A00ED3FE1AC3E37FF00D166F1
                    5FFE09340FFE5751FF000D61F1BFFE8B378AFF00F049A07FF2BAB8BA2803B4FF
                    0086B0F8DFFF00459BC57FF824D03FF95D47FC3587C6FF00FA2CDE2BFF00C126
                    81FF00CAEAE2E8A00ED3FE1AC3E37FFD166F15FF00E09340FF00E5751FF0D61F
                    1BFF00E8B378AFFF00049A07FF002BAB8BA2803B4FF86B0F8DFF00F459BC57FF
                    00824D03FF0095D47FC3587C6FFF00A2CDE2BFFC12681FFCAEAE2E8A00ED3FE1
                    AC3E37FF00D166F15FFE09340FFE5751FF000D61F1BFFE8B378AFF00F049A07F
                    F2BAB8BA2803B1B8FDADFE375B5BBC8DF19BC5C56352C42683A0BB100678034E
                    249F60326BC3ED3FE0BA57D756F7570FFB447C44B3B1D3F51FEC8BDBEBDF8756
                    F6765A7DE640F22E2E25D1562824048CAC8CA4679C577971711DA5BBCB2BA451
                    44A5DDDD82AA28192493D0015F925A4F8C63D4ACFE2BF88D35CB2F1C7C24B3F8
                    AD79A8F8D3C1F69342E6FB4B9248BECFAA4724404ED124A012A1FCA93CB5E301
                    F2E95A553964F4B5FF00F268AFC9BF46B5D2ED68E0BD9B9F5BDADDF493D3CEE9
                    69D6F6DEC7EA36ADFF000598F14691F12EFF00C1CDF1CBE2ADDF89B4D87ED33E
                    9F63F0CE1BD9441BB689D7C9D11C3C24918954943918639ADCBBFF0082AC78DE
                    CBFB1437C7BF1C3BEBD629A9DBC7178374D964B7B4638171728BA496B48B3905
                    EE046A08604820E3F3BE5F8E3F0FFC5DFF000553D4FC43A5FC62D03C23E18FF8
                    422C045AA5AEA9631D9DF18EEA291AC1DE5076EE4043246D1CA31D40CA9F4AFD
                    A2BC6DA078E7C547E2B7C3AF8AB2FC3AF175A6931D9DB49AB5BA3E83E34B512C
                    CF05B057E2591CAC853CA2660B28213E60693D294672EB7BF959C92D3CECBCF7
                    B27A19C7DE94A0B7D2DF3516F5F2BBD76DAED6A7D43E33FF0082D9EB3F0FFC41
                    6FA5EA9FB41FC438AEEEF4D1ACC1E4FC3EB5B98A7B231890DCA49168CC8D12A9
                    CB386213043104103A4F127FC157BC5DE17F0F787F5397F68AF125FC1E2C4F33
                    448B4AF0E68FAA5DEACA3059ADEDEDB4B926942E46E2A842F7C57E75FC57F1B4
                    DF19FF006C5F835A2BF883C27F0CFC55ADFC37B8D2755B3B9B65B91A1DC5E443
                    1662DFCF88C7332B8F291DB232BF23743D77837E03697FF04FCFDB93C0B7DAC5
                    F4D6FF000C2CFC052F8774FF00106A9204B5D3AF85CF9D20B898811C0652EC54
                    B1504BED1D315A286B69697725FF0080F3FE7CB14BCE5B6D79E6BDF97A24FEF5
                    07FF00B749BF28EFB9F65F897FE0B3FADF847E18CBE32BFF00DA2FC691F876D6
                    F3FB3EF2E63F05E9F33E9971C0F2AEE24D20C96AF92A3132A72C07520574B71F
                    F053FF001FDB788745D37FE17BF8E266F10E9EDAB585DC1E0FD2E6D3A5B555DC
                    D2B5E26946DE3555C13BE45C6E4CE372E7F3F7C1B7FE1DBFFDA4BE3178E7C45A
                    8E8D63F0AFE24788F44D2B4893569D2DECBC4AD12A2DC4B0090859A2C67F78B9
                    560C483806BA6F85DF07359FD94FE2AF8C7E1DF891350D7BE095BF84758D57C3
                    D346AF3DE5B5ACCF6CB73A7020E58A72517A90F904E481114E50BDACDABAF550
                    5269F67ADD795D6F62F4F68E1BA4F5B79CAC9A5D6CD59AEFADEC99F6EFC39FF8
                    29FF008FFE2BEA7059E89F1E7C6B2DCDDC525CDAC775E11D2AC8DEC09B035C41
                    E7E949E741991312C7BA33B8618D6AF867FE0A17F133C65E31F12787F4BF8F7E
                    24BCD67C2324316AF691E85A1EFB3696312C60E74DC36E439F973DC7518AF827
                    E137C687FD903E224BA25E7C4AD2BE24FC2CF0F683733ADFEA31C51EAFE08923
                    F2520B0BAB81801A72422C722AC84A8F940439E37C17F1347EC7BFB7F7867C55
                    E34D4FC01A2685F1ABC385352B9D2BC51FDA36D2DCA379B16A533CB040238A52
                    C51586F4C6EF9C8157CB194E2A3B493DFBEB65F3E56AC9F54D3688BB506DEEAD
                    B76D2ED7A277D52EAB73ED9FF87E7DFC5777915CFED11F1134E4D37505D26FAE
                    2FFE1DDB59DAE9F76C70B0CF3CBA2AC70B9C8E2465ABDAC7FC16A3C45A278EF5
                    CF0C4BF1DFE29CDAEF86A333EA76969F0CE1BA6B3847FCB6631688CBE5118224
                    04A30208620835F97BF183C7BA2F8DA1F8EF75E1EF1CE93E269AFF00E235A5E6
                    99E0586482FAD7C728BE560AA418BB91411BB7452F947CBC10739AF59F0C7ED0
                    3E0EF0EFEDEDF1F2FF005FF12785BC36751F015958AC373AADBC4897A96A8B2D
                    9A31601A58DC32141F302A462B9DCDFB253B6B66FF00F29A9A5F7DD3F95ECF7D
                    9C573B8ADAF6FF00CA9C9F93BF4D9DAEAF6FD13F833FF0541F881FB41FC3A97C
                    59E10F8E9E3DD5BC3F11902DD1F05E9B6FF68D83E6F2525D255E6C1047EED5B2
                    C0AFDE04579D9FF82F65C2F87AEB573FB43FC4D1A4D8DF7F65DCDEFF00C2B28F
                    ECF6F77903ECEF27F61ED597240D84EEE4715F307FC1327F6C0F87DF0B3F60EF
                    869E1FBCF15F8724F13CF77258368E353885EDBF9B7D2969658812F1C6911329
                    660176AF51906BE5EB8F8CFE101FB04FC47D1BFE129F0F1D5EF7E309D4EDAC46
                    A311B9B8B4FB4C0DF6848F76E68B0AC77805783CD75CE945621D24FDD4D2BFFD
                    BF08BFC257F91CCAA3F63CF6F7B5D3FEDD935F8C6DF33F62BE167FC14D7E207C
                    67D4751B1D03E3DF8BE4D5747DA6FF004CBDF0BE91A76A3641BEEB496B73A5C7
                    322B7666400F626B4346FF008286FC4CF10F8FB5FF000B58FC7BF12DD7883C2F
                    0C13EA9631E83A1996D127566889FF00896E1B705270A491C671919F8324F895
                    A26B1FF0518D53E32E8FACD81F85DE0AF007F67EBDE24825074CBEB9699D92DE
                    39C7C93B8253EE16C3285E1B02B8683E279FD977F6E8F87DF14BC557BE03D1FC
                    3FF18B4A9F4ED52EB4BF14FF006925CEE90CF05F4BBE08552352D1C5B95A5455
                    4C6FE06728ABB8A7A5EFF27EF72FFE05CBEBAAE9A9A4AEA3296F6B7DD68B97CE
                    3CDF7AEFA1F71693FF0005C5D4756BBBD8BFE1A2BC7F631E997DFD997F75A978
                    02D34FB3D3AEBFE785C5C4FA32430487A6D91D49381D4D6C78D7FE0B0DE2DF00
                    7C535F04EA1F1CFE27C9E2996DFED70E9F63F0E2DB507BA831932C260D15D658
                    C742D19600820904103F3774CF8CBE0FF167C1DFDAEBC37A76B3A4F8875EF1EF
                    8AEEE3F0D695A7CE97977AD34AA0452DBC484B491861B8C8A0AA85C922A5D7E7
                    B6F00FED99F05FC35E28F8A963E03D77C2FF000B068FADEB29AA5986D36F3639
                    FB3CD25C065466565EE92104146524354D3F7942FA5D45FDF0727FF80B493DFE
                    25B3DEAADA3CF6FB2DAFBA718A7F34DB5E8FA5EDFAB7E02FDBB3E2EFC4BF0ADB
                    6B5A47C6AF1B3D85D9754FB5786346B399591D91D5E19B4C4911832B021941E2
                    B63FE1AC3E37FF00D166F15FFE09340FFE5757937C29F8B1A0FC67F0A9D6BC35
                    A843ABE8DF6896D61BF81D5E0BC31B6C778D8121937865DDDCA9C71827A5AA92
                    B3222DDB53B4FF0086B0F8DFFF00459BC57FF824D03FF95D47FC3587C6FF00FA
                    2CDE2BFF00C12681FF00CAEAE2E8A928ED3FE1AC3E37FF00D166F15FFE09340F
                    FE5751FF000D61F1BFFE8B378AFF00F049A07FF2BAB8BA2803B4FF0086B0F8DF
                    FF00459BC57FF824D03FF95D47FC3587C6FF00FA2CDE2BFF00C12681FF00CAEA
                    E2E8A00ED3FE1AC3E37FFD166F15FF00E09340FF00E5751FF0D61F1BFF00E8B3
                    78AFFF00049A07FF002BAB8BA2803B4FF86B0F8DFF00F459BC57FF00824D03FF
                    0095D47FC3587C6FFF00A2CDE2BFFC12681FFCAEAE2E8A00ED3FE1AC3E37FF00
                    D166F15FFE09340FFE5751FF000D61F1BFFE8B378AFF00F049A07FF2BAB8BA28
                    03B4FF0086B0F8DFFF00459BC57FF824D03FF95D47FC3587C6FF00FA2CDE2BFF
                    00C12681FF00CAEAE2E8A00ED3FE1AC3E37FFD166F15FF00E09340FF00E5751F
                    F0D61F1BFF00E8B378AFFF00049A07FF002BAB8BA2803B4FF86B0F8DFF00F459
                    BC57FF00824D03FF0095D47FC3587C6FFF00A2CDE2BFFC12681FFCAEAE2E8A00
                    ED3FE1AC3E37FF00D166F15FFE09340FFE5751FF000D61F1BFFE8B378AFF00F0
                    49A07FF2BAB8BA280363E26FED53F1AEEBE1BF88629BE3178A66864D36E5648D
                    B45D0407531302091A783C8F420D2FC33FDAA7E355B7C37F0FC707C62F14C30C
                    7A6DB2C71AE8BA1111A88940504E9E490071C927DEB8DF88FF00F24F35EFFB07
                    5C7FE8A6A3E1C7FC93CD07FEC1D6FF00FA296803D37FE1AC3E37FF00D166F15F
                    FE09340FFE5751FF000D61F1BFFE8B378AFF00F049A07FF2BAB8BA2803B4FF00
                    86B0F8DFFF00459BC57FF824D03FF95D587F137F6A9F8D775F0DFC4114DF18BC
                    53343269B72B246DA2E8203A98981048D3C1E47A106B1EB1BE23FF00C93CD7BF
                    EC1D71FF00A29A803B2F867FB54FC6AB5F86FE1F8A1F8C5E298618F4DB658E35
                    D1741211444A0004E9E49C0F524D6DFF00C3587C6FFF00A2CDE2BFFC12681FFC
                    AEAF32F871FF0024F341FF00B075BFFE8A5AD9A00ED3FE1AC3E37FFD166F15FF
                    00E09340FF00E5751FF0D61F1BFF00E8B378AFFF00049A07FF002BAB8BA28021
                    F8CDFB517C65BCF127C3C6B9F8B9E26B97B7F13ACB6ECFA3E86A6DE4FB0DEAEF
                    5DB60013B59970D95C31E32011DD7FC3587C6FFF00A2CDE2BFFC12681FFCAEAF
                    14F8C1FF002317803FEC655FFD21BCAEDE803B4FF86B0F8DFF00F459BC57FF00
                    824D03FF0095D47FC3587C6FFF00A2CDE2BFFC12681FFCAEAE2E8A00ED3FE1AC
                    3E37FF00D166F15FFE09340FFE5757D45FF0466D66F7C45FB0658DFEA57525FE
                    A57BE38F1CCD777522223DD4CDE2FD64BCACA8AA8ACEC4B108AAA0B1DAAA3007
                    C535F677FC1143FE51F3A57FD8EBE38FFD4BF59A7D00F3CF07FF00C132AC7E34
                    7C45F8A9E223F127C71A11BEF1D6AB2B59D95B69B2431967573B4CB6AEFD5C81
                    963C01DF93F3D59F827E1978ABE290B4D1BE347ED05FF08CE85773E91E239E7F
                    827AC97B2D483441207B93A125ADA2207DF23CCC70190E114EFAFD24FD980851
                    F11492001E36D4B27FEFD57C07FB38FED63F0823FDA07E33F8826FDB4343F06E
                    9E9F17A6D4A1F05DA7887C39259789608A0B00DB13C83AA4DE7346F1016F73B1
                    993688DC6F46542D3C4AA72DB95BFF00C9A11FCA4DE89BBA5D2E4621B851E78A
                    D5C92FFC9672FBEF14B56959BEB63E82FF008739D8FF00D162F891FF00805A3F
                    FF0021D1FF000E73B1FF00A2C5F123FF0000B47FFE43AE93FE0A91F127C3FE1A
                    F87FE05D1F59F10F8F3C3F2F8CB5C7D3F4BFEC1F16C9E0FB7BEBBFB15C491437
                    BA9C5B6E608CB28291DB9F36699628FCB954BC67E3CF815FB6B7882FFC1BFB3E
                    78B3C4DF122FFC5573E28F08E85A4DED9E95E31BCB4D774BD4F7EEBBBDFEC909
                    F65D6E1E236BC3FF001F16B1432900091D4B87BCA4FB4947EF4DF5B2D2DADDA5
                    AAD7A1ACA2EC9AD6EAFF008DBA5DF77A6BA6DD4FA07E23FF00C12F3C33F09BC2
                    CFACEBBF1ABE27DBD8A4F0DB0F2347D36EE69659A558A28E3861B07924767755
                    0A8A4F3E99AC8F1D7FC13F7E1D7C33F895E0CF076BDFB42F8DF4CF157C439A78
                    3C39A54B69A4FDAB556821334DB105912152319666C28C804E4807C0BC4BFB6D
                    DCFC22FD9F961D5FE326A3E1FD63C1FF0011FC1563AA7896CBE233EB3E1FF16C
                    573AA31BFB769750417561702D8DC4F79A72B27D9638E001BC8050C5E31F8C9E
                    1EF8E3FB44FC1DBAF14F8D7E23DCFC537F8BFE21D03C4FE14D375BD59E4F0C59
                    C9A66B967A5CB6F6366D9B08DA07B678EFE2589A4596499A52A85A3DBD834B9B
                    7576B4DDDA3092B27AEAE6B757E8D27BA834E3CD2D346FD1FBF6BBDBECF46D3B
                    AB37BAFADFFE1CE763FF00458BE247FE0168FF00FC8747FC39CEC7FE8B17C48F
                    FC02D1FF00F90EBE23B0FDB47C75A0FC35F835A8783FC75F14FC55E393F05356
                    D27C656F6B7FAAEBDF60D56C350D2C5D4D736E7CDB78B55B7B53A99DF320999C
                    468C5CBC4ADF727FC1383C7D078AFE3C7C49B5F875E3ED67E287C038B46D1AF3
                    40D7751F135C789BC9D6256BC17F690EA17124B34AA91A5A3BC4F23F92F2941B
                    3EE2B961EDAA775EF6BE93946FE8F96E9F5BD89A8F91B4F74D2FBD45B4BBB5CD
                    AAEC9B2BFF00C39CEC7FE8B17C48FF00C02D1FFF0090E8FF008739D8FF00D162
                    F891FF00805A3FFF0021D7D9945738CF8CFF00E1CE763FF458BE247FE0168FFF
                    00C8747FC39CEC7FE8B17C48FF00C02D1FFF0090EBECCA2803E33FF8739D8FFD
                    162F891FF805A3FF00F21D1FF0E73B1FFA2C5F123FF00B47FF00E43AFB328A00
                    F8CFFE1CE763FF00458BE247FE0168FF00FC8747FC39CEC7FE8B17C48FFC02D1
                    FF00F90EBECCA2803E33FF008739D8FF00D162F891FF00805A3FFF0021D1FF00
                    0E73B1FF00A2C5F123FF0000B47FFE43AFB328A00F8CFF00E1CE763FF458BE24
                    7FE0168FFF00C8747FC39CEC7FE8B17C48FF00C02D1FFF0090EBECCA2803E33F
                    F8739D8FFD162F891FF805A3FF00F21D1FF0E73B1FFA2C5F123FF00B47FF00E4
                    3AFB328A00F8CFFE1CE763FF00458BE247FE0168FF00FC8747FC39CEC7FE8B17
                    C48FFC02D1FF00F90EBECCA2803E33FF008739D8FF00D162F891FF00805A3FFF
                    0021D1FF000E73B1FF00A2C5F123FF0000B47FFE43AFB328A00F8CFF00E1CE76
                    3FF458BE247FE0168FFF00C8747FC39CEC7FE8B17C48FF00C02D1FFF0090EBEC
                    CA2803E33FF8739D8FFD162F891FF805A3FF00F21D1FF0E73B1FFA2C5F123FF0
                    0B47FF00E43AFB328A00F8CFFE1CE763FF00458BE247FE0168FF00FC8747FC39
                    CEC7FE8B17C48FFC02D1FF00F90EBECCA2803E33FF008739D8FF00D162F891FF
                    00805A3FFF0021D1FF000E73B1FF00A2C5F123FF0000B47FFE43AFB328A00F8C
                    FF00E1CE763FF458BE247FE0168FFF00C8747FC39CEC7FE8B17C48FF00C02D1F
                    FF0090EBECCA2803E33FF8739D8FFD162F891FF805A3FF00F21D1FF0E73B1FFA
                    2C5F123FF00B47FF00E43AFB328A00F8CFFE1CE763FF00458BE247FE0168FF00
                    FC8747FC39CEC7FE8B17C48FFC02D1FF00F90EBECCA2803E33FF008739D8FF00
                    D162F891FF00805A3FFF0021D1FF000E73B1FF00A2C5F123FF0000B47FFE43AF
                    B328A00F8CFF00E1CE763FF458BE247FE0168FFF00C8747FC39CEC7FE8B17C48
                    FF00C02D1FFF0090EBECCA2803E33FF8739D8FFD162F891FF805A3FF00F21D1F
                    F0E73B1FFA2C5F123FF00B47FF00E43AFB328A00F8CFFE1CE763FF00458BE247
                    FE0168FF00FC8747FC39CEC7FE8B17C48FFC02D1FF00F90EBECCA2803E33FF00
                    8739D8FF00D162F891FF00805A3FFF0021D1FF000E73B1FF00A2C5F123FF0000
                    B47FFE43AFB328A00F8CFF00E1CE763FF458BE247FE0168FFF00C8747FC39CEC
                    7FE8B17C48FF00C02D1FFF0090EBECCA2803E33FF8739D8FFD162F891FF805A3
                    FF00F21D1FF0E73B1FFA2C5F123FF00B47FF00E43AFB328A00F8CFFE1CE763FF
                    00458BE247FE0168FF00FC8747FC39CEC7FE8B17C48FFC02D1FF00F90EBECCA2
                    803E33FF008739D8FF00D162F891FF00805A3FFF0021D1FF000E73B1FF00A2C5
                    F123FF0000B47FFE43AFB328A00F8CFF00E1CE763FF458BE247FE0168FFF00C8
                    747FC39CEC7FE8B17C48FF00C02D1FFF0090EBECCA2803E33FF8739D8FFD162F
                    891FF805A3FF00F21D1FF0E73B1FFA2C5F123FF00B47FF00E43AFB328A00F84B
                    E2CFFC120EC748F857E26BBFF85BBF1166FB2E95753796D67A405936C2E769C5
                    9E7071DA8F84BFF0484B1D5FE15F866ECFC5DF88909BAD26D66F2D2CF482B1EE
                    850ED19B327033DC935F627C72FF009229E30FFB025EFF00E887A3E06FFC914F
                    07FF00D812CBFF004425007CB9FF000E73B1FF00A2C5F123FF0000B47FFE43A3
                    FE1CE763FF00458BE247FE0168FF00FC875F6651401F19FF00C39CEC7FE8B17C
                    48FF00C02D1FFF0090EB9EF8B5FF000483B2D23E15789AEC7C5EF88931B5D26E
                    A5F2DECF480AFB6173838B307071D8E6BEEDAE5BE397FC914F187FD812F7FF00
                    443D007C79F09FFE090963AC7C2CF0CDDFFC2DDF88B07DAB4AB59BCB4B3D20AC
                    7BA143B413664E0671C9CD741FF0E73B1FFA2C5F123FF00B47FF00E43AFA8FE0
                    6FFC914F07FF00D812CBFF004425753401F19FFC39CEC7FE8B17C48FFC02D1FF
                    00F90E8FF8739D8FFD162F891FF805A3FF00F21D7D9945007E777C78FF00824B
                    D8E81E2AF8610FFC2D7F88173FDABE2E5B3DD25A6940DBFF00C4BAFE4DEBB6D0
                    02DFBBDBF364618F19C11E8BFF000E73B1FF00A2C5F123FF0000B47FFE43AF74
                    FDA67FE476F835FF0063DA7FE9A753AF58A00F8CFF00E1CE763FF458BE247FE0
                    168FFF00C8747FC39CEC7FE8B17C48FF00C02D1FFF0090EBECCA2803E33FF873
                    9D8FFD162F891FF805A3FF00F21D76BFF0492F0827C3EFD8D64F0FC7753DF268
                    3F10BC7BA70BA9C2896EBC9F196B51F9AE14050EFB7710A02E58E001803E97AF
                    00FF00826A7FC9BAF88FFECAAFC46FFD4DF5DA7D003E01F81FC47AB6ADF1227B
                    1F1B6A3A4DB378DF52DB6D169D692AA7FABFE278CB1FCFB57995B7FC1453C137
                    BACEBD630FC4CF8D32B7857517D275BB84F821AF1B3D1EE5151992E6E7FB23C9
                    842A488E59DC28475727690D5EF5FB2F9C0F889FF63BEA5FFB4ABF3F7E07FED5
                    3F08EDBF6A7FDA135DBBFDB3B42F877A7C1F1761D453C276FE22F0E7D8BC4B05
                    B69DA48970AF01D4A5F35E196DC8B6B9552D115D8C43A3BA094EB7B393D396FF
                    00F93C23F949BD137A7A9359B8D2E78AD6F6FF00C964FF0038ADDA47E8C0F86B
                    E2F2323E246AD83FF509B1FF00E3555B4AF06F88F5DB569EC7E295EDE4092C90
                    349069BA7C88248DDA391091191B95D5958750CA41E457E667827F6CAF0ED8FC
                    7BD3EFEEFF0069BD73C417179FB44DF78392DAFF00C76B6F6F268173A4FCD6AD
                    630B450AAC7726258E5F284914800575677DD8BFB0CAF8434BF8D3F02BE14C1F
                    1B3C7B651788E4F1DC9ADF81E3F89DA8DACADA85A6ACFF00637DEB722F637654
                    97742B308DCC323988BBCED22A7EF4233FE649F77F02A8D7CA324BFC5A68BDE0
                    72F79C56B6BEBD2CA7386FE6E0DFF875D5E87EAB7FC2B4F17FFD148D5BFF0005
                    363FFC6A8FF8569E2FFF00A291AB7FE0A6C7FF008D57E5B7C11F8C5F14F5FF00
                    83FF0016BE20EADFB55E97A0FC52D33C29E21B6F14FC396D2F5492FBC27A9442
                    536F733433EA775158C50087F757169A7DAC53A4AACC2462A6A6F835F1AFE1D6
                    A1E07F136BB37C67F8AF3687E3BF16E8DA168FE1CB7FDA30EB573A0C9F6198B4
                    5A8EAF69AA5EA69D6B73751C8E8D05C0B9959228B2C24FB350D34AFD6C9DBD65
                    CAADD1A7BA6AFA763492B49C5F4725FF0080A4DF9AF476D8FD3DD47C0BE27D1F
                    4F9EEEEFE27EA16B6B6B1B4D34D3699A7A470A28CB33318F00000924F000A920
                    F877E2CBA81258BE25EA92472286475D2AC0AB03C820F95C8AF8735EF13EADFB
                    4CFF00C1B59E32BBF10EB5AC788FC4B0FC3ED6ADAF6EADB59B996FA5BBB26B88
                    C4734F1F952CCE0C2AB209154CBF30913E665AE37E157C5AF87F61E3BFDA46E5
                    3E3F7C5DF15F863E11781B46D5346B5F0EFC449F50BFF0EC52D85DC7766089A6
                    315DB2931309B505B8D8EF1BB4836A32DCE9A8B9A6FE1FCB5D7FABAB5F5D93CE
                    324E14A5FCEDAF47EEDBB7595BBEDA1F717C46F8856DF097E22F833C23E23F8D
                    92E97E27F8877735978734B934AB26BAD5A586232CBE5A2C24ED4419673855CA
                    8241600F6BFF000AD3C5FF00F452356FFC14D8FF00F1AAFCA7F0EFC59D3FC59A
                    D5A5A789FC7DAE2FC2DF87DF1C6C2FD75ABBF88F79AE49E19D02FF00C1D70C97
                    126BF248278ADE4B9B8655B8F3F646F2948A72155AAD7ED33FB446B7E0BFD917
                    50D3DFE247C651E24B0D3FC69AEFC29D467F1C5C6829AD69361346D657975709
                    FE97AC5CA4618C1048254B8B62D2DC2F2B381C12D24FCFE5CB195BFC4937A5F5
                    E593BA516CE8F63CD2A71835EFA5F7B94E37FF000FBAAEED74E51B737323EE2F
                    17FEDA1F0FBC09E3ED4FC2DAAFED216B6DE21D1F5FD33C2D776234AB49258F55
                    D44B7D8EC80480EE99C233145C98D46E7D8BCD7B67FC2B4F17FF00D148D5BFF0
                    5363FF00C6ABF273F6BFFDB47E12F8A3E2DFC4DB4BCF8B3E02B3D6B5AD7BE0ED
                    CEE4F1059C570E60D4D27BB9A2DCD83E444E249180223520B60575DE0AFDAFBC
                    35ABFC56D67C03E2CF8EDE20B3FD9EBC3BE3BF14E8D75E2D83E23DE5BDDE9B76
                    90E9D3E956577AEC7722EA380B49AA795E64E04AF6E911670BE59B547DDB3F89
                    397A35154AF6F372A8D4575D237BEAF8E1594A319EDCD6D3AABA9B57F450D7D6
                    FB6DFA6BFF000AD3C5FF00F452356FFC14D8FF00F1AA3FE15A78BFFE8A46ADFF
                    00829B1FFE355F9E7F03BF68FF00889E1AF891F05EE7E2578AF5BF136A1E216B
                    1D06DB46B6F155E68BE2358CEA929B7D49F47F2D6D3578AE2C8594B78D859ED2
                    212300AB232D7A1FFC15CFC79E2EFF008693F873E0AB8F8D9A6FECF3F0E7C47A
                    06A33C1E2ED4BFB42DECE5D7E39A0105B3DD59EA9A6F972881A492286E269609
                    8AC81A090AAE329C1A7151D6F2947FF01577BDB56B449DAF2695F5B9A425CCA4
                    DE9649F7DDDAFA744F56FA453935D0FB0355F06F88F42B649AFBE295ED9C324B
                    1DBABCFA6E9F1AB492388E3404C60166765551D49600726ACFFC2B4F17FF00D1
                    48D5BFF05363FF00C6ABE59FF8295F822C7C59FB20FC06B8F1C78BF5BD4534CF
                    1EF844EABE24D3B51BFF00098BDF32E228A5BC74B69E37B7DE5B72A97262775D
                    8C18035F1EFED07FB70D9F85FC6FF10B56F087C76F895E08D0758F04F8EE09F5
                    1F13F8FD26BD87C41A65E59FD8ADA2D36E15ADB4A7C3B430C51AC77534132BBA
                    094ACCD3269466EF7E5735EBC908CEFAD9EBCD65A5EF6D3B6B87A72AD5214D69
                    CCA0F5E8E52946DA5EF6E5BBB77F99FAD1FF000AD3C5FF00F452356FFC14D8FF
                    00F1AAF2EF885FB41E8BF0B7E3468BF0FB5BF8D3ADDB78AB5E9ADEDADEDE1F0A
                    A5CDBDBCB705C5B47737515AB5BDA3CE639042B712466528C103106BE1DF8E1A
                    FEBBA878A3E12785F4BFDA6E7F839F0EFC7BE01B7F14681E3CF10F88F5BD721D
                    7BC4F2C8A278A2BE1AD5A445D2230C90D84CF3DA49BE5DB6A769AA77BF1BBE09
                    FC3EFDA67F692BDD6BE36F8E2E7C492CFE12B0BFFF008473E26DE68F71334E21
                    8EF9A5827BD31E996AB72E91CD2811C960933C51490BB053AFB36AA284BBB56E
                    AED2E4D37B7BC9EEAFCB67CADB6960AA7346F1EA93BF4578A92BED7D1AD13B73
                    2945C95937FA7FFF000AD3C5FF00F452356FFC14D8FF00F1AA3FE15A78BFFE8A
                    46ADFF00829B1FFE355F971E0BFDADFC49E1DF801E1CD535DF889AA78817C0BE
                    29F16787AEBC350FC4CD46CBC4B76A356920D3FEC57AD181ADDFC76C0A43657E
                    03DC2BACA06F556AFAA7FE0A89F16F4DF07FED21FB2E68DABFC62D63E1B685E3
                    4F14EA3A76B7A2DB78963D006B562747BB6124B3294B95F2EE45B46AD1CA815E
                    E57FE5AF94CA9D3BC6328BD24ECBEEBAFBD59E975AEF74D2D36A9529CBEC2937
                    E7CB7BDB6EDA5ECFCACD37F4F7FC2B4F17FF00D148D5BFF05363FF00C6A8FF00
                    8569E2FF00FA291AB7FE0A6C7FF8D57E5FFC0FFDB5F46F8CFF000AFC0363F107
                    E3D789B48F0145E19D76D3C37E2ED2BC6F716136AFE25B2D5E786DEDAEEFE090
                    35DDE2E9FF0063962B5B867175E73BB4539C63DFBF6ABF8B1F12BC3BFF0004C2
                    FD9F3C67E3FF001AF8A7E1978C24F10F82478EE4D2648EC1E74BABCB586FA1B9
                    3E5B3C49B65767589930CB824A0652E149CAD6D2F38C55F4F8E72826FD1C6EF7
                    F75C5ABDECB3F6895EFD2326EDFDD8A934BBEFCBFE2524ED6D7EC2FF008569E2
                    FF00FA291AB7FE0A6C7FF8D51FF0AD3C5FFF00452356FF00C14D8FFF001AAFCC
                    3FF85BEBAA7ED1DF0BBC1C9FB43F8E67F82DE31F8C3A9685E12D9F10E78AE3C6
                    3A2C9E1C333B47AB2CC351BB860D5D85BC1325D152D32A02EC222ADD47F6D2F8
                    7FF0F3F697D72EB59F8CBF16341F843A8786FC69A7F8AEE75CF899772EAF1EA1
                    A65FD92C50DADA46DFF12A9D627923B716ED1DDCF148B2489E6112BA70B46326
                    ECA5172F4B439ACFB3D52B2BEAD23A3D9B72E48EAF4DBADE528AB7FE02DF43F4
                    FBFE15A78BFF00E8A46ADFF829B1FF00E3547FC2B4F17FFD148D5BFF0005363F
                    FC6ABF2DFE077C7EF09D97827C37ADDDFED09E23BCF87BF10BC5D1DC7C464D37
                    E33EA7E2183E15E912D85EFF0063E9F36B06F659B4F69AEA243753A5C46DE710
                    9BD610B9FAE3F67EF8B3F14B47FF008261FC51F1268B71ABF8F75FF0EBF89CFC
                    37BFD419AEEFBC49A6DBC93FF64CEEE46EB92EAABB242099D046E4B6FDC5558F
                    B38CA52FB2AEFCB4574DED7D74D6CD2724ECAEE292F6938422FE2692F9F359F7
                    B7BBABE978ADDE9EBFA278DA3F127C6CD6BE1C69FF001AA6BCF1BF8734F8754D
                    5748874AB279F4FB698E2279710ED4DF825549DC4738C735D45DF833C49617D6
                    B6B3FC52BD86E6F9992DA2934DD3D5EE1954B304531E5885049C74009AFC85F8
                    C3FB4F69FE02F8B5A9EADF063E2BF8E7C4367E29F00785E3F1578D3519359F15
                    0F0C5A36BB743579A7B88658DEC7CA57264822BAB536E0CBE4F92D1E17BEF11F
                    85B57F0578CBE10F89743F8ED3FC7DF125968FE3A93C01ADE8BADEB16BA4DE6A
                    0B656573A76928CDAA5E1D5312F9F9335C4ED2A2B472EE101DB12BC29BA93FB3
                    CE9DBAF2B7F0AF356E56ECA4D4B54D24DC60E7595287DA516AFA25CD08CBDE7B
                    68DBE64AEE29C7469B67EA2FFC2B4F17FF00D148D5BFF05363FF00C6A8FF0085
                    69E2FF00FA291AB7FE0A6C7FF8D57E425DFC76D43C2BFB35F87BC7177FB7436A
                    16BE30F177842DB5CF0CE9B7B79A3DDE917526A9026AB6D7B73A86A97D756127
                    D9A69DA5B3B76B2441665D6248D2553DB7ED5FF1FB41FD9F7E247ED21A469FFB
                    50F8CB4EB9F852DE0ABBF09E9D7FF125E67D1E692E192EEDDC4B2992F95A361E
                    6ADE9B827CD569325632BBCA838FC4FED38FCD725FD57BEACD6F677B3D0C1D64
                    A2A4968D5FEFBDAFDB55677D9EDCC7E99F89BC3FE25F09436725D7C43F144AB7
                    D79158C62CBC310DEB2C92B6D56710DBB98E307EF4AFB6341CB328E6B4BFE15A
                    78BFFE8A46ADFF00829B1FFE355F981E2AFF008282F82FE0CFED1DE22F09C7FB
                    529D2743F0EFC78D1628ECF53F88505EBCDA35CE8F6F2DF0967BC9249FEC315E
                    994902458636CC646C1E5D725F06BFE0A11E18F86FE1BF0078975BFDA87C69E2
                    BB8D775EF893E1ED62E2D7C6706A77D7FA6DA3DF49A6CD6BA7826CC5E7CB68D6
                    EE96E37FDA234506268E319423CD49D55D3F58426ADF3959BF276575AED55385
                    450975E5FC6535AFA285EDADAEB5D4FD6C3F0D7C5E064FC48D5801FF00509B0F
                    FE355C77C11F1AC7FB48F84EE75EF027C699BC4FA2DA6A171A5C97D63A5593C0
                    6E607D9322B98407DAD952CB95C8201E0D7E757C3AFDAFA4D0EE7C4FE1BB8F89
                    3E2FB3F81FA878C7C3371AAEBF27C4FBCD7B53F0E787AFF46B991AE4EB45FCEB
                    6B79F50B782292582768E032CA229933F247F003E3D785743FF8A53C4FF11FC7
                    5E0CFD9FEEBE22F8F5355F1BB6BFAA7873ED3A98BD824D2125D795A191E39216
                    BB70EB3ED9A58D1246763B1DA83E7717D137F35C8ECFA6AA568AD1CA565A7549
                    A74E334F76BEE6AA7E37826FA28BBEB7D3F52BFE15A78BFF00E8A46ADFF829B1
                    FF00E3547FC2B4F17FFD148D5BFF0005363FFC6ABE3CF8C5F117E2BDB7FC1027
                    C5DE2DD6FC69E30F0B7C42D13C31A86A36BE22B111DB6B1756B6F7329B39E5DD
                    09D925C5A242D214449332B6D31B608F9DBF689FDA27C65A47C4BD4E0F857F1B
                    B5397F669D7F56D0A1F18FC40D675AD535FB2F086A13C1A98BC812F6DEFED6EE
                    D2DCCD1699E7ADBDE5BAD9BCD8FDDAB3C74E549A938A7AA76EDD524DF65ADB5D
                    6FA5AEC519270536FA37F76F6EEF5BD974BBBD91FA2B71F116D6DBF684B5F852
                    DF1B653F112EF4593C449A1269564F74BA7A4A90B5CBE212B1A191C2AEF20B10
                    DB41DAD8EDFF00E15A78BFFE8A46ADFF00829B1FFE355F98DE26FDA0FC2BF007
                    E30FC35B1F177ED1737C51D5345F823E3AB85F17F847C9835CBDB296FB4C9AD5
                    EC7ED37177E7BA5BDBDC08AE659A6F316CE595E46D9238FA4FFE0923F142EFE2
                    5C5F1FBC270F8D359D4B47D0BC4768DE1896E3C6B2F8C2FF004CD36F746B3B88
                    E58F51BBF31E74699E6746633441B7AA3C88A09A9D24A9F3A77B4652FBAACA09
                    6BB36927D7AECAC53D1A4F4D52FF00C962DBF4BBF2D2DD4FA9BFE15A78BFFE8A
                    46ADFF00829B1FFE3547FC2B4F17FF00D148D5BFF05363FF00C6ABF2A7E1BFED
                    21AA5E7C0CF08EB1A1FED27E3C9FC656BE19F16C5F156F2FFC54B747C3565047
                    7AFA7EA335ADC03696171F6B4B58A191608CCD1CCE06F08A53B4F09FC54F0F58
                    FC3AF8427C73F1BBE24786FC0BF107E1541E27D23C5A9F12F550BADF8D047147
                    3DB8BC372C1A4445568B4D0DF679A46B826DE57538C5B5693DED6DBADD547A7A
                    AA6EDDE4E31EADA88CAF28C5AB377F959D35AFA3A89BDED04E5E47DA9F1B7E3E
                    E91FB3B78BB47D0BC5DF19F5BD3B54D71E1586283C2A97CB6CB34C208A6BA7B7
                    B5912D2079888D66B831C65FE50D9E2BD3BFE15A78BFFE8A46ADFF00829B1FFE
                    355F924BF1B7C47A57C5EF88BE275F18EA31FED6165FB3BF87B5393C33078BEF
                    679E2D7765FB5FC6343175E4CB34368D15CFD8BC9DB1C92095511E53237A0683
                    F11751F027ECF9FF0009568FFB5DF837E30F841F5BB5D7CE9E3C57AF7852CADD
                    12D6513583F8866D4F54B8827698DBCBF63BA9D62F31042D1AA4E16B5A94BD92
                    6A6D36AF76B55F1B8AB75E8DF33B27B683937CE94354F96DDEEE119BD76FB495
                    95DEEF5D2FFA5BFF000AD3C5FF00F452356FFC14D8FF00F1AA3FE15A78BFFE8A
                    46ADFF00829B1FFE355F00B7ED51E31D33E37D85E786350F1778A35EF1878563
                    93C29E1ABFF16DDDB7887C3977178744C96FABF87E4516B776CD70E924BA9407
                    CC4B89D2173B1401E1FF00B42FED6375A1FECE57DE24F86DFB46F8FECF44BDF8
                    7A750F887A85FF008C1A7BAF0EF8B05F69E90E9F9BB2EDA55D5C096FD1EC6DBC
                    8D8B0068E38B6E58549F3F25FE7D3ED3FF00DB1A6D757151E652520AAD420A7B
                    DD5FFF0049D3C9DE5A27BA52D9AB1FADDFF0AD3C5FFF00452356FF00C14D8FFF
                    001AA3FE15A78BFF00E8A46ADFF829B1FF00E355F9DFFB787C6FF0EFECF9F147
                    C3565E00F89DF14E2D6BC2B71E11D70BEADF14EF64D164D1F52D7563BAB88A09
                    A5964D5D248E56495EE8BDBDAC7E4086484FEEDBF4DFC23E3AD0FC7F657573A0
                    EB3A56B76F65773585C4B61771DCA41730B14960728485911815643CA918201A
                    5C9EE73F9C97FE036D7D35B7AA617D9F4693FBD5EDEB6D4E63FE15A78BFF00E8
                    A46ADFF829B1FF00E3547FC2B4F17FFD148D5BFF0005363FFC6ABBCA2B319C1F
                    FC2B4F17FF00D148D5BFF05363FF00C6A8FF008569E2FF00FA291AB7FE0A6C7F
                    F8D57794500707FF000AD3C5FF00F452356FFC14D8FF00F1AA3FE15A78BFFE8A
                    46ADFF00829B1FFE355DE51401C1FF00C2B4F17FFD148D5BFF0005363FFC6A8F
                    F8569E2FFF00A291AB7FE0A6C7FF008D57794500707FF0AD3C5FFF00452356FF
                    00C14D8FFF001AA3FE15A78BFF00E8A46ADFF829B1FF00E355DE51401C1FFC2B
                    4F17FF00D148D5BFF05363FF00C6A8FF008569E2FF00FA291AB7FE0A6C7FF8D5
                    7794500707FF000AD3C5FF00F452356FFC14D8FF00F1AA3FE15A78BFFE8A46AD
                    FF00829B1FFE355DE51401C1FF00C2B4F17FFD148D5BFF0005363FFC6A8FF856
                    9E2FFF00A291AB7FE0A6C7FF008D5779450078E7C6BF86FE2D8FE0D78B59FE22
                    EAB22AE8B784A1D26C4061E43F19116697E0A7C37F16CBF06FC24C9F117558D1
                    B45B32A8349B12107909C64C59E2BB9F8E5FF2453C61FF00604BDFFD10F47C0D
                    FF009229E0FF00FB02597FE884A00CCFF8569E2FFF00A291AB7FE0A6C7FF008D
                    51FF000AD3C5FF00F452356FFC14D8FF00F1AAEF28A00E0FFE15A78BFF00E8A4
                    6ADFF829B1FF00E355CC7C6BF86FE2D8FE0D78B59FE22EAB22AE8B784A1D26C4
                    061E43F191166BD8EB96F8E5FF002453C61FF604BDFF00D10F401C37C14F86FE
                    2D97E0DF84993E22EAB1A368B6655069362420F2138C98B3C574DFF0AD3C5FFF
                    00452356FF00C14D8FFF001AAD3F81BFF2453C1FFF00604B2FFD1095D4D00707
                    FF000AD3C5FF00F452356FFC14D8FF00F1AA3FE15A78BFFE8A46ADFF00829B1F
                    FE355DE51401F38FED1DF0F3C55078CFE10893E20EA93193C6E8885B4BB21E53
                    7F656A4770C47C9C023078E6BD4BFE15A78BFF00E8A46ADFF829B1FF00E35587
                    FB4CFF00C8EDF06BFEC7B4FF00D34EA75EB1401C1FFC2B4F17FF00D148D5BFF0
                    5363FF00C6A8FF008569E2FF00FA291AB7FE0A6C7FF8D57794500707FF000AD3
                    C5FF00F452356FFC14D8FF00F1AAF37FF8262C32DB7ECC9AD453CC6E6787E277
                    C438E59CA84370EBE35D6C34840E01620B10300127000C0AFA12BC03FE09A9FF
                    0026EBE23FFB2ABF11BFF537D769F400F805E17F185FEABF1225D33C59A7E9D6
                    6DE37D4B6C12E882E19398FF008FCE5CF18EDDABCAB56FF829FF0084B46F14B6
                    8B2FC42F1ECBA8FD96E6FE38EDBE0078B2E52E6D2DE458E7BB85E3B46496D91D
                    D019E32D1FCE9F37CC33F417ECBDFF003513FEC77D4BFF006957837C44F8DDE0
                    3D23FE0B73F0E3C213F8B7C2969E203F0AB5EB05D1DF52812EC4B36A1A54D0C2
                    212DBB7BC304D22A632C913B0055490525CD5A34EFA353FF00C96129AFBDC6DF
                    309B51A729DB6E5FB9CA317F7277F91F43E91E1FF1C6BBA55ADF5AF8FB4996D6
                    F2249E17FF00846B6EF460194E0CE08C8238233563FE10AF881FF43DE93FF84D
                    8FFE48AFCD6F855F197C0BAF7C05F106B9E21F8EDF16BC6F79A87C62D57C0567
                    A9E8FF0015A7D174E9608EE2792C2DEEE7B4963B5D36178D11965B48E19E63E4
                    C485D25F29FCDAD3F6B7F027C70F857F03BC23E36FDA775DF007C49BAD10378D
                    35F97E366A3E1E8BC39A669FA85CC4CA90C7736D1DEEAF76C043BAE21790244D
                    2BA29554770B4F95AD39B97EE9479FCAFCB1B37A77B74BBA9174E72A73D5C79B
                    6EAE32E4FF00C9A49F2EBAE8B76EDFA95F19FF00672F18FC71F869A9F85F53F8
                    8C2C2CF5411EEB8D3745FB3DCC2C922C8ACADE7907E645CABAB238CAB2B2B153
                    9BF0A7F65BF883F0EB507D4F56F8CDA878EFC42F6DF61FED8D7BC33631DCA5BF
                    9864F2963B216F028DC41244419B6AEE66DA31C17FC1447E2CDB7803C37F067F
                    B5BC55AEF847E0A78875EFB1F8D7C4F67AD5CE91358D9369D3B5919F528DD2E2
                    CE196EC5BABDC09236C95569143B67CCCFC64F15F867FE08C5F1B3C4FAC7C4FD
                    7B42B7F0F2F8947817C77737F12EA77DA5433CABA45C1B99D0895A7023892620
                    BCC8F1BAB177590E7527ECA152A7F25FF0B26BCA4D3DB771BF445D1A6EB4A952
                    FE7697DF7B3F349C757B27CBD5E9F61FFC215F103FE87BD27FF09B1FFC9147FC
                    217F1007FCCF7A4FFE1363FF00922BF257E387ED93E1FF000DF823E33DC687FB
                    4EF886F27D0FE0C7863C7DA418FE26CAEF1F891E49E2774D93825245FB087B20
                    3ECCE6E50B405A5527D2FC55FB57787FE34FEDCDE168FC17F12FC75AAF86BC6D
                    AE6B9E0FF130B8F88F3C767749278766BAB28F4FD2ED5D62B581A4895EDEF418
                    AE66258A19E370EBBD7A32A6A56D5A527FF80E9F8CAE97959EEF94C6124F979B
                    452E57F29454FF0008BFBEEB65CC7E8B691A178D7C41A6437B61F11740BDB3B9
                    50F0CF6FA02C914AA7BAB2DC1047B8AADE2FB4F1B7823C3777AADEF8DA39AD6C
                    93CC9134FF0005CFA85CB0C81F2416F2BCB21E7A2213EDC57E42FECF3E20F13D
                    C7C28F815F0F6D3F6914FD9F3C26BF0B742D4BC2FAD6B979ACEA2355F1379B2A
                    6A565049FDB16904D3C045B4634CB95BA8007644B652AEB5E99E21FDA0ACB47F
                    D913F697F8907F6A0F1A6A7E24F01FC4C5D02CF5C1E38FB3DAC5632CFA69FB1F
                    F67A30B38031FB4A2BA40970AB1CA16507CC26EAD08C2ACA9B969172D7C94E34
                    EFDB594AF6BDF975B37A19D5ABC89595DBB25EAE0E7F92B76E6D1D96AFF4C7C4
                    F67E2EF04F86350D6B58F893E1FD2F48D26DA4BDBDBCBAD016286D208D4BBC8E
                    CD7002AAA82493D003591F073C5BADFED03F0C345F1A783BE28687AEF85FC456
                    E2EF4DD421F0C32477709240750F306DA707048E473D0D7C45E20FDB7FC31A77
                    FC14ABC25ADE85F143C4917842E7C55ADF877C652788FC7FFF001254813419AF
                    6D56DF4807EC96D69BA012437B27973CC379533C4FBD7D57F607F88369E33FF8
                    210F85750F0678DB4ED166FF0084427B1B4D7AD7CCB98F4ABB12C910DC200645
                    649080C146F5EB804573D9AA4EABED17E97E6DFEE56D3BEFA1BAB3972F9B5EBA
                    DB4F469DF5EDB6A8FABBFE10AF881FF43DE93FF84D8FFE48AF3ED63E39B68DF1
                    7B57F87EDF16B46BCF1C683E1F7F145FE85A7F8466BFD42DF4E570825F26091D
                    8B3310122506490E762B60D7C4DE19FDAD34EF1769BE06D27E21F8D7C55F0E7E
                    073DF6B9A3EBBE31D33E2CEA17DA3DCEB56B6DA6FF0067259F8A8490DDBD8BAB
                    5E1FDF488CF770CB0C85C8D8FE5FF16FF6BED63C1DE0FD52F7C67F16BFE10CF8
                    C1A37ECE7E23BBB1D55AFED6C75E9D535B8DF499244953E5B8BBB686166511AB
                    9F35CA046208A94795C5B7A3527F7539CD5FB3BC569D62D35BE8413938C56EE5
                    05FF008155841FC9293D7A347EB269DE19F1E6A9A7C175178E74F58EE6359516
                    6F0B343200C320323CE191B9E558020F0403591E1FD4FC53E23B58258FE205A5
                    89BBBEB8D36DA1D53C1D369971753C0D2091628AE258E491710C8EAEAA5648D7
                    CC42C8431F92BE0E7ED07E17F8D9FB44CD378E7E3BF887C1BAC5ADC6877DF0C6
                    D748F181B5B1F1A6892695692CF2C566C5ED75712DD35E24CE629A58444A51A0
                    3F39F0DF82BF15BC2FF1DFC3DFB2C78E7C4FF167C5FE3993C2DF10FC7BA4CFE2
                    1D3BC61746EEE9E0FED29AC6378EC6448669E4812D8A4222DB2C2EB188DA193C
                    B3AD5A4A0A4E4F45BF92FF0035F0B4ED695D74D71556F08B4AEDDADF34DFDDA5
                    EEAF75A9FA89FF000857C40FFA1EF49FFC26C7FF00245719F08BE29DD7C7BBFF
                    00155B7837E2F7863C472F8235993C3DAE1B2F0F6F4D3F508D11E4B667F3F697
                    40EBB8293B4920E08207E6AF807F6E4BED0A4F1C3F85FE237C49BBF861E23F0F
                    78335DBCD4F56F1DC9E24D7F47D3AE759BAB4D7354DE0B47A74B1C2A82E21B36
                    F26CC8DCAB0B2EC57FC25F8FBE06F067ED21F11BC3327C4CF1DE95FB3B6BFF00
                    135AE35AF880BE28D5AD60991FC2FA58D251FC51BD5CC124F0DC0F356F37B98A
                    DD6490A4CBE690A0DF3DFA276FF129422D7A7BCF97AC9A6B469A379A51767DD6
                    BBAB38B97CDAD2EAFA5D3D534CFD5AFF00842BE207FD0F7A4FFE1363FF009228
                    FF00842BE207FD0F7A4FFE1363FF00922BE48BEF887F1424FF00821D7C52F136
                    A1E33F1668FE2BF0F68DE27BEF0D78A61689358BDD32CAE6EDF4BBB91A48D816
                    9ED2180B49B03B249BC14760C3E64F8EBFB4CF8BF49B89AEFE107C6ED7B57F82
                    BAD5A786A0F89BE30D5356D4FC456BE04BF9A4B98EED96682F2DEE6CB72ADB7D
                    AE1B6BAB6368184988771CE5283551D35DE2BFF02BD9CBF956966DFDAB2B6A37
                    0B51F6CDE9EF6DADF9396FCBFCCDF3271B6E9367E8EF8B7E2B5CF817E32F853E
                    1E6ABF17BC3369E36F1BC5733E89A31F0E17BABE8ADA3324F28559CED8D141CB
                    BED5CE1412C40381FB58FEC3FE32FDADFC21A0E8DA8FC65D5FC2B0787B5FB1F1
                    2413681E1DB15966BAB29967B6F30DD09D4A24C88FB5546E2801254953F1BF8B
                    7E2C5C7C1BBBFD9AF46D3BE3C784BE3B7C43373E34BCF056AE8CD1A6B1E66877
                    26C6DA1927BCBB96F6359E486DD677B999A56C2B3B48AC6BD5BFE09C3F1925F8
                    89FB46F83A4F007C46F177C45F0AEB7E00B9D43E275BEBBAFDCEAEDE17F13A4F
                    642281A39D98E9972FE65F2BD8C6228D16004428002DA52873545C8F58FBD7DB
                    55CD35E8E3C967ABF7DC6DA4AEB99D4769732D1E96F27CB17FF81735E2ACAF15
                    2EB1B3FB153C13F1015403E3CD298818C9F0D8C9FF00C8F4BFF0857C40FF00A1
                    EF49FF00C26C7FF2457E70EBFF0018B5CD3FF688F89DA269BF1CFE206A7F18BC
                    31F1D6C2CFC31E1ABAF12158E6F0EDC41A4BEA31B699188ED67B2B7B6B8BB7F3
                    A485FECE6246DEAEEC64C0FD9FFE3BD8EA9FB3CF82FC63E24F8F1E3EF127C3DD
                    7BE2AF897C25F117C76BF11AF2286C34DB7BAD4CE91E64D693C76FA4C7331B12
                    D716896C59258177AC4EA2A614DCA8AAC9AD545FFE0518497FE96A2FFBC9A57E
                    BBCD28DD2D6CDAF3D39EFA6FB41B5DD357B6B6FD06F8F5F16350FD99FC2506B5
                    E31F89B65656D7971F64B3B7B2F055CEA97FA84DB1E431DBDA5ABCB713B88E39
                    24658A362A91BB9C2AB11BBF0E350F12FC5DF0068BE29F0DFC4BD0B57F0FF88A
                    CA1D474DBD87C37FBBBAB79503C722E670402A41C100FA8AFCD1F1BFC41D135A
                    F1AFECB87E247C53D5CCD17C4BF16DB781F50D47E225F68977E22F0FC767A8C7
                    A45E4AD0DCC067F3A6FB340B74C0BDC472A217916E1848CFD9ABC7BF123E25FC
                    0EF1178AF59FDAE343B6F1FEAFA3DBD8F8D3E1EDC26B9A74FE19D5BFB4201225
                    F5C0D4EEE5D0D1825C5A7DA6C6D2CA2D93F9EA84C6AC0505CADBF27E97BE8D6B
                    2BDECA492F724D45A7CD7468E6A1E767D53F79A6D3D172D95E2DBF7D5DAB5AC7
                    EA5FFC215F103FE87BD27FF09B1FFC9147FC215F103FE87BD27FF09B1FFC915F
                    9E4DFB63CF73E19F857E2E5D73C46FA40926D39BC3117C52BD7D57509A5D4A78
                    A3BDD16ED505BF89E078E2956286E3F7A6DE212A812649C5F117ED23E20D4352
                    4BEFF85D5E31F067C6AB4F19788F4CF895A1CDE23D967E11F0AC51EA4D06A434
                    CBA125959430C11D84B05F792BE73C8A1E494B95ACEABE48B93E97F5D1AD7D35
                    4DBBDA29DDBBA682316E6E1D55BF26FEFF0075A4B794AC92B34CFD27FF00842B
                    E207FD0F7A4FFE1363FF009228FF00842BE207FD0F7A4FFE1363FF00922BC13F
                    E08DBF11BC39E34FD87BE156A8DF11AFBC6FE3BF1DF83EC7C43AD1D57C6771AE
                    DEDC4D1C51DBDD4D1C33CF27D9E34B8063916154412EE0C3CC273F5BD6F89A0E
                    8D595296AE2DAF2BA7676F2BA7FF0003632A7514E3CCBFAEAAFF002B1C1FFC21
                    5F103FE87BD27FF09B1FFC9147FC215F103FE87BD27FF09B1FFC915DE51581A1
                    C1FF00C215F103FE87BD27FF0009B1FF00C9147FC215F103FE87BD27FF0009B1
                    FF00C915DE51401F3F7ED63FB1CF8BBF6BDFD9F7C4BF0DF5AF8AD77A068BE2CB
                    6FB16A173A2F87AD92F1E0246F895A769914381B4909B80276953CD76DE14F85
                    FF00113C35E18D3B4E9BE25DB6AF2D85B476EF7D79E1A845C5E1450A6590452A
                    47BDB193B115724E140E2BD2E8A69B49AEE26AED3EDFA9C1FF00C215F103FE87
                    BD27FF0009B1FF00C9155F57F87BF11353D26EADA2F88B63612DC44F1A5CC1E1
                    A8CCB6E48203A079990B2E72372B2E47208E2BD128A994534D3293B3B9F3D7EC
                    99FB19F8C3F643F81FA6780B49F8B77FE25D2F4896792D6EB5DF0F5ABDE22CB2
                    B4AC85ADCC28543BB9194DDF36324018F49FF842BE207FD0F7A4FF00E1363FF9
                    22BBCA2A9B6DDD9318A4AC8E0FFE10AF881FF43DE93FF84D8FFE48A3FE10AF88
                    1FF43DE93FF84D8FFE48AEF28A43383FF842BE207FD0F7A4FF00E1363FF9228F
                    F842BE207FD0F7A4FF00E1363FF922BBCA280383FF00842BE207FD0F7A4FFE13
                    63FF009228FF00842BE207FD0F7A4FFE1363FF00922BBCA280383FF842BE207F
                    D0F7A4FF00E1363FF9228FF842BE207FD0F7A4FF00E1363FF922BBCA280383FF
                    00842BE207FD0F7A4FFE1363FF009228FF00842BE207FD0F7A4FFE1363FF0092
                    2BBCA280383FF842BE207FD0F7A4FF00E1363FF9228FF842BE207FD0F7A4FF00
                    E1363FF922BBCA280383FF00842BE207FD0F7A4FFE1363FF009228FF00842BE2
                    07FD0F7A4FFE1363FF00922BBCA280383FF842BE207FD0F7A4FF00E1363FF922
                    8FF842BE207FD0F7A4FF00E1363FF922BBCA280383FF00842BE207FD0F7A4FFE
                    1363FF009228FF00842BE207FD0F7A4FFE1363FF00922BBCA280383FF842BE20
                    7FD0F7A4FF00E1363FF9228FF842BE207FD0F7A4FF00E1363FF922BBCA280383
                    FF00842BE207FD0F7A4FFE1363FF009228FF00842BE207FD0F7A4FFE1363FF00
                    922BBCA2803C73E367833C7CBF067C5C5FC73A53A0D16F0B28F0E8058790F919
                    F3F8A5F82BE0DF1EBFC1BF09347E38D2A38CE8D66514F8743151E426067CF19F
                    AD773F1CBFE48A78C3FEC097BFFA21E8F81BFF002453C1FF00F604B2FF00D109
                    40199FF0857C40FF00A1EF49FF00C26C7FF2451FF0857C40FF00A1EF49FF00C2
                    6C7FF2457794500707FF000857C40FFA1EF49FFC26C7FF00245731F1AFC1BE3D
                    4F835E2D3278E34A741A2DE1651E1D00B0F21F233E7F15EC75CB7C72FF009229
                    E30FFB025EFF00E887A00E1BE0A7837C7AFF0006FC2463F1C6951C6745B32AA7
                    C3A18A8F213033E7F35D37FC215F103FE87BD27FF09B1FFC915A7F037FE48A78
                    3FFEC0965FFA212BA9A00E0FFE10AF881FF43DE93FF84D8FFE48A3FE10AF881F
                    F43DE93FF84D8FFE48AEF28A00F9C7F68EF0878E62F19FC211378D74B959FC6E
                    8B115F0F85F2DFFB2B52F98FEFCE460118E3AF5E2BD4BFE10AF881FF0043DE93
                    FF0084D8FF00E48AC3FDA67FE476F835FF0063DA7FE9A753AF58A00E0FFE10AF
                    881FF43DE93FF84D8FFE48A3FE10AF881FF43DE93FF84D8FFE48AEF28A00E0FF
                    00E10AF881FF0043DE93FF0084D8FF00E48AF37FF8262C52DBFECC9AD477130B
                    8B98FE277C4349E608104D20F1AEB61DC2FF000866C90B938040C9C64FD095E0
                    1FF04D4FF9375F11FF00D955F88DFF00A9BEBB4FA0197F05FC1DF12B55F107C4
                    99FC3FE3BF0D68BA6378DB52D96B75E147BE950FEEFAC82F23CF6FE115E556DF
                    F051BFB6EB3AF58C3F157C432B7857517D275BB84FD9B3C606CF47B9454664B9
                    B9DBE4C21524472CEE1423AB93B486AFA5BF65F381F113FEC77D4BFF006957E7
                    EFC0FF00DAA7E11DB7ED4FFB426BB77FB67685F0EF4F83E2EC3A8A784EDFC45E
                    1CFB178960B6D3B4912E15E03A94BE6BC32DB916D72AA5A22BB18874774129D6
                    F6727A72DFFF0027847F2937A26F4F526B371A5CF15ADEDFF92C9FE715BB48FB
                    F07C3CF8C84647C51F06E0FF00D48B27FF002C2AB695E14F8B3AEDAB4F63F16F
                    C0979024B240D241E0A7910491BB4722123512372BAB2B0EA19483C8AFCE8F04
                    FED95E1DB1F8F7A7DFDDFED37AE7882E2F3F689BEF0725B5FF008ED6DEDE4D02
                    E749F9AD5AC6168A1558EE4C4B1CBE509229000AEACEFBB17F6195F08697F1A7
                    E057C2983E3678F6CA2F11C9E3B935BF03C7F13B51B595B50B4D59FEC6FBD6E4
                    5EC6ECA92EE856611B98647311779DA454FDE8467FCC93EEFE0551AF946497F8
                    B4D17BC0E5EF38AD6D7D7A594E70DFCDC1BFF0EBABD0FD3AFF008577F193FE8A
                    8F837FF08593FF0096147FC2BBF8C9FF004547C1BFF842C9FF00CB0AFCD2F823
                    F18BE29EBFF07FE2D7C41D5BF6ABD2F41F8A5A67853C436DE29F872DA5EA925F
                    784F52884A6DEE66867D4EEA2B18A010FEEAE2D34FB58A749559848C54D4DF06
                    BE35FC3AD43C0FE26D766F8CFF0015E6D0FC77E2DD1B42D1FC396FFB461D6AE7
                    4193EC33168B51D5ED354BD4D3AD6E6EA391D1A0B81732B245165849F66A1A69
                    5FAD93B7ACB955BA34F74D5F4EC69256938BE8E4BFF0149BF35E8EDB1FA4FF00
                    F0AEFE327FD151F06FFE10B27FF2C28FF8577F193FE8A8F837FF0008593FF961
                    5F377C03FDA7F7FF00C10EAC7C77F103C63E3296E749D0EE34FD775BF0F6AA92
                    EBB6F2417AF68DFE993AA849542A892E2658CA0DF2B98C82CBB9FF000481F8BB
                    7BE33F04FC6CD0EF7C4D77ACD97827C7D716BA27DB7C5B73E2DB9B0D2A7D3ACA
                    F2DC1D42E733DCC64CF2B23B9718CAA492222BB54A169558AFF9771E6F973463
                    FF00B726BA5AF76B4BE319DE14E76F8DDBE766FF000B59E9BB5F2F75FF008577
                    F193FE8A8F837FF08593FF0096147FC2BBF8C9FF004547C1BFF842C9FF00CB0A
                    FCCEF167ED61F107C31F04B59F0F58FC45BAFB3DAF8834287C77F136D7C53AC7
                    89B45D3B47BD378D2DE4F6E27B3BFD06ECC86D7ED3690DCC0B6B0491BC4E880E
                    0D7FC6979F007C27F11F4CD67F6A3F167C4CB2F16FC19D6B51F06F88F43F126B
                    56167A86A565726E6DE3D25C6A374F3DC5BC0F12BCD0DC492CD12379CD26D989
                    CE778A6DAEFF003E5873BF3575A2BA57774D26ACFA9D2FDEAA49DDB715F294D4
                    13F96F24AF6567AA775FA63FF0AEFE327FD151F06FFE10B27FF2C28FF8577F19
                    3FE8A8F837FF0008593FF9615F217ECF5FB4C6A1A8FEDA1F0EC5F78A3C43E2CB
                    5F1DE9FA74567A6C7E26D4F4CD63C3A63D1239265D43C39771A477164D2B999B
                    518F1324F3C51499550050FDB5FE27788EEBF6E8F8E7A17817E28789F5DF1E78
                    27E0EC5E2FF07F80EC3C54F690E9DAE4725CA8CD85A3C4D781A316F2B4178264
                    6F3932363460695E1ECA4A2F5BF37FE4A9C9EFE4BC979DACDE7422EAC6F1ED07
                    FF0081CA3149F6B396BBBB27A5F43ECCFF008577F193FE8A8F837FF08593FF00
                    96147FC2BBF8C9FF004547C1BFF842C9FF00CB0AFCE4F0378F759D33F676BBF1
                    7695FB60F843E26683A9EABA7EAB7FA15C788B5FF09DA69B34369752DDD85DEB
                    F26A7A9DDE913487C994DBC8F0C0AF68B1792893BAB64FC44FDA5350D7354F8A
                    24FC65F8D1E19F19DCFC33F08F89FE13784F57F139B4D424D7E48F5155B24B6B
                    51126A4D349043E6C328984AB23BB0D8A863D3D83E671BED64FE7D1777BDADA3
                    B6EAE445A7152BDAFB5F4EA97BDFCA95D36DED7D2F667E98FF00C2BBF8C9FF00
                    4547C1BFF842C9FF00CB0A3FE15DFC64FF00A2A3E0DFFC2164FF00E5857C19E1
                    DFDA07C67AFF00C50B07D57E25F89BC3BFB4769FF12A7D27C4FE091E229534BB
                    1F06F9F206BF5D26567B44B68AC3CBB95D47CADC671B1A6604C35E45F04FF6DC
                    B1B1F0C7C2A8E1FDACAF2EFC57F137C37E39D12F352D73C68DA9C535DC5AA2C7
                    A34CB650B6C8673B9D636B589247562A370440B928DD5D35F9DFDDE656B5EE9E
                    8AFF00CD74AFCA272B54F67F8F4D24E2EF7EBA3697671BDAFA7E9B7C404F8A1F
                    0BFC2D36B3ACFC56F0AC3630C91427ECFF000EAEAEE692496458A3448A1BE792
                    46677550A8A4E4F4AD94F87DF192440C3E28783B0C3233E04941FC8EA15F9C5F
                    153F6BDD2FC65FB2CC1A045E24F8A3A478CA26F115B786E4D0BE34DFCBE17D7A
                    FAC74CB52B25A788D42DFEA688CE0C5687CC924B8178B2C52795B97D1FE1C6AD
                    AA78E66F085A5EF8EFE28EA777FB58FC3BF0F5F69777A778DB584B7D1752B430
                    BEB3258986E3658936F3473E222818C12A1CAB15350A6E4DA5FDDB79F32935FF
                    00A44AEEF65A2D5DD299D451E5E65BA937E5CB28C5FF00E949AF46DD92BBFA5B
                    F6ADFD943E29FED1DFB38F8CFC0BAD7C67B0D1744F146953E9FA95CE83E01F33
                    5136AEA44D1C4B25D4C0B3C7B93E58D9F0E7661B691B7F063E12FC5FD07E11F8
                    62CADFE30E95AB5BDAE976F1C379ADFC3A7B3D4AE2311A856B8845DC3E5CA571
                    B90C3195390514822BF3D3C1DF187C7977A3FC62F1878B3F6B78BE1F78E3C1FA
                    7F8B2C75FF00878B15E8D67498ADC5C7F66DC62FB53B8B3B689123B5922BE834
                    C87ED0260AF2492481ABD83C25FB5A35F7C54FD9F3C4117C409FC7DA378D3C3B
                    E18D2A2D3744F1DDDDAEAF0DEC8D1BDD5E2E9D8369ADDBB1D86F242C67B48A29
                    48203B82B0F1E77C8BED7B3FFC9BDA5B5D9FC3D1A5AF56188AB2835192F87DA7
                    FE4BECF9B4DD6FDAEECB63E9A1F12FC58FFB427FC2A94F8EBF0F65F8883446F1
                    1BE871F81A67B9874F13243F689317E5635323AAA8620B7CC5410AC4677C73F8
                    E7E24FD99F44D5F54F1EFC6EF08F85749D123B492E351BEF8697E9652B5D4AF1
                    410C138BC31DC4ECE841821679577216450E85BCABFE0A487C27A17EDD7E06D4
                    FE2078C7C47F0EBC317DF0CFC43A4D8EBDA56BD75A0CF36ACDA869535B595BDD
                    40E8F25D3885DD2D5598CFE51531C8BB94FC93F137F6CDD534CFD9D3F690F0AF
                    C74F8BB6CFE368FE137816F6F3C33ADEAD670B685AB4E661790436B185D92963
                    6724A08670F3A65B6796AB7429C6A528D46F5EABFEE24E365E7CB1BBBED74F66
                    90EBC9C39ECBB5BE6A0EFE6AF26B4ED63EC9FD883E0D6BFE1FF8B5F1D7FE105F
                    DA834AF885AC5FF8BFEDBE31B3BDF0441241A06ACD6F1C66089ADE6870441140
                    8D1B3C853C95CE1CB96FA1351F067C5CD1F4F9EEEEFE2C781ED6D6D6369A69A6
                    F04BA470A28CB3331D4700000924F000AFCDBF8F9FB65FC3EF017ED25F1ABC79
                    E18F8E1A3693AB69DF16FE1EDADAC3A778D62B6D3F50B69EDAC2DB5017104728
                    8EEA2FB30BB0DE709162FB3BBAEC68D9AB85D7AFBC75FB4A7EC61F1F75DF1A7E
                    D12753F1CB781BC496BE31F83DA745ACDBEA9A4DFC2B2BDB3CB1B6AF34769045
                    E4008F6B656B6F7914C04825320A884653A5193D12496BD3969C1AF3E5B4925F
                    CBA26EDA9D14E945D48A6FE36BFF002794AFF356BBDB99DEC8FD6283C05F186E
                    A04962F8A9E0A923914323AF81E42AC0F2083FDA1C8A77FC2BBF8C9FF4547C1B
                    FF00842C9FFCB0AFCF1F00F8D7C4DE28FDB397418FF69CB7F857A4F822F7449F
                    E1F681AA49ACEB97BF103C3C6C2DE4B86B6797584B7D544D30BC8DE596CEF2E2
                    0DAAE92AAECC7D21FF00049DF8C5A878AFC59E38F0AEAFE21BDF1BEABA159D8D
                    DDCF896CBC6379E20D235269DE77DCF6D76AB368DA832B2B4BA6E3CA890C3E56
                    1722B4F637BD9F9DBADBA7979357E6524D59D9B5CD19DE9F3BFEEFE3DBF0B3D9
                    A69DCF7EFF008577F193FE8A8F837FF08593FF0096147FC2BBF8C9FF004547C1
                    BFF842C9FF00CB0AF8B3F633F1CFC41F8A7FF0508D72FBC67FB44697E1CF1878
                    6FC5FAEE97A87C206B0D45EFF53D0D659534E91609354368B6DE4B5ACEB7F6FA
                    646E4E52499B2F9C9FDB07E3078A17F6C6FDABAD3C05F157C5DE24F1CFC34F86
                    BA2F89FC29E10D3FC4B2F95E1FBE637F15EEDD2ACE4885E9480DACE61BB59897
                    B8872406876E2A37A719F78B97C92BEFB3D356EF65ADDF7DF91F3CE1FCAD2F56
                    E5C9EBBF96AB657BA5F74FFC2BBF8C9FF4547C1BFF00842C9FFCB0A3FE15DFC6
                    4FFA2A3E0DFF00C2164FFE5857E7AFC34F89C3C1BE0FF0B5DEB5FB5B47F123F6
                    7FF1AF8963FF0084A3C43E1BD4B58D2A3F042B6977662B6B9D72E357BFBDB349
                    EF12DCC88D790981C227EE9270867FDB1BF69ED03E18F8A7C151F80BE367C52F
                    11EB1E0B6F085EC7ACEADF10059E8FA968775AF0B5B8BB5B5B7448F5B1242C63
                    9AE6E11E08E3103A4CB23B79BAAA2DD48D36F79463E8E4B5BFA7E2AED744F18C
                    F9A2E496C9BD7AEB656F5EBD9E9AF4FB43C7BF113C5DF0BFE26F837C19AFFC74
                    F879A6F8AFE20CF716FE1DD2A4F044A6EB556822334DE5A2DF93B52319663851
                    9519CB007B3FF8577F193FE8A8F837FF0008593FF9615F9B1E2EFDA3ADBC5BFB
                    487C1EF125EF8A3C69ABFC71D23E2FF88B4CD63C10D797FA8DB787D3FB335CB6
                    D1F1A545BE3B5B79236B565BB11A79C934B2492322131EA7C38F8F7E24F1E786
                    7C2B71E06F8D5E299BC47E24F025D8F8C706BFE20D46F20F0578884D611411CB
                    0C65E4D0E692E65BAB7F2ED5610B0EF99633E4890472FEEB9FADAFF8392B6F74
                    92F79ABD9CA3A5A575B4E36A9182EBF9F338BF46F4714ECDA527D2C7E89FFC2B
                    BF8C9FF4547C1BFF00842C9FFCB0A3FE15DFC64FFA2A3E0DFF00C2164FFE5857
                    847C20FDA4BC55E23FF8255FC49F197C39B0D5F54F1A78674BD663D017FE1239
                    3C6D69A9DE5B5B13049A76A520F3352B5660BE5C920323B0757CB86CFC87F14F
                    F689B5D4752D4B5BF86FF1E3E2978A3C0BE11F0FF833C7175A8AF8CF517B5D3E
                    69BC4C20D6A49A55752F00B44944F69333C16DB5D5628426D571A69D68D26EC9
                    F2EBD9493777D9249EBFF06D314E54BDA2EED7CD4A31B7CDC97C937D127FA67F
                    F0AEFE327FD151F06FFE10B27FF2C28FF8577F193FE8A8F837FF0008593FF961
                    5F9EFAD7ED41E19D53C65F193C2179F117E34DC68DAE7C5D48FC1B7569E3AD57
                    42D22E92EBC3905CC56CBAF484C91D91BB5B9922B6D3E52CF2181161786408FE
                    10DFB7FDCF897F675F14F8835DFDA935E5F177873F674D1FC5169A5DBF8EA1D3
                    CE9BE2A8A6923DAF1DB98A49E791D2DBCC82E7CCF30DD6D742AF1A290A77714D
                    DAEA2FD14A9BA9F7A4ACFA5DAD55F4D15272BF234EDA7FE5454D7CAEEFE89E8C
                    FD4DF8B5F103C61F026FFC2F69E2EF8E7F0F743BBF1AEB10E81A15BCFE0798CD
                    AADF4C7090448B7E599BA927185505988009AECBFE15DFC64FFA2A3E0DFF00C2
                    164FFE5857E6D7C58FDAD7C2BF197C6FA278AF5FF883E2BD4FC73A3FC65F0E4D
                    A5F85749D56F751D3AE7C2C26B792D352B4D26D43C77304CA4CDF6D585DFCD66
                    884BB54475EA1FB237C7AF1378FBF684F8512E9DE3CF166AFF0017751F136B3A
                    6FC6BF03DFEBB737169E19B08A0BD30CBFD9723795A74693476496F3431C7F69
                    49B2CD3962E1D1A329C7DED1DDAF9725392FB9CDA93DA2F4F37C72ACB9E496CA
                    29FCF9AA26BE6A1EEEFCD75DF4FB57FE15DFC64FFA2A3E0DFF00C2164FFE5857
                    2FF1A3C4DE39FD9D7E176B3E35F1C7C6FF00879E19F0AF87E0FB4EA1A95F7826
                    4482D93214127FB4324962AA14025998000920578AFED33F1DB5DF867FF05028
                    2CF4DD72E3C4F75AD243A568BE1CD37C5F7961A8E9376B6A26264D1180B5D46C
                    19A481E6BC8CF9D6C1F613B322BE59F13FED3E97BFB2F6B7ACC3F157C43E211A
                    D7C13F137FC2EFD2FC4BE219AF20F09F88BEC70C36B0B5ACCC534ABA92F65B8B
                    78ECE158525419589B687AE49546E84EAC7ECA7F3B293F9AB46CDF4728EE9DD7
                    7D0A4A78AA78797DA71FBA4D2F4BEB74BAA52EAAC7E8C7846EFE2778E6FC41A6
                    7C51D06657D36D7568EE64F8637D0D9CF6F73BCC463B87BC586493084B44AE64
                    8C3217550E9BAE6BDA57C5AF0DEA9A459DC7C4BD0649B5BBA6B4B76B5F8677B7
                    7146E2279499E48AF592DE3DB1B0124C510B1440C5DD54FC05A0FEDC77CFAA7C
                    5AD2FC05F186EBC596363E07F869AA0B0D2B5682F65F0AE9134E61D76E74F86D
                    D77A98AC9E399E42B2488658D8B63CA55F42F167C6BF86DE08F8E9FB35681E03
                    FDA83C4DE2FF00879F113C61AFE98F6771F119756B7D46297459D63B68B53DC6
                    F6E7C9BCF2163DF772BC735D8527708163F431187E49CA31E97B776D74D175D9
                    349A6D4974D7828D6E6A4AA4FB5DFF00E02A4FFE19B4ECD773EC6D27C27F1675
                    EB15BAB1F8B7E04BDB676645960F053C885958AB00C35123218107D0823B572D
                    F16BE2078C3E04DFF85ED3C5DF1CFE1EE8777E35D621D0342B79FC0F319B55BE
                    98E1208916FCB337524E30AA0B3100135F97B7BF1CF42F80DFF04CCF06699E0A
                    F883F15B4DF899E16F035FF8AEDA07F897A8E9FA45ADE5A6A0AB740A34924BA8
                    5C4222657D3B0F6B12190CA96E64F34FB0FED13FB49787FC6FF18EDB57F16F8D
                    BC6727C44F0BFC6ED016C3C1B63A8DFDED9378616E207B4D42DB48B60C9710CC
                    A4CC6F561793CD66884BB544759429DEA423D1C927E9ED23076F3BC9B5D2C9BD
                    D38958A9BA34AA49EF18CADEAA0E6AFD52B25F369754CFD13FF8577F193FE8A8
                    F837FF0008593FF96147FC2BBF8C9FF4547C1BFF00842C9FFCB0AF88BF65BFDA
                    435CF107C70F863A9A7C45F125D7C4F93C43ADDA7C73F07EADE219E4D3FC25A6
                    416D7CF1DC3E9B2BF93A6431CB159AC13C4910B849B7334C58B8FD29F0FF0088
                    2C3C5BA0D96ABA55F59EA7A5EA5025D5A5E5A4CB341750BA86492375255D1948
                    2181208208A9706A2A5DFF00A5EA9F47D6CFB1A49A5370FEBB34FB35D57669F5
                    3CCFFE15DFC64FFA2A3E0DFF00C2164FFE5851FF000AEFE327FD151F06FF00E1
                    0B27FF002C2BD628A819E4FF00F0AEFE327FD151F06FFE10B27FF2C28FF8577F
                    193FE8A8F837FF0008593FF9615EB14500793FFC2BBF8C9FF4547C1BFF00842C
                    9FFCB0A3FE15DFC64FFA2A3E0DFF00C2164FFE5857AC51401E4FFF000AEFE327
                    FD151F06FF00E10B27FF002C28FF008577F193FE8A8F837FF08593FF009615EB
                    14500793FF00C2BBF8C9FF004547C1BFF842C9FF00CB0A3FE15DFC64FF00A2A3
                    E0DFFC2164FF00E5857AC51401E4FF00F0AEFE327FD151F06FFE10B27FF2C28F
                    F8577F193FE8A8F837FF0008593FF9615EB14500793FFC2BBF8C9FF4547C1BFF
                    00842C9FFCB0A3FE15DFC64FFA2A3E0DFF00C2164FFE5857AC51401E4FFF000A
                    EFE327FD151F06FF00E10B27FF002C28FF008577F193FE8A8F837FF08593FF00
                    9615EB145007817C66F87FF1822F83FE2B69BE26F83E685746BC3246BE08910B
                    AF90F900FF00681C6477C1C51F067E1F7C5F93E0FF00851A0F89BE108A06D1EC
                    CC68FE0891D917C84C02DF6F192077C0CFA0AF54F8E5FF002453C61FF604BDFF
                    00D10F47C0DFF9229E0FFF00B02597FE884A00E43FE15DFC64FF00A2A3E0DFFC
                    2164FF00E5851FF0AEFE327FD151F06FFE10B27FF2C2BD628A00F27FF8577F19
                    3FE8A8F837FF0008593FF9615CD7C67F87DF1823F83DE2C69BE26F83E585746B
                    C2E8BE089119D7C87C807FB40E091DF071E95EFB5CB7C72FF9229E30FF00B025
                    EFFE887A00F2CF835F0FFE2FCBF083C28D07C4CF07C30368F68638DBC1123945
                    F21300B7F680C903BE067D2BA4FF008577F193FE8A8F837FF08593FF009615D7
                    FC0DFF009229E0FF00FB02597FE884AEA6803C9FFE15DFC64FFA2A3E0DFF00C2
                    164FFE5851FF000AEFE327FD151F06FF00E10B27FF002C2BD628A00F963F689F
                    017C5A87C61F0945CFC48F09CF249E3445B664F064918824FECCD44EF61F6F3B
                    C6D0E36E5796073C60FA7FFC2BBF8C9FF4547C1BFF00842C9FFCB0A3F699FF00
                    91DBE0D7FD8F69FF00A69D4EBD62803C9FFE15DFC64FFA2A3E0DFF00C2164FFE
                    5851FF000AEFE327FD151F06FF00E10B27FF002C2BD628A00F27FF008577F193
                    FE8A8F837FF08593FF009615C87FC12F20B9B5FD973558AF6E12EEFA2F897F10
                    52EEE238BC94B89C78D35B1248B1E4EC5670CC137315040DCD8DC7E87AF00FF8
                    26A7FC9BAF88FF00ECAAFC46FF00D4DF5DA7D00F93EC7F6EBF8B7F0DBE2EFC5A
                    D1FC3D3FC398B4BB3F1EEAF142BA8F87AF6EAE30B3041B9D2FE253C28E8839CF
                    D2B5FF00E1E4DF1DBFE7EFE127FE127A87FF002D2BC63C41FF0025F3E317FD94
                    2D6BFF004A4D3E901EC9FF000F26F8EDFF003F7F093FF093D43FF96947FC3C9B
                    E3B7FCFDFC24FF00C24F50FF00E5A578DD1401DCFC6DFDB2BE347C76F85FAAF8
                    5751D67E1E69969AAAA06BAD2FC39A85BDD40C922C88C8C753653F322E55D591
                    C655D5958A9C9F835FB56FC7BF85F74FA86B5E3FF08FC45F11BDB7D8BFB6FC45
                    E10F2AE92DBCC32792B1D85D5ADBAAEE2092210EDB577336D18E728A23A3BAFE
                    BA7CB4D1DB75A6C0F55CAF6FEBF549FAEBB9EC9FF0F26F8EDFF3F7F093FF0009
                    3D43FF0096947FC3C9BE3B7FCFDFC24FFC24F50FFE5A578DD1401EC9FF000F26
                    F8EDFF003F7F093FF093D43FF96947FC3C9BE3B7FCFDFC24FF00C24F50FF00E5
                    A578DD1401EC9FF0F26F8EDFF3F7F093FF00093D43FF0096947FC3C9BE3B7FCF
                    DFC24FFC24F50FFE5A578DD1401EC9FF000F26F8EDFF003F7F093FF093D43FF9
                    695E45F0FBE377C6DF87BFB5B78E7E2F47F107C35A96A3E3ED32CB49BCD0AF3C
                    27FF00127B386CCB9B73008EE52E43219AE3979DF779EFB81DB1EC828A716D3B
                    AF4FBC5249AB3FEADA9EC9FF000F26F8EDFF003F7F093FF093D43FF96947FC3C
                    9BE3B7FCFDFC24FF00C24F50FF00E5A578DD14867B27FC3C9BE3B7FCFDFC24FF
                    00C24F50FF00E5A51FF0F26F8EDFF3F7F093FF00093D43FF009695E3745007B2
                    7FC3C9BE3B7FCFDFC24FFC24F50FFE5A51FF000F26F8EDFF003F7F093FF093D4
                    3FF9695E3745007B27FC3C9BE3B7FCFDFC24FF00C24F50FF00E5A51FF0F26F8E
                    DFF3F7F093FF00093D43FF009695E3745007B27FC3C9BE3B7FCFDFC24FFC24F5
                    0FFE5A51FF000F26F8EDFF003F7F093FF093D43FF9695E3745007AD6B7FF0005
                    41F8D5E1AD1AEF51D4354F83B6561610BDC5CDC4FE16BF48E08D01667663AAE0
                    0001249F4AE47C0BFF0005B3F88DF11A529A6EBBF0B6293EC925F84D43C05AD6
                    9AEF6B1940D70A2E3508CB43FBC5C48328D93B49C1C7917ED0967A1EA5F043C5
                    367E26B7D42EBC3F7DA6CB69A845631B4972F0C8BE5B08D572CCF86E028249E8
                    09E2BE20F137857E2178ABE1F7C48F841E11F1DDA7C63D087836E574AD644311
                    D63C3F2A4B029D1EEA74F959E68D586D7C4B94F982802A1C9AE6D364DAF926DF
                    E4BD7557BD8D2304F975B5DA4FD1B497E6EFDB7B6E7E90785BFE0BF7E2BF19F8
                    834DD3AC3C5BF0A58EB7335B6977B3FC3FD72DB4DD5655EB1DB5EC97EB6D70DE
                    8B148C4E0E33835AFE2AFF0082DFFC43F0878F0F85E7D7BE185EF88234492E2C
                    74AF87FAE6A92D82391B64B916DA8482DD0E721E6D8B8C9CE01AFCC6F8F5E29D
                    37F682FF00827DFC30F84FE027597E26249A2DB9D02007FB4BC3725B2A09A6BA
                    8BFD65AA4783FBC902E770C13BABBCFD857C6363FB2AFC4DF8C3E1AF8B1AD59E
                    85E30F1078BE5D56C2FF0056716C3C4B69222087ECAEF813953C795196652E17
                    19AE974A2A528DF672B7F7ADC9B7FE04FBFC2FCEDCF19B708CADBA4DAFE5BF36
                    FF00725D357E97FB86FBFE0E06F1658FC42D03C2DFF092FC37B8D6FC54BBF478
                    AD7E1A7886E62D4901219E29A3BD68991704B306DA8065881CD76F37FC15FF00
                    E2A5BFC5383C12FE20F83ABE2AB9D35B578B4F3E12D4BCC7B55904665CFF0069
                    EDC6F206339EA71804D7E677ED21F1A3C15E12FF00829CFC04D4EFF58D17C2FA
                    6699A1EAD35EA6A33C56074D1710BB44674623C96909C80FB5896E99C8AE2BF6
                    8CF8BE7C27F1A7E19FED330DC7828F859BC472E946FEC3C4AD757FAA69532883
                    CB6B536E8A86144791916690ABCADB941CE33A694BD9F369CCE49F97BCE315E5
                    7766EFD2F62EA5D73DB5B24D79E9CCFF000BA5E76BE973F497C7FF00F070E78A
                    3E1878D75BF0F6B7E20F02DAEADE1CB6FB6EA50C7F0A3C4F709696D9C7DA1A48
                    EED93C9CF1E686299FE2A5D7FF00E0E1BF12F87BC4DA168EFE26F8777FA878A6
                    CC6A1A345A5FC2FF00126A635580AEF2F035BDE48B280BCB0424AFF1015F98DF
                    B54FC60F05FC52FDAFBE28DFE87F19B42F0F6997BF0B63B286FB4FBFB2BAB7D6
                    66F3E42D60490CECCCA40290324A33D7A831F80BE3368BE12FDA6FF64EBBF17C
                    5E1BF8652683E12D4E1D4B4CB9BC5B48745578A45B732899CBC3E72857512B6E
                    3BFA934518F328F368DDFF000553FF00905F7EDB3735276E6E557B7FF73FFE49
                    F968B5BDD1FAB1F02FFE0BAFE3DFDA4B51D62D7C1DADFC39D4A6F0FCC6DB51FB
                    47C36F105825A4C0E1A167B8BE8D7CD07AC79DC3A90057CFD77FF0582D5FC11F
                    B7678E7E29DDFC570FE21D03C3B17873C41E1AFF008547ACCBA1E89630C8F347
                    2C8631F6841E63CB2895AE4A3090E329B40F96BFE09F9FB627C35F82BA1FED03
                    AAEB7E34F0CC067F1EEA9AAE9F69FDA70FDA7578480636B68F76E98391852818
                    1CD707E39F8EDE0F87E317EDA6D79E29F0D59CFE24F0B5ADA69D13EA90E6FAE5
                    2C1A392DE1C91E6C8921D85546E0C30403C544AF1B548EEA9B97CDC55D2F949A
                    7D7D2E6F18DF9A9B7A39A8FC94D6AFD1A523F573E147FC17A7C65F1AB5AB1D37
                    40F147C2B3A86AB68350D3EDB51F87FAE6972EA76C467CEB65BABF8CCF1E39DD
                    16E0077AEAF52FF82BF7C55D1FE26697E0DB9D7FE0F43E26D66CA6D42CAC4F84
                    753DF3C10B2AC8E1BFB4F68C175E0904F240215B1F937E0DD5ECFE3BD97EC7B6
                    7E07D4ACB51D4BE1B595BEA7E29D46CE65921F0ED9C76D089A1BA957E589E4D8
                    CBE5B10C71C8C7349FB5F7C5EF23C71E0AFDA5F49B9F03DD786FC2FE2D1616DA
                    8D97894DC6A5A969AC05BCB682D3C858C3604D3ED13B3AACAC4A0E76F454A718
                    D6F677D399C6FE57E58CBD1B7FF92CACEF639E326E0E5BBE54D7AEADC7D6CBF1
                    5756DFF49BC51FF070B78A7C19F10758F0B6A5AFF812DF5CF0FC5F68D4A01F0A
                    7C4D225941BB6FDA1E55BB318833FF002DB77978E77639AB3F10BFE0E03F15FC
                    318BC332EA7E28F86335B78CC27F615CE99F0E35FD56DF5567242470CB6B7D22
                    3C871C461B7F438E457E7B697FB587C30FF8794FC43F133F8D3C2F7BE1ED43E1
                    CDB5A5BCD0DFC53AEA13F9A18DAC414932CE41C794A0BE4E36D783EA1A15DFC1
                    2FD99FF660F0EF8CFC429E09D6478FCEBCB0DC5C5BC37FE1ED36595BCBB878A7
                    5658D54EE7CCA85013861C1158D28B9287368DB8A7F39CA2D7AD9737A5EFD195
                    297C6E3D2F6FFC014AFE977CBEAD7A1FB67F0CFF00E0B05F177E2E58DECFA3DD
                    7C3D8FFB3AE3ECB7316A7F0EB5DD2AE229362B8062BABF8A4C15752182E0E7AF
                    06BA6FF87937C76FF9FBF849FF00849EA1FF00CB4AF953F672F8B9E1AF885E1C
                    6D1FC3BE3383E213F85EDEDEDAFF005FB6B88AE62BC99958F32444A1970A1982
                    F037AE31D07A3D39AB3B2FEBCFE7D069DD1EC9FF000F26F8EDFF003F7F093FF0
                    93D43FF96947FC3C9BE3B7FCFDFC24FF00C24F50FF00E5A578DD15233D93FE1E
                    4DF1DBFE7EFE127FE127A87FF2D28FF87937C76FF9FBF849FF00849EA1FF00CB
                    4AF1BA2803D93FE1E4DF1DBFE7EFE127FE127A87FF002D28FF0087937C76FF00
                    9FBF849FF849EA1FFCB4AF1BA2803D93FE1E4DF1DBFE7EFE127FE127A87FF2D2
                    8FF87937C76FF9FBF849FF00849EA1FF00CB4AF1BA2803D93FE1E4DF1DBFE7EF
                    E127FE127A87FF002D28FF0087937C76FF009FBF849FF849EA1FFCB4AF1BA280
                    3D93FE1E4DF1DBFE7EFE127FE127A87FF2D28FF87937C76FF9FBF849FF00849E
                    A1FF00CB4AF1BA2803D93FE1E4DF1DBFE7EFE127FE127A87FF002D28FF008793
                    7C76FF009FBF849FF849EA1FFCB4AF1BA2803D93FE1E4DF1DBFE7EFE127FE127
                    A87FF2D28FF87937C76FF9FBF849FF00849EA1FF00CB4AF1BA2803D93FE1E4DF
                    1DBFE7EFE127FE127A87FF002D28FF0087937C76FF009FBF849FF849EA1FFCB4
                    AF1BA2803D93FE1E4DF1DBFE7EFE127FE127A87FF2D28FF87937C76FF9FBF849
                    FF00849EA1FF00CB4AF1BA2803D93FE1E4DF1DBFE7EFE127FE127A87FF002D28
                    FF0087937C76FF009FBF849FF849EA1FFCB4AF1BA2803D1BE297FC146BE38EA3
                    F0CBC476F3DD7C2830CFA5DCC726CF0AEA0ADB4C4C0E09D4C8071DF07E947C2D
                    FF00828DFC71D3BE197872DE0BAF85020834BB68E31278575067DA22503246A6
                    0138EE00FA0AF20F88FF00F24F35EFFB075C7FE8A6A3E1C7FC93CD07FEC1D6FF
                    00FA296803DF7FE1E4DF1DBFE7EFE127FE127A87FF002D28FF0087937C76FF00
                    9FBF849FF849EA1FFCB4AF1BA2803D93FE1E4DF1DBFE7EFE127FE127A87FF2D2
                    B07E297FC146BE38EA3F0CBC476F3DD7C2830CFA5DCC726CF0AEA0ADB4C4C0E0
                    9D4C8071DF07E95E7358DF11FF00E49E6BDFF60EB8FF00D14D401EBFF0B7FE0A
                    37F1C74EF865E1CB782EBE140820D2EDA38C49E15D419F688940C91A9804E3B8
                    03E82B7BFE1E4DF1DBFE7EFE127FE127A87FF2D2BC0BE1C7FC93CD07FEC1D6FF
                    00FA296B66803D93FE1E4DF1DBFE7EFE127FE127A87FF2D28FF87937C76FF9FB
                    F849FF00849EA1FF00CB4AF1BA2803A5F8DBFF00050DF8D7AB789BE1BC97573F
                    0B5A4B1F152DC5B795E18BF4025FB05EA65C1D48EE5DAEFC02A73B4E70083DFF
                    00FC3C9BE3B7FCFDFC24FF00C24F50FF00E5A57CC9F183FE462F007FD8CABFFA
                    43795DBD007B27FC3C9BE3B7FCFDFC24FF00C24F50FF00E5A51FF0F26F8EDFF3
                    F7F093FF00093D43FF009695E3745007B27FC3C9BE3B7FCFDFC24FFC24F50FFE
                    5A57BC7FC11DFC4D79E34FD8720D6352FB2FF696ADE3CF1D5E5E1B68DA380CF2
                    78C359790C68CCCC885CB1552CC54601662371F88EBECEFF0082287FCA3E74AF
                    FB1D7C71FF00A97EB34FA01E49E19FF826EF8ABE2F7C4DF8ADAFE9DF127C3FA2
                    DA5F78F356956D6E7C2335EC916F943E0CABA8441B1BF1F7074CF7C0C0F845FB
                    1EE8BFB40F88B57D23C05FB547C15F1BEADE1F38D52CB40D0E3D4AE34D3B8A7E
                    FE38759668BE6565F9C0E411D457DADFB2F7FCD44FFB1DF52FFDA55F056B5F16
                    7C79F05FC47FB4CEAFF0DFC4FA3F85F50BDFDA6BC33A1EA935CE909A8C971657
                    F67E1FB2963883B848DFF7FBB7B2BF0AE00562245BC353756B7B25D95BD5D4A7
                    4D2F4BD4BBF41C95A9F379FE0A3293F9FBB65EA7AF7FC3A3FC71FF00457BC29F
                    F8415C7FF2D68FF8747F8E3FE8AF7853FF00082B8FFE5AD7964DF12FE24F8CBF
                    6AEF873A5EB1F183C6BA82FC33F8ABE2CD0F7DADAE8D6CDE21B7B4D0C5F40978
                    82CBC932ED9DED4B44B17EEDCB2849489071DA5FED95FB6278A7F61FD6BE3E45
                    F113E13787BC2FE27F0C8D56CB4F7B88B5CD4F44BF5BA8925B5B3B51A5D92DB9
                    48DA68E54BBB9D45A395108246E0553873A8C96CD465F292BC7EF5D375B3E97C
                    655A2B9FFBADC7E716D3FBBBF6F99F427FC3A3FC71FF00457BC29FF8415C7FF2
                    D68FF8747F8E3FE8AF7853FF00082B8FFE5AD607ED15FB46FC41FD9BBF680F06
                    693A2FC71F1C7C41FECFF1C7867C37E24D16F3C2BA143616B6FAC5D14617F791
                    DB4123DC7972C6D02588468D238CCE928769AB95D3BF69EFDA2B54F893E2EF1B
                    69FE2CF883AD687F0EE3F1A6A1AF784ADBC21610F84EF174F799345B7D3F567D
                    3FCDBCF3C463CF482F249525122B1836F94624D4693ACFE15CD7FF00B763193F
                    95A4ADFA1B4139D48D28EF2E5B79F33925E9AC5DEF6DD773D27FE1D1FE38FF00
                    A2BDE14FFC20AE3FF96B59BE19FF0082607887C6B6D73368DF1CFC05AB436773
                    2595C4965E0C96758278CE2489CA6AC42BA9E194F20F515DD7FC12EBC7BF1EBE
                    26E9E3C55F14BC65F0DFC57E06F881E1EB4F10785D348D7A3D4B50B791F06709
                    E5691A720B20B2C4AA927DA268DC10F3C9B863E70F807F13F55FD8BF57B04F0E
                    78CB46F057C33D7FE367C41F0DDEE84744B31A36916B05B6A7A825F0DAAB3878
                    25B21F24732446276531EE024AD274E50AB2A73E9194BE719462D3BDADABB7AE
                    ED2D429DAAD2F6B4F5F792F54E139DD77D23F3D6D7763D9FFE1D1FE38FFA2BDE
                    14FF00C20AE3FF0096B47FC3A3FC71FF00457BC29FF8415C7FF2D6BC2B50FDB9
                    BE3BE9D378B741D13E2E6B97F61A7F897E1C3DB7887C4DE0BD26D356BCD3BC45
                    7CF67749696F02A476D112A92C5F6DB792E1577AB06CC735773F1F7E3CFC7DF8
                    1BE28F8ED6B6DF1C1F55B6F8323C1B7FA3A5EF85B4A59B5786FE778AEA0D4DA3
                    8544864009DD6AB6A4308F66C01C3D4A84A2AF2D35B7CED06F4DF4E757F47F3C
                    5D68A49F95FBEF7B796B6D35EC779FF0E8FF001C7FD15EF0A7FE10571FFCB5A3
                    FE1D1FE38FFA2BDE14FF00C20AE3FF0096B5C9587ED55F14EEFF006C4D7BF67F
                    BFF8BBABE976777E3DB9D22C3C73FD8FA38D5ECE35F0FD8EAB169912BDA1B232
                    492DC4E11A5B692430DB3AFCD27EF5790F0D7ED95FB43FC61D7F47D2A5F8A165
                    E0FD3DBC07E3DBD1A868FE17B16BAD56F7C3DACC3676DAA6FBA13C3E45CC4E8C
                    6248954032ED63BE378B17A43DA3DB979BE4A0EA3FB92B5B76F6BAD4EB5424E4
                    A1D5B4BE6DF2AF93DEFD2D6767A1E9169FF04C6D7AFF00C617BE1E83E3B78026
                    D7F4DB586F6F34C8FC1B235E5AC13348B0CD244356DE91C8D14A1588018C4E01
                    3B4E353FE1D1FE38FF00A2BDE14FFC20AE3FF96B5E7DA57FC14B3E2BC3E16F1D
                    6B7A97883C3AF673F84BE196ABA63C1A4C70C1E121E21B892DB50BD9999DBCF1
                    0E0CE0B948C2AA294003B3F69FB6A7C4AF895FB317C21BED0ACFF697F12EB9E3
                    AD374CD77C51A443A6782B4193C41AAD9DADAC3244BA8492A2E9D1DAC1249FBC
                    952DED5E559E044647466975C5D2786E6F6BA72DD3EBAA49C95B7D13BB76B68E
                    CDD99CF8592C4283A5B4ACD7CD26AFEADDBD5ABE9A977FE1D1FE38FF00A2BDE1
                    4FFC20AE3FF96B47FC3A3FC71FF457BC29FF008415C7FF002D6BCB7C77FB6A7C
                    7CBAD0FE2978B6D7E27E8DA45BF81F47F00F89B49D12CFC33686DA64D5862F2C
                    EF1E6F366911F2C4342F038223DACA0387A5F14BF6CDFDA1EC3F6ACD7BF67CF0
                    978F6C6FF54BFF001C5DE99A4F8BB5EBAD3741BAB68D342D3B548F4D495347BE
                    B56919EEAE36092C1A4786D997CDF307994A74A519CA93F895F4F4714FFF004A
                    FC1F95E70B5638887B5A6FDDB5EEF4D2CDFE4BF15E76F5FF00F8747F8E3FE8AF
                    7853FF00082B8FFE5AD1FF000E8FF1C7FD15EF0A7FE10571FF00CB5AF1FF001E
                    FED5FF00B507C323F171FC65F177C0D16AFF00083C0DE16F14B59783743B69B4
                    8BEBC9AFEFED2FAD67B8BC8DE692397EC6DB8C4B6CF1B328409E5BF9B93E3CFD
                    A0FE2FFC12FDA43E2FE8DE0FF88BA9EA1A97C4AF8DD65E0AB29BC49A9E9BA758
                    786207F0C5A5F23DBDC7F64DE79323CAD15AC625B6B884EE4CC5E6C8D3357B09
                    7338AD74BE9D7DE8417DEE7A7A7A1A5D7BD7E893F938B9FE115A9EEDFF000E8F
                    F1C7FD15EF0A7FE10571FF00CB5A3FE1D1FE38FF00A2BDE14FFC20AE3FF96B5D
                    BF8AFE39FC62FD983FE099DADF89FE236AFE05D5FE29F8589B2D4357D1A737BA
                    659A3DF240B7B71982D15A4B7B695669C2C30465A272AB1A10179FF893E2DF89
                    5F0AFE297C35F84177FB40EA77917C54D52FE6B4F1C1D0344875ED32182C567B
                    7D387FA39D3A596E244B87494D92930C122056917CFACE51B49C53BFA75EBA7C
                    B5D6DD96BA0475577A6FBF4B6EFF00AFC8C8FF008747F8E3FE8AF7853FF082B8
                    FF00E5AD1FF0E8FF001C7FD15EF0A7FE10571FFCB5AF2DF017ED87FB41FC70F1
                    9F877C3F37C4EB0F07D95EF81FC7930D4749F0CD935DEA97DA06B30D95B6AC8D
                    742784457113ABF94B0EC03CDC16DF1B45ECBFF04F3FDA7FE237C5DF8CBE0E4F
                    1878CBFB7EC3E247C19D1FE223693FD9B696B06837F34A914A968D146B3181C3
                    E48B892660C3E56553B4691A3276B75DBFF2AFFF00299EFE57B364D692A4AF2E
                    9FE74E3E9BD48EDA6ED5FAE67FC3A3FC71FF00457BC29FF8415C7FF2D68FF874
                    7F8E3FE8AF7853FF00082B8FFE5AD63F8FFF006D0F89F078BBC4FE35D1BC65B4
                    783BE30D8FC319FE19BE9B646DAEAC2E2EEDADC5EBCC62FB72DDBC3706F11D66
                    1079280184E1A5AF53FF0082727ED0DE33F88FE22F11F86BE24EB5E22BAF1A58
                    E9967AD1B5BBB4D265D22EADAE25B8097DA3DF69C025C69D26C091A5CFFA5462
                    2FDE962E18E74A0EA535556CD27F7C633FFD2649FA5FB32EA4791C93FB2ECFFF
                    0002943EE528B57DAED5AF74709FF0E8FF001C7FD15EF0A7FE10571FFCB5ACDF
                    15FF00C1303C43E03D1DB51D73E39F80B46D3D24489AEAFBC192DBC21DD82A29
                    77D580CB31000CF248029B7DFB5F7C51D2BF64DF891FB43DAFC43B3BC5F0EFFC
                    251A6FFC2B9B9D0ED25B2D36E74FBBB986DF64D108EF44F1456E66B849649564
                    5DDB12003757967EDC3E34D7351F0AF8BFC07E31F1959FC66F0C6916DE03F883
                    E1EF146A9A669905D6857D79E238ED4411BD9C3142524891DE07D82511BCAAD2
                    4A1B34422E538C36BB4BEFFC2FCA9B5AD9EC9DF41746FB5FF351BEB676E6924F
                    AAD5B563D9FF00E1D1FE38FF00A2BDE14FFC20AE3FF96B47FC3A3FC71FF457BC
                    29FF008415C7FF002D6B0FE167ED2DFB4A7C73FDAC3C75AF68DAFF00C31F0FFC
                    31F86FE38D47C19AD786F5DF1024538B7850ADB4FF00665D27CF8EEE77782649
                    1B54303C526D102B1DE384F80DFB457C71F167822FFE2078BFE3C7C4BF0A783E
                    F7C25A5417136A9F0D74C8ED2C7C517F7C913DAE8AA74E8A5D4E031BA25A4EB2
                    DCC05A689DDEE86E413493A918CE3D527FF8145CA3F7AB25E728ADE48AA89427
                    2837AA767EAA5CAFD795EAEDD137D0F57FF8747F8E3FE8AF7853FF00082B8FFE
                    5AD1FF000E8FF1C7FD15EF0A7FE10571FF00CB5AF30D0BF6E1F8D56DF06A6D4F
                    53F1478DEEB4AF87FE2BF15E9BE23D4AC34CF0D4BE2C5D3EC24B716B7F79A760
                    5BDCDA4093BFDA974E11DC13F67DA149910FBF7FC147BF698F88BE0EB2F82BE1
                    6F84FA9E8FA56A5F1975B934B8FC47A86A5169296E12C25BB8638A79B4ED4628
                    E79CC602896CA50C0320D8CCAEADA7ECE3523AF35AD6DFDE49AFBFA7A3ECC5D6
                    CF4B73DFCB91B52FBAD7F24D376BA390FF008747F8E3FE8AF7853FF082B8FF00
                    E5AD1FF0E8FF001C7FD15EF0A7FE10571FFCB5AF26F89DFB4AFED53F0D341F8A
                    961E2BF8BBE02B0F137C2EF839FF0009D2A783F47B6BEB4B9D4ED2FAF62923B8
                    B8BB80191255B3559963B7B728D23AC7E5940E7EA0FD8CFE33F8E3C47FB597C5
                    4F05F8A7C5D2F8AF4CD33C35E18F14E9AB3D85A5ABE9326A697C2E2D62F22342
                    D6EA6D51A3F38C928DEC1A57E31A4693945CD3D15FF0938FE2E2DAF25ADB426A
                    374EDCEAD7B7E2A12FC1548DFCDE97B33C9B5AFF0082607887C37A969B67A8FC
                    73F01585E6B3335BD84173E0C96292FA5546764895B5605D822B310B920293D0
                    1AE67C55FB14E9FE05F851078F75BFDA83E0E68DE06BAD821F115F787D6DF499
                    B7B6D4DB74FAC088EE6E061B93C0AF39F8C9F1B2E3E327C7BFD9DFE326B5F137
                    C37A1EAEDF163C59E0DD0F48D6349D356DBC1D2C1A76B3630C625C457B2C92CD
                    0DA34D0BDCF9733CB02C6B19085B675EF1CF8D3F69DF0C7EC61F123C41E38D7A
                    F35AD77C11AF788750D0B4CD2F466B1D6EF21D20CB2A08AE6CA6602E1247B675
                    571889884F2DCB4872A9EE50F6F2D95AFE5752974BDF48EB6BDAEADCC6EE9FBE
                    A0B5BFCB5E671B6BE6BADB677B687B058FFC1277C63AA58C3736DF193C1F716D
                    708B2C52C5E059DD2546190CAC355C10410411D6A5FF008747F8E3FE8AF7853F
                    F082B8FF00E5AD7CF7E05FDA4FF6AFD07F626D0BE27587C43F833E1FF0078C34
                    EF0ECFA158696D6FABDF68E971A959D9CD67A7DAAE95A7C3696F14576A852E5A
                    FE485E154DEDBF72FAC78A3E2EFED41ADFED8BE2FF00873F0F7E22F84574DF82
                    1FD8D75AA5EFC40D56C6C27F14585E47F68B8BDBBB4B3D0C892255F3ADE27B4B
                    AB05492DCF9825E73B54A2E353D9ECEED6BD2D6BDFB5AEAFFE4735393953F68F
                    64AF7EFB6D7D5EFDBF13ACFF008747F8E3FE8AF7853FF082B8FF00E5AD1FF0E8
                    FF001C7FD15EF0A7FE10571FFCB5AF1CF0AFED49F1DBC4FF000E34093C4DF19A
                    EA6BCF1CEA1F127C2174BA2681A6E9B058B68CDA89B4BFB2DF0CD34732FD8F66
                    259664D8EB95322995B13F672F8EFF00B4BF89AC7C11F0DFE17FC44F0901F0CF
                    E1AF857C597D77E3BD72CF4F6D76DEFA2792E05C45068770D35A5BC717D9D5A0
                    9ECA68C80D2CB396DD530A4E5270EAB97FF26E7D5F64942EF7D1F7560AB3509B
                    86ED73AFFC05C23A7AB9A4B6D4F7EFF8747F8E3FE8AF7853FF00082B8FFE5AD1
                    FF000E8FF1C7FD15EF0A7FE10571FF00CB5AEDFF0063AFDA3BC63E26FDA77C43
                    E0FF00881AEEB8FA86A10EABAC6816E96FA55DF86B56D361BD82049B4CBEB302
                    75F215E349A0BECCDE6DC395631AA85F31FDA43E2A7C7CF893FB6D6B5E05F879
                    F117C71E154D13C51A05AC169E1DF07D86A9A01D0E68219B539B51D4AEB4FB84
                    B4D4630F2325BB5C44CD11B72B13F9BE6098C1B74D2FB7F87BDCAEFE8FE2DF96
                    CEFB3B3E6F72A4FF00915FD74BAB7AE96DAF756DD5F5FF00E1D1FE38FF00A2BD
                    E14FFC20AE3FF96B47FC3A3FC71FF457BC29FF008415C7FF002D6B81F837F1EF
                    E38DD7C3DF861F107C51F1D359D427D5BE35DE7C3BD6F44B4F0EE8765E1DBDB2
                    8B59D42C55A30D6725EC2EC208429FB6B761F3312C79EF807FB63FC59F8E3FB4
                    D2FC2E8FF694B08F483A878FF4A9357B4D0F43975EB39B47BDB5164D23F946D3
                    FE3DAE958A7D914B244EC59B7868E6CDB925D39AFF00F6EC6327F84E36F33674
                    DA938BE8D2FBDD45F87B295FCAD6BDCF5FFF008747F8E3FE8AF7853FF082B8FF
                    00E5AD1FF0E8FF001C7FD15EF0A7FE10571FFCB5AF13F07FFC1493E367C5BFD9
                    9BC79F1025F1AD9F847C59F05BC13A5F89A1F0CD9E8F672587C49FB4452B9BA9
                    44F13DCADBDCBC5E5402CE484A48C72D365507D31FB277ED31E39F127ED6BABF
                    863E216A7E21B53AF8D5AFBC356515B69379E19BEB4B5B8863F2ED2F2D47DAE1
                    BBB556D97505F659A677311089B46BEC5DDAF5F9DBFCD5DDB7567748CFECA97A
                    7AEBFE575AEDAAB37ADB93FF008747F8E3FE8AF7853FF082B8FF00E5AD1FF0E8
                    FF001C7FD15EF0A7FE10571FFCB5AA7E12FDA23F68CF8E3FB7AF8DA3F0C6BDF0
                    EBC3FF000D3E13F8EEDBC2BAF681AD6BA905C5E69D2DBDBC9F69FB28D2249CDD
                    4CD71BADE45D4E285B6AC6D0160CC7D2FF006E6FDA17C5FF0002FE33786EF61D
                    735FD23E1C5858A4DAFDC787ADB4AD465D2A49AE7C98EE753B4BA06ECD811955
                    92C48759558B8740456505CD1A72DB9ED6F471524DF64D356F314DF2B9DFEC6F
                    F7D9A5E69FE1B5CF2EF0EFFC130BC41E2F9B528F49F8E9E02D524D1AF1B4FBF5
                    B4F06493B58DCAAAB341285D58EC902BA128D8601D4E3915A5FF000E8FF1C7FD
                    15EF0A7FE10571FF00CB5AF2AF88DF113E28FC7AF8A9F0C74FD5FE35788BC2F3
                    E93FB40F897C266FBC29A76976502595AE857F3DB9686F2DEED19E3F2C8CCC64
                    53E6C8C543088C542CFF00E0A51E28F86DE03F815ABF8FBF68FD2BC28BE38F05
                    F8BEDB57BCD6F46D267864D5B4EBB586CEF56D208619E5BACB3A7D9609152568
                    8288B76ECB8EB4E9CFF9D26BCEF0E75F7ED6E8DAD5ABB55CBFBD74974E6F972D
                    4941FF00E937BF557D13B27EC9FF000E8FF1C7FD15EF0A7FE10571FF00CB5AE6
                    BC57FF0004F6B8F01F8B34DD035CFDA2BE17E8DAEEB304F75A7E9D7DE1636F77
                    7D0C0034D24513EAE1E448C105D9410A08271587F0BBF6DBF8A97BE24D4BE176
                    B5F103C5B6097DF1760F025B78F35DD1744B6F10693653F875754883C104074F
                    1732DCE2088CB6DC2CCAB2446518AA3FB5178CFC5FE21BDF8B7E17D73E217843
                    C45E2BFD9BBC13A778DAC27D5BC19A2CD17C40BC867D42647BD8A686631C7049
                    6F1C19B07B6923B9795D4C7BD23152872DA52D9D9F77671526EDBDE29ABAB5FB
                    2B6A0A3272E44B57B76BB938C75DBDE69D9EDDDDF43D3C7FC1243C70C011F17F
                    C2841FFA90EE3FF96B47FC3A3FC71FF457BC29FF008415C7FF002D6B8CF863FB
                    5B7ED3DFB467ED21E28D6B44D4FE197807C17F0CBC4365A27897C2FE27F10A5B
                    3C56B3D85B4E6592DC69324FF68792E7304ABA9C50B08C234048663EF5FF0004
                    E0F8FDE2BF89ADE25F0D7C43D5FC533F8F7C3F63A7DFEA1A7EAF67A51B658AED
                    AE9A3BDD3AF34D020BAD3E6F2D9610E04F1A5B8F372EC59AA34A4E2E5B5927F2
                    7AA7F73B98FB65A5B67D7A5F6FCF4F56BB9E71FF000E8FF1C7FD15EF0A7FE105
                    71FF00CB5A3FE1D1FE38FF00A2BDE14FFC20AE3FF96B5F74D1591A9F0B7FC3A3
                    FC71FF00457BC29FF8415C7FF2D68FF8747F8E3FE8AF7853FF00082B8FFE5AD7
                    DD345007C2DFF0E8FF001C7FD15EF0A7FE10571FFCB5A3FE1D1FE38FFA2BDE14
                    FF00C20AE3FF0096B5F74D1401F0B7FC3A3FC71FF457BC29FF008415C7FF002D
                    68FF008747F8E3FE8AF7853FF082B8FF00E5AD7DD345007C2DFF000E8FF1C7FD
                    15EF0A7FE10571FF00CB5A3FE1D1FE38FF00A2BDE14FFC20AE3FF96B5F74D140
                    1F9EDF163FE093DE36D2BE167896E9FE2D785A54B6D2AEA5645F02CE85C2C2C4
                    807FB50E338EB83F4A5F851FF049EF1B6ABF0B7C35751FC5AF0B431DCE956B2A
                    C6DE059DCA06854805BFB50648CF5C0CFA0AFB7FE397FC914F187FD812F7FF00
                    443D1F037FE48A783FFEC0965FFA212803E3FF00F8747F8E3FE8AF7853FF0008
                    2B8FFE5AD1FF000E8FF1C7FD15EF0A7FE10571FF00CB5AFBA68A00F85BFE1D1F
                    E38FFA2BDE14FF00C20AE3FF0096B581F15FFE093DE36D2BE16F896E9FE2D785
                    A54B6D2AEA5645F02CE85C2C2C4807FB50E338EB838F435FA115CB7C72FF0092
                    29E30FFB025EFF00E887A00F883E147FC127BC6DAAFC2DF0D5D27C5AF0B44973
                    A55ACAA8DE059DCA06854804FF006A0CE33D7033E82B7FFE1D1FE38FFA2BDE14
                    FF00C20AE3FF0096B5F607C0DFF9229E0FFF00B02597FE884AEA6803E16FF874
                    7F8E3FE8AF7853FF00082B8FFE5AD1FF000E8FF1C7FD15EF0A7FE10571FF00CB
                    5AFBA68A00FCD3F8E9FF0004AFF19687E29F86514BF157C3370DA9F8B56D2264
                    F044F1881BFB3AF9F7B03A9B6F188C8DA0AF2C0E78C1F43FF8747F8E3FE8AF78
                    53FF00082B8FFE5AD7D23FB4CFFC8EDF06BFEC7B4FFD34EA75EB1401F0B7FC3A
                    3FC71FF457BC29FF008415C7FF002D68FF008747F8E3FE8AF7853FF082B8FF00
                    E5AD7DD345007C2DFF000E8FF1C7FD15EF0A7FE10571FF00CB5AF4FF00F82447
                    84A5F007EC57FD833DD477F71A27C40F1E69F35D4709812EA48BC63AD46F22C6
                    598A2B3296085D8A8206E6C6E3F4D57807FC1353FE4DD7C47FF6557E237FEA6F
                    AED3E8065FC17D2FE2A5CF883E24B786F5DF87D67A49F1B6A5E5C5A9E8579737
                    00FEEF3978EEE353DBF8457CD7E1AF86BFB31FC4EF8992785747D53FE09B1E21
                    F18EB1A9169347B3F07E9577A9DF5F4664249812F8CAF3A93293F296197F535F
                    6AFECBDFF3513FEC77D4BFF6957E6BFC5FD3351D73F68CF8B9A778EB50D0ED3F
                    66BD47F682B2FF0084A6FECAC8C3AD787355834BD127D3EE25BC795E28EC26B9
                    48E0959218E588B83E76D76D95868F3E2541E9A5EFFF006FD38FFEDF74BAB497
                    5BA5565CB45C977FFDB272FF00DB7EE6FD1FDA9E10FD82EF7E1F6B4752D03C15
                    FB2CE89A8B6A835B375A7FC2F6B698DF859145E6F4BB0DE7859651E6E77E2471
                    9F98E69EBFFF0004E84F15CDE229354F879FB266A5278BE74B9D75AEBE1479CD
                    ADCA8C5D24BA2D747CF756258349B882491CD79A6BFF00B497ED1BF18FF6F4F1
                    FE95E00D7FE1AF85FC05F067C47A4D8EADA7788B5F4B61ACE9375676D7335E3D
                    B8D26799D9FCE992DE68B51B68C3C18922930DBBCFE1FDB6BE3658EB5E06F0D6
                    B3F136FF00C2BE26D6FC5DA05A6BCBA9F87B44D474FBFD2F539AED52F741D4AD
                    1840D6523441225BB8A4BA4D83CCC960CCA117350B6F2E54975F79C547E5B3EE
                    945DD7BA3A9FBBA7527D209B76F2E66FEED7CAF24936E47D3FAF7EC47ACF8A75
                    64D4352F0B7ECC7A86A11DA5A5825D5CFC3479A64B7B49164B5843B5D9223824
                    5578D7A46CA0A804578C7C14FF00826B6B5F0E7E3B47750F88FF00658D43E24F
                    86A75F10DE6B163F0C058F8D6F05D3DC0136A37916A1E6BC53B89865238564F2
                    59395564AF38D77F6CAFDA6BC55F172D3E02783FC61A25CEBDFF00091F89F4BD
                    33E22EAF7963A14BE245D323D3A586005747D42CDEE17EDB711CD1C5671F982C
                    6428F0B061517ED41F1B3E3A78E3E1C7C64F0578D3E2968FA66A9E1AD2BE1BDE
                    09BE1E5A411DA5BDC6A3AA4969A94693DDC533DC4524909705923017646531E6
                    79B74E0E518D68ED2B35E7CCD6ABF395ECF4F4265CB69517E8D79A7CB67F7D97
                    6F958FB1BE147ECABE30F80F3EAF2F81B4AFD9D3C192F882E0DDEA8FA17C3D9F
                    4E6D4A624932CE61BC5F35C9272CF93CF5AE2EC3FE098DA66977967716BF0B7F
                    640B6B8D3AF5F52B4962F84488F6B74FB37DC4645CE5656F2E3CB8C31D8B93C0
                    AE1FC3BFB5978C346FF82857C35F0C68FF00173C49F137C11E29F116B3E0ED5E
                    2B8F0E69163A358CF61A43DD0115CC51A5DDC5FACD0379D2444D9FEF1D04703A
                    2A9B3FB6AFC7EFDA33C61FB715FF00C26F823ACF813C1D2F853C1D61E318EE7C
                    4FACA585BEBC65BBB98A749636D26FDEE2D215823122DBCB652A19D4F9D86189
                    50FE1CBF9D68FB249BFB9257D2EAD668A527EFA7A72EEBCDCB97EFE676B3D6F7
                    475BAA7FC130349D72CEC2DEF7E15FEC7D796FA5C51C16514FF085244B48E369
                    1A348C1B921155A59480B800C8E47DE39BBE32FF008271C3F1175FD6F56F10FC
                    3AFD92F5DD53C4AC8FABDE6A3F09C5D5C6AAC8414370EF745A52A55705C9C6D1
                    8E9567F6E4F88BF132C3E2F7ECE3E1CF08FC4287C0DA27C4EF115E687E219F47
                    D2AD2FF51931A35EDEC52DA5C5E47340888F6BD1AD9CBEF43950191FE66D3BF6
                    DFFDA9DF48F8ABF1834ED43C017DE00F8577DE2AD0350F07EABADC7FDA93C9A5
                    A5CA59B259C1A3C72C57D334304EFBB52921921998C70444AED1C65BBE9CCFEE
                    B26EFB2BB7157EED5EC5C69B97225AF372DBE7CD65F2E593F248FA42F3FE09C7
                    0EA165E20B6B8F875FB25CF6FE2C9629F5C8A4F84E1935992262D13DC8375899
                    9198952F92A492319AB5E35FF827FDC7C49D62D751F11781BF655D7F50B1D2FF
                    00B0EDAE752F85A6EA6B7D3F6B2FD8D1E4BA256DF6BB8F281D987618E4D70DF1
                    0FE2D7C49F83BE1FF86B6127C7C7F12E91F1DFC49A669B6FE296D074886F7C19
                    05CD8DDCED25ABC717D9268AE2786DE0B6FB4DBCA636948792E4B281E63E13FD
                    A6BF686F1C7ED136DF0CEE3E2EC5A6681A6CDE34D117C4F63E16D3BFB635F7D2
                    21B296DF502F2AC966ACAD78609523B558CC96B31DABBC2453557229297D9526
                    FF00EDD8AE6FB94946DBEBA5E3764D3F7F91AFB7CB6FFB79CADF7F237F25D6C7
                    B67C26FD88344F84DE36F10691E05F0A7EC75E19F11CFA52DB6B965A0FC338EC
                    AFA4D3EE18ED8EE6386ED5CDBCAD1361641B1CC47AEDE3734AFD812EB42F0CE8
                    DA2D8F823F656B3D1BC39713DD6936107C2E31DB69734EA5269208C5D0589E45
                    255D9002C090722BE16F03FED09E3144F889FB43F86F5FD2FC17E34D4BE087C3
                    7F1D789FFB3346B236FE29BE92E75349A2BAF36372239221E5968CA4C02C5B65
                    554DADEDB0FED99FB4D78D3E2F7C59F883E1CBCF87917C39F83BE24D63C3BAAF
                    82B52D7956FAF61B5B7736A63B54D20CEB7B72ED6F244E75430C91CA144018EE
                    1AE3293C3CE54AABD62A5CDD928C927F2E6969E6F54AE105CD2B43AF2DBBB738
                    735BD6C9DFA5ADA9EBA3FE095BA02DADEC03E11FEC6E20D49634BB8FFE14EC7B
                    2E96320C6241F69C30520150738C0C74AD1BFF00F826E5B6AB6BAEC175F0DFF6
                    48B983C5134571ACC72FC260E9ABCB112D13DC037589990B3152F92A58E319AF
                    22F8D9FB4BFC65F82BFB327C3DF14685F1A342F1E4DF1F353D074FD3AFB55B7D
                    3344B6F07B5F47234F716D7B059DCC7F65691ADADE0FB5595E34724ABE64936F
                    017DEFC11E3CF8A1F05BF608F196A3F1BBE22781345F1CF84A0D405C78AF4889
                    B5FB7D2E1037DACD75025B588B8BB48E48F7C715BC292B6D291A870A2674E50E
                    7BFD86D3F55CADA5DED78DC9838C9C395FC6935E8EE937D57C2D6D7F239DF107
                    FC1342C3C597FA8DD6ABF0CBF644D4EEB57821B5BE9AEFE122CD25EC30F97E54
                    72B35C92E89E545B55B217CB4C6368C5DD07F6626F8ABE06D6ECF4BD3FF651F1
                    2786B59DBA2EAF05AFC3FF00B658DF7F67B1B65B4B855BD6493ECCD118846F9F
                    28C6570BB700FF0082667C73F1D7C53BCF8D9E18F17F88BC47E249BE1DF8B62D
                    2747D53C4DA5E9B63ABCB6D36976776BF6A874E58ADF2B24EFB4048DC2155915
                    5C357887C1DFDA87E3C7C67B3FD9F74BBCF8B5A4E90FE3FF001378EFC37E23D4
                    349F0AD9A5E5CBE9936A496935A09CCD0C0B1ADB2611E2989214BBC837062A41
                    C63AEA9A52F938F32D3BF47E6FB5DA9728C529BD1DEDFD5BA697DF65B1F54785
                    BE09FC4DF037C3FB7F09E892FC0AD1FC2D696A6CA0D1AC7C13776FA7C36E46DF
                    25604BE11AC78246D0B8C1E95C5DBFEC057369F08AE3E1F45E07FD95A2F015D5
                    D8BF9FC349F0B4AE9135C020899AD45D79264C807795CF039E2BE2DF8B5FF050
                    9FDA33C07FB2EF857C6BA7FC5DD27FB73C4BF0A7C4FE21BB8EFBC2B61369F6D7
                    7A1DF59C2B776C88229165B88A694BF9B2CB02B6D648154143EBBF117F6C5F8B
                    3F0AFF006B88BE0E49F13AE757F0AF8F351F0EF97F108E93A5A5DF820EA96FAA
                    C86C620B6FF6373249A7DB8B66B98A56517A37F9E76137EC673B496AE6EDEAD4
                    DC7AF9A6D5FB7F3349DDB961CFB249CBD124AEFF0014B4D7E5A9EE7E36FF0082
                    7ECDF12F5AB3D4BC47E05FD953C41A8E9FA5FF00625ADD6A5F0B0DDCF6D61B1D
                    3EC68F25D1658364922F94084C48C318635952FECC9A57EC76907C437B0FD8FF
                    00E162F85EC86990F899BC009A18D22D6472A2DD6EFEDB1F93133C846C0C14B4
                    98C65B9F22F087ED05F1F3E23FC78F037C33B9F8B771A3E87FF09DF8A7C1379E
                    29D27C37A58D6FC4F169FA68BBB7BD579E19ACA37476682658ED02B4B0310101
                    F2879FF877C47E25F05FC1BF1F68D7DFB407C48D6FC6379F12BC632E97A6B785
                    FC37ACEB9AAA694278C3C0D71649676910022334B3A794142C509B60F5CD52A7
                    2C7DA37A7273AF34DAFCE33727D55DA6AEDD88414E5CA95ED3F66FC9A527F727
                    4EDDB67D15FED193F661F17EB3F15E1F88ADA7FECE777E38FB1FD8E2F139F87F
                    349AB7D9483FBA5BBFB6F9BE5104FCA1F6E0F4AB3E00FD9EFC77F049B59BBF0B
                    45FB3E7844EB328BCD566D2BC097161F6E91102896768EF57CC65450373E4850
                    06702BE0DF007EDEDF1D756F803AE78CE0F883A1785B46F05FC1DF00FC42D2BC
                    3DA27856C2DEC8BDF35C45776370D32CAC6193ECCD8F23C831AB441366C732FD
                    3FF0E3E30FC57F8E7E14F887F1274BF8BDA77838F86B5AF147858782752F0E59
                    6A1A6D8C96125CC3633975682F45D3F9515CB07B868A48A5D8B0A644D5D18DA1
                    2C23A919E9C8A57F48B5DB7BC9E9D2FBDAE9B9A4FDAB8ADDCB93EF947997DD15
                    AF6F33B8F017ECFF00ABF8AFC58FF15FC2E9FB30EA5AEF8CB4E50FE31D2FC0AF
                    35DEB96522A9506FA3BD2F3C2CAA98F9D9480BD80ACB9BFE09DEAFF0D26F06C9
                    F0FBF64D3E0E9F50FED79B436F855FF12C92F0295FB535BFDABCA336D2479857
                    7609E6BE76F8AFFF000503F89169FB2A7C23F1F68DF15F5793C671780FC23E28
                    F11785F49F0BE94F637DFDA5750C53DD6A77572B98A09879C90C36461995A391
                    80946117EADFDB87E28EACBF143E14FC2AD3BC5B2FC3EB7F8AD75A9C379E208A
                    C2CAF26D96969E77D8214BD8A6B612DC6E249961907950CC000CCACAB1345D19
                    4A9ADE32942DFE177DEDB5F556D6E9E8A5A051AD1A8D3BEF152BFF008A3F7DF9
                    74F46B5E577399B8FD94F59F8C17779E38F0DDCFECD69E2DBFD2EE341B3F1D68
                    BE02171ABD844A1EDCA41786EDCFEE583288C9645642A57822BCF3E12FFC11F7
                    50F876F8BAF0F7EC91341269F26977D0695F069B4D8FC430384C8D4C7DBE437A
                    77207C3109BCEF2858295F963F67EFDB36F7E087EC2FE19B4F843F1921BCBDF8
                    4F7AD16B3E0CF0A787B47B8D3218EE3C5571016D56E26DC6D6196D9B105B59B4
                    33AE0B81329555FBB3F66BFDA2BC67A87EDA1E23F07F8EB5BD7CC1ABCDACDCF8
                    5A282D749BCF0C6A9656975144A2CEF2D47DAE0BAB64212E60BECB34D2398884
                    4DA08C1393707BF3257EAA3AE9EBCCDAB7F7AF6B326327287BCB58F2B6BB37B7
                    9FBBCABD2E9AD1DCBF75FB096A17D6EF0CFE0EFD97268A4BE8F53647F860CCAD
                    771F9612E08377832AF93161FEF0F29307E518E9FE2AFECFFF00113E3B78267F
                    0D78DD3E01F8CBC3974C8F3695AE7816E751B298A10C85A19AF59095201191C1
                    1C57CC9FB487ED77F1ABE085CFED55E315F1F43A9597C17D5F4BB0F0FE810693
                    6561A24169A95B59B9B9D4A6782E6F18D9ADCB4AD2452A29F2999A1643E58678
                    ABE2EFED35F04BE1CF87345F88DF132C0C5E27F17C691EBBF0EEDEDFC6DE35B5
                    D164D32EA78CA59C7A0DBC1744DE5B8CBC1A5B95B63213CC6D30C53E7A77E968
                    BB79CAD65DAF669FA2D1DD58DDC1D395FF00C5F724DB7DECFA75BBDB53D7F59F
                    F826858788EEA79F51F865FB225FCD7363169734971F09165696D22D9E55BB16
                    B924C49E5C7B50FCABE5AE00DA31D07C30FD8AB5CF825E3297C45E0CF0C7ECC9
                    E11F104F611E9526A7A2FC3592C2F24B38D6348ED8CD15DAB985162895632768
                    1120000518F07FD99BC57FB485BFC67F03784FE2DFC74D6F4D88FC35B9F1E6B0
                    BFF08B687697EB7306A712186F5BECA635B636EE03470C70CA9FBC1E7338120E
                    67E1D7ED93F1B3C53AAFC44F0CF867E23F89BE21ADC7863C29E28F0E6B17DA2F
                    87BC33AADFA6A57B771DD268B0CF188144B05B86B48B544793770EF22B073B41
                    4ADCD17BDFBFF34A0EFF0038CF7DD27631E64E335D216BFCD41AB7CA50F4D0FA
                    6B58FD87B56F1178BF58F10EA1E13FD982FB5FF109CEABA95C7C32796F353FDC
                    BC1FBF95AECBCBFB99248FE727E491D7A310793F0EFEC07E1C4F17E9965A4F81
                    FF006341AFFC3930DC69F05A7C2D8BED9E18F3267B889E255BADF6BBA6124AA5
                    76E5C3B0E726B6FC5FFB71DCF85BFE0981AF7C5DD1F55D4752D4F4B1736725EF
                    883468ECEE345B85D49ACA537B6B0B08CFD85B779BE536C905B332B61C1AF88B
                    C65F1D7C53FB1F7EDEBF10FE1B7C3DF893E18F12FC45F8CDAD784ECAF3C51ABD
                    DE8DE1FBF44934CD4E5FB548D6BA65CDB099E54B5B7499F4D99489E047059964
                    32A2E353916EAC95BABBA492F44DBFCBA84EADE9F3BD9DEF7E892BBBFDC95BBE
                    F6D0FB5756FF00826CDA6BF69AC417FF000D7F647BD83C457CBAA6AB1CFF0009
                    4489A9DDA9722E270D7444B28323E1DF2C37B73C9AE97C69FB20F89BE2478BB4
                    2F10788B41FD9B35FD7BC2F118346D4B51F8732DD5E6911918296F2C9785E15F
                    6420564EB9F1BBE317ECC1FF0004C1F18F8C3E22DF781FC4BF163C05A46A135D
                    5E6893BDE69ACD13BF9334E7C8B5DD247098DE7090C285924DAB1A90178DF1FF
                    008DFE24FC3EF8B3F0CFE17C9FB446A17BA77C64BBBABCB0F18AE81A1C7ACE92
                    90D8F9F15840DF676B0945D3ACCD13C966CE22B6993748F89954A1CAF956A95A
                    D6D9E9A5BFEDDEF6D1596BA15CFCDACBADEF7E96D5DFE7BDAEEFABEE6F7877FE
                    0999A77842FB4ABAD27E187EC85A5DCE8572F79A6CD69F08D60934F9DF6EF961
                    65B906376D89965C13B1727815B57BFB0A6A5A88F0A0B8F077ECB938F018C786
                    BCCF862CDFF08EFCC1BFD0F377FE8FF3007F75B7900D7CBBE1AFDB2BF687F8C3
                    AFE8FA54BF142CBC1FA7B780FC7B7A350D1FC2F62D75AADEF87B5986CEDB54DF
                    742787C8B989D18C4912A8065DAC77C6F1777E0DFDA23E2AF8B65B2B4D47E317
                    8834BD5FE3DF80BC35E20F87B059E91A2797A05FCD2449AB2DB092C99AE12213
                    41315B832910C926082A1D748539BB72BECD7ADEA455BCFF00773F3496B66EC4
                    D56A0F967D6F7F24B92F7E8D2F68AF6BDF56AEB53DD3E167C25F11683F107C5D
                    A97826F7F669B2F157DA22D3BC5175A1F83258F50F3922496282F5E1BE126F58
                    A58DD52539092A9030C09F04FDA37FE09CD75AE7C4DD53C5DF14FC53FB264B75
                    E3CD5E0B3B1D6FC55F0D17FE122B4BA7448ADAC74CD4E6D454C67F763CA458DE
                    50ECECADBCEE16AFBF681F8C509F88DE20D5BE2FDFDA681F053E365BE85ADC7A
                    3F87F49822D43C3135B694ED1DC7DA219DE3301BB69259E29119905C1013F76B
                    170BF1C3C7FF001FFE3B7C66D33E1EF80BC67E0BD56E3C59A2EADE3EF0DDF78E
                    A5D2ACE1BAD31F5036F6FA7C689A0DE0BBB14B74B79A545F22E996EA3CDDE16B
                    3845735392EA95BD1C2357E49C5B69F4E592D6DEF6927A4F5D9EBE4F9A54F5EF
                    692574B7528BF4FA7342FD83EFFC2FF092FF00C01A6F837F65BD3FC09AB5C8BD
                    BEF0E5B7C3068B49BD9C6C22696D56EC44F26638FE66527E45E7815E5BFB46FF
                    00C138357F127C4AF0FF00C41F1AEADFB2CE9FF0EBE1F695AB36A5A16B9F0D19
                    B439BED925BDC5CDFDCBCDA88851D1ED21712B27CBFBC2C4960578BD0FF6C4F8
                    EBA17C41F11EB3AEFC4DD0B59B1F0BFC6CD13C0F1681A0685670E8BAA699A9E9
                    7613F94B348B25D33C4F781A399264DECAC590A3AC71DFF157ED3BF1AE2FF826
                    0788BF68ED1BE3769506A9E20F02B788A0F0B6A3E16D3EEADFC317F1488F35B5
                    94B198653E546258245BCFB5309B6C9F2AA981B7A74A6DAAB7B59C55FB395352
                    5EBEE496D7B7968119F2CBD977FD6528BF4D62EFDD77D51F46F893F659F15FC4
                    5F167867C4FABE97FB386BBAE784D07FC23DAB5E7C3E9AEAEF4653823EC9335E
                    1784703FD591D055DF0C7ECDFE3CF0478F353F1568B6BFB3EE91E27D6A2106A3
                    AC59780AE2DEFEFE30ECE1259D2F4492287666C33119627A935E2DF1DBF6B9F1
                    87843F6DEF03DA7863E26EB5AEE8375E3AD1FC1BE22F0ADB78734D8B43D1D2F3
                    4E79D96E2F651F6D9AFD8B453AFD964F2D2378D648464C86C7EDF1F1DFF682F1
                    1FED99A4FC19F81BACF83BC1DA9AF82DBC636FA87883578EC22D6A65BB6B77B7
                    28FA56A26E2DE102369A284DA4D89D0ADC20AE74EFCB6EAE4BD1A873C9FA72BB
                    DD6E446CEF7E91849FA4A5CB15EAA5A5BA1E8BE33F80BABDB7C6EF0FF8DFC423
                    F6618FE245C37F65E87AFEA3E0671AE48423B7D9EDAE5EF7CF242798762374DC
                    718CD6E78E3F66EF1E7C4DF11E93AC7892D7F67DF10EAFA04F1DD6997DA9F80A
                    E2EEE74E9A3DFB2486492F4B46EBE649865208DED8EA6BCAFF00E0A1BE135F1F
                    F8E3F63FD6AE6FF45D17C653F8F96CA0F13E8D0DB5E4BA6FDABC3FA9B4DF619A
                    E627531C924719512232398E22F1B6D0B5E7BF093F6B3F8B5F1B3E20E91F0935
                    0F8B32F849A01E2F7B0F88D63A2699F69F1A7F62EA16F6B00115C4125928D92C
                    AD7020894C9F672D118173876E5BC7AC5C9F95A2949B4F6BABDFA37D13D4D2AA
                    518C2A3DA718DF477F79CE2935DBDCB765D6C8F77F0DFEC35AA78365B87D1FC2
                    3FB2F694F79ABA788676B3F864F019F524DDB6F98ADD8DD72BBDF131F9C6E6E7
                    9352C5FB13EB50CBABC89E17FD98D1FC40F7726A8CBF0D2407526BB555BA69CF
                    DAFF007A675441216CF9811436702BE55D07FE0A55F143C6FA2FC0FF001AC3E3
                    AD4D753D6B5AF07E8BE2EF06E99E19D3E3F0F5A47ABCE6179EEAF2E775DB4D71
                    1BC7736F159CA0C48D1F9B1BA39907D39FB0B7ED0BE2EF1BFC60F11F85BC7FAE
                    6BF71AFC9652EBBA6DBCB6DA4DC683A8E9E6E444977A4DF5800CF6ABF2298AF3
                    370AF2316665DB8AF62F58F9CE3FF80C62DAF3BC5C5AFEEA77B28BB672A9C9EF
                    3D1DA2FF00F029492F9A77BF9CB4BB96BCF7C68FF826C788FE277ECEBE36F873
                    A3D87ECD9E11D37C77A5C5A4EA12E9FF000CA551E4C5188A06F2D2F9159E08C6
                    21DD958CAAE14A8DA7A7D3BF61AD7EDB41F02D8DDE85FB366A67E1ADBC76FE19
                    9EEBE1AB349A16D555DD6805D05B6276827C90833D00E2BC2A2FDA3FE3C4BF12
                    2EA4BAF8BD63F66B6F8FD2FC323A6D8785EC21B33A4DCD8C7246DFBC12CFF6BB
                    7670E8FE76C2DBFCC8E452A8BC27C58FDBDBE2AF86BF63EF146A165F1B7C4327
                    C44F867278E678AD34DF0868D7177E28B6D13557B5B7BBD5269A25B3B6B55454
                    4952DA382699E5530B0286379A2DCE2AA27F172CBCFE08CD3EFEEC6A26EDB5DF
                    44DAD234DCE5ECA2AF66E1F3729C2DE8DD29257ECBB9F62788BF647F14F8BFE2
                    A5BF8EB56D13F66FD53C6F696C6CA0F10DDFC3A9A7D56180860625B96BC32AA6
                    1986D0D8C31E393544FECCDAC7C22F0C6A9A81B1FD987C31A2DAEA1FF095EA57
                    3FF0803D95AC37B00DFF00DA533FDB5544D185DDE7B1DCA173B862BE76F18FED
                    97F1C7C35E3BF1E7882EBE2369EFA3F837E25F81F44B1F0EE9FE1DB382CEF34D
                    D745809EDAE659BCDB869635BE2CB2C52C477C4091B18C638BF0BFEDA9FB5AF8
                    D7F649F885FB4041E35F851E1FF08BF85BC417967A25E5F26AD7DE1FD574E323
                    A5A4164BA659BC72A25B5C473A5D5FDEE1889170A863639251839AD2D7F934A3
                    3FFDB95ADF6BB68CAA54FDB4E11DD4DC52F3E66E2BBBD93BDD691F9A3EFDD3AD
                    7E35EB1A7C17769E2FF8437569751ACD0CD0F86EFDE399186559586A182A4104
                    11C106A6FEC3F8E7FF00433FC27FFC26350FFE4FAF97EDFF00681F89975F137E
                    3A6ABE29F8F49E09F07FC33F09687AEE966C7C2363756369FDA1A75D33C97D13
                    2497576E92A24AA96D3DBEF608A1769656E2FC0DFB5F7C729B45F1EE871788FE
                    2178B3FE15D7C468AC2798D8785EC7C75A968A744B6D41D63B478E3D3E62934D
                    992348E2B9FB3160364C3355521CB2927A72ABBF25CCA3ABDB4E64DF4B5DF439
                    E8D4F694D5482BDFFCAFB79ECAD77769753ED4FEC3F8E7FF00433FC27FFC2635
                    0FFE4FA3FB0FE39FFD0CFF0009FF00F098D43FF93EBA9FD9FBE20D9FC59F813E
                    0CF1469FAC3F886C7C43A259EA306A8D646C9B5149604713980F3117CEE31FF0
                    E71DABAFA5569BA737096E9DBEE2A12528A92EA793FF0061FC73FF00A19FE13F
                    FE131A87FF0027D1FD87F1CFFE867F84FF00F84C6A1FFC9F5EB145414793FF00
                    61FC73FF00A19FE13FFE131A87FF0027D1FD87F1CFFE867F84FF00F84C6A1FFC
                    9F5EB14500793FF61FC73FFA19FE13FF00E131A87FF27D1FD87F1CFF00E867F8
                    4FFF0084C6A1FF00C9F5EB145007817C66D13E36AFC1FF00159B8F137C2B6806
                    8F79E608FC337EAE57C87C804DF900E3A641A3E0CE8BF1B5BE0FF850DBF897E1
                    5A40747B331AC9E1ABF6755F21300917E0138EA401F415EA9F1CBFE48A78C3FE
                    C097BFFA21E8F81BFF002453C1FF00F604B2FF00D109401C87F61FC73FFA19FE
                    13FF00E131A87FF27D1FD87F1CFF00E867F84FFF0084C6A1FF00C9F5EB145007
                    93FF0061FC73FF00A19FE13FFE131A87FF0027D735F19F45F8DCBF07BC5867F1
                    2FC2B78068D79E62C7E1ABF572BE43E4026FC8071DC83F4AF7DAE5BE397FC914
                    F187FD812F7FF443D007967C1AD17E36B7C20F0A1B6F12FC2C4B73A3DA794B27
                    86AFD9C2F90980C45F804E3A9005749FD87F1CFF00E867F84FFF0084C6A1FF00
                    C9F5D7FC0DFF009229E0FF00FB02597FE884AEA6803C9FFB0FE39FFD0CFF0009
                    FF00F098D43FF93E8FEC3F8E7FF433FC27FF00C26350FF00E4FAF58A2803E59F
                    DA2347F8CC9E2FF84C2EFC47F0C6495BC6882D4C3E1CBE458E5FECCD47E6706F
                    8EE5D9BC6015392A738041F4EFEC3F8E7FF433FC27FF00C26350FF00E4FA3F69
                    9FF91DBE0D7FD8F69FFA69D4EBD62803C9FF00B0FE39FF00D0CFF09FFF00098D
                    43FF0093E8FEC3F8E7FF00433FC27FFC26350FFE4FAF58A2803C9FFB0FE39FFD
                    0CFF0009FF00F098D43FF93EB8FF00F825D2DE47FB2DEACBA8BDB4BA8AFC4CF8
                    84B7925B234704938F1AEB7E6346AC59950BEE2AA59880402CC464FD115E01FF
                    0004D4FF009375F11FFD955F88DFFA9BEBB4FA007C03B5F1DC9AAFC483A45EF8
                    4A2B03E37D4B62DE595C4928FF0057D4ACAA3F4AF9FB4FF8C1FB26FC247F1AF8
                    76D7C7FF00F04FFF000C378B5DEC7C5DA644FA3591D6595DC3C37F10B95F3886
                    79415981C167C8C935F577ECBFFF003513FEC77D4BFF00695790F8B3C27A3E9D
                    FF000560F871E1FB7B1B1874AFF8539E25B6162B1811794DAAE8C0AECEEA4673
                    EBCD14E0E75553FE653FFC96129DBD1F2DBE77E9664A7CB4DCDF471FC64A37F5
                    5CD75E96EB75D1787FF626D0ACB50F0A6B5A57C39FD9C61BAF08DA083C357F69
                    E078D64D16D9B7304B3915B30C677B1C44541DE7D4D7967ED1FF00F04F97F8CF
                    AA68DE0DF0CDDFECD7E0BBBB7F105A78E3C45A12F80C5DC9E2A8AD94DBA7DAED
                    D2F212F010E63692457C8DAA08C60F11F0DFE2E7C4FBFF00853AADC789BF689F
                    11F87B5A93E256AFF0F344D27C23E08D1655BE8F4F9EE3CB8B4D86EA099A1B83
                    0DB92F2DDCF710A4314B95572265F2AF823F13FC53F17BC4D61F1725F1ED97C2
                    EF891A87C019B5AD7BC4F6FA269064D626D3B589A2537C8F1CB0B4456202410B
                    02A1888A58C60D66EA45B84DFC3F179FC12AC9DB67AC5392D756B4770A94E50E
                    6A1F6BE0F2FE2468B4BAA5EF4945F93D5599F767897F635B4F19FC26D33C05AC
                    F803F67ED5BC0BA2156D3FC3B79E0A59F49B0299DA62B57731478C9C6D518C9A
                    E4749F803F0DFC6DE2DD46EAC340FD94357D77C75673E8B7F2C1E18B5B8BBF10
                    DB59B2453DA4ACB217B88E06823478DB72C6614040DA00F1087F6EAF88FE29F8
                    BDF05F546F196B057C5BAE7873C37E37F87F178674F8F41F0CC9A968FF006A9E
                    D6E6F2E07DBA6BE0F224AA2DE4D91C6C89243C990F8AFECB5F0774ED2BE20FC2
                    6FF857B7DA6FC37D5ECAF3E32E9767ADE87A458C977A7D85B6BECF6F6F0ACD14
                    9008A366CAA3C6E8AAEE1554B6E1D15232A4AA549BF85C93B6AEEA3CCFD534E3
                    AA6EE9F959BA3CB56308C1EAF91ABED6973B5E8D383F47EB75FA1769FB1FC3A7
                    F8D078920F027C0283C442FA2D506A91F8302DE8BB8E1304771E707DFE6A42CD
                    1ABE7704254100E2AF7C54FD996F3E3AEA7A2DEF8DFC29F043C6579E1BB8177A
                    44FAE784DB51974B981044B034D23189F2AA77260E40F4AF8AB5CFF8290FC48F
                    10FC17F821F10749F899A83EBFA9697E01BAF15783F49F0B69FF00D8CA35BBE8
                    EDEE27BFBDB90D30332B3FD9E1B278E489A22CEB2C6C0A7D69FB5CFC4AF186AB
                    FB4AFC36F845E19F1ADF7C304F1DE8BADEAC3C4F6363637978D75606CC43630C
                    77B0CD01DEB732CAE3CB2E63B760850E645BAB87A94E7C9D633947E7049B6AF6
                    56B6CF776B5AF644C3557D938A7F27D3F1D7A6B7D56A747F10BF66ABEF8B7E2D
                    F0E6BFE2BF0B7C12F13EBDE0E9FED3A06A5AB7851AF6EF43977237996B2C9233
                    C0DBA343BA32A728A7B0A8EDFF0065FB9B4F8BF73F10A2F097C0E8BC7D7B6E6D
                    2E3C4A9E122BAC4F0900189EEC49E7326001B4B6300715F2DFC64FDB17E2FE87
                    6FF17F5BD2FE25591D73F67BBAD0AC62F0BD8E8762BA77C4B5BBB5B3796E6459
                    44B770FDA679E782D85ADCAAC7240431B820AD51F87FFB4C7C7AF1278B7C0DFD
                    ADF17ADC7FC24DF1A7C4BF0BB50B4D33C31A7C16D058DBDBDFCB05CC22549A55
                    BB89AC9429795E2C487CC8A5201ACA306DA8C3AA6D7A3E55FF009373C7CFA4AD
                    6B14D351727D37F2B46537FF0080A84BE7F0DCFA7348FD88F4BF0FF81BC45E18
                    B0F871FB3C58F86BC6139B9D7B49B7F0324563ADCA7AC9750AB049D8FF007A40
                    C6A96BBFF04FEF0D78A23D1D353F851FB35EA29E1ED31F44D296EBE1FC530D32
                    C195D5AD20DC4F950159240624C211230C7CC6B9BFD9CBF6A5F106B7FF0004BE
                    F10F8F3C6BF116CF49D77C352F8934B9FC6977A1C776201A7EA9796505ECB636
                    C2249A529046CD144A8AEE70AA010B5E05F07BF6C0F8C67F684D03C33AB7C4EF
                    1ADCE89A47C675F025DB788742D02D2FF5AD32F3C2C7538BED82D6D424534574
                    A3CA30F90C524D9346CFC2D2A4DD49525D12F47AA82FFD29257B68DF98E0A4E0
                    E6BA73DFFEDD4E52FF00D27A75B5EDA33E84B1FF008256FC34D32C6F6D6DBE03
                    7EC9B6F6DA8C6B15DC317C30B548EE915D645591470C03A2B007203283D40AEE
                    34CFD92C68BF12ECFC6967E09F80D69E31D3AC534CB4D761F07797A9DB5A22EC
                    4B74B80FE6AC4AA02840C140E00C57E7EFC09FDAD3E2078F3E3E7867C6137C68
                    F137C46D43E1CF86FE29C53691683454B7D7A6D235CB482C2DEEA2B6B350B34F
                    6D2DAE4C423908F28C65165904BD3FC7DFDB8FE3D7C2DF835A7EB7E09F8C9A57
                    8CA3F881F0B9FE232EAF7FE18D3EE20F0A4D1DE69D11B6B45B610A9B7996F644
                    8BED66E2547B66CBCBF305B8D19BE5517F16BE56FDE59FCE34E6FD34EAAF1888
                    C69397374BAFB9C13FB9CA3EBD3676FB3B4BFD8934CD0FC3BE2AD1ECBE1CFECF
                    367A4F8EA432F896CA0F03A476FE2172492D791860B704966399431C93EB5BFA
                    2FECFBABF86FE14B780F4EF0F7C18B0F03B5ABD89F0EDB785DE2D24DBB821E1F
                    B2AC822F2D8120AEDC104E457CAFA8FED65F14741FDA8F56F81DA87C53BF82D3
                    56F88F6DE1FB7F1C368FA5A6A9A25BDCF870EAB1D94486D8D9195EE54C30BCF6
                    F237964AB0964C3D657C37FDA97E3E7C5EF8B1E0BF02CFF14EC741D36F64F1F6
                    8136BFA6F86AC5B51D765D0AE6286D7548DA612DAA16126D78D6DCC7E64329C6
                    D6558F966D283BECE37F928A7F82695BCF4BC6ECD23197345ADDB5F7C9CACFE7
                    CADDFCACFDEB23EA7D1FE0FC3FB2E78475ED674FD37E017C3AD063B08CEB57D6
                    FE1E1A459AD9DAC3B13ED122CA88218621B46F3B51060605727A37FC134FE1FE
                    9F069B2E9DF05BF656823D3E492EAC1EDFE1BDB2ADB3CAAA249222BF74BAAA65
                    970582AE73815F1E78C7FE0A27FB40681FB3068BE39B4F89FA5AEB5E31F80373
                    F11DEDAEFC3563258E91A8595E69D139B3450927EFE2BB941FB4493A2C815963
                    0A0C47E81F8EDFB5CF8C3C21FB6F781ED3C31F1375AD7741BAF1D68FE0DF1178
                    56DBC39A6C5A1E8E979A73CECB717B28FB6CD7EC5A29D7ECB279691BC6B24232
                    643D7530D28CA2A5BCE4E3F35374F5F2E7D13FBED746139C6109F37D84E4D7A4
                    232D3A5F95FE0FB6B37ED41FF0473D0FE38FECFBAA782BC2DE07FD99BE1DEA57
                    3A74DA5E9BAED8FC308A4B9F0FC13B319FEC8239A130BBEF9395703748C4AB64
                    83EB5E0BFD8C25F0CFC10B9F015C7837F67A97C3BAD0F375ED26CFC09F64D1F5
                    AB9600CB3C965E73A31771B8EF2E7A65988CD7D174573DDF2B8BD9FF005FD79E
                    A5B49C94BAAD8F9FA1FD8D2CEDB54F07DF47F0FF00F67E8EF7E1EC5E47856E17
                    C14A25F0CC79CECB16DF9B65CF688A8A7EBBFB1EC1E29D59AFF53F01FC01D46F
                    9F571E206B8BAF0589A56D48208C5F166727ED3B005F373BF680338AF7EA286D
                    BDFF00ABB4DFE293F5498597F5E8D7E4DAF46CF9493FE0971F0E6382FA25F817
                    FB292C5A9C690DE20F8656A16ED1195D1241FC6AAC88C0364028A7A815D15D7E
                    C2FA35F6B571A94DF0CFF6749B51BBD1BFE11D9EE9FC091B4D3699E588BEC2CE
                    5B735B796027924ECDA00DB8E2BE8BA2974B7F5DBF26C6DDE5CEF7EFF8FE691F
                    3647FB0178721D0EC74C4F855FB362E9BA669F369367683C011082D2CE690CB3
                    5B4699DA90C9212ED1801598EE209E6BAEF899F00B59F8D5E0E8BC3BE32D03E0
                    D78B7C3F04B14D1E99ACF861EFECE3922398DC452C8C819080548195C718AF65
                    A29B937BFAFCEF7BFDFAFA8ACBFAFB8F9DF5AFD8834AF11A44BA8FC37FD9DEFD
                    60B29B4D8C5CF8192511DACD27992DB8DCC7113BFCCC83E566E4826B7FC1DFB3
                    AEA7F0EBC677FE23F0FF0086FE0AE85E21D5605B5BDD534FF0B3DADEDE42AC59
                    639264903BA06662158900B13DEBDA68A136B60B2FEBFAF247857867F65593C1
                    7E21F15EAFA3783BE05693AAF8EC93E25BDB2F08182E3C4592C4FDB24470D719
                    2EF9F34B7DF6F535E45F19FF00E09673F8DBC15E1AF0DF85BC37FB32F873C27E
                    1CBDB8D43FE112D43E15C7A9F85EFEE66409F6896C12E2DF33C6BBF63AC80032
                    B16563B76FDA5454F2AB5BD3F0DBEEE85F33BF375D7F1567F3B753E55FD9EBFE
                    09C9A77ECE3A9A6B3A0F823F67DB1F152A4F0AEB1A7780D2C27B4826CEFB4B63
                    1BEE82D4024085588C1258B33331DCD2FF00610D0B43D3A4B3B2F861FB38D9DA
                    4B65269CF041E038E38DED6491E4780A8600C4D2492394FBA59D891926BE8EA2
                    9C9DF7FEBFABBFBD9115CA9A8F5D4F28D17E13F8AFC35F0FE0F09E9D61F0A34F
                    F0B5B5A7F67C3A35B787E68B4F8ADB6EDF21605944623DBC6C0BB71C62B8CD37
                    F61BD2346F8777FE10B3F86BFB3ADAF84B55852DEF74487C0A89A75E468C5912
                    4B70DE5BAAB31203290092475AFA2A8A25EF36E5ADF7F3FEAE34AD6B74DBC8F2
                    9F06FC2CF16FC3AF0459F867C3D65F0A742F0DE9F6FF0064B5D274ED026B5B1B
                    68718F292149422A638DA0015C25BFEC11E1FB3F863A8F8261F85BFB3745E0CD
                    5EF46A57DA02780635D2EF6E8631712DB06F29E51B570ECA5B81CF15F48D14DB
                    6DB93DDEFF007DFF003D7D4168ACBA1F38F8D7F60FD0BE24EB16BA8F88BE187E
                    CE3AFEA163A5FF0061DB5CEA5E038EEA6B7D3F6B2FD8D1E46256DF6BB8F281D9
                    87618E4D745E0DFD9B6FFE1D58786ED3C3DE17F827A15AF831278FC3F0E9DE14
                    6B58F4249FFD72DAAA4804024C9DE23DBBB3CE6BDB28A399FF005F3FF37F7BEE
                    2E55DBFAFE923C0B40FD8FA0F0A41E318B4BF027C02D362F8885CF8AD2D7C182
                    15F1397F3379BE0AE3ED5BBCD973E6EECF98F9FBC7377E267ECC575F1AB4AD16
                    C7C65E13F81FE2DB1F0DCE975A4DBEB3E1237F16972A0DA9240B2C8C22750000
                    C80103A57B8514AFB795BF0DBEEE9D86DFEBF8EFF7F5EE7CBDA87FC136BC13AB
                    6A1797775F067F65EB9BAD43511ABDD4D2FC3981E4B9BD05C8BA76272D303239
                    F30E5BE76E7935A3AE7EC15A0789E6F1449A97C2DFD9BF5093C6ED1BF88DAE7C
                    051CADAFB46E248CDD9663F6828EA194C9BB0C011C8AFA428A3FAFCBFC97DCBB
                    075BFF005FD6A7CF317EC4BA641A95BDEA7C39FD9E52F2D23B18609D7C0E8258
                    52C706C915B76556DF03CA0388B0366DAD8F8B9FB34DF7C7F1A50F1E785BE08F
                    8D8685722F74D1AFF851B52FECE9C74961F3A46F2DFF00DA5C1F7AF6EA29B937
                    BBEB7F9F7F5124BF0B7CBB7A1E47F11BE0D7893E30F822E7C33E2ED2BE11F8A7
                    C377A812E349D5FC3B2DF58CEA3A07865959180C0C023B562F8F3F6526F8A9E0
                    4D23C2DE27F067C09F1278674078E4D2F48D53C1FF006CB0D35A35DB1B43048E
                    D1C6557852A060702BDDA8A5FF0001FCD6CFE5D07FF057C9EFF7F53C13C5BFB2
                    1C7E3FF1349ADEBDE06F809ADEB32C16D6CF7F7FE0D17374F15B4A26B68CC8EE
                    58A452A878D7384601970466B57E1F7ECFBABFC25D6756D47C2BE1EF833E19D4
                    35F68DB53BAD27C30F6536A2634091999E3914C8510055DC4E0000715ECD4534
                    EDA2FEAFBFDE2697F5E5B7DC7CC23FE09C7E0D1AAB5F0F83BFB308BE7D4C6B6D
                    71FF000AEA0F35AFC12C2ECB673E7E493E6E77E49E6974AFF8273F83F4242B63
                    F07FF662B35325CCC441F0EE08C17B98BCAB86E08F9A58C0473D5D46D6C8E2BE
                    9DA2A5256B7F5FD68BEE29369DD7F5BFF9BFBDF73E539BFE0979F0EEE6D6EE09
                    3E067ECA72417F70977731B7C33B629713207092B8E8CEA2490063C8F31B0793
                    5BDAA7EC1DA16B97DE26B9BDF85FFB385E5CF8D2348BC432CFE038E47D751195
                    916ED8B133856452049B802A08E82BE8EA29B77567FD7F5642BF53E6BF877FF0
                    4FEF0D7C20B1D72D7C25F0A7F66BF0BDB789EC9B4DD661D23C0115947AB5AB75
                    B7B8588A89A23DD1F2A7D2A597F60DD067D02EF497F85FFB383E95A8456F05D5
                    9B780A336F731C0AA9023C7BB6B2C6A88A8082142A8180057D1F453BFF005E9A
                    82D36FEB6FF25F723CAF41F863E2FF000AEB97DA9E9769F0AF4DD4B548A082F2
                    EED7419E19EEE3814AC0923ACA19D63566081890A18818CD6C7D8FE277FD047C
                    07FF0082EBBFFE3F5DE5149BB8924B44707F63F89DFF00411F01FF00E0BAEFFF
                    008FD1F63F89DFF411F01FFE0BAEFF00F8FD7794503383FB1FC4EFFA08F80FFF
                    0005D77FFC7E8FB1FC4EFF00A08F80FF00F05D77FF00C7EBBCA280383FB1FC4E
                    FF00A08F80FF00F05D77FF00C7E8FB1FC4EFFA08F80FFF0005D77FFC7EBBCA28
                    03C73E35D9FC4B1F06BC5BE66A3E0531FF0062DE6E0BA75D0623C87CE3F7FD69
                    7E0A59FC4B3F06FC25E56A1E06117F62D9EC0DA7DD1603C84C6489BAD773F1CB
                    FE48A78C3FEC097BFF00A21E8F81BFF2453C1FFF00604B2FFD10940199F63F89
                    DFF411F01FFE0BAEFF00F8FD1F63F89DFF00411F01FF00E0BAEFFF008FD77945
                    00707F63F89DFF00411F01FF00E0BAEFFF008FD731F1AECFE258F835E2DF3351
                    F0298FFB16F3705D3AE8311E43E71FBFEB5EC75CB7C72FF9229E30FF00B025EF
                    FE887A00E1BE0A59FC4B3F06FC25E56A1E06117F62D9EC0DA7DD1603C84C6489
                    BAD74DF63F89DFF411F01FFE0BAEFF00F8FD69FC0DFF009229E0FF00FB02597F
                    E884AEA680383FB1FC4EFF00A08F80FF00F05D77FF00C7E8FB1FC4EFFA08F80F
                    FF0005D77FFC7EBBCA2803E71FDA3AD3E238F19FC21F3EFF00C12CC7C6E9E4F9
                    76174007FECAD4B96CCC72B8DDC0C1CE39AF52FB1FC4EFFA08F80FFF0005D77F
                    FC7EB0FF00699FF91DBE0D7FD8F69FFA69D4EBD6280383FB1FC4EFFA08F80FFF
                    0005D77FFC7E8FB1FC4EFF00A08F80FF00F05D77FF00C7EBBCA280383FB1FC4E
                    FF00A08F80FF00F05D77FF00C7EBCDFF00E098BE78FD9935A175E51BB1F13BE2
                    18B8316446D2FF00C26BADEF280F214B6480492010092464FD095E01FF0004D4
                    FF009375F11FFD955F88DFFA9BEBB4FA007C03B9F1DC5AAFC481A459F84A5B11
                    E37D4B635E5EDC472F58FA8589874C77AF26D17E35FC01F8BDFB5669FACE9DAB
                    FEC4FE28F8E11CC6C2C6FADBC47A75EF8AD658D1E330C522C4D7419537AEC539
                    0BB86319AFA1BF65EFF9A89FF63BEA5FFB4ABF35FE2FE99A8EB9FB467C5CD3BC
                    75A868769FB35EA3FB41597FC2537F656461D6BC39AAC1A5E893E9F712DE3CAF
                    1476135CA4704AC90C72C45C1F3B6BB6CAC3C154C42A6F456BDFFEDF843FF6FD
                    3BBB47ADD2AB2E5A2E4BD3FF00259CBFF6DFD7A58FBB747FD8AB44F0EF8466F0
                    FE9FF03BF672B1D06E7554D766D36DF468E2B397514C6CBC6896CC21B85C0C4A
                    46F18183C543E39FD9DFC39E12F03D8DEF897E17FECD9A6786FC0D792F882CE7
                    D4ED2286C7C3F72CE6596F63692D425BC85CB3B4ABB5892493939AF14F10FED2
                    FF00B44FC5CFDBC7E2069BE05F117C36F09FC3DF82DE22D2ACF59B0F116BC96C
                    357D1EE6CEDAE66BD7B61A4CF33B3F9D32DBCD16A56D187836C913E1B77807ED
                    3FFB40EB3F1E7F661FDA57C27E2BF1C5E7C61F879AA7C0FB8F1FE85AAEBDE16D
                    2F49B24BD4BA9D229F4C8615170B6A0AC0F0B5E7992868D5D269324828A7270B
                    3B736ABBD947993F2F763EEDEDF0DB4B1AF2C5CED51DD5E317EB2972FE1292BF
                    F8AFADCFBB755F82FA07C5EF89DAD5DDF7C3CFD9BFC51E338934FB9D5E69E28E
                    F7534442D258493B1B6694052AED0B3F4DAC53A1AE7B4AFF008262FC34D0AF1E
                    E2CBF664FD93ACEE248A581E583C276B1BB472A34722122C412AE8CCAC3A32B1
                    07209AF30F1EFED47E33F0E3FC71D3F59F8B9AAF85748F005C7860786A2F0868
                    1A5BEB77BF6FD3DDA2D22DC5FC57514D757374D0A891E23C0C2A47967AF39FDA
                    43F690F8EDFB22FECA8F71AF7ED07AFF00897E34F82BC3D2F8C75DF0DE97E15F
                    0FCF1C08F770F976DAA5DFD9A2812D2285BC9FF47482EA772F2C45805843A74F
                    9A7ECE1A6A97DEAEF6ECBE2B5ECB57A34DF353AB29D38D4EAFFCECB7EEEDCB7D
                    EF65AA697D6167FB0978634ED3ADACEDFE027ECD305A59597F66DBC11E8312C7
                    05AFDA3ED3E4228B3C2C5F68FDF6C1F2F99F3E37735D77C5DF825AAFED03E105
                    F0F78F7E1D7C17F1BE80B2A4E34CD7E17D4ACC489F75FCA9AD99372F638C8AA3
                    FB6F7C49BCF0BFC33F0B59E99F1135AF877ADF8B35986C2C9F41D0AD357D6B58
                    7FB3CD3B59D925E2C96B148562691A69E37448A29321491227CA1F037F6F9F8A
                    FE26F027C12F1A78D3C45AF5AF85357D1F4DB5F10DF787F4FD0EF05B6A736AF3
                    5979BAD59E5AE61B7B958638E19B4E63147335C33868D50AA827525C8F7E64B5
                    EEEEEFF7FCEED69AA344D24A51EB1E6F3B5D47FAE964FB347D63AB7ECE12EBDE
                    3AF0F78A2FBE167C0BBDF1378460FB3685ABCF6664BFD162C6DF2ED6736A5E04
                    C1236C65460D721A7FFC13BBC0FA45ED95CDA7ECEBFB2E5ADC69B7E755B4962F
                    0D5BA3DADE1284DCC645965662634FDE0C37C8BCF02B95FDBE759D4FC23FB777
                    C10D5DFE2BEB9F0F3C31A5786BC57AC6A29E558CBA4036705A1135CA4D0348C9
                    B66756D92A3ED188DE266666F9BB50FDB9BE3BE9D378B741D13E2E6B97F61A7F
                    897E1C3DB7887C4DE0BD26D356BCD3BC457CF67749696F02A476D112A92C5F6D
                    B792E1577AB06CC73518784AB49286EDA5F394F957A5E5AEB6BD9BD5A2A77A6A
                    EF6B5FE497DFA5EDA5ED75D19F72780FF6605F859F0CB55F057863E12FC05F0E
                    78375D695B52D074BB0FB1E99A8995024A66B68ED16290BA2AAB6E53B8280720
                    570DE1DF855F0CBC51E27F11FC31D27C0BFB266A3ACE9B1D85CEBDE13B416935
                    D5AA5B0516325D592DB1645880410B488020DBB31C57907C2AF8B7FB4E7C52FD
                    AD3C5BA1687F117C2D1F81BE1078C2DFC19E211E28D62C2D759D52CA5B581C6A
                    0D656FA0ECFB74CD721EDDE3BC86D58A2C6D6A4EE27C8BE00D9EA7F093F63CB3
                    D7B4CF8CDE314F89BABF897E20BE8D3597837C33A97886EA2B5D56FE4B98EDEE
                    A6B28EDED6D659A182E2EDAE728CDE5A4725B8F2C097251A5F599BF76C9F9B56
                    4E2EDBD9277D7A5EDAAB028F34FD82F8B9ADE49EBCD7FF00C06DA69B3BD8FD06
                    D3BE076A9A46ABA55FDA7C39F82D6B7DA14D7373A6DC430BA4BA7CB727371242
                    C2D731B4A7EF9520BFF166B96B9FD86FC3979E16D7B439BE047ECDB2E89E2ABE
                    5D4F5AD3DF4389AD758BB562CB717311B3DB34A18921DC1604939AF19FD9EBF6
                    E2F885E3CF167C1AF1278CB5BD5F4FF09FC45F0FF86E30FA0DA6957BA245ABDF
                    D8C57325A6A3191FDA5677133B8F224426DBCA701943156AF53F8D9F117E207C
                    50FDB3B5BF85FE16F8947E1227843C1DA778C2CEF3FB1EC7538FC4924F79770C
                    F1DCC774BB9ACE04B68C482DA4825DD7287CF40006D6A61E51A8E9CB752945F9
                    72EAEFF7295B7B5A56B34CCA95453A7CF0DB9632F94DF2AF9DDDBB5EEAFA32EC
                    5FB0678560D3FC41689F00BF6674B5F16AC69AE42BA04223D6446DBE3172BF63
                    C4C11BE65F33383C8C55AF157EC4FA178EAE3479B5BF81BFB38EB32F87B4D3A2
                    E94F7DA2C770DA6589575369017B326280AC8E3CB4C2E1D863935E0B61FB657C
                    57F1578874EF1CE8FE388DC5D7C60B8F85777F0E1F49B296CAD2CC5DCB6F16A0
                    2408B7FF006A102477ED9B830B40C40897896B9CFD9EFF00684F8F9F152D7E0D
                    2EB9F1C2449BE2A5A78D34CD564D27C31A4C09A64FA4DD4BF66BDB1596198AC9
                    B63F2DC5C34F1142BFBB0F991B09DA34BDACB65FFC873FFE932567B7BD6BFC56
                    B7350ADEC6FEF7FF006EE2F5FF00141FFE037EC7BDEA7FF04CAF86DAD59D85BD
                    E7ECCDFB27DDDBE9501B5B28A6F0A5AC89670991E531C60D8E110C9248FB5703
                    748C7AB127AA8BF63CD321D4ADEF13E0B7ECF097969158C304EBA4A09218EC70
                    6C915BEC9955B7C0F280E22C0D9B6BC47C65FB687C53BBFF00823AFC1DF8C3A6
                    F8C7C3FA178C3C4527850788755BAD162B982786FEFADACEE992332245037EFF
                    00CCDC432808CA1577064E53C6BFB41FC79D13F6871F0BACBE329B8F0EC3F166
                    C3C23278A97C37A5BEBF35A6A1A24BA81B557F23EC093DA4916371B372E93C3B
                    802ADE66F384E35654FAA9F2FACAF057FBEA2D5DBAF5DEDD36E1CF2DB964DFA4
                    54A4D7DD1E97DD79DBED0F077857C6BF0F3C3F1693E1FF000BFC30D0B4A81E49
                    22B3D3E79ED6DE3691DA4919634B70A0B3B3312072CC49E49AD3FB67C4EFFA07
                    780FFF0006377FFC62BE2AF0E7ED63F186E6EB47F14D87C45BAD4EED3E2DCFF0
                    9350F01EA5A2E9B24696D1DCCB6A9AA48D04305D8BDF2A34D4240B2ADBB42ECA
                    904636C83C9F5EFDAAFE3AF887F65DB4BAF11FC66BFB9BFF00885F0E7E23CD73
                    FD8FA1E9BA6269B77A1DC30B5B9B16F25E642F1968DC4924A36ED64D92032373
                    D5972D275B7493FC21ED3F18B5AEDAAECED546973E2A384DA4DDBD3DF707E5A3
                    8CBAF4F357FD1A8FE2078DA5F184BE1E497E1836BF059A6A1269835B9CDE476C
                    EED1ACE62F27788D9D1D4391B4B2B0CE41AC5F18FED13AA7C3BD3356BDF10789
                    3E0B68567A0CF05AEA73EA1E297B58B4E9A760B047333C6046F23328456C1624
                    019CD7C663F6D1F897FB2AE81AFF008627F8850F8A346D17E1D7816E748D5751
                    D1AC96EBC3D2EAFAA4BA6DD5EDE1B758E3B85B654120023894246AAEACDBE57E
                    5FC1375E1BF85DF1F7F68BF85A7E37447C6BE25F1F68720974FF000AF87F52F1
                    578A4CFE1E0F3A4765F671A7C73CA04C24BB92D3CAD8B28650CC5C6D5E9CA9CA
                    496B6BAF36D4D45AB7A3BF5F2BBBA514573C54A5A69193EC938296AFE696CADA
                    DEC95DFE8B68BE2AF881E24B1FB569D17C38BFB6DEF179B6DABDCCA9BD18ABAE
                    E5848CAB0208EC41156FED9F13BFE81DE03FFC18DDFF00F18AFCDEFD943F6B8F
                    88DF103F675B0F0AE8BE32D37E07BFC32F85F71E2DD3C69FE1BD121B5F134D69
                    AA6A765243716C227B58AD624B180CE9A734443DE0293226C0DF47FED81FB6A7
                    C4CF09FEC2BF05FC4FE1DD374CF07F8D7E31EA5A0E8D7F71AADFAE9F6FE13935
                    1B66918B4F2DA5E244E26090234B693A09254DD1B74A2A53E56D475F7A315E7C
                    D29422D7AB8BF35D6DA19C257B5F4F7652F4518C66EFE6A335EA7D25F6CF89DF
                    F40EF01FFE0C6EFF00F8C51F6CF89DFF0040EF01FF00E0C6EFFF008C5783EA3F
                    1B7E36FECA7FF04CDF88DE2DF89377E0AF187C55F87961A95CA4DA2DCBEA36CF
                    120F32D9AF365AD9069E385D1E6115BC08E17722461C01F3DFED1DFB55FC78F8
                    27F10E3F06F85BE3543E2ED0351B8F036AEFE2CBDF0DE9536A36B6DADEB874D9
                    AC206B78E2B40AE989E1925B695C469229672CB2A90A4E7563461AB938A5D9B9
                    6DE9A6BAD9696577A157F71D4E8AEDFA2695FCF592DAEF5BBB2D4FBF3ED9F13B
                    FE81DE03FF00C18DDFFF0018A3ED9F13BFE81DE03FFC18DDFF00F18AF89FE287
                    8D3F684D5FF6B09FE1AF84BE30FC5032F857C47E1EB16BAD3BC1BA35EE9DA968
                    92410CDAADD6ABA91D25ED6CB5440F2325BAB5BEE88DB14B77F3778F32F8EDFF
                    00050BF8CBE0983E2BDDFC3FF8C775E29D2DBE13EBDE3FD075DD77C13A6DBE93
                    6971A66A70C0534A82331DD490B432B47E6DF19D1A44496332A178C2A54DD471
                    51FB5CD6F48C79EFE8D5EDE7192DD58BE47CFC8F7F73EF9CB952F54ECDF934D5
                    D33F44BC5DF103C6DF0FF427D535E97E18689A6452450BDDDFEB73DB408F248B
                    146A5DE10A19E4744519C96650324815A7F6CF89DFF40EF01FFE0C6EFF00F8C5
                    7C49F157F6BBF8CBF056F3E23E9117C4CB4D6E4F0BF89BE1EDC2DDEABE1FB2FB
                    44563AF5E25ADED8442058A34556F9E296549A4552CACCE76C8BABE23F8B1F11
                    AC7F691F88FAFDAFED39AEE8FF0007BE1441AA3F8A755D77C3BE1F9FC3D6FAAC
                    88F25AE936690D9C57B2AD844D1BDC31BB6791C244183B49B138B57BF4BFE118
                    B7FF00A528DF6726975579A4D5482A91D9DADDF56D6DF2BFA6BD256FB1BED9F1
                    3BFE81DE03FF00C18DDFFF0018AE67C65F1DB5CF875E25D3B45F106B9F07742D
                    6358827BAB0B0D47C4B25ADCDF4502869E48A378C33A46AC0BB28214104E335F
                    197813F6E6F8A3A46ADE26F87FAB7C44F163D9DEF8FF00C35E18B1F1F789341D
                    12C358D0ACF55D2E4B9337D9ADE1168ACF710AC36E2EADF7A35DA09639368DF9
                    9FF0524F18EB9F0C3C0B7561A9FC5BB5F8BFE32F85169A76B9AA689FF0AE3C3B
                    3C574BFDAEC6CEEB5B9AE91A3876C398D16C3ECB3F9AB2CD147F3AC4950A6E53
                    8C6FA3925D7AC549F9FBAA4AFF00E5AA97522A9CAA3E8B9BD57338AD76D5C5DB
                    BE96DD23F4152FFE26C881974FF0132B0C82352BB208FF00BF14BF6CF89DFF00
                    40EF01FF00E0C6EFFF008C57C77A07ED95F14BC43E35D23C7369E2E924B79BE3
                    2CFF000AF52F85E74DB1FB3DA58ADE4B6E97AB37942F96F040897CC5A6680C0C
                    40840C4B5F567EDC3F1E6F7F65EFD90BE237C43D3AD63BCBFF000868375A9411
                    CA8CF12BA2121E455C131A1F9980E4AA9C7350D354955FC3FEDD8CBD36945DEF
                    6D77D19497EF7D8F5FFEDA51F5F8A2FCC9ED3C79E38BFF00135E68903FC329B5
                    9D3E18EE6EAC23D6AE1AEADA290B08E478C43B9558A385240076B63A1AD1FB67
                    C4EFFA07780FFF0006377FFC62BF2C3E28FED09ABFEC37FB65FC626F0B7C4CF0
                    A78CBE237C4FF0E7C3C88F88B576D2B449122BDD4B51B5975094D9D93C663812
                    6B544B892CEE3CA49ED04A26500BFB7D878E3F6B3F0CFC65F057C35F881F197C
                    15A33EB7A3F8AAE65BCF09D9D9EB5AD442CA0B49ECE5BABBB9D3EDAD3CF02EC0
                    648F4D8A364456C1320D8EAAF670737B2BDDF9C573492BEF65F894A3CD555386
                    B7E56BD2493BBE8B5BF9DBD51F707DB3E277FD03BC07FF00831BBFFE3147DB3E
                    277FD03BC07FF831BBFF00E315F94D1FED63F1B7C47E17F1C7C6DD17E31DF683
                    E279FE04780FC4DFD9775A4E9F7BA2ADC5F4FA88BA5B681A2578E4FDCBBA3798
                    E0348FE62CC891247F497ED19F1EFE2AFC2DF10FC62F0F69BF1AB59D3351F817
                    F0FEDFC7FA74DACE8BA2C9278E5E77BF92486F02DA44BF628BECD15B28B3104C
                    1A405E676233AE270F2C3C9C2AEF16D3EBF0DEEF4DD595F4D7C8883E7A9ECE0A
                    EDA85BFEDF51B2ECB5925ABB79F43EC7FB6FC4E1FF0030EF01FF00E0C6EFFF00
                    8C567785FC77E38F1BE98D7BA2BFC32D5ECD2692D9A7B2D6AE2E225963729246
                    592123723AB2B0EA0820E08AF2DFDA7BF686F124BA0FC06F0C43ABDCFC2FD47E
                    38EA6BA6EA3ABA5A5ADD5CE86C34B9EF9AD215BB8E5B7FB448F10854CD148B8D
                    FF00216DA2BE32FF00826DFC64BD93C23A17ECFF00E00F8B1A4FC3DB2D3F55F8
                    8BA94BAFF87F4ED22695EF2C3C46FE4580B79A296D2DE2FB2DD0B97852257309
                    8CC4D127CC65D2717352DE37FF00C9537277DAC92F56F6DD5D46719518D68ECF
                    97A3DA5CD6F3D5AB765ADDAB3B7E987DB3E277FD03BC07FF00831BBFFE3147DB
                    3E277FD03BC07FF831BBFF00E315F1E7ED1FF1A7C77FB4CFFC111FC25E3CBDD7
                    B58F87FE2DF14FFC23936A371E1F4B78FED2B71AB5A5BC8516E23980826493CD
                    0BCFCACAAC590B2B72DF0EFF00687FDAA3E377C5AF1F6A9E10F885F0D347F04F
                    C33F12EA3E07D46DFC55A8C1737522C1014B5D424D3ADB4981CDEDC48F05C2ED
                    D523B69639362DBC648619547C929C25F62F7F48F2DDFDF24B5B6ACD634E4E31
                    9ECA4D2F9B4DDADE916F4BAD0FBB3ED9F13BFE81DE03FF00C18DDFFF0018A3ED
                    9F13BFE81DE03FFC18DDFF00F18AFCEFF87BFB597C7CF1B7C1DF05EA777F1B6F
                    AD6EFC79FB3CDD7C519AE6D3C37A32BE91AAD81B338B70F6CE9E45C0BBC4CB32
                    CA7F747C930678BDAE7EDB7F1D6F3C07F167C6B0FC55D1E3BDF86DA3783FC51A
                    278534FF000E59476FE204D4AC966974DB9697CEB973712398E392DDE16126CC
                    0237236F3C3CA151D396E9D9FF00E073A7FF00A5425F25E6AFCF2AD14D4776EF
                    6F94612EBE538AF57D95CFD02FB67C4EFF00A07780FF00F06377FF00C628FB67
                    C4EFFA07780FFF0006377FFC62BE3AF83FFB687C51F1A78CBE1878DDBC5CD7D6
                    9F103E28EAFF000EB5BF86CDA659243E1B82D1B500B3C52AC6B7A2EA24B28A59
                    8CD2C913A4C4AC5102A6BABFDB0FE2EFC53B0FDADBC63E10D0FE32E9FF000DBC
                    39A5FC299FC6DA508740B09AE22BDB6BBD8E6E65BC13096D8AAE1D638E265490
                    E1D5B0E39A735049CBAF37CB960EA3F5F755D3574F6BDEF6D56AECBFBB6F3E6A
                    9ECD6FB7BFA34ECD5AED6D7FA6BED9F13BFE81DE03FF00C18DDFFF0018A3ED9F
                    13BFE81DE03FFC18DDFF00F18AFCE9D37FE0A07FB41DA7ECE9F1A7E2FEBFE2A8
                    2DB51F87F67E1C9AC3C1F068F69A7687A5A6B3A6D84F2C9A8CB2C1737C7EC26F
                    1E469239514F92CCD0B29F2C7A569FE28FDA5FE04697E13F16FC5BF8D7A0A783
                    B42F1A69DFDAF0787EEB4AD6E6D4BC3FA928B78A4D4AE9B44B058963BEF2CACD
                    690400DB3CC18B3C625ADE549C66E9CDDACD27D9393492BFCD36D696BEBA3263
                    2E6A6AAC754D3692DDA4AFA2F3D95EDAB48FAE2EFE21F8D6C3C6165E1E9E6F85
                    F0EBFA95ACD7D69A649AE4EB79756F0B46B2CD1C461DEF1A34B1066008532A02
                    46E19D4FB67C4EFF00A07780FF00F06377FF00C62BE32FF8689F8E9E0FF8B1FD
                    910FC50D2F5EB1F1AFC2DF1278E3C330788B4BD374C934EB95D56CD34D59EEA3
                    8E38CC6B6977122878970FBCC8D2E542719E22F8E5E33F88DF17BE07DE49F11B
                    E32697AE7813C53AFD9F887C31AD69BA05A5F9BCB3F0E7DAD6D6F1AD6D65B4B9
                    33239C4F6A553CBBE6F2C4722864871E5A6AA4F45CAE4FC9467283D37D1C6CED
                    7DD7F324294D29B8475D525D9B71525AF9A7757B75ECCFD00FB67C4EFF00A077
                    80FF00F06377FF00C628FB67C4EFFA07780FFF0006377FFC62BE53FD8ABF6ACF
                    88FE3BF8ADF02AF753F1EA7C43F0F7C7CF026A1E2AD4F4C1A658DB47E08BBB65
                    B36D968F6F1A4DF66F32E5ED992EDA794488BFBD1F3257DD1555694A9BE596FA
                    AF9A6E2FCB74F6BA084D4973476E9E69ABFAAF9A4FC8E0FED9F13BFE81DE03FF
                    00C18DDFFF0018A3ED9F13BFE81DE03FFC18DDFF00F18AEF28ACCB383FB67C4E
                    FF00A07780FF00F06377FF00C628FB67C4EFFA07780FFF0006377FFC62BBCA28
                    0383FB67C4EFFA07780FFF0006377FFC628FB67C4EFF00A07780FF00F06377FF
                    00C62BBCA280383FB67C4EFF00A07780FF00F06377FF00C628FB67C4EFFA0778
                    0FFF0006377FFC62BBCA280383FB67C4EFFA07780FFF0006377FFC628FB67C4E
                    FF00A07780FF00F06377FF00C62BBCA2803C73E365E7C4C3F067C5DE669FE051
                    1FF62DE6E2BA85D120790F9C0F27AD2FC15BBF8963E0DF84845A7F819A2FEC6B
                    3D85F50BA0C57C84C64087AE2BB9F8E5FF002453C61FF604BDFF00D10F47C0DF
                    F9229E0FFF00B02597FE884A00CCFB67C4EFFA07780FFF0006377FFC628FB67C
                    4EFF00A07780FF00F06377FF00C62BBCA280383FB67C4EFF00A07780FF00F063
                    77FF00C62B98F8D779F12CFC1AF16F99A7781447FD8B79B8AEA374580F21F38F
                    DC75AF63AE5BE397FC914F187FD812F7FF00443D0070DF052F3E258F837E12F2
                    B4FF000318BFB16CF616D42E8311E42632043D6BA6FB67C4EFFA07780FFF0006
                    377FFC62B4FE06FF00C914F07FFD812CBFF4425753401C1FDB3E277FD03BC07F
                    F831BBFF00E3147DB3E277FD03BC07FF00831BBFFE315DE51401F38FED1D77F1
                    1CF8CFE10F9F61E09561E374F27CBBFBA20BFF00656A5C3661185C6EE464E71C
                    57A97DB3E277FD03BC07FF00831BBFFE31587FB4CFFC8EDF06BFEC7B4FFD34EA
                    75EB1401C1FDB3E277FD03BC07FF00831BBFFE3147DB3E277FD03BC07FF831BB
                    FF00E315DE51401C1FDB3E277FD03BC07FF831BBFF00E315E6FF00F04C5F3CFE
                    CC9AD1BAF285D9F89DF10CDC08B263597FE135D6F7842792A1B2012012002402
                    703E84AF00FF00826A7FC9BAF88FFECAAFC46FFD4DF5DA7D00CBF82FAA7C54B6
                    F107C495F0DE85F0FAF3491E36D4BCB9753D76F2DAE0FF00ABCE523B491476FE
                    235E07F0FBE317C03D275FF13F82BC296BFF0004F0B6D53E20CADA6F88B41D27
                    C69A725C789640CE1ADEEEDA3B1DD72DB9E5CA48AC72CFC726BEBDFD97BFE6A2
                    7FD8EFA97FED2AF9BBC0BFF0AE7FE143FED93FF0B67FB0BFE15FFF00C2C3D6FF
                    00B63FB5FCBFB3793FD95619FBFC6FFEEE39DD8C738AC653E5736D69184A4FCD
                    29423CBF3E6BECF6D8ABBFDDC56F29A8FA7BB395EDD6DCBDD6FB9DF691FB22DF
                    681AE786354B0FD9F7F659B2D4BC156FF65F0EDDDB868E7D061CB1F2ED1D74B0
                    D6E99763B632A3E63EA6B3F53FD8620D6F47974EBDFD9ABF64ABBD3E759564B5
                    9AD4490C8259D6E25050E95821E74495B23E6755639600D7C65FB15FC7FF00DA
                    FF00C5FF000EFE1E7C37F0FEBBE0EF086B9F0BBE1CF87BC49A947E3BD78584DA
                    F595CC971BA4BD8DF49BD9E6892DA08E26686EACA48A52C5DE40C00F4DF8F7FF
                    000523F8B1FB3A786BC74350D56EA6F166A17DBFC38D7E34A7F069D266D72C74
                    E6D4ECB52B38659E18ECA2B85F3E3BF8669166999F6C9147B07655A2D56F64B5
                    7CD24BBBB3B3D3CDDFEE937649B30A552F14FCA2FC95D5D7C926ADEA92D5A47B
                    66ABFF0004E0F0F6BB2C8F7DFB29FEC6D78F32C49234FA5C52175890471024E9
                    2721100551FC2A001815A7A77EC2D6FA46856DA5DA7ECD3FB24DAE996705D5AD
                    BDA436A120822BA005D468834ADAA9300048A061F0376715E3DA378A7F6B5F0A
                    7C65F859F0EBC7FF0019BC13A65B78D756D76D9AF7C336F65AEF8816CE3D21EE
                    ED259EEE6D36CEC84A92ABE3CBD2D119045BB77CDBB3FE10FED69F16B5CF869F
                    0FFC5FE26F8BDAEA2FC69F8617169E1DB3B2D234482CAD3C5F0CB0C11BC2EF66
                    F234D71E60912191A488325C650A8455CF95DEC9EAFF0055276ED77CBCBFE269
                    77B5D37196ABA35F9A575F7F37A26FB27F5378D7E1578FBE25784F4ED07C47F0
                    A3F67ED7F42D22682E6C34ED4B52B9BBB4B2960C793245149A694468F0363280
                    571C62B92F02FC0F6D66EAC353F0CFC1CFD946EE6F096A93BD95DE997BE6368B
                    A86F73398DE3D3330DC6F9642E54ABE647CF2C73E39E3CFDAC3E2EF831BC7FAC
                    5AFC48BAD4754F829E3CF0F780E5F065D68DA628F1BDB5E8D3637BEB96581274
                    BAB96BC9E484DABC302F93B7C9930D5CE7ECDBAF5CFECB3A1DBF897C3FE38FF8
                    407E0BE81F1E7C59E1EF15681A6E9DA5A693F67B8BEB88ECE46924B7696DD23B
                    CFB3C644324636CDD06334A3AC93BE8D7327E6FD9F2BFF00B79548DBADEC9A56
                    1CA2FD8B9A5B3E5B7FDBB51B4BD391F93BFBADDCFAF3C69E02F893F12351D2EE
                    FC45F0CBE03EBF77A1C924BA6CFA8EAD7575269EF2466291A16934E2632F1B32
                    315C12AC41E0E2BCDB54FF00827C693AE59D85BDEFECB9FB1F5E5BE971470594
                    53E9E9225A471B48D1A460E92422AB4B2901700191C8FBC73E0F67F1E7F6B3F1
                    8FC74B9F01F83FE20F8522BEF02F8774AF1BDE5C78F752B1D164D66C751B8B99
                    5E3BAB7B5D0E7135BDB4112DB17B69AC6449559DDE40CA07D59FB677C5FF0012
                    E9BF18BE0EFC35D13C6175F0DE0F8A777A9433F8AAC2D6CEEAEEDE6B4B41710D
                    95B0BD866B612CFF0039CC90C84C7048154310EA5A514A4B76ED6EB75D7EFBDB
                    CD3B79BBA7271BE96DFA59ABFE567E8D320F137ECE9E25F1A7C4A83C69ACFC11
                    FD9AF56F18DB5A1D3E1D76F6E259F538AD8AB29816E1F4C3208CABB0D81B6E18
                    8C726B9FF0BFEC391781F49B6B0D17F66CFD92F47B1B2D406AF6F6D656C2DE28
                    2F446631748A9A500B37964A79806EDA719C714CF83BFB49FC50F8A9FF0004DB
                    D77C53F6CD1D3E2269BA9EABE1ED3F5666B6D3ADB5E369AB4B610DE43E7E6DA3
                    96E9230620FBA1F3644E0A1C57CF7E28FDB5FE3E7C70F887E0EF843F097C533F
                    87FC6B71A5EB37BA85EFC42934DD03578F52D3E5B588E9930B7D2B52B2BA31A5
                    C2CF30B48A0F3524568A7882B2D4DBF78E8C55DDAFEA95E4DFA2DDDED66D5F56
                    931E91E79E9AF2FA3F86DF3D95AF749BF8536BEA2F0A7ECCFAF780F5CD0B54D0
                    FE067ECCDA2EA5E1781ED746BBB1964B69F4989D151A3B774D303428CA88A550
                    804228E805687C56F825E32F8EF77A34FE38F83DFB3B78CA7F0EDC8BDD2A4D76
                    F67D45F4C9C1044B019B4D63138207CC983C0E6BE56B8FDB03F683F0A788FC5B
                    ABF89FE28F846EBFE109F88FE04F0F368FE17D12DBFB0750B3D6D74F4BC84DC5
                    C2C97522A7DB59E2992485898958A846310D4F127FC140FE23FC2CD0F56D2FC4
                    BE2AD634CF12EBDADE950DB6A979A7E8F7DE1DD3F46D435886C5B59D26EECC6D
                    92DA14955447A806952594348648F02B48C2729412D5CA565FE2B425A79FBE9D
                    FCA527649B14FDC839CD595937E8DB5B6FD36EB75149C9D8FA3EE7E00F8AEF7E
                    27DEF8DE6F82FF00B384BE34D4AC5B4BBBD7DEEA66D52EAD1976B5BC97274CF3
                    5E22BC142C548E315C7693FF0004FBD2F405B2161FB2F7EC7F6434D59D2D0416
                    091FD9567529388F6E92360914957031B81C1C8AEBFF00630F8B1E39B8F19FC6
                    FF000478AB5EBAF88917C29D72DEC748F134F67696B7BAC473E9B05E35B5C2DA
                    4715B9B885A6D85A28A2055E3CA03927E6DF187ED27F1D2EBFE09A979FB42F87
                    BE3A69163A978AFC2F06B03C31A8F84F4FBC8BC3379F69884F6DA7CB198A4DD1
                    23490C8B7A2ECF9AA1BF760188CC617DB6B475F29DDA5DFBECAC9FAAB926D479
                    E5D1BF5D3AFDD6F3B7A58EA7F6ABFD90BC7FF12BF67DD2BE007C3AD2BF657F83
                    F6D3EA769E2687C3F6FF00689E0BAB7B1BF86F24F2B4D86DED4796F72B089640
                    186D919480CE18771A37ECD7633DD683E094F823FB1EDC6A5F0D7CAD774CD0ED
                    E4556F0C49712315BEB6B5FECD2D69E6CB6EE564500B3427E662848F0AFDBE7C
                    41F12BE1BF877F69FF0007CDF16758D4CE93F020F8AB4CD762D174AD3FC471B9
                    BBBF0D6F3DD5BDBA2490811B227970C4C892B7CC65CCE7735CFDB07E287C06F1
                    FF008E7C0977F136DB5AD174B8BE1DE95A5F88AF747B086EFC391EB37B75657D
                    79726345B79AE034036B18A38519A20613B5FCCDA8C2738271DE52D3CE5CDECD
                    7A59C56FA75D075E4A11F7DE914FE49C69CDBB2DEEAA7AF4D763E8CBAF805E2B
                    BEF8A17BE379BE0BFECE1378D353B16D32F35F7BA99B54BBB461B5ADE4B93A67
                    9AF111C142C548E315C9F877F608B0F085FE9977A4FECC7FB2269775A2A4B1E9
                    D35A592C12582CBBBCD589974A0630FBDF705C6EDCD9CE4D6278EBC67F147C37
                    F1F3C2DF02AEBE3F5E69F757FE1FD73C491F8E13C3BA3C5ABDEC9692D9FD9F4D
                    9E39217B1668E0B969A768ADE179230850400331A9F117FE0A09F12341FF0082
                    387843E3545A568965E3DF13DBE896F7535CC86CF4BD385F5FC16926A4CE639F
                    C9B711CA6E033473045652C922A9079D46F0538F5B25F394A3F2F79496B6EEAE
                    9DC6AEE6E0FD5FDC9FCEF1B3D2FD9D9AB1DCE87FB1E5D786359B8D4B4DFD9E7F
                    657D3F51BCD246813DD5B218669F4D08B18B2675D2C335BEC445F289D984518C
                    014B6DFB205E5978397C3B0FECF7FB2C45E1F5B9B6BC5D311596CC4F6EA16DE5
                    110D2F66F894008D8CA00029153FC04F197C75F81BFB26FC4DD57E2DEA3E10F1
                    FF008C3C2305F6B1A047A1EAABA8DE5E59ADA79F0417B2C5A769D0B4ED22C8AA
                    D0D9C4AD198F82C199BC4BE317C5BF8DFF000F7F65AF00F8FF00C3DFB47E97E2
                    0B5F89FAF783B29378474B92EAC6DB53D46DAD6F574C9A2DB17D9FFD321D9F69
                    82EA58C46C1A67322B26B084A757D945DDB74D7CE6DF2AF54D36FB34D895B914
                    9E89A95BD20A3CDF2B38DBBAB2E87AACFF00B3FDAF8A3C416DE1397E0B7EC8FA
                    8EABE0DB91E27B7D19AE84D71A1CF75348C351483FB30B40F34D14A44E154BBC
                    6E7712A71E8FF107C2FF0014BE2B783350F0EF8ABE1DFC0EF1278775488C17DA
                    66ADAD5DDE595DC7DD258A4D3991D7D98115F3EF8C3F683F883F0B3E357C64F8
                    6FE23F8EBA95A58787F4FF0004C5E19D762F0769F7BE22371AA5CDEC13C2B0C5
                    10B69EFAE5ADD552536CB6F0EF4636E551CBF8FF00C19F8CBF16FF0068BF8ABF
                    03751D5BE2E78AF40D6747B8F891A4B35D699A335B6A32E937D1DA59CDA85B43
                    1185E568DC24A2D66881C3085E12ECC73AAAD07D52BB7DB48A6FEE564D6FB74B
                    32E306E578EF74BE6D397E9277DAF757B9F65FC1487C69A77C20D26C7E1CF827
                    F67783C0325B15D32DFC37E219D747680E4110AC1A7F9250F23E518EB5E7F0FE
                    CA3E1FD5ACEEBE1AC7F00BF637B9B7D26E61F135CF8554C6E9653CDE6C516A0F
                    67FD9784793CB99167280B6C900638615E73F0C3F6BBF88B07C1FF00D9BBE337
                    8E7E2B6B56DE0DF891E06BAB4F10693A7E8DA4C76727885AC64BBB4B9491ED5E
                    78CBAC5731AC42528D2A5AAED3B9D64CBD6FF6C0F8D5FB35789FC7DE05F1CFC5
                    0B2D72FB4EB4F879A65B788E7F0F58DB49E1B9F5DBDBAB4BFBDB85895619991E
                    205098E3847EE43458123C9D0E8CD55947ED26A3E6E5CFCA95FBDD29744938B6
                    D3D16736A10F7B456BFCB44DD97AB8E9BB524AF6D67F187FC13DFC77FB417ED2
                    1E2EF145FE85FB21F8BA493518C5F5DDDE9726A1E33F0B4F1C317956D69AC080
                    1B211A2C6F1A9B6322172E1F73061EA7F127F636D022F0A5FDF78C7F677FD8E0
                    68768F73A8DEDCEB291FD961699D25B89E57974BDA0C8F1C6EEEC72CC8A58920
                    1AF98FE06F8EAD7E01FC46FDA3BE187857E3B5E68FE3EBCF8BAF79B7C35E1BD0
                    6F3C53E24DDE18B3B877FB3B42BA75A169E199E7BA96D9227304EA0C523EF5E4
                    3F69DFDABBC51FB7FF00FC130FE20DAF8DBC63A6F86CF86BE02693E3CD4B4A3A
                    2E9D2C3E2FBFBD8AE899DFED31C8628A19AD63F2FEC8F148970EADBC8544688D
                    1FDDC145FBAA34DDFB2A90E66D756972B4FAE8AEADAADE14D3AFCAEFAC9AFBA5
                    CAB4D95EFA74DD5EFA1F655D7FC13BFC3DE218A49A6FD967F636BE4BE8A0591D
                    F4E8E51711C48161049D24EE5440A13B28000C0AB1E1DFF827B691E10F13FF00
                    6DE93FB2E7EC7BA5EB444A3EDF69A7A4175FBD46497F78BA486F9D1DD5B9F983
                    303904D7927EC45FB5C7C77FDB0FE3DC9E30F0978C7E1547F03FC25E2E93C21A
                    9E913789A19A4BBB058956D6EA0862D29A4FB5DC19209A293FB55ADE58A40A20
                    0C778D9FF8287FED33F1A7E0F7C5EF8ECDE1AF89767E1EF0EFC34F8496FF0011
                    343D36CFC3B672CB2DDC77372925BDE4D722632C337D9594F94B0B8594046564
                    2EE9D37CF08FF3DF7E8B979B5F58EBA5CC28465352E55AC6C9DBBB9A8593DB49
                    3FB8EE7E2D7EC37E2CF16FECF3E36F01F84FE0FF00ECB7E0C4F1A6803C393CD1
                    417125B2DAAAB2C51BC10D8C0644883B98D3CC508CD91DC1B5E0FF00D85350D0
                    3E19785FC35AA7C0BFD987C469E16F0F0F0CC1737F102CF665409E20834A0891
                    4CD97789008CB31F96BCF7E267EDADE37D07F6D8F03C3E1AF89F7BAEF867C45E
                    2C93C25AD6832F8734FB3F0CF879C787A6D4446D7AE3EDD3DEACA91CAF24521B
                    758A4F2DE3475DCFEBFF00F04E1F8FFE2BF8987C4BE1BF887ABF8A67F1EF87EC
                    74FD4350B0D5ECF4A36CB15DB5D3477BA75E69A04173A7CDE5B2C3BC09E34B71
                    E6E5D8B30A12E594FD1BFC6D6F949BBAD1A77BB22524BD9E9A34DAF46D2D7E70
                    4B5D5356D2E3B5BF86BAAFC22F165E7C52D43E177ECC1E15D7AC34E16175E2FB
                    8D51ECAF2DAC8054585EF5B4D56584614052FB780315B3F083E137C4CF825F0B
                    A2F07E81E04F8336DE1E8DAE1FEC71EB97305BB79F23C92810C3A6242AACD237
                    CA88ABCF4E4D7CC5F11BF6E3F8BBF0F7E0E7C4592E7C717DA3F8EB4A5B4D7B4E
                    3A8E8DA3EABE1FD4F489B5682D1AE346BBB365CC3B25540B7C249E391C961229
                    5C6568DE3DF88BF097F6DBF88BAADB7C6CF1B3E8F7DFB42689E12BCF0EEA36DA
                    2CDA75CE9D77A1E9D214566B11730EC79E38D3C99D171B772B48EF23E7462EAF
                    2C57DA4BF19C2167FF006F54D6D7B3524D5D15524A9AA8FF00E7DEAFE5094B4F
                    FB763A5ED74D59D99F4CF85BF64FD4FC0DE0ED53C3BA27C02FD97B47F0FEB766
                    74FD474CB12F6F67A85B17790C13449A5849232F248DB1815CC8C719639C597F
                    606B0B8B6D36193F663FD90DE1D1ECA6D36C11AC94AD8DACDBC4B6F10FEC9C24
                    4FE6C9B9170ADE63E41DC73F267C43FF00829578DEDBE01FC5887C35FB496A1A
                    FF00C4AF837A8F8CEF7FB1F46F0E787EFF0050D42C74DBC54B2975694C296B6B
                    62B1FC8C238E1B9B832031484C6C8DF52695F1EFE20FC75F8FBE375D3FE257FC
                    2BAB6F8410685A94DE195D234FBCB7F1758DDD94777713DC35C2FDA234918CD6
                    B03DBCF088E481DA4137FAB02B4A9AAEDE8D295F5D22D6FE7BB568DDEEADA337
                    9D39C2A4A9BDD4A51F571714FEF6E2D376BAB3327C31FB37F803E29E9377E11D
                    1BE07FEC3FE23B1F0D4D268B73A2D94F6D7916952C72FDA64B478134C61132C9
                    2195A32A0869371196CD7A7F8B3F67CF14F8FB50F0BDDEBBF057F66ED6AEBC0F
                    B4F8726BFB99AE64F0FED0A17EC8CFA6136F80898F2F6E36AFA0AF843C41FB6D
                    78F7F67DF82BE0FF00DA5BC256BE10F1B6BDF177C05ABDD6B9A33F8774CB37F0
                    0B5843F68544BAB4B78EF5ECED676786E62BA92E1BCD2193CB24A1F6CB2F8A3F
                    B56FC33F87D6D71E2AF18F87FC6561A86A969AE592F80FC43A26B1E32B9D10DA
                    4F24FE52DE693A6585CC1E6C71B8115B89CDBF9E165322ABD5CE3285F9DD9C6C
                    E5AE8A576B7DBBCAF7B257F79D99CF269BD15EF74B4D5AB2BFE91B6EDDB45747
                    D33F157E1D7C45F8EDE0C9FC39E37F85FF00013C65E1EBA74926D2F5CD56EB51
                    B299918323343369AC84AB00412382322B8CB8F816FF0018FC152F8565F837FB
                    28F8ABC3BE1BD6249A4D1DEF3EDD65A5EA7FEB1DCC074C648AE7F7A1C92A1FF7
                    993F7B26CFED01FB5A5CE9FF00B1FF00C20D7BC2DE356B28FE2F6A9A0687178E
                    64D2628CE9F0EA081BEDFF00659C18A2964C048D254748E5B88F7A3AA953F04F
                    C17F8E3F123E1BFED0DE37FD9A7E04F8E7C11078AB5CF885E2AD5AF75EB9D4F4
                    BD0AE5EE2DEDB4A3144D145A46A16AB2CE64BA96445B18BCEFB34E63784AB0A2
                    14E5EDA746DAC79BE7283A6DEF6DA334F5B3BA492B854A89429C9BD256F9464A
                    A6BF37071B2F36F4B5FF004ABC65E15F8A5F117C1577E1AF107C3AF81DAEF872
                    FE116D75A56A3AD5DDD595CC431FBB785F4E28CBC0F94823815C778AFF0064DD
                    4BC77E2CBAD7F5CF803FB2EEB3AEDF698745B9D46FB7DC5DDC5814D86D1E57D2
                    CBB405095F2C9D9838C62B6BE2EFC51F15F837F623F0DDE78BBE2268BE08F1FE
                    ACDA4E8FA86BBE0DD23FB7E2B9D4E79E2865834A82E10AB493485D2279E27488
                    B07923754607E47FD9C7F6BCF8EBF1FBC75F0FBC17AC7C6493C1965E20B5F1FE
                    9D3EAADE1BD1BFE1207BAD07568EDADAE257226D3CC860954C91C16E23FDCCAC
                    0E1D4C7328EB34B5E5E6F4768DDB4FD3A6FAAD2CEE6D4E12942335A5EDEAAF76
                    BFF496F4D34D35D0F7FB2FF827BE93A6C6896DFB2E7EC7D6EB1D84BA5208F4F4
                    40B672B3B4B6C31A4F10B99242D1FDD6323120EE39E13E03FF00C134FE207C1A
                    FDA87C4FE3F9BE1D7ECA37FA55C1B23E0FD1ECF469EC65F027D96130AFD8AE7E
                    CB204DE8C77F9514596C1181F29F0DF067FC1463F68BD53E12FC4DF88FAE78DE
                    C653F0E7E14685E3BD33C3FA2787ED2D74CD525BA9754B5966BE9668AE2E5ED9
                    FEC69799B678088CA2A8203193D26CBE26FED6DE02F107C2DD33C57F17FE1AB7
                    87FE2478E74DD3ED6EF4792D7C4BAFCBA65E69F793337DA0697A659C71892D09
                    85858C8CC1C8691BCA3E65CE9CE357FBD74BE729596FD6EDBEEB566538251775
                    B2727E8A0A6FFF0025714D6CDB49E87D3361F083C5FE0CF89FAB7C45B5F849FB
                    39E95E34D4ADBCAD4FC4F16A1341AA5D40A07CB35D8D344AE802AF0CC400A3D2
                    BC27C4FF00B38F8E3F6A4FDBB34AF88DADAFEC95F11F44B4F075B0D2FC237D2C
                    DABDCDBC26E9A6B7D620B9785C2E675754956DF6E15955B702D5C6F84FF6A5F1
                    97ED5BE01D2FE1078CBE235B694B7BA6F8F86B3E20B8D0B499DBC630685ACB69
                    91DACD04F6EF64AB25BB79B74B1C285947EECC2092BCB7FC133BF6B9D52F7F64
                    CB3F0EC9F1AF41F08FC38F057C03F087882DB5ED174EB0B8B9F0BCC24BAB5D49
                    5A49FCF866B80D62F185922DB13B8530BBA1DC428F2AF6FF00F3EFE1F46AB26D
                    76B72492D2FAB7A68CDA749B8CE9BDEE94BD54E924BFBDAC96CED656D7589F66
                    7863F67CF1478275FF00156ADA2FC14FD9BB48D53C779FF8496F2CAE66B7B8F1
                    0E4B13F6C9134C0D7192EF9F34B7DF6F5350F84BF66DF10F807E145FF80F42F8
                    1DFB3468BE06D5438BDF0ED84D2DB693781FEF892D534C113EEEFB94E7BD7CD4
                    7E2CFC6FF037ECEBF69F177ED0BF11F4BF1E78DCEA5E24F0A78553C25E17BCF1
                    6D9E8F6F672496D15D3FD8E0B0832544F7324F0AAAEE5B7496375323E478AFF6
                    B9FDA27F695D07E1F43E09F1C78C3C21E25F15FC3AF07F88F4D83C1BE0EB2D67
                    4FBCBED46473AA7F6B5C5D58DDC7A6469026FB7691EDD1FF007B8FB432796085
                    295DC574708BF2E652697FDBBCB24D2D9AD34D4C25516936F7E669EF7B38C5BF
                    9F3269F58EF63EAEF15FECE3E23F1DFC49B3F19EB9F043F66AD67C61A75A7F67
                    DA6BB7D3CB71A95ADB61C790970FA619163C48FF002060BF3B71C9A7F87BF679
                    F13F84741D074BD27E09FECDBA5E99E15BF7D5745B3B4B99608347BC7DDBEE6D
                    9174C0B0CCDBDF32200C77B73C9AF967C17FB4DFED69F17EE3E23F8E7C3FE37F
                    861E19F06782355F13F84EEF4CF115F457B79652E9C2E23B3B8FECE874BB7916
                    F6468A19D83EA8F04914C4A411E540CEF137ED61F1EF46F81BAF6BBFF0BB2EDA
                    F3FE19EACBE30412C5E1BD1D4D9EA90A37996C81AD997EC57385322C81E50DBB
                    CA9A1185110D5269F44FEF53A8BFF2584A5F356D59A72BF6AA8F56DC7E6A50A5
                    6FFC0A6A3E97E88FACFC3DFB37F88BC22DE2C3A4FC0FFD9A74B3E3D0E3C4C6D2
                    7960FF00848C3860E2F76E983ED3B83B83E6EECEE6CF535DC69D75F1AF47D3E0
                    B4B4F087C21B5B4B58D6186187C497E91C28A30AAAA34FC05000000E0015E8FE
                    00D765F14780F44D4E73199B51B082EA4318C21678D58E3DB26B5E9CE0E1274D
                    F4D3EEFF002E8674EA2A9155175D7EFF00F3D2E793FF006E7C73FF00A163E13F
                    FE14FA87FF002051FDB9F1CFFE858F84FF00F853EA1FFC815EB145416793FF00
                    6E7C73FF00A163E13FFE14FA87FF002051FDB9F1CFFE858F84FF00F853EA1FFC
                    815EB14500793FF6E7C73FFA163E13FF00E14FA87FF2051FDB9F1CFF00E858F8
                    4FFF00853EA1FF00C815EB14500793FF006E7C73FF00A163E13FFE14FA87FF00
                    2051FDB9F1CFFE858F84FF00F853EA1FFC815EB14500793FF6E7C73FFA163E13
                    FF00E14FA87FF2051FDB9F1CFF00E858F84FFF00853EA1FF00C815EB14500781
                    7C66D6FE371F83FE2B171E19F856B01D1AF3CC31F89AFCB85F21F3806C00271D
                    3268F833AD7C6D5F83FE1416FE1AF856F00D1ECC46D27896FD5D97C84C120581
                    00E3A804FD4D7AA7C72FF9229E30FF00B025EFFE887A3E06FF00C914F07FFD81
                    2CBFF442500721FDB9F1CFFE858F84FF00F853EA1FFC8147F6E7C73FFA163E13
                    FF00E14FA87FF2057AC51401E4FF00DB9F1CFF00E858F84FFF00853EA1FF00C8
                    15CD7C67D6BE3737C1EF1609FC35F0AD203A35E798D1F896FD9C2F90F9201B00
                    09C76C8AF7DAE5BE397FC914F187FD812F7FF443D007967C1AD6BE36AFC20F0A
                    0B7F0CFC2C6B71A3DA794D2789AFD5CAF90982C058100E3A804D749FDB9F1CFF
                    00E858F84FFF00853EA1FF00C815D7FC0DFF009229E0FF00FB02597FE884AEA6
                    803C9FFB73E39FFD0B1F09FF00F0A7D43FF9028FEDCF8E7FF42C7C27FF00C29F
                    50FF00E40AF58A2803E58FDA2759F8CEFE30F84A6EFC39F0C23917C6886D445E
                    23BE75797FB3351E1C9B11B5766F391B8E428C60923D3FFB73E39FFD0B1F09FF
                    00F0A7D43FF9028FDA67FE476F835FF63DA7FE9A753AF58A00F27FEDCF8E7FF4
                    2C7C27FF00C29F50FF00E40A3FB73E39FF00D0B1F09FFF000A7D43FF00902BD6
                    28A00F27FEDCF8E7FF0042C7C27FFC29F50FFE40AE3FFE0976D76FFB2DEAADA8
                    25B45A8B7C4CF884D791DBBB4904739F1A6B66458D982B3207DC158AA9650095
                    52703E88AF00FF00826A7FC9BAF88FFECAAFC46FFD4DF5DA7D0083E056B9F10E
                    CF59F8931E89E17F05EA3A70F1B6A5B27BEF145CD9CCDFEAFAC69A7CAA3FEFB3
                    5F3E7C31D57F658D57E3F5A41E0CF017FC13D6E7E293EA32FD963D17C67A43EB
                    ED7A0B193608B49FB479D9DFBB1F37DECF7AFADFF65EFF009A89FF0063BEA5FF
                    00B4ABF35FE2FE99A8EB9FB467C5CD3BC75A868769FB35EA3FB41597FC2537F6
                    56461D6BC39AAC1A5E893E9F712DE3CAF1476135CA4704AC90C72C45C1F3B6BB
                    6CAC3479F12A2F4D2F7EBF1C23FF00B7DD2EAD25D6EA6B3E5A2E5BEBB7FDB939
                    7FEDBF737E8FF407E23FC14D5BE31F8B342D7FC5DF02FE0378AB5DF0BC865D1B
                    51D635B7BEBBD21C90C5ADE597476784E554E508E40F4ACBD73E1CC7F0AF48F1
                    8F88F52F837FB39786EC35FB1F2FC57AA5CF88859C3A8DA46A46DBE99B475124
                    4AA48C4A4A804F6AF0EF10FED2FF00B44FC5CFDBC7E2069BE05F117C36F09FC3
                    DF82DE22D2ACF59B0F116BC96C357D1EE6CEDAE66BD7B61A4CF33B3F9D32DBCD
                    16A56D187836C913E1B77807ED3FFB40EB3F1E7F661FDA57C27E2BF1C5E7C61F
                    879AA7C0FB8F1FE85AAEBDE16D2F49B24BD4BA9D229F4C8615170B6A0AC0F0B5
                    E7992868D5D26932489A54F9D423B735DDBC9C79DDD74E68A6D5ED77169EC6F1
                    4BDA7BCF6708DD79C94559FF00764D5FB5D3573EC0D0FF0064DF87BAD6A16FE1
                    FD33F66DFD90AEEEBC176E5E0D36DAF6DA4934286F83B12B12E8B9812E02C872
                    0289406FBD835DEF823E005EFC32F0DE85A3786FE01FECFF00E1ED1FC2FA83EA
                    DA358E9BABB5A5B69378EAE8F736F1C7A30586665924532200C43B0CE09AF9FF
                    00C7BFB51F8CFC38FF001C74FD67E2E6ABE15D23C0171E181E1A8BC21A0696FA
                    DDEFDBF4F768B48B717F15D4535D5CDD342A24788F030A91E59EBCE7F690FDA4
                    3E3B7EC8BFB2A3DC6BDFB41EBFE25F8D3E0AF0F4BE31D77C37A5F857C3F3C702
                    3DDC3E5DB6A977F668A04B48A16F27FD1D20BA9DCBCB11601611A422E553922F
                    7697CDAE6E9BF2EF2B5F9777A34DF2539B9D28D4B6EBF37CBD7A3BD95F7BDB7B
                    A5F686B3F07B5BF117C59D3FC7DA87C10F8137FE3AD26036B63E23B8D7649756
                    B384EE0638EE9B4732A21DCDF2AB01F31F5ACCF08FECD07C01E05D5FC2FA0FEC
                    F3FB3B689E19F105D8BFD5348B0D4BECD63A95C02AC269E14D1824B2028877B8
                    2728BCF02B4FF6DEF89379E17F867E16B3D33E226B5F0EF5BF166B30D8593E83
                    A15A6AFAD6B0FF00679A76B3B24BC592D6290AC4D234D3C6E89145264292244F
                    943E06FEDF3F15FC4DE04F825E34F1A788B5EB5F0A6AFA3E9B6BE21BEF0FE9FA
                    1DE0B6D4E6D5E6B2F375AB3CB5CC36F72B0C71C3369CC628E66B8670D1AA158A
                    5172938474D547EFBCBF35B6FCCD69AA35724E2A57BDE3CDE764D457E7A7926A
                    FA347D59F11BE0A6ADF18BC59A16BDE2EF817F01BC53AEF85E432E8DA8EAFADB
                    DF5DE90E486DD6F2CBA3B3C272AA72847207A547FB4469FA878F7E185CD87C59
                    F865F00B5AF05BDC41F68B6F16F8B1AE74B3334AA906E5B9D24C5BCCAC8A9919
                    2ECA07245794FF00C1603F69BF167ECFDF0FF50BDF017C4CD73C2FE2BF0CF83F
                    57F17C3E1DD1BC35A7EA2FAC2D9F9389AFAE6F95A2B7B0467D8E91F97712B4AB
                    E5499428FE1BE2CF8E3F147E12FC5AF8E3E3CD1BE2C6AAACDE38F87FA53E87AC
                    69DA7DE58C5A7EA69A62DC476988639617437CE1599E440A5B746D2BF9CA5187
                    B4E58AD9BFC5CD47F17D55ECD6BAAB1AB8493525BD9FAD924DAF9292DF4D6EB4
                    3EE89F42F1DDD78362F0E49F0B3E1149E1E8628E08F4B6F14DC1B28E38F06341
                    0FF646C0ABB5703181B463A5799DBFC12F0B7C56F831A768517C0BFD95BC49F0
                    F3C1F7D71F60D3D35A86F345D12EEDE49229FCA8868CD0C12C522CA8FB42B232
                    B838208AE53C3BE32F89D0FED11E2BF8417BF1AFC53378BA3F1C597883479E4D
                    1B420F1F84A4B479DA06896C977C1E7C3716AD371307F24895771DDE3BE08FDA
                    97C75FB5BFC2AF0EFC2FF1F7C46D2347B8F12E8DE3DD435ED6A1F0E69A6D7C4D
                    168FAD49A7269CB6B791DC5BA5B1B76DF321DD318D401303BE5ACE7292A4EAAD
                    EDCD6F4873B6FF00C3669F5E64D2BE97508C79D537B5EDA6BF1371DBFBD64FFC
                    324E5657B7BEFF00C316F80BE3169771AE7FC32FFEC8DE2AB2F164B1EAD3EA1E
                    7DBDF45ACC9B5FCBB9697FB1184CDB65936C8493891B07E639E92C7E12587C35
                    6BDF0D5B7C12FD9A7403F1161FB05DE9516BCB6A7C4F1C16E57C99211A38FB52
                    C70211B0860B1AE301457C1FFB1F7EDD9ABF85BF65AFD965BE1A7C5CB9F13E93
                    A2AF80BC11E27F0AE8BA2E973E85A51BF54B6B98B50BF9775CB5F65832436722
                    B42517CE89918BADAF8AFF00B585CC7F10FE067ED31ACF8BF47F10F89EF4F8EA
                    1D0BC1D7763A659368B3DAE9B7A90E8D6F3A22DE492BCD1431CD1CB34BE64E54
                    C6B1FCA87A7194A341D44DFB9194E2FCF9526B4EBCC9C6DD2DF2BE109CA6E36F
                    8DA8B5AEDCCDADFA72F2B6FF00E1EDFA2DF0C3C1BE31F823E0BB4F0DF82FE11F
                    C1AF08F876C377D974BD17C4D3E9F656DB8966D90C5A42A2E4924E00C935C3F8
                    97F630D1BC6777E23B8D63F661FD98B569FC6134771AF49797093BEB7246DBE3
                    7BA2DA2133B2B72A64DC41E457CE7F097E36FED65AE7C08B5F176A3E3AF0478A
                    346F89769A66B3E19B6F08F89B47BCF15C91B8692F61D285F68FA7E9ECA2268B
                    CB86E85CCA863915A772CACBEC9FB4BFED69E2BB5FF8253CBF167E1C78E6DF4F
                    D6605B6964D6B5FF000D46258D3EDEB6D731C9686448E19A325D0B12E80C44ED
                    6041ACEAC25193E7DD3E57DD36D7E09EFE6BD050AB0E54A1B35CCADB3F4FD0EE
                    07ECBD18F185DF88BFE19D3F672FF8482FF4A1A15CEA7FDA03ED971A788961FB
                    1BCBFD8BBDADFCA458FCA24A6D50B8C002A1D2BF64BB3D0757D6750B1FD9B7F6
                    6CB2BFF11698344D5AE60BD58E6D4EC02220B49DC68A0CB0048A35F29C94C468
                    318518F9B7E27FED0BF1EFC2DFB61C1F09B4CF8CEF77E10BDF1CE89A5C9E275F
                    0D694FAE430EABA6EA174D610C821FB12B5A9B14915A4B496468EF21DE4ED2D2
                    E978C3F6B4F8C1A5FF00C245E23D07E245C5DEA9E09F8ADA7FC2893C0DA8E89A
                    6CF1EA36F3DC5B5AAEA97062862BAFB6C91DC1BE1E4CB15B1897688140320982
                    737CAB77A7DEE0ADF7D58A7E727D2ECD65EE24DED6BFDDCD6FC2936BB28A4ECE
                    C8F7FBCFD92ACB51F85DA5F81EE3F66CFD9AE7F05687746FB4DF0FC97AADA5E9
                    F7049633436C745F2A3932CC772A83963CF35DFEB907C45F13F862E744D4BE1B
                    7C2AD4345BDB7369716173E2EBA96D6784AED313C6DA495642BC152318E315F9
                    EBAAFF00C147FE3C7C12FD97BE1F7C5793C75A7FC52D4BC61A1F8AA3D6BC38BA
                    05A5BD86893696B772C7AA42B6CBF6A11C4D0C70CF14B3C8A44B1E0C6F92DEB5
                    E2FF008FFF001B7C13E33F1A7803C2BF122F3E2AADCF85FC3DE2BD1FC40B1F87
                    F4ED6E037F7F3413E9D64EF0C7A6CB34B040D2D98B988F20891E50430A9479BD
                    D96BCCFF001D56BF28DEEF74ADF17BA446768FB44ADCAAFE8AEBFF006E924D2D
                    53776ADA9F4CFC25F875E28F805E0C8BC39E04F837F04FC15E1E81DE58F4BD07
                    C452E9B651BB9CB30861D1D50163C920726B84D47F616F0CEAF657F6D77FB2B7
                    ECB1756DAA6A435ABD8A6789D2F2F80702EE40744C3CE04920F31B2FF3B73C9A
                    F99EFF00F692BFF12FED0FA5FC4D7FDA0BC6FE0BD0347F849E249EE0EBFE19D3
                    8DB6937D06B71D94915D69D1C3E64B3C3304465B69D4CD2DA47E5BF9723249A7
                    E06FDAFBE394DA2F8F7438BC47F10BC59FF0AEBE2345613CC6C3C2F63E3AD4B4
                    53A25B6A0EB1DA3C71E9F3149A6CC91A4715CFD98B01B2619A7676F6ADEA936D
                    F946AFB3DFD5296B6B2D7A046576E115B34ADD6EE0A7B77F7B974BEAEDD4FA5F
                    C55FB23D8F8EBC51AFEB9ADFECD7FB356B3AD78AE08ED75BD42FAF16E2EB588A
                    331B471DCC8FA2969914C30955724031263EE8C5BB9FD9905E581B59BF677FD9
                    D65B5377757FE4BEA5BA3FB4DD4461B99F69D171E64D131491FABA92AC4838AE
                    27F6C0FDA6BC6B61FB0CFC21F1FF00C2BF1FE9D07FC25DE23F07DA5DEB57BE1B
                    5926D6B4FD52FAD2DA478ADE4755B591C5C09086472AA19005621D7CA7C09FB5
                    4FC54F1F7C7F6F80D7DF17357D01A3F15F8AF4C83E21C5A468FF00DB179FD9B0
                    E9B7369A7F9725A369FE718EFE72E45B0678AC8ED08C5A40DD095E54ADF0F3AB
                    6DA4391CB7B7F3C74766DDD257B275CE946152FF0015ADEAD4EDF841AD3CBA5E
                    DF4C785FE03EA1E07F877A6F84345F80DF00747F09E8D7D1EA9A7E8965AC35BE
                    9D63771CDE7A5C456E9A308E395650240EAA183FCC0E79AA9AB7ECCE75FF0018
                    F89BC457DFB3C7ECED7BE20F1AD89D33C43A9CFA979979AF5A108A6DEEE53A31
                    7B88888E31B242CB88D78F9463C4FE37FC78F1EFC78FF8204FC47F1D6A9ADDF7
                    853C6B1F82F5C77D5F4048ED8EA1F637B9892EA1122CA2286EE38564F90EE549
                    FE4753B5C717F0E7E37FED3DF12BF690F10784FC05F103C0D6DE18F81FA968DA
                    36B1278D756B482E3C436171636D34D7D71656BA3664919A59A381EDAFECA212
                    5B94789B0C48E9C9CA51BDEDD7A59D937AF4F853BEAD74B21DD469C6AAEB7FBE
                    36692EEEF26D74BADF53E9AB4FD95E0B0F0E58E8F07ECE3FB3843A46997D06A7
                    67631DF85B6B4BB8231141711C6345DA92C71AAA23A80CAAA00200C543A97EC9
                    163ACE9FA25A5E7ECD7FB355D5A78661B8B6D1E19AF1648F4A8AE33E7C76EA74
                    5C44B2EE6DE1301F71CE735F34FECF7FB427C7CF8A96BF06975CF8E1224DF152
                    D3C69A66AB2693E18D2604D327D26EA5FB35ED8ACB0CC564DB1F96E2E1A788A1
                    5FDD87CC8DC6FC35FDBBBE3D7C61F843AEEBD79F1AF41F0ADD687F01F44F8A5A
                    72DAF8674F45BCBF66BC4B98AF0CE25F32DE592D007FB3AC0C82E1150A32E5E1
                    BF8A6DFC3BBD7B4F5EEFDDA6F6BBB595BA2BC3D29558B74D69A2EDBCA314BFF0
                    29FA6EFD7EE187E066A56FF1660F1EC7F023E01A78EADAD56C21F11AEB2C3568
                    ADD46D5856EBFB1BCD1181C050D803B561FC48FD8FF4DF8C7E2DD575FF0017FE
                    CCFF00B33F8AB5DD7ADE3B4D4F51D62ED6FAEF5186328638A6965D159E445314
                    65558900C6981F28C7CF3E19FDBD7E2EF8E3434F89A9E21974AD4748F89DA37C
                    3DD4FE121D32CDA1FB35ECD67134EF2B45F6F5BC31DD35D2309843E4C60184E1
                    A4AF6BFDAFBE23FC474FDB8FE1D7C37D03E2ADBFC37F0978E7C17E21D45EE2D3
                    44B1B8D520BFD3DACCA4A93DE89A164D972498CC1C2C3212C770319384A318CD
                    AFE6F95A9AA8FEF8C93D376C8A12F68DA83E8BFF004A71F5D1C5FDDA5F436F4D
                    FD8FF4DD1AE229ACFF00667FD99ED2580DA189E1BB48DA336B118AD4A91A2F1E
                    4C4CC91E3EE2B155C038AEB7E1BFC3BF147C1B8F544F087C1CF829E144D72EDB
                    50D45747F114D62350B960034F3795A3AF99210002ED96381CD7C1FF0007FF00
                    E0A05FB44F8BBE1EFC4FF883AF78C61BF7F86BF07F4AF887A4785BC3BE1EB3B6
                    B2D7EE655D5E1617724F1CF72F0CED631DC8FB3496E42488ABC063276FA6F8F3
                    F6A7F0D7C07B8F897E2FF8D7E1787C156173A278CA26F0B5FE97E20D42FF0040
                    7980D5A39649741B2892D16DD84B0BC5134EA63915E7972A57574A4AA3849F6B
                    BF576D7FF016DF945F55626A3E54AEAEEDA2EBA462ECBFF034BB5E5BDB53DF3C
                    65FB3C7862E1E7F0CF887E007ECAEEDF10EE9249B49D4756889F134F6916F466
                    85F46FF4A9208932090C6355C8C015D1EB3FB39CDE22D0F57D3350FD9F7F67AB
                    ED375F8AD60D52D2E35432C1A9476A156D92646D18AC8B08551186042051B718
                    15E31A9FED17F153C33FB41784AF2C3E2B699AAF803E273F8CB51D1ACB5DD334
                    F860B1B7D3ECF758BADF40919363BD5A7DCEAF218E442D310083E59E39F8BDF1
                    03E2D8F845E1CD7FE287C5CF05F8C342F8A7A45A7892C2F2C7C38932C53E9DA8
                    5DC532DC5B5ACB657768ED6FBA16080AA27EF54CAA1C73C24BDD5B5DC2FE5CD2
                    E5F9B8F54AFD127D9B7F14D6BCBCED3EFC91E76D3ED2E8FE76EFF5A6B9FB312F
                    89FECDFDA7FB3B7ECE9A8FD89AF1ADFED3A8F9DE41BB52B7653768A7699D4912
                    63FD6024366B85F885FB11F8CBC7DFB587C25F88CDF0DFE0159E99F0834BBBB1
                    D234A5BA964BA8DE55448BCABA6D376DBC300405238A00E1C644AAA591B87FD9
                    BBF6CBF89BE3BF1BFC0DF184DE337F12E95F1AFC4FAD786F5DF029D36C6387C0
                    FF006182FA4DF04B144B77E640F66915C7DAA59559E7050439543F7ED6BCB287
                    2D4D9FE4ECD7E52767AAD747709EADD3976FC2FAFE31D568F4D559ABF83F853E
                    0BEAFE04F1578935DD0FE067C07D1B5BF18FFC87F50B1D6DEDEEB5CEA3FD2A54
                    D1C3CFD4FF00AC2DD4D73BA6FEC71A568DF0F6E7C2367FB327ECCB6BE14BD9CD
                    D5C68B0DCA269F3CC4A9323C0344F2D9F28A7715CFCA3D057D354566B4DBC97C
                    96CBE5D077D6FE77F9F7F53C77C69E15F1A7C48F015DF857C45F09FE0EEBFE17
                    BFB716973A3EA3E279EEAC2E21000113C126906364C01F295C715C7EB9FB27DA
                    789FE1E2F84352FD9BBF66DD43C26B70978BA2DCDF09B4E13A2044945BB68A63
                    DEA80286DB900000E2BE92A28EB7FEB4D57E20B4B5BA1E2BE38F87DE2AF89BF0
                    F1FC23E24F83BF057C43E1391238DB45D4FC4735DE9CCB19063536F268E63210
                    AA951B782A31D2BE72F8C3FF0004CBF177C56FDAA7C17E2F6F85FF00B2D47F0D
                    FC3967A9C7AAF81AFB4E96F63D7EF2FE4B7926BE79FEC490ACE1ECED4AB35AC8
                    C36C99662EA63FBDE8A71938CD545BABFE2ACFF0FD1EE90D49A8F22DBFADBB7C
                    BA69B33C0342F8097DE17F88BABF8C34CF80BF0034EF16F882C869BAA6B76BAC
                    343A8EA56A15105BCD70BA30924882C71AEC662B88D0630A31CB59FEC27E18D3
                    B4DD32CEDFF654FD95E0B3D16F9B54D3E08DA258EC2EDB6EEB889468988E53B1
                    32EB863B179E057D51452FEBF1BFE7AFA8969B7F5A5BF2D3D343E5FD27F628D0
                    B40F0ADAE8561FB2EFECBF65A1D8EAA35DB6D3A09A38ED2DF500A105E244BA20
                    45B80AAABE681BF0A06702A1D6BF617F0D7892E6EA6D47F656FD966FE6BDB18B
                    4BB87B978A56B8B488C662B772DA212D1218A22A87E55F2D3006D18FA9A8A6DB
                    7BFF005A5BF2D3D341A6D6ABFAD6FF009EBEBA9F2DF857F61EF0EF816C20B5D1
                    3F659FD96F46B5B5BF5D52186C658ADE386F150C6B72AA9A2002608CCA1C7CC1
                    588CE0D78CFC58FF008255F8BBE217C5B4D4ADBE15FEC88DE0E4B0834CB4D1B5
                    DF0DFF006B5F785EDA18D9562D1AEC58C3158A798CF361EDA7FDE313D02A8FD0
                    AA2975BFF5B5BF2D3D013B26975FF3BFE7A9F32EA7FB1F59F88B55BBD4B59FD9
                    D3F676F106B5A9E94BA26A3AB6ADA9FDBB51D56CC22A79173712E8AD24E8422E
                    55D88381915989FB03784A2B79215FD93FF6525866D3C692E83C90AF661C482D
                    88FEC3C187780DE5FDDDC01C66BEADA2893BEFFD6FFE6FEF7DC98A51B5BA7FC0
                    FF0025F72EC793782B4FF883F0DBC25A7681E1DF865F09B40D0B47B74B4B0D37
                    4DF165CDADA5942830B1C5147A4844451C05500015A9FF000937C5AFFA127E1D
                    7FE16D79FF00CAAAF45A29B6DBBB049256479D7FC24DF16BFE849F875FF85B5E
                    7FF2AA8FF849BE2D7FD093F0EBFF000B6BCFFE5557A2D148679D7FC24DF16BFE
                    849F875FF85B5E7FF2AA8FF849BE2D7FD093F0EBFF000B6BCFFE5557A2D1401E
                    75FF000937C5AFFA127E1D7FE16D79FF00CAAA3FE126F8B5FF00424FC3AFFC2D
                    AF3FF9555E8B450079D7FC24DF16BFE849F875FF0085B5E7FF002AA8FF00849B
                    E2D7FD093F0EBFF0B6BCFF00E5557A2D1401E75FF0937C5AFF00A127E1D7FE16
                    D79FFCAAA3FE126F8B5FF424FC3AFF00C2DAF3FF009555E8B450078A7C6AF12F
                    C566F837E2D12F82FE1EA44746BC0EC9E34BC6655F21F2403A58C9C76C8FA8A3
                    E0B7893E2B2FC1CF09087C17F0F5E21A3598467F1A5E2332F9098240D2CE0E3B
                    64FD4D7A17C72FF9229E30FF00B025EFFE887A3E06FF00C914F07FFD812CBFF4
                    4250061FFC24DF16BFE849F875FF0085B5E7FF002AA8FF00849BE2D7FD093F0E
                    BFF0B6BCFF00E5557A2D1401E75FF0937C5AFF00A127E1D7FE16D79FFCAAAE67
                    E357897E2B37C1BF16897C17F0F5223A35E0764F1A5E332AF90F9201D2C64E3B
                    647D457B5D72DF1CBFE48A78C3FEC097BFFA21E803CF7E0B7893E2B2FC1CF090
                    87C17F0F5E21A3598467F1A5E2332F9098240D2CE0E3B64FD4D74DFF000937C5
                    AFFA127E1D7FE16D79FF00CAAADCF81BFF002453C1FF00F604B2FF00D1095D4D
                    0079D7FC24DF16BFE849F875FF0085B5E7FF002AA8FF00849BE2D7FD093F0EBF
                    F0B6BCFF00E5557A2D1401F357ED19E22F8A1278C7E119B9F07F80A275F1B21B
                    711F8C2EE412C9FD97A8FCAE4E98BB176EE3B80639006DE491EA1FF0937C5AFF
                    00A127E1D7FE16D79FFCAAACCFDA67FE476F835FF63DA7FE9A753AF58A00F3AF
                    F849BE2D7FD093F0EBFF000B6BCFFE5551FF000937C5AFFA127E1D7FE16D79FF
                    00CAAAF45A2803CEBFE126F8B5FF00424FC3AFFC2DAF3FF9555E7FFF0004C379
                    E5FD98B587BB8E182F5FE26FC426BA8A190CB14331F1AEB6644472AA5D15F705
                    72A858004AA13B47D0B5E01FF04D4FF9375F11FF00D955F88DFF00A9BEBB4FA0
                    107C09D73E21DA6B3F1263D13C2DE0BD474E1E36D4B64D7DE28B9B399BFD5F58
                    D34F95476FE33547C2DFB25D9781F48F15E9FA27ECD9FB35E8F61E3B8CC5E25B
                    6B1BD5B787C4484B92B7889A2817033248712861F3B7A9AF42FD97C647C44FFB
                    1DF52FFDA55F94FAAFECD9E16D3FF6ECF1C78774BF869F0FBE17695AD7C7C82D
                    B48F8C1A2DAC50EB9E18BE874CD2AFBFB1D238E088DBC57F9B88D25372F13497
                    12A3C059D4BBC3D3F6B5FD8ED75ABF2E7846DFF935ED7D5AB24E4D21559FB3A4
                    EA767F94652BFCB977B697BBB24CFD18D23F64FB4D035DF0C6A961FB377ECDB6
                    5A9F826DFEC9E1DBBB7BE11CFA0C3963E55A3AE8A1ADD32EFF002C6547CC7D4D
                    67EA7FB11787F5BD1E5D3AF7F65BFD976EF4F9D65592D66963921904B3ADC4A0
                    A1D13043CE892B647CCEAAC72C01AE23C4FF00B7CFC74F1A7EDB1E25F05FC2BF
                    83EDE2DF02FC34F1458786BC57773C9A75BBB8B8B4B6BA9AEA3B99F5682687C8
                    8EE95844BA75C89FCB204D193F2F1DA47FC14E7E326ABAA7867415D3BE1B58F8
                    C357F18E97E1BF10681AEE89ACE89AAF8356F9EE42B0B795DD354840802C77D0
                    4F14139590AAAE36820A53516B793565D7DF6ACEDDA5CC9F36DAEAEFA0E6BD9C
                    2727B415DF928A7FFA4F2B56DD74563D5355FF008275F8175D9647BEFD913F64
                    9BC79962491A78ADE42EB1208E2049D0CE42200AA3F85400302B4F4EFD883C3D
                    A46856DA5DA7ECB5FB2E5AE996705D5ADBDA432C4904115D002EA3441A26D549
                    800245030F81BB38AF03F12FFC154BE3D49E3B97E0CF85FE1E687E2CF8DDA46A
                    DAED95EEA1A469B0B6897F6FA6A69D324D0DA5FEB36263F3A3D52DD5D7EDD2BC
                    0C921093AF4C8FDA23F6B8F8DF77A07C5F913C23F0F7E07FC4DD1743F876F737
                    F0C075FD58C3AAEA33C1716373750CB02958263388C4523A8479195C3CD98AA1
                    4E5282A91DA4935D2EA5A26AF6BAE8FAAB6AB6BA764F95EE9DBD1A695B4BD9EB
                    A747D19F6478D7E1A7897E25784F4ED07C47F067E08EBFA16913417361A76A5E
                    2196EED2CA5831E4C9145268E511A3C0D8CA015C718AC4D2FF006683A1EA7A3D
                    ED97ECF3FB3B59DE787AEE4D434A9E0D4BCB974CB991A4679E061A303148CD2C
                    A4BA618991C93F31CF9FDA7EDC1F113C19FB7BF813E186BFAEFC28F15687E30D
                    4AFF00C3F730786345D4D2FB44BAB5D28DF2CF737AF7125AC524A6393FE25E57
                    CD8D1E36134C15C8D7FDA73F69EF8DDE1BFDA67C57E03F87F63F0B2C6C741F87
                    8DE38B1BFF001025F5F4DA94B15D79525A4914325BADBAB0575594492ED2CAE5
                    180319CE7350519B7A4AF2BFF862E4DFFE031BF7D12DF404AF785B6B2B7F8A4A
                    0976F8A56EDBBDB53BDF89BF07F5BF8D7A8D85E78CBE087C0AF16DDE950DC5BD
                    94FAD6BB25FC96715C27973A46D2E8EC51654F95C2E03AF0722B9CF18FEC81A6
                    FC44D3DAD3C41FB347ECCFAEDA3C3696ED0EA176B751B456AAC96A855F45236C
                    2AEEB18E881D82E0135E09F0E3FE0AC9F157C75F0B7E23FC51BFF0FF00C3FF00
                    0FF833C156FA149A7F87BC9BCBCD4B53FEDBB1B39ECA49F50F3628ED044F7B19
                    9945A4DF2AB857E03B60FEDF1FB497C71BAF87BF107E0DEB3AFF00C39B5F13E8
                    BA8782AEEEBC41A4F867508F4DD6F47D735AFB035A35AB6A5E6C122CB0B893FD
                    22559E02EA042D26E8F4746A467EC92F79B4ADE6DAB7CD5F99F6BF7BA2A8C954
                    4A69E9DFC9DBF06ECBCDDBA6A7DA11F867C6D0F88C6B09F0A3E0F26AEBA68D1C
                    5F0F144E2E45886DE2D7CCFEC8DDE46EE7CBCEDCF38AE0F4CFD8BF45D13C1F65
                    E1EB2FD987F661B4D034DD57FB76CF4C86E238ECED750DAABF6C8E21A26C4B8D
                    AAA3CD003E140CF15F39FEC75F1FFE31FC38F166AFE0CF833FB3FE8B7DF073C1
                    1E26D67C33AAFF0065C767A359C3A9DB2C86E2F2CD67D725B8B6B792F4009A72
                    E9E5638A50E972FF0075BBDB6FF829378F8FC12B7D79E4D1A5BDD1FC4105878D
                    248BE19EBFF6DF03DBB432CCDF6DD13ED26F02B32A42B771C9242149B8D8D183
                    188BC7979E2F46A2FB692774ECF5B5DA97AB5B49D897CD09384959A6D69AEB14
                    E2D5D6974938DBB276BC55CF5BBAFD94ADAFAEE1B89FF66FFD9BA69EDAD6D6C6
                    291EF833C56F6B289ADA152745C88E194078D4708C03280466B4B44F8097DE19
                    F8897DE2FD37E02FC00D3FC59A9DC1BBBCD6EDB5868B51BB98A18FCD92E17461
                    23BEC25773313B4919C578678E3FE0A75E3F3E09F1F7C42F088F869AEF80FE09
                    9D1E3F14DAC36F777575E2E5BCB0B2BD9AEB49BB49D6382148AF50C225827339
                    420B43C356178DFF00E0A5FF001E7C2B6BE26B91E19F01DDDFCDF14A5F851E19
                    F0E68FA64B7F766E9ADE3BB82FE6BCBCD4B4FB794087CD06D48B6DF2322ADC26
                    DF9EE509A9723DF7B7F8A504BFF027387DF795ACED2DC124DDADFE51949FFE03
                    18CAFE4ACAF747BD69BFB23D8E8BE1FD7B49B3FD9AFF0066AB4D2BC533BDD6B5
                    670DE2C76FABCAEACAF25C46345DB33B2BB82CE0921D81EA6B9EFDB53F667F8C
                    BFB49FEC87A87C26F05E87F05BE1D595F0B4B74966D46F754B2B4B4B79A39441
                    1DA47656CAA0F968A3E7DAAB91B4E411C8E9FF00B797C77F005A780D7E317827
                    42F83C7559EE2CF52D4F54D166D574ABF9BED3E55A87B9D36FEEA0D17CD89925
                    1F6A9AE50B9308933890FD7DF1A7E26DB7C15F83BE2BF18DDDB4F7B69E14D1EE
                    F589ADE0E659D2DE1795917FDA21081EE6B0AEE11A4EA49FBABFF6DFF2ECF5B3
                    DACCD694653AAA9457BDFF00C976EF77D56975BDD69E05E1FF00D8CED74EF0A7
                    8574EBCFD9B3F65C99BC2375FDA9A68B5716F6BA66A2E51E6BCB384E8EFF0066
                    91E4457DCAC5F2AB9762A0D749E22F833E27D4FE23CFE3FB3F831F0061F89EBA
                    7BD85978B6EB5696E753B642A42234E34A49DA104F31ACA808C8CAE735E75AC7
                    ED59F1D3E1DFC37F09EA5E22FF0085417773F18F54D1748F065DE9F67A8C5078
                    7AE7508E59648F5085E66FB6470451AEC9619AD8DC3B6C315B8C39F21F8C3F1F
                    35EF8A3F14BE1AC7E3E8625F1AFC0AF8ED0F86351BBF0DCB7967A2F88219BC3F
                    36A2B3A58BCD200C63921FDDCAD3344EAC12421C96D6AC5F34A3534B3B4BCAEE
                    1196DFCBED209DB74FDD6D27654B58DE1AFBAE4BADD2539C77E927096FAA69F3
                    24DABFA8FF00C13EBF61CF883FB147C273A66A9E02FD9EFC51E36BB135BEA9E2
                    DD25EE342BDD6ED5E679521BACD85C4936C323282D295DA14051839F48F0CFEC
                    CE7C15F0F351F08E8DFB3C7ECEBA4784F5799EE6FF0045B2D4BECFA75ECAEA55
                    E496DD34611BB329209652483835F38FC23FF82A47ED1BF107F67FF127C61B9F
                    81D6D6FF000BF50F05378B3C33A9CF258C5F607DF1958A75B6D5AEEE2FA2FB3B
                    C93B49F65B174FB3B4662DCE0AD9F871FB7CFC74F1BFC3EF1B6B91FC4CFD98F5
                    1F0FD9F8AA3D07C23E2CD3FC27AC5C5878AA04D37ED933D859C1AACF26A5399D
                    BECDE5413208BECD70FBA629E482AC5C54BDA2B72C755D92972D9AEEA5D3AEEA
                    FB8538DDDA0EFAE9E7EEDEE9F5F75DB4D968EC7D1979FB3E5DEA1A3E97A75C7C
                    01FD9F67D3F44D2A6D0B4EB693562D0E9FA7CCA166B3850E8D88EDE45550D128
                    08C14020E2B265FD8FF4D9F40BBD25FF00667FD99DF4AD422B782EACDAED0DBD
                    CC702AA408F1FF0062ED658D51150104285503000AF32F81DFF0539F197C53B9
                    F821AAF882C7C3BE02F0D7C57F0D689A84171A8787F52B9B0D5B53BC900B8B28
                    7544904165346A310DBDDC45AE1E740AE0A32B759FB7DFEDADF16FE14FC73F0E
                    7C2DF823F0F93C6DE36D5BC3979E2B9BED10D94D07D9ADE78ADC41B6EB55D342
                    6F9261BA749676846D3F67903FCB75A1384F965AB729474D7585E52DB7B2BCBB
                    EFD7422124D69A72A4F5D2DCD64BEF764BA5EDADB53D03E2D7C14D5BE3E785B4
                    ED0FC75F02FE0378D744D2274BAB1D3F5ED6DF52B5B29514A249145368ECA8EA
                    ACCA194020120706B9597F621F0F4FE1DD67477FD96BF65C7D27C477C9A9EAD6
                    4D2C66DB54BB42C52E278FFB136CB2A97721DC161BDB07935CD7FC1547C53F12
                    B5CFF8275E8B79A649A4FC3AF10F89B59F0C69DE24D2B54B47D67ECD1DFEA567
                    6D7163E65ADDC0ACAAF3EC9195DD65896541B7CC122794FECEDF19BC7DFB21F8
                    02F7C0FE1CD33E0ED8699E10F8F769F0F6F2C745F0D6A5A669B7563A9416572D
                    2594126A771F609166BD6F9019610AB85896953A7294E50EAA4969ADDF3528F4
                    E9CD521AEB7DD6D71559A8508D77F0D9BED64A3396CFADA32D34FBDD8FB1B51B
                    1F885AC78466F0FDDFC33F84F75A0DC5A9B1974D9BC5972F672DB95D861688E9
                    3B0C657E5DA4631C6315C56B1FB2F2788BC43A1EAFA87ECEBFB395F6ADE19B2F
                    ECDD1EF6E351F36E349B5DA53ECF6F2368A5A28B6B32EC4217048C60D7CD9A3F
                    FC15DFE2CFC3AF86B61F107E237867E1EB787AE26F1E69B75A178712F24BEB4B
                    BF0E35EBA3A5ECD2049A2952C9E32A6DA3604AC8080C624F4EF8F9F183E34FC3
                    7F871E0FBEF88BE1CF80BE3FF0F78A7E217846C6DA486CAFEDDB4B82F6FE242D
                    F649CDC24D756B39B7686E44F1063993C989A258E4A8D094AA462F7938AF9CA5
                    CA97AEADF6B3D5AB95392A6A49ED1E7FFC91272F92D3CDF44EC74BA4FEC0DE12
                    D016C8587EC9FF00B29590D35674B4107931FD9567529388F6E8636091495703
                    1B81C1C8AF2BF02FFC12C3C43E0CFDB2EEFE200F849FB2837C3DB5D16CB4DF0E
                    F822DB4992DFFE119BAB5B89EE52FEDEE7EC2D124ED35DDC9668ED6324346030
                    28CCFBDA7FFC145BE29EB2FE0EF1A699A2780354F00FC49F1AEABF0FF44D0DD2
                    F2D758D32FAD5EFE2B7BBBBBE5796278659AC184B125A2B4092821E62A54F33F
                    057FE0A6FF00187C67E12F076A5E275F827E1E3F127E17EADE36D325BB7BEB2D
                    37C3577A7DEDA5BBADF5D34AE67B774BD471B228595A265DCDBC32C5173E6E6A
                    7F12BFC9A84A56ED7E54DAED75AA6CB926A32A6F676BF9AE74AFA6B6E756F3E5
                    7BADFE949FE0FEB773F1862F88727C10F815278FE1B5FB147E266D7643AC476F
                    823C9177FD8FE708F93F2EEC7278AF1BFDA83F61FF008ADFB577ED6DF0FBC71E
                    2BF09FECF1E22F87FE0AD1EFF4BBAF05F88C5DEB43557BC92091E7FB44B68228
                    9A37B4B631E6D5F6ED9724EF531F8D7ECE9FB7EFC55FEDDF0FFC2BF01E93F077
                    4D8E7F8AFABF802FBC56FE17D62C6DA69468675B8AFE3D1A6BB170E66632F992
                    CB7F990AABA965983A7A5781BF6D2F1DC3F16BC55F0FF4DF0CFC25F08FC4AF16
                    7C5CBEF06C7AFDBE997373A65C259F876DB51FED2BD8565B79AEEE9E0548845E
                    747B142A79AEB0EE9348509A719C56D1E78FA4B955ECF6D2A2DF5D6F6EAA6557
                    D9A7CCED7BA7F2E6EBBFFCBB96DD15AFAA4FDE3C37F03352F06FC4BD53C69A47
                    C08F807A578C75BB45D3F51D7ACF5968353D42D95515609AE174612C91858A30
                    1198A811A0C7CA3117C3CFD9FAF3E1178635DD13C27F00BF67EF0C68DE29691F
                    59B0D27576B2B5D5DA452921B88E2D195662CA4A92E0E41C1E2BC33C31FF0005
                    3DF887737DA2C1E2AD3BC2BE09B1D2BC45AA783FC43E219BC3BAA6A3E1ED4356
                    B3BE368123BB865034A8A45D92A4976B2A3331837865F30FDDBA947732E9D70B
                    672C105DB46C2096688CB1C6F83B5990329650704A865247191D6B07AD3535AC
                    5AB2F35BDB5E8EE9A4FA34FA827CB51D37A4A2F5F26B4E9DACD5D5F54D27A33C
                    07C55FB394DE3BD5FC39A86B9FB3EFECF5ACDFF83ADBEC5A05CDF6A86E26D0E0
                    DA17CAB577D18981368036C654606314ED3FF67ABAD23C36FA35A7C00FD9F2D7
                    4897571E207B18B56296CFA907F305F18C68DB4DC870184B8DFB86739AF80FE0
                    9EBDE3FF00D9CFE076BFFB42FF00C247F02EEBE2C6A9A878DE2BAD4EFF00C2DA
                    ECBAE7896DB4FD56E71A78B2B5D49DEF1375AA88A77CFF006740A912C730777A
                    FA6BC57FB65FC79F107C6DF87961E09D4BE13DC691E31D22CFC63AA6833F83F5
                    3BED43C33E1CFB24525C5D5CEA31EA71442E25B832C36D08B43E61192488E522
                    AE93DF55ACBB26EF2BDF77F0B9376BAE56DAB2527328C6F64B4D6DDDA8B51B5B
                    A7C49257B3E6496ADC57B6787FE0AEADE13F885AFF008BB4AF819F01B4CF15F8
                    AE3F2B5BD6AD35B78751D613006DB99D747124C3000C3B11C5747E10B5F889F0
                    FBC2DA7685A07C34F853A1E89A45BA5A5869FA7F8B6E6DAD6CA1450A91451269
                    2151154001540000C015F0DD9FFC1593F6A8F107ECBFAE7C68D2BE05785E2F87
                    1A9F8621F13787B53D7B50B4B08AC15E7855607169A9DEDC5F97865670CD6DA7
                    14688A3202D91EC179FB7D7C4FD17E237893E155FF00FC2BBFF858B73F106C7C
                    1BE1BD6D34BBD4D16186F3456D63CEBAB5374659658618A68B6A5C4427711906
                    00C42D7B2A8BF776B3DB976774D46CD74B3975D2D777B6A3525294ADAD93937E
                    495DCBCD5974D76563E95FF849BE2D7FD093F0EBFF000B6BCFFE5551FF000937
                    C5AFFA127E1D7FE16D79FF00CAAAF83FF60CF8CDF147C1936BBF047C15A87826
                    0F1EBF8A3C71E23BCD6FC4D0EA5AC69F2C361ABC36AB6D0C4D789744C8D3AFEF
                    25B990C08806D9F22BDD3C5FFF000503F19F883FE09DBF0B7E38F8574BF0EE89
                    7BE2AD6FC3D69AD68FACD9CF7F18B7BFD4E0D3AE63B79239A028EAF37991CCEA
                    EA5500317CF9554E1CF1A728ED3E4B7FDBEECBE4A4A517D74BDACD5E9C5AAB3A
                    3D60E49FAC7F56ACD74D77D1DBDF3FE126F8B5FF00424FC3AFFC2DAF3FF95547
                    FC24DF16BFE849F875FF0085B5E7FF002AABE5EF157FC1417E2CF82753F8A76D
                    A859F86A6D2BE1CFC505F0CDE788349F04EABABC7A4686FA45A6A4935D585B5E
                    3DC3C9BAE45BBDCC4C238F2266836AB2553F1C7FC14EBC7E7C13E3DF885E111F
                    0D35DF01FC136D1E3F14DAC36F777575E2E5BCB0B2BD9AEB49BB49D6382148AF
                    50C225827339420B43C35385294ECD768BF45351716FB7C497937DB514FDD6E2
                    F757F9D9B4EDF77F4F43EADFF849BE2D7FD093F0EBFF000B6BCFFE5551FF0009
                    37C5AFFA127E1D7FE16D79FF00CAAAF3EFDAEFE33789752F88FE10F839E08B8F
                    0F695E22F88FA2EADAB5C6A3AEC1792C16BA6D90B68E78E25B4B8B69BED3235E
                    44A8E93A18807930E50237C6FF00057F6DEF881FB22FFC1397E046A3A46B1F0D
                    AF34FB2F0DE9971ABE83A8DA6A9AD78975A171AA8B59E449219156CA18D1F70B
                    BB959D649095711ED2ED104E4D2DAED25E77724DFA2716BAEB7F992D20EA744A
                    EFF0B7DF7F256B6BBDBF427FE126F8B5FF00424FC3AFFC2DAF3FF95547FC24DF
                    16BFE849F875FF0085B5E7FF002AABCBFF0067AFDAF3C51E3FFDAEBC61F0EFC6
                    1FD8BE19BAD364BF9B49F0FDD787B50B0D46F34F8278E2B7BEB6BF9246B3D4E1
                    951BCC93ECEB1B5B34B1C4EA4E5CF967C4EFF8282FC6AF0278A7E31EAC340F86
                    43C21F04FC7BA4F87AFF004C8CDEDD6A9AF6977F159389E1B92F0C56F751ADF4
                    6FE5B413239578C30C2CAC462DB8DBED2BF95B9947F3924FE7D9973838F35FEC
                    BB3FB9BFC6DA3D9DD7747D47FF000937C5AFFA127E1D7FE16D79FF00CAAA3FE1
                    26F8B5FF00424FC3AFFC2DAF3FF9555F0A7ED35FB60F8BBE37F86BE3E7C23F15
                    6B7E06D7343BDF84DE26F16697A8F801757D3DB449F4DB8107D8DF5433F957EF
                    9922327D9D61F2D9248A58991D4B77B77FB6CFC41F839F107E0C78474BD67E16
                    5EF867C4EFA07855B478749D4F52D774C6BCD2DA44BFBCBA8A64B5B4026450B6
                    B247BA68C6E59D59822A827249FF00372F2F9F34A70B7FE0506BAAD6F7E5D49A
                    B682726F45CF7F2508D395FCFDD9DFBE96B36EC7D5DFF0937C5AFF00A127E1D7
                    FE16D79FFCAAA3FE126F8B5FF424FC3AFF00C2DAF3FF009555F3268DFB627ED0
                    573F074CB1C9F07356F88FE0E9BC587C5FA41D1752D36C248F4B3B6D44137DB2
                    77B63279B6B2169126124771F2AC7B771E2FE35FFC1477E37FC08FD90BC2FF00
                    15B54F137C07BC9F57F09DAF8DE4F0C5AF857599357BDB5912D1A5B38638AFE4
                    F2A38C4B296D4A506242D1ABDBAA8694DD387B4972C5FF002EBD1F3735ADDD35
                    193D3B77693CE5349A4F7F7B4EB78B49AFBE51FBFC9DBECFFF00849BE2D7FD09
                    3F0EBFF0B6BCFF00E5551FF0937C5AFF00A127E1D7FE16D79FFCAAAF32F84BFB
                    5D789BC51FB656BBF0F3C4E746F0CC21A69742D22F7C3DA85A5E6AF67146185D
                    DA6A6D2359DFEE2C0BC3124725B8521C3E430F9FFF00E0AF7F15FC5FF1BFE117
                    C76F06F86AFBC3BA4F857E10D869371E215B83A847AC6AD7574C9711ADBCB6F7
                    30A4304716C2C268EE23B86678D9230858CC1733876959FA2BEBF76D6EFA3B6B
                    61CD72CE4BECDFE7DBEFEFDB557563ECDFF849BE2D7FD093F0EBFF000B6BCFFE
                    5551FF000937C5AFFA127E1D7FE16D79FF00CAAAF9ABF658FDBDFE38FED3BFB4
                    B6ED17E10B37C0A83C45AD7856F75C99F4EB7B8D324D3A69EDBED9E69D59AE67
                    124F06C36C74B85904A1C4D205F9BD4358F8F1F153E247ED3FE2CF0BFC3A8FE1
                    EDB681F0BAF74AB6F11DBF88EDAF4DEEB8B7912DCCAD697104812D7C9B7752A6
                    482E04D26E43E405F308D5945BD2EAFAF45DDF6DD7DFEB6A5AB947AAFCF6B27E
                    A9AFF80D33D17FE126F8B5FF00424FC3AFFC2DAF3FF95547FC24DF16BFE849F8
                    75FF0085B5E7FF002AABE3FF0010FF00C150BE2FE95F0DFC19F11F4BF0F7C38D
                    7BC27F1864D66C3C23A1BADED86A3A15D59595F5DC2DA85E07992E1254D3E6F3
                    162B684C0CCAB9940320E73C67FB6A7ED03E09D57E077C4AF12F8D7E1E4BE0AD
                    7FE1DEB7F11B56F0B683E08BF8269E1B3D32CEE9ED0DC3EAB279B29170EB14BE
                    52A46DF334329DBB65BE58CA73D1477F2D24FA6BB424F4BFE28B5094AAC68C15
                    E53BF2AEF6693B5ECB7696B6D7CB53EE3FF849BE2D7FD093F0EBFF000B6BCFFE
                    5551FF000937C5AFFA127E1D7FE16D79FF00CAAAF90FC09FB7CFED4DA8FC1ED5
                    FC5DE26F8369A0F86B50834CD5745F11DAE810EB86C2CEE4B34E1B48D2F5BBCB
                    BD4443198584D1C96AD2091CFD9E3F2F6B759E1FFDB3B58F187C63D4F54B1B6F
                    81174907C1F9BC57A1F8E67BCB9B5B6726FCC4F05D5C49179969628F12B489F3
                    B6E4258214C1B945C67C92DF54D754D425369F6F85AD7476766EC64AA45C54A3
                    AA7CB67D1A94A314D77F896DAABABDAE7D21FF000937C5AFFA127E1D7FE16D79
                    FF00CAAA3FE126F8B5FF00424FC3AFFC2DAF3FF9555E61FF0004E8FDAD7C55FB
                    4C7FC2D1D23C5F71E19D5B53F86FE268F458B5AD0743BED0ECB5A825D3ED6F23
                    996CEF269A58F1F6829BBCD74902ABA1DAC2BE94A73838DAFD527F26935F8329
                    3BFF005D8F3AFF00849BE2D7FD093F0EBFF0B6BCFF00E5551FF0937C5AFF00A1
                    27E1D7FE16D79FFCAAAF45A2A0679D7FC24DF16BFE849F875FF85B5E7FF2AA8F
                    F849BE2D7FD093F0EBFF000B6BCFFE5557A2D1401E29F1ABC4BF159BE0DF8B44
                    BE0BF87A911D1AF03B278D2F19957C87C900E963271DB23EA28F82DE24F8ACBF
                    073C2421F05FC3D78868D66119FC69788CCBE42609034B3838ED93F535E85F1C
                    BFE48A78C3FEC097BFFA21E8F81BFF002453C1FF00F604B2FF00D10940187FF0
                    937C5AFF00A127E1D7FE16D79FFCAAA3FE126F8B5FF424FC3AFF00C2DAF3FF00
                    9555E8B450079D7FC24DF16BFE849F875FF85B5E7FF2AAB99F8D5E25F8ACDF06
                    FC5A25F05FC3D488E8D781D93C6978CCABE43E48074B1938ED91F515ED75CB7C
                    72FF009229E30FFB025EFF00E887A00F3DF82DE24F8ACBF073C2421F05FC3D78
                    868D66119FC69788CCBE42609034B3838ED93F535D37FC24DF16BFE849F875FF
                    0085B5E7FF002AAB73E06FFC914F07FF00D812CBFF004425753401E75FF0937C
                    5AFF00A127E1D7FE16D79FFCAAA3FE126F8B5FF424FC3AFF00C2DAF3FF009555
                    E8B45007CD5FB46788BE2849E31F8466E7C1FE0289D7C6C86DC47E30BB904B27
                    F65EA3F2B93A62EC5DBB8EE018E401B79247A87FC24DF16BFE849F875FF85B5E
                    7FF2AAB33F699FF91DBE0D7FD8F69FFA69D4EBD62803CEBFE126F8B5FF00424F
                    C3AFFC2DAF3FF95547FC24DF16BFE849F875FF0085B5E7FF002AABD168A00F3A
                    FF00849BE2D7FD093F0EBFF0B6BCFF00E55579FF00FC130DE797F662D61EEE38
                    60BD7F89BF109AEA286432C50CC7C69AD99111CAA97457DC15CAA160012A84ED
                    1F42D7807FC1353FE4DD7C47FF006557E237FEA6FAED3E80667C17F18FC49D2B
                    C41F1260F0FF00813C37AD69ABE35D4B65D5D78A9EC647398F8F2C59C98E31FC
                    5DCFA64F9DD97EC0F1DAF837E24787E7F81BA66ADA3FC5BBB5D43C536DABFC6A
                    D7B5417F749B765CC66E6291ADA75D91E25B731B810C20301126DFA13F65F191
                    F113FEC77D4BFF006957E53EABFB36785B4FFDBB3C71E1DD2FE1A7C3EF85DA56
                    B5F1F20B6D23E3068B6B143AE7862FA1D334ABEFEC748E382236F15FE6E23494
                    DCBC4D25C4A8F016752EF0F4FDAD7F65B5E3ABF2E7A71B7DF24ED7D5C5249C9A
                    42AB3F674BDA767F8A8CE57F972B57B689B6EC933EDFD07F626BAF0D78DECFC4
                    769F066D975AB6B2874FB9B993E376BF2FF6DC308610AEA4AF115D48C61C846B
                    D13320C0040518F37FDA37FE09D5E3CF1DE99E17B3F06FC1EF05D84761E26D2B
                    55D525D4FE316B6F72BA7E9E241158584DF63924B140642E82D9A248DC170BBD
                    8B0EEBC4FF00B7CFC74F1A7EDB1E25F05FC2BF83EDE2DF02FC34F1458786BC57
                    773C9A75BBB8B8B4B6BA9AEA3B99F5682687C88EE95844BA75C89FCB204D193F
                    2F39E0DFF82A17C41F126ADA27812F7FE10CF0FF00C5CF19F88EDFC390E8BACF
                    85355D364F04CD2DBEA176D25DDBCD72A754B611591486EAD27862BA90B60C20
                    603842551467157778C92EAF5528BB7F2B6D4AEFDDD7577762E54ED0A91E8935
                    2F25669FCE293565AAB2B2D8ECB5CFD8964D7FC11E1CD0A4F819A25AAF84AFA7
                    D4F4AD56C3E30EB561AF5B5D5C022E273AAC1025FBC93027CD679D8CBC6F2D81
                    55356FD82935CF1278BF56BBF81BA64F79E3BD36CB49D6B77C69D7BC9B982CE4
                    496D7645E4F9704B0CA9E624D0AA4AAEF2307DD2485BCB3C7FF173C61FB42FED
                    03F00A5D6FFB3346F8A7F0CBE317887C037179626FCF867529C785B50B98AF46
                    9ED70BBD1835B314791A58889A349F0C5DBA2F1AFF00C14C7E2F7C1FFD98F48F
                    1BEB707C3FF11EBDE1C5D5EC7C6FA2693E1EBBB1C6A51EB116916305B4B71A89
                    5B64FB44DBDDEE37ACB1C2ECAD00208A69C54649DDC95D5AFAA6AE9AEBAC7977
                    4AD749F90E1EF28FC9F9494E4ACDEDF145B4EFABBB5DCEFF00C39FB154BE11F8
                    8FA7F8B34DF815E1FB3D6F49D7E5F13D93C7F1775816F67A8CD6EF6F3DC476FF
                    0067F250CD1C8E2550812666DF22BBFCD5C9FC76FD8F3E2C7ED27FB67DBF8EBC
                    61F0AFC1179E0DB6F081F0D7D82C7E2D6AFA5DEDC31BAFB43F9DF65B18967B57
                    1FBB7B695DA37001656FBB5EF7FB0BFC54F8DFF117C1DE251F1BBE1EC1E08D5B
                    4BD4047A45DA7D86D535CB46895BCD6B4B5D4F5316AD1C9BD086BB93780AE36E
                    E28BF1C7ED15FF000517F8DB7FF0C3E36F86F4BF1AFC2A8F59D1BC0D0F8B347F
                    127847C3DAA4B65A6AB6A4D6571631DD4F72B1DFC8ABB36DE5BF9411B76E814E
                    DACEDFBDA705AB49B8F657834FD2D0BFA5ADF172A3294E2A94EA4B45749F7F8D
                    35E6EF3B7ADEFB7333E82F0E7EC8577E1897E24087E04785EF2D3E2DC4B6FE2A
                    D3F52F8ABAA6A3A76A31245E4A46969716CF05BA2C588D56048C2A2228015140
                    E735FF00F827841E29F852DE0CD43E09A5D68D26A169AA4D2B7C77F127F695D4
                    F69CDA79D7E13ED72C76E70D14524CD1C4CAAC8AACA08C4F1F7ED39F1A7E17EA
                    7F1B351B1B0F817A67887E15DE7858F8A3C463C317F39F10E8735BB3DDDDBC6B
                    7914B0C96C924B2C50B4D70A891BA798E64DEBD87C59FDA6FC6BA47C7FF0026B
                    9A17C2CF17FC3AD7FE29CFE1FD07507D2EE1355D0C5AE8F753B5D441E49A396E
                    05C417B079C9E46C55C08DFCC251DF669E9A6BE49C5AFBB99349DB54F668AA7C
                    D38F3A5B733F9A8C9BFBD475B5EE9ADC759FEC4F3D878BB5AD6E2F81FA40BBF1
                    35B25B6B70B7C64D6DAC75C6485615B9BCB4301B7B9BBF2D107DAE68DEE09552
                    64C806A59BF637D426D3F5187FE14D5A25CEAB70D7171A9C7F1AF5E8F5619528
                    234BE5845D470AA1644852558911DD15155994F842FED0BE3FF8A7FB4BFC13F8
                    F13EAFF0DB4CD1BC65F0DFC5BADF856CB51D4351D374CD12D922B396DCEAF334
                    F2C0EE1652D2CF0DB42F18678BF78103D77BF093FE0A55F12BE2B6B57DF0C12F
                    BE1C5C7C43BDF1F3F83749F150F0D6ABA6E853DA2E849AC3DE7F66CD77F6A771
                    1B34488978AB2FCB2AC8129BA751A706BDE49DD76B4F92CFD1D9BFC2F6B94E2A
                    094DE914F47E91BB6BF14ADAB56DAF63B9BAFD8AD6E3C6FA3EBF1FECF7E0AB0B
                    BD12D2CAC22B4D3FE26EA365A65DC165FF001E6977630DA2DADE0B7C0317DA62
                    90C6402BB481559FF618373E01F1A7866EBE05E8DA8E8FE3FD797C51AC25FF00
                    C64D6EF263AA2B2B25EDB4F2C0D2D9CCAC8855ED5E22BE5A631B571F2FFEC97F
                    B5FF00C69F811F04740F837F08FC0FFF000B07E221D5FC75AEDDCB752C7A8C0F
                    6F65E28BAB35803EA5AC584A43BBA8370D71732C4A10B41317C8FB07E0BFEDAB
                    E3DF137ED5D67E03F887A2E91F0C6E757B7865D37C39AA6917725CEA4069DF68
                    B9367AD4533E9D79347705A36B58D1648E3B6965DCEAEBB6FD9B949F2BBEED3D
                    AF695DDBABF7E3ADB5BC799D924CCEB38D39B84BECBB7A5AE95FF97DD9697D2D
                    2E54DB6D1997FF00B1F6A3ABDAD9437FF0634FD485A081677BEF8CFAE5D49AC2
                    4258C71EA0F242CDA8C60B93B2F0CCA70990762E3B6F865A1FC61F01787B5FD3
                    6FBC03E1EF115B6BFA9DD5FCB16A7F116FAFA28239CFCD6D1FDAAD6675840CE2
                    30FE5AEF60891A6D8D7E77FF0082BDFC57F17FC6FF00845F1DBC1BE1ABEF0EE9
                    3E15F84561A4DC78856E0EA11EB1AB5D5D325C46B6F2DBDCC290C11C5B0B09A3
                    B88EE199E3648C2163DD693FF050FF008837FAFE87E35834DF084FF09355F89D
                    2FC2993465B1BA1E25B3B94BF934E5D48DD09CC0F1B5CC7936DF6652B1387F3D
                    88F2EA29C5D54A3FCCED6E8F99C12FFC0A4E297C9B76BD8A9254DB9BDA2936FD
                    149DBE51527F7A5ADAF62C3F6145B0F85BA9F82BFE144E8B75E16D48C462D3AF
                    3E31EB777168BE548B2C234C32C0CDA62C72246C8B626008638CA81B17126ABF
                    B10CDAD69FE0CB7B9F825A73FF00C205AF1F1469338F8D3AEA5D49AA95086F6E
                    E710896FA7283617BB698EC665FBACC0E9FF00C145BE29F8BBC7D71E2DF835E0
                    8BCF0E6913AFC3BBFF00167882F755FED05B89ACB73DBC76D64F67716D24333B
                    A485AE7CC710854FDCC9E67CBE29FB22FED3DE2AF0B7C35D574EB3B0F823E09D
                    5FC2FF000BBE1BFF006678C7C43F699A4BEB4BF86E10ADF7962292E1E29126FB
                    359472287925C79E8663B1D0E6A919D48BF85C6DE7794E37F2B4A9DBBE97D124
                    DBAAD539C693DDA97CB4869FF6F46ADFD1DB56DA5D87C40FD813C5565F08BC53
                    E1CF87DF083C2DE1D5F145C24B3585CFC5CD724D26D63374B71729616E21F2F4
                    B926C38F3ECA38D919C38562A052F81BF61CF1F5CEAD697FE2DF869F6F4D22EA
                    2D4347B1BAFDA1FC53AFCDA45DAA4F14D2A6A17908B931CF04C2392D80581950
                    874937647B6FEC21FB58F893F69CFD90F51F19EBF07876D3C4DA26ADAEE893CA
                    B6D77A3699752E9D7B716CB70D0DCF9971691C8215768E42EF16E604B639E5FF
                    00E09E7FB6A78BFF0068BF8BDF133C19E2ED4BC09E257F06D8689AC586BDE11D
                    1F50D334BBE83518EE498A2FB64B29BB489ED9C2DDC2C229830C246CAE8054DD
                    E50EC93F9696F969749E8BC9BD5D495BE3DEED3F54ECFCB7D1B5BAD358DCC2F0
                    4FEC40DF0EECFC2D6BA4FC09D060D3FC1AF6EFA5D849F17F59B8B1536CDBAD7C
                    EB792068AE7ECEC03422759042C018F6100D751F1E7E03789FF693F10787359F
                    14FC1CD086BDE11795F47D5F46F8B1AA683A9D8094059635BAB0B5866F2A40AB
                    BE22E637DABB94E063E6EF8CDF1B3E207ED15FB497ECE9F14F4A9BC24DE174F8
                    8BE29F0F785F42FB4EA369349259E91ADC3BF52956692DA459A7B10D8167E6DB
                    28C2BC85DD6B4A6FF8292F8D7E12FEC6BF06BC79E18B0F825E17D0B56F0D68DA
                    CEA1E04D3F45D46EF51952F6FE38264B44B5748B4DB58524CADCCE9324926E56
                    5882EE66A32928B7BB92F9395ECFD5A8EB6BB5D4BAAB922E77D395DDF92938B5
                    E97EFA3BBE89B3DE3F681FD9DBC45FB4FF00C27D2BC0FE2FF839A34DE17D12EA
                    D6F6CECB4AF8BBABE886396D886B76692C6DA191C46CAAEA1D880E88F8DCAAC3
                    94F12FEC0965E36D66F6FF005CFD9EBC25AECDA95E586A5769A9FC56D5AF60BA
                    BDB28961B7BE92296D9A37BB58D115AE4A99A411A6F77DA31EC7FB767ED13E29
                    FD9B3C0BE1ED6F41B1FF00894CFABA43E21D60F866FF00C489A0D888DDDA67B2
                    B1923B828CEAB11994B2C1E6798E8EA854FCE9E1AFF8295FC78F8EDF1EA6D2BE
                    0F7C2DD03E237833C1DA8E93A4789B57B4BCB1834DD40DE69F697B2DF5ADF4FA
                    A45710C1125DABA22E9977E7A21C4A8C70B14D393972F4777E5B5A4DF4D7955D
                    ECECF657226ED1B4BB3B79AD6E977EAECBF3D0BFE1CFF8265E95E1793C3FE47C
                    0C8EE61F0C6A1A8EABA7DB6A1F1E7C4B7F6AB71A8645F34B0CEAF1CEB701E4F3
                    5255747F365DCA7CC7DD7F57FF00827A26BBF0FECBC2D77F06E79F43D2F55B5D
                    6B4FB76F8FDE27DDA6DC5A9DD6CB6D205DF0410B61E3B78996147546540CAA47
                    3BF057F6FBFDA27E2F5B7C30FB5597C1AD02E3E2B59F8A6D6048F4FD4B504F0E
                    EA1A3DCC8AB2BB1BA84DEC12C7195312ADBB061BFCD21BCA5F66F05FED85E2AF
                    8A1FF04D3F02FC5DB6BFF86FE08F14F8C747D2AF67B9F123DCB687A6CB74F12C
                    85228DD66B87F9D8436E258DA57291F9ABBB7D5273579C5EB171EBD6EF975F27
                    1BA77D346282553DE4AE9DF5F95DF9EB7F9EBE57E66C7F638BAD2BE21EB3E28B
                    3F819E1FB2D5F5C96EAEA6FB37C5CD5E1B5B5BBBA89A1B8BEB5B65B71059DEC9
                    1BBAB5DDB471CE77B9F332C49F3DB9FF00824B7862FB48D034FB8F80A2E2C3C2
                    DA4CDA1E936F37C7FF0014C9158D9CB30B8789158103F7CB1C81BEF2BC103290
                    618CA60EABFF00056EF8953FECE3E0ED666D4BE11780357D6358F1668377E2AF
                    15E8DA841A05DEA1A35CC905A58C5612DE5BDD5BDC5F847744967778CC2E8125
                    62A2ADDFFF00C149BF686F863E1AD6357F1F687F0CF4AB7F01FC20B0F8B1AF59
                    DA687A836A3AB79BE7F9FA5C70BDE85D3A58DE131F9AEF783E4F30A0DC638E52
                    71DBA597CB966F45BE9152D2D7B3DAD257D9C6A2972F577D2FD54E30F4BF3B8A
                    BEDD6FA3B769A67FC13AEDB46F8B5A5F8E6DBE09A45E27D235A8FC4705D7FC2F
                    7F1218E4D492D52CFED934253CA9E76B641148F2A3B4A85D5CB877DD6EF7F605
                    4D40F8B5E6F81F6125C78D7C471F8BB51BA3F1B75FFB541ABC6A512F6CE6F2BC
                    CB098467CBDD68D0E63548CFC8AAA399D33F6EFF00DA97C37F0C751F1078E7E1
                    02F85FC3EDA969D3DAF8A60F0D26BBF62D2E78A792E1E4D1747D6EFEEAE042D1
                    DBA7DA12E23CADD994DBA88191FBCD07F6F8F166B5F197C19A4B6A3E0083C3BE
                    36D16C6E3C3BA99D1B549345F195DCF079B20B2D691DADE060C0A25A4F019A40
                    7CC5638319AA9CD1F764F6D3BDB452B5979C569DE29ECAE67CD78FB4E96BDFC9
                    5D6FE4A4FD14B5B5ECCB9FD8E2E2EB46D2B4E3F01FC311E9FA52A27D9A1F8AFA
                    AC50EA6AB34D71B6FD56D80D403CF3CD2B8BB12892472EFB98023B6F869A1FC6
                    4F017873C41A6DCF82B4AD5A3D7F52BBBF66B8F89DA8CAF62B3F586DE59ADA59
                    A145E4AAA481632C7CA58902A2F897ECE1FB64FC42D37C23F0735DD42CFE0CFC
                    3BF861E3FD0BC4735E69DA57876ED9F4DD7ACE4BAB911C330BB8A268658A2B89
                    D8B5BABBB5ACBCA9987975F53FDBB7E217C0AF883E291F113C17F0A4FC44B3F0
                    3783C59EB7A55A5CDA1BCBDD6F559EC63B5BB3234925BD9DB5DEE631ACD36577
                    B86567D8A724E72F66B572BAB776DBD3B36DC17C9A7D429AE687B54AD649DFCA
                    F18FAE9CFDB4D7D4D1F09FFC132B48F056936B6363F022D9ADACCEA4234BBF8E
                    DE24BC3E5EA3837F031991CBC170E049242C4C6F2812153200F527847FE09AF6
                    DE02F15C9ACE8FF07B53B0BCB95B18EED23FDA27C59F65D423B28D63B58AE6DC
                    FEE6E238E345511CA8E857208218E7CEFE1AF8FBE2AFECD3F16BF69085BC75F0
                    9AD3C677DE37D245C6A7ACE9BADEA16779BFC3E977E4697A3ADEC97724AF2702
                    D63BCDB12196440C1044790FDAFBF6DFF1D7FC1413FE0983F10DF421E18F0845
                    A3FC19D3FC7BE2C85A4D452FAE27BE82E668ADEC25B7B981A08E3366CECF3ACE
                    92EE10BC782EC0A5194ED28BFE4BF9732725F25EF7677E8AE691A1CD38C2A68A
                    57B7CE496DDDBB5EDA79E973DE358FF827069FADF8135FF0AC9F02ED2DFC2DE2
                    49CDCDD68B65F1CBC4567A6DBB34A66716B6F0C6B159ABC84B3A5B2C4B27F106
                    1C54F75FF04F3B7D42F7C537777F0460BEBEF18DED9EA5A95E5DFC73F115C5D0
                    BCB45D96D756F33C664B4B88D3E4596DDA3709F2EEDBC557F859FB797C71F8AB
                    FB5249E1AF00FC233AFF00C29F03F896DFC19E26D4E47D3A09ADC8B48259EFD6
                    E25D5A39D7CAF3E322D86992F9A8372DC02C107DCF49C2D1535B3B5BBDAC9C5D
                    BB35CAD7DDBA697342A29DEFBF5EBAEA9ABF74D34FEFD9A6FE19B6FF00826C68
                    5A5DA91A6FECE3E11D0AFE4D5AEB5C9757D1FE2CEB1A66B373777436DCB4BA85
                    BDBA5DCA928C078DE568D8000A90057A978EFE13F8A7E247C056F861AA7C0BF0
                    0FFC209F6382C22D2ACFC7B716296914051A0103C1629240D13468C8F132B232
                    29520806BE94A2A1BBC795EDA7E1B7DDD0DAEF9B9BAF7F5777F8EBEA7C5B6DFB
                    0641A75D6BF7963F00BC37A56B3E299A3B9D5F5BD37E2E6B163AD6A32A42200F
                    26A10DBADD331881524CBF30793764C8FBAEDD7EC56B71E37D1F5F8FF67BF04D
                    85DE8969656115A587C4DD46CB4CBB82CBFE3CD2EEC61B45B5BC16F8062FB4C5
                    218C80576902BEC5A2A94A49A69ED6FC1597DCB45D9684F2AB38DB477FC757F7
                    F53E65F8EFF06FC57FB4A5C68371E2FF00831E17BBBEF0BDCB5D6957D63F13B5
                    0D2AF6C99D76C8AB71696914BE548A02C911631C8A30EAC38AF26D23FE0969E1
                    2F0D785A4D1347FD997C11A069171A5AE8F7369A3FC55D5B4D8AFA04B837319B
                    8105BA79F3473334893CBBA68D9D8ABAEE39FBCE8A98FBBF0E8536DAE57B7F96
                    ABF13E5DF87DF023C4DF0C3E24B78B748F833E1E5D73CA9E18A4BBF8ABA9DF41
                    662E25335C35BDBCF6AF0DBBCD21DD2C91223CA42EF2DB463C83E1FF00EC39F1
                    3EF3F6B9F89DF13BC79F08FC05AD0F15F892C3C41A2D9DAFC57D596D2DDACECA
                    DAD61FB6588B14B3BA911ED84F1BCB1C861790ECC15DEDFA034538C9C65CCB7B
                    5BEF69E9DB557FF870E67CAE3D1EFE67C2BA9FFC134F48D5740B9D2A4F809A6C
                    5A7DD693A8680D05BFC6EF10DBAC7A6DF4D1CF75611F971AF976AF2448440988
                    D06E5455576074741FF827FC1E19D4ECAF2CBE0569715C69F7BA5EA70337C69D
                    7A4C5E69B12436974C1A121EE1618D22695817963454919D405AFB668A71938D
                    B95DAD6FC1DD7DCDB6BB3D7714FDE4D4B5BDEFE77493FBD249F749763E57D7BF
                    678D77C437FF00122F25F81FE14B5BEF8B96B159F8AEF2C3E276A16175A9C514
                    3E4205960B44780F94029681A32C00DC4915C6788BFE09F369E2DF0569BE1DD4
                    7E0368D75A4697E166F05470B7C66D7435C68E58B2DA5C38877DCAC6C4989A76
                    7784F31B21AFB6E8A98E9B797E09A5F72934BC9B5D58377777FD6A9FE718BF58
                    AEC8F963C0FF00B3E788FE1DFC47B6F16699F067413AD58A4E2D5EF7E2C6A97D
                    6F68F3B399E78ADE7B67863B8977B079D504AEA76B395E2B07E3F7EC59FF000D
                    41E2FD435CF1C7ECFDE0ED62FB59D35348D5523F8A1A9595AEB76B1B178A2BDB
                    782D6386EC46C498CCE8E6324EC2B935F62D143D6D7E9FAFFC3BFBC49257B75F
                    D3FE197DC7C87F09FF00645BBF811F10A7F127833E03F857C2F7172CB2BE99A6
                    FC53D4EDF41F356348D671A52DA8B01384455F384024C0FBD5ABE3CFD9F3C47F
                    11FE315B78F751F835A141E2986DE3B3B8B9D33E2CEABA5C5ABDBC6CCD1C17F6
                    F6D6D1C37F12177DB1DD24AAA1DC0003107EA7A2AB99DD3BEDB797A0B9559AB6
                    8F7F33E2E93F6118CDFF0089E78BE03E83683C5A2F4DE4169F1875AB6B5B47BD
                    045E4B6304702C5A7CB7019BCD96CD617937BEE63B8E7774FF00D96B54D3BC39
                    F0FB491F03BC337563F0BACE6D3BC38979F15354BB6B5B49A211496D2BCB6ACD
                    750B22A0F2EE4C89FBB8C8194523EB4A2A6DA72F4D17C95EDF75DDBB5DF7657D
                    AE7EBAEBD75B5FEFB2BF7B2EC7C5FE0EFD8665F87FE094F0EE8DF05AD74FD22D
                    1DDF4D863F8DFE20DDA0068DA329A6C8622FA74615C811DA3448B85214155229
                    EA7FF04F5B1D5F53B8BAB8F803A0BFDAFC332783E7B71F18B5B5B49F4C924695
                    E27B710089A4695DA53394F38CA7CCDFBFE6AFB728A6DB7ABFEB46BF26D7A36B
                    A8ACBFAF54FF00349FAA4F747C9FF0C3F66BF11FC1AF105EEABE1CF84B6F61A8
                    6AB7F69AA6A33B7C69D72E1B54B9B6B5FB24525CF9B0B7DA0F92155C4BB84A51
                    1A40EE8AC3D63FE1627C64FF00A25DE0DFFC2EA4FF00E57D7AC5143937BFF5D3
                    F2482C793FFC2C4F8C9FF44BBC1BFF0085D49FFCAFA3FE1627C64FFA25DE0DFF
                    00C2EA4FFE57D7AC51486793FF00C2C4F8C9FF0044BBC1BFF85D49FF00CAFA3F
                    E1627C64FF00A25DE0DFFC2EA4FF00E57D7AC51401E05F19BE207C6097E0FF00
                    8AD67F867E0F8616D1EF04922F8DE4728BE43E485FECF19C0ED919A5F835F107
                    E2FC5F083C28B6FF000CFC21340BA3DA08E47F1B488CEBE426095FB01C123B64
                    E3D4D7A9FC72FF009229E30FFB025EFF00E887A3E06FFC914F07FF00D812CBFF
                    00442500721FF0B13E327FD12EF06FFE17527FF2BE8FF8589F193FE8977837FF
                    000BA93FF95F5EB14500793FFC2C4F8C9FF44BBC1BFF0085D49FFCAFAE6BE33F
                    C41F8C127C1EF15ACFF0CBC21142DA35E091D7C6F23B22F90F9217EC03240ED9
                    19F5AF7DAE5BE397FC914F187FD812F7FF00443D007967C1AF883F17E2F841E1
                    45B7F867E109A05D1ED04723F8DA44675F21304AFD80E091DB271EA6BA4FF858
                    9F193FE8977837FF000BA93FF95F5D7FC0DFF9229E0FFF00B02597FE884AEA68
                    03C9FF00E1627C64FF00A25DE0DFFC2EA4FF00E57D1FF0B13E327FD12EF06FFE
                    17527FF2BEBD628A00F967F688F1EFC599BC5FF098DD7C37F09DBC91F8D11AD9
                    53C672482797FB33511B18FD846C1B4BB6EC372A0639C8F4EFF8589F193FE897
                    7837FF000BA93FF95F47ED33FF0023B7C1AFFB1ED3FF004D3A9D7AC500793FFC
                    2C4F8C9FF44BBC1BFF0085D49FFCAFA3FE1627C64FFA25DE0DFF00C2EA4FFE57
                    D7AC51401E4FFF000B13E327FD12EF06FF00E17527FF002BEB8FFF00825D5C5D
                    5DFECB7AB4B7F6D1D9DFCBF133E213DD5BC7379D1DBCC7C6BAD99235930BBD55
                    F700FB577000ED5CE07D115E01FF0004D4FF009375F11FFD955F88DFFA9BEBB4
                    FA01F3CF857FE0A55AF7C1EF897F15B40B3F8676BAD4161E3CD5A25BB7F137D9
                    4CBB2554CF97F657C67667EF1EBED9AF23B2F1EFC3EB5F06FC48F0FCFF00B3E6
                    A5AB68FF0016EED750F14DB6AFF18759D505FDD26DD97319B9591ADA75D91E25
                    B731B810C20301126DC1F107FC97CF8C5FF650B5AFFD2934FA9B2D7CD5BE574E
                    DE9749DBBA5D8777F8DFE7DFD75674DA0FC5CF06F86BC6F67E23B4F811AE2EB5
                    6D650E9F737327C66D6E5FEDB8610C215D495C15D48C61C846BD13320C004051
                    88EFFE26FC3FD57C39A8E9775FB3A3DD41A87D8FCB9E6F8A9A9C979A50B339B5
                    5D3EE4C666D3D61625916D1E10ACCCC06E66279DA2AAEFFAF5BFE7AFA9292B5B
                    A7F48EA67F8C7E0C9EFF00E1DDD9F803A825D7C2BD526D6FC3D345F177578E48
                    EFE6C89AEEE99501BE9E405D5E4BBF399D659558912386DFBFFDA9FC2BABC1F1
                    2E2BDFD9AFC3B7D0FC602BFF000984575E3379E3D682C22155657B52235083EE
                    C6146E667C6F6663E6F450DB69A7B3BFE36BFDF657EF65D8A4ECF996FA7E17B7
                    DD776F57DCF5EF82BFB74A7C00F06C9A0F87BE0C5FCD612C6B03BEB9F14B50D7
                    EE9A250C1213737F0CD3794A1982C7BF62EE3B40C9AF33D27C4BF0CB44F0DDCE
                    8F6FFB384C34CBBF0F4DE137B693E2D6AF2A26952CC26FB1A0653E5C51C8A0C2
                    131E4748BCB1C566D14DC9B97337AF7F935F936BD1B5D494928F22DB7B79DEFF
                    009A4FD51DCF823F689F0C7C3EF15F8EF5AD3FE035ECD7BF1334F8F4BF132EA1
                    F16354D4ADB54B748BC945305C4724284464AEF8D15B0CDCFCC735F5CF8E9E10
                    F107867E1868F2FC01BBB6D37E0E5DA5F784A0B1F8B1AA588D3EE150A096430C
                    686E9CA1756372652C2594367CD93771D4524DADBCBF0BDBEEBBB76BBB6E0925
                    B79FE2927F7A493EE924C83C55E1EF81FE3B651AE7EC99A26B56F6ED7AF61697
                    FF0011EFEE6D3456BB2A6736103C462B125915D4DAAC5B1F2E9B589277EFFC6F
                    F0F353D3F51867FD9EB5192E354D4ACB5A9B513F187591AA26A1696C2D61BD8A
                    F40FB4C373E4288DE68A459255C8919F26B1E8A22F955969FF000355F73572B9
                    9DEF7EFF008EFF007F52E69BA97C26F0E5B69E343FD986D7C2B7BA5EAF7BAEC1
                    AAF873E286A5A26AFF006BBCC7DA9DEFED238AEA45942A078DE568D84680AE11
                    40EEBC35FB54787FC21F12F4DF16E9FF0000238B57D18BBD846FF126F65D3ECA
                    678CC2D731D93C26D52E4C45A2F3C4425F2D8A6FDA4AD79CD14D4A49DD325ABA
                    B3FEB7FF0037F7B3ACF8FDF18BC07FB5078BF50D73C71FB3759EB17DACE9A9A4
                    6AA91FC48BEB2B5D6ED6362F1457B6F0431C37623624C6674731927615C9A97C
                    07F1BBC0DF0BFE2843E2EF0EFECDBA768DA8DB48B710595A7C44BC8F45B7B858
                    440B751E9820FB0A5D08408FED0B009B6E46FC135C7515317CBAC74FEAFF0098
                    4A2A5ACB5FF86B7E5A7A1E8BFB407ED49E1CFDA83C41A5EADE34FD9FA1BFD534
                    7B5B8B082EECBE245EE9734B6938027B499ED6088CF6D26016826DF131504A12
                    01AF33F0FE8BF073C20F7BFD8BFB335C68515EDB69F6BE4697F1835AB1B7B45B
                    0944D66F6D144152DA5865DCEB2C0A92069A63BB334BBE7A29C1B86B0D3FA6FF
                    0036DFCD849297C5AFF4BFC97DC8F52F87FF00B62E8DF0C3E17F89FC15A3FECF
                    F669E15F18DD5FDE6B1A6DD7C40B9BD86EE4BE2C6EFF00D7DBB94594BB96442A
                    B976200249347E02FED4DA17ECCFE27BBD6BC1FF0002AEECF55BFD22CF42BABA
                    BEF8A9A96AB25CD9D9B4A6D6390DDC52EF68BCE9155CE5C236CDDB4051E775C4
                    FED0BE3DFF00857BF0B2FEE636D456EEF4A69F6A6C34F9B50BA49266D9E64704
                    28F2486352D2155527119E38A973704DC77B25EB6D12F4D6CBB5CAE5E7769776
                    FEF69B7F36937DDA4FA1E85E30D4BE1378FBC5573AC6ADFB305A5DDCDC6B3278
                    8E387FE167EA51D969FAA488E925FDA5AAC620B4B97F319DA6B78E3732059093
                    222B8A5A45B7C25D0BC170F876D7F66FD463D1E0D163F0F0B73F19B5C7F32C22
                    B86B9821766CB482099DDA06725A0DEC22280915F0BFFC13E348F0F7C65FD9F3
                    C57F0B7E20E8B1789AFBE0EEB5769A7DB789B4B759CD9CA9235A5CC96B728ACA
                    C51E403CC405463806BCABF666FD9ABE1FF8AFFE08D9E21F186A1E09F0C5F78A
                    EC346D7E4B7D5A4D3626BC46479823799B771640ABB4924AE3E5C554A4E9C272
                    8BD2318CBB5D34EDE8D2D3CB62D2955928C9EB2938BEBADEF7F3BDAFF89FB3FF
                    0017FF006F05F8EBE1FB3D37C45F062F5E3D39596D6E34EF8A17FA55F401D42B
                    EDBAB48629C1651B58EFCB2960721981E23FE170781AD3C6D6DE20D37F6773E1
                    CBFB7D32DB4678FC3FF14B52D16CAF6D2DA3315B47736B691C56F73E4A1C46D3
                    C6ED1E06D20818F873F659F829E0BD6BF651FD9A26BDF0A786AE6E2DCDBDEC0F
                    2E9D0B3A4EFA7DC4CF282573BDA48D1D8F52D1AB1C9504715F193F684BAF02FF
                    00C146BC03E38175E238FC23A85DDCF806FC5CE897B6BA5C11BB2F93325DC912
                    DBCACF74B2125246F9225E060D6B3A5CB5FD85F56DAF5B2B2FBDBE5F24FD5182
                    9FEE7DA2DB953B7CF55F251E6F3692DEC7DEBE0FD43E1BF8017C38348F813E30
                    B31E121A90D1F1F1EFC4AFF60FED10C2F4A6E73CCBB989272431DC30DCD6A6BB
                    FB4CF84BE197EC83A77C2FB1FD9BFC45AAF81BC29716F79A2E91A77C54D4E7D5
                    AC6786713406D6F9D45D4263930508B8458D460155E2BE1BF005859FED59FF00
                    0515F8BFE1EF897A75AEBFA2FC39B6D3E3F0DE81A9C426D3D1268CB4B766DDF3
                    1CB213B4091812A1F0315E85FB54785F49F02FECFF00E22F06E8975E22B73F11
                    2E2E2D1CE9B6179AE5D69E8D6C165F2E1B749665882C6918F94AC6665E8BB547
                    3CA728D2551754A497A3BC7E6AEDFF0075F99B460BDA3A5D9EBF3577EBA69D2F
                    E87ABFFC2E88BC717DE1FD7FC15F0135EF0E786E09757BE7D2A4F8C9E26F06EB
                    11DFEA3710CD79702EEDA2FB4AC4EF064DA95485DC99793B0D7A5FC23F8CDA6F
                    807C4579E24D73E10EB1E32F16EB1E1F93C2BAA5EEB7F16B56D4ED6FB49323B4
                    76525ADD2CB0C8B1AB941248AD2B92EEEECF2C8CDF981E25FDAF7C5DAB7FC11D
                    ECA7D3F50D5345F15F87B54B6F0578A6F079915F6931C72889DDB700E8ED1F94
                    09E18191B90C2BD27F695F02693FB22FC6BFD9F6F3E1369365A0EA5E29F11C5A
                    1EAF069A8231AFD83AA9924BA55FF5EE809712BE594B13BB9AE8749732A2BE1E
                    6E45E7CCB4FF00B75A9DBFC2DAB592462AACADCEFE2B393FFB75DDEBDF9A37FF
                    0012527ABB9F7F7867E2AF833C1DE0587C39A6FC0CF11DB69B64E5B4E6FF0085
                    D9AEBDDE8ABE4BC222B1B96CCF65108E475115B3C71A8638515A16BF1DFC1DA7
                    6A3A4DC5A7ECF22C1344F2DACED2D3E276A16F6092C70A4315C35AA44207B889
                    234F2E7746963605D1D598B1FCE5FF0082A7FC3AD3BC43FB557ECEB343E13F0A
                    F88B56D5B5ABAB29ADF578D2283548912364B7B897C9958C40BB900C6E016385
                    E4D741FB5AFEC45E12F897FB2859F84F4EF077847C2FE2DBA905F2DAE916D122
                    E95A8C966EECB0EDFF00551C925B2290980E13272726B99D5BD37567D256EFB5
                    B5FB9FE9D6E6CA9AE7549758DFE5AE9F7C7EEF43EF1F0BFC61F037847E04E85F
                    0D2DFF00676379E0AF0CEB51F8834BD3F53F8A3A96A4D67789299432CD711C93
                    18CBB3EE88B98984922B21576065F88FF1BBC19F17BE28F8AFC63E26FD9EE4D6
                    75BF1B6890F87759173F14F526B1BAB185FCC8635B3F2FECD1347266449238D6
                    44919DD5833B31FC6AF8E1F1C1BF6C7F821FB34EA3AA86B9B5D23C5DA6F86F5D
                    B1B9895A2BDBFE56E3CD460770F2A38C81D3174E08C8E3EE3FDB83E0D6BBE33F
                    02F842C7C13A3784FC411785AFBEDF2F81F5675B7D3FC47671426216E13FD5FE
                    ECBC6C81D7CB56084F415BD5838A6E4EFEF35DF4E58A72F9C5AEF78AB3EC654A
                    4DB4968DC6EFA6AA4DA8F4DA49BD6D696BBEA7D0FA48F843A27C4087C5F6FF00
                    B31463C6B0DC43707C4EFF0015B55935E9CC56FF006611CBA8321BA9A1687E49
                    2192468E51FEB15E97577F849AE78434DD02E3F6640747D33407F0AADAC7F15F
                    56892F34A667616375B101BB823691CC4971E60849CC7B0815F28FC3DF8F3A26
                    B3FB287880E93A378C3C19AB5F6BB3786F50D18594FABEA3A0DEB2A2DC2DBC56
                    E923CB1C3006923DA840551C2A8C0F9F7C25E2883E22FF00C11FBE2A781FC556
                    62FBC43F0752EB4E8D355D3DA1BBB6443BACEE4433289216F298AA965560148F
                    5ACAA4DC61397F2A52F54D6BF7292B3FB4A4EDA5CD29BBB8ABDB99F2FDD7B76F
                    E57A7468FD57F057C63F027C33F88B0789FC2FFB385B785AF61B6B3B56B2D13E
                    25DFE9BA3DDA5A46B1DAB4FA6C10A595C490A2A2A492C2EE8234C30DAB8F5AF0
                    6FFC15375EF02F85ECB48B2F8472CF69611F95149A8FC43B8D46E987AC971716
                    D24D2B7FB4EEC7DEBE12FD8C0F87BE18FEC7FF000A6D21874FD1A2D5740B3923
                    8A08444B3DC359FDA26721463730591D98F53924E4D7CF7F047E3E5EF87FFE0A
                    6B2DDDFDC78963F0DFC6AD18C5689ABE877BA5C16D7966CE6DE181AE628D6506
                    D8825A32E0BCC79E54574D5849621E1DBBD9BFBD5DFE3676F3F53084EF47DB5B
                    A27F2D17E0BF05D91FB09FF0F79F147FD11EB1FF00C2C47FF21D1FF0F79F147F
                    D11EB1FF00C2C47FF21D7E4DFF00C1427E157863C65FB6D7ECDC758F0E685AAF
                    F6C6AB7F657FF6CB08A7FB7411C0AE914BB94EF45666215B2016247535F2EFED
                    576434FF0083FF00B5178223B48F50F06FC39F1168D2F855AE93ED03C3F25CCB
                    1ACF6D6B23E4C5185F976211B5723A3573537CCBCEEFF09457FEDC9FE074B859
                    A5DD2FC79BF58FDCEE7F40DFF0F79F147FD11EB1FF00C2C47FF21D1FF0F79F14
                    7FD11EB1FF00C2C47FF21D7E7EFEC8BF07345F86BE1F835193C05E02F00F8975
                    5B610187C37B0477F6A8A8EB2332C70995B2C492D1295271C8F99BC03FE0A3FF
                    001D351F87DF1C7C0FE35D2E5F13FF00677C26D7ED93548A0D0AF5F4D9ADEED0
                    A5E48F782136DB923785150CA08323F04E2B49452A91A77DDA5E9776FC2EAFDB
                    E4614E4E70734B64DAF3B2DBE7D3BF4DEC7EC0FF00C3DE7C51FF00447AC7FF00
                    0B11FF00C8747FC3DE7C51FF00447AC7FF000B11FF00C875F919F10BC07E18D6
                    FF00E0B37F0DB558745D12E5356F054FAB1B91671B8BAB8469045725B1F348A8
                    102BFDE002E0E00AE03FE0A47FB3BFC3FF000CFC16B2D574BF05784EC351BEF8
                    A96F693DE5AE9504534D0BB3892267550C5091CAE719ED9ACE0DBE44F4E676F4
                    FDE2A7F9BB9536973B5AA8ABFAFEEDD4FCB43F6CBFE1EF3E28FF00A23D63FF00
                    8588FF00E43A3FE1EF3E28FF00A23D63FF008588FF00E43AF8D3C67E3BD0BE08
                    F81AE6DED6DA381743D21EE6CB4AB0B4627CA8B6C71C5145129EAED1C688A324
                    9C283838F97FFE09A7F146FBC37FB417C5AF867ADDEEBB7325D5E8F18E8D36B5
                    A55CE95757915D7FC7D15B7B98E39022CFC0F971D719EB5505CF3718F66D79D9
                    EDF75DBF47F224F960A6FBA5E97FF82D2F9DCFD6BFF87BCF8A3FE88F58FF00E1
                    623FF90E8FF87BCF8A3FE88F58FF00E1623FF90EBE66A290CFA67FE1EF3E28FF
                    00A23D63FF008588FF00E43A3FE1EF3E28FF00A23D63FF008588FF00E43AF99A
                    8A00FA67FE1EF3E28FFA23D63FF8588FFE43A3FE1EF3E28FFA23D63FF8588FFE
                    43AF99A8A00FA67FE1EF3E28FF00A23D63FF008588FF00E43A3FE1EF3E28FF00
                    A23D63FF008588FF00E43AF99A8A00FA67FE1EF3E28FFA23D63FF8588FFE43A3
                    FE1EF3E28FFA23D63FF8588FFE43AF99A8A00FA67FE1EF3E28FF00A23D63FF00
                    8588FF00E43A3FE1EF3E28FF00A23D63FF008588FF00E43AF99A8A00FA67FE1E
                    F3E28FFA23D63FF8588FFE43A3FE1EF3E28FFA23D63FF8588FFE43AF99A8A00F
                    A67FE1EF3E28FF00A23D63FF008588FF00E43A3FE1EF3E28FF00A23D63FF0085
                    88FF00E43AF99A8A00FA67FE1EF3E28FFA23D63FF8588FFE43A3FE1EF3E28FFA
                    23D63FF8588FFE43AF99A8A00F79F8B3FF00056AF136ABF0B3C4D6ADF08ACA25
                    B9D2AEA22FFF0009786D81A1719C7D8C6719E99A3E13FF00C15ABC4DA57C2CF0
                    D5AAFC22B2996DB4AB58839F1785DE161519C7D8CE338E99AF9B7E23FF00C93C
                    D7BFEC1D71FF00A29A8F871FF24F341FFB075BFF00E8A5A00FACBFE1EF3E28FF
                    00A23D63FF008588FF00E43A3FE1EF3E28FF00A23D63FF008588FF00E43AF99A
                    8A00FA67FE1EF3E28FFA23D63FF8588FFE43AE7FE2CFFC15ABC4DAAFC2CF135A
                    B7C22B2896E74ABA88BFFC25E1B60685C671F6319C67A66BC1AB1BE23FFC93CD
                    7BFEC1D71FFA29A803E92F84FF00F056AF13695F0B3C356ABF08ACA65B6D2AD6
                    20E7C5E17785854671F6338CE3A66BA0FF0087BCF8A3FE88F58FFE1623FF0090
                    EBE4DF871FF24F341FFB075BFF00E8A5AD9A00FA67FE1EF3E28FFA23D63FF858
                    8FFE43A3FE1EF3E28FFA23D63FF8588FFE43AF99A8A00F55F8EDFF000558F126
                    BBE2AF8632C9F09ECEDCE99E2D5BB451E2D0FE7B7F675FC7B33F641B78909CF3
                    F7718E723D13FE1EF3E28FFA23D63FF8588FFE43AF8BFE307FC8C5E00FFB1957
                    FF00486F2BB7A00FA67FE1EF3E28FF00A23D63FF008588FF00E43A3FE1EF3E28
                    FF00A23D63FF008588FF00E43AF99A8A00FA67FE1EF3E28FFA23D63FF8588FFE
                    43AF49FF008244F8B9FE20FEC5A75F96D3FB3E6D73E20F8F75092D7CDF345ABC
                    BE32D6A468C3E06F0A58A86C0DD8CE06703E1DAFB3BFE08A1FF28F9D2BFEC75F
                    1C7FEA5FACD3E807CEF6DFB1C7C4EF1DFC61F8B5AA689A069F7DA75D78FB5796
                    299B558A12C1A60E32ADC838615A9FF0C11F193FE854D33FF077057DA1FB2F7F
                    CD44FF00B1DF52FF00DA55F13FC59FD813E037EDADFB6D5FF8374BF865F0F2EB
                    C3FF000DB5C7F16FC57F1BCFE1FB23AB6AFABCD21BCB7D0FEDFE509768F304F7
                    387F96158213C4AE010F7AA283DBABEC96EFD12F357768AD6486D5A0E5D56DE6
                    FA2F56EDD36BB7649963FE1823E327FD0A9A67FE0EE0A3FE1823E327FD0A9A67
                    FE0EE0ADFF0000FED9DF187F6D5F17F8A749D27E12DDA7ECEB7B75E23F065EEB
                    F67A859E937DA50B03736A2F61BC8758FB6B799341B3C84D3ADDE212ABACF205
                    F9B81F85DFB7078EFF00648FF826D7ECD9A9E81ABFC36BAD22CFE1E785AE752D
                    0350D3F52D57C49ACA5C4B6D6B34886DA448F4F86347DC2EA749D1E4CAB0882E
                    E6D29D2728F36DAC125D7DFE76AEB75A42FD77F262A9EE45B97D9E6BF6F76C9D
                    9F5D5DBA6D7D9DCDFF00F8608F8C9FF42A699FF83B828FF8608F8C9FF42A699F
                    F83B82BE9AFDB27F684F89BF0BFE3A7C17F057806CFC090DB7C54D4F52D22EF5
                    9F102DDDDC9A4CD0699737B0B47670B4226426DDB766E233C0518DDE627C9FE1
                    3FF82BF7ED13F1CBC5BA8F81BE197C17D37C5FF10FE1AA4BFF00099456DF638F
                    4AD6268756BFD3592CE5BDD5ECE4B38653A7C922CE13503199023C44AEE79853
                    94ED6EBF9756FB25D7D55AE392B45CFA2B7E3A457ABB3B7A3BD8D6FF008608F8
                    C9FF0042A699FF0083B828FF008608F8C9FF0042A699FF0083B82B4FE0C78D3C
                    47F013C4BFB511F08F88BC23E13D4B51F8CB6AAD75E3D9B50F100B5373E1DD2E
                    E6482DADA19D67BD9CCAE523B68EE235442C50ED8D626EF3C7BF196F3F6E0FF8
                    216F8C3C71E22B79F43D5BC43F0EF56BFBB8F47B9BDD2CC1776B14FF00344772
                    5C44865801F2A439DA4C72060581CB10FD95175B7B46127FF6F414ED7D76BDAF
                    D7736A14554C4C30F7B73B697CA5CB7B7E9F7F43CC3FE1823E327FD0A9A67FE0
                    EE0A3FE1823E327FD0A9A67FE0EE0A77887F6D6F1FFECF9E07F8C5AAF85FE1D7
                    C29B9F107C32F86FE06BFD3753BC9EE23BCD66C2ED6E95D6FA68E20E7C87498C
                    56EA768F31DBCD0642ABD67C54FDBE3E3C7C22F11FC42B4BBB5F84BA8A7C38F1
                    A785B4B9847A6EA101D6B4ED7A6B68638518DD3FD9AE2D9E762D7056649820C5
                    BC39E3A6B50E4ADECAFD6CBE6D25FF00A52FC56E8E2A1595551E5DDA4EDEB1BF
                    A797DCF6DB91FF008608F8C9FF0042A699FF0083B828FF008608F8C9FF0042A6
                    99FF0083B82A8F8AFF00E0B23F173F67EFD9C3C3BF19BE22F84FE1F6A5E12D67
                    55F15786EEBC39E184BD6D4AC350D24EA8F0CE97B349B26B79134C78DC1B58D9
                    0B89776D2625ED6D3F6D4FDA8F49F819E2EF18F8F3C33E06F847A0E89F63D534
                    CF116B7E1C8B596D6AD6E22947F66DB693A5F88AE249AF3ED06D12298DDC4271
                    7040B746014E72A728A6DADBF3BECBBBB6B657D3CF43A1C758AFE6BDBCECECDF
                    A737BB7EFAEC9B398FF8608F8C9FF42A699FF83B828FF8608F8C9FF42A699FF8
                    3B82B73F687FDBDBF687FD937F64BF0F78D7C7B79F02EC3C7169A14BE25D7FC2
                    76BA0EAF75A96A10ADCC63ECB6F6F15E486CC476F20F3AFA592E218E63828230
                    64AF6EFF0082827ED8BE35FD9F61F86DE1AF869E137F1478F3E2A6A57161A5A1
                    B6B5BB8ECD6DECE4BB95CC173A8E9B14EDB23DA10DEC2705986FD9B195483847
                    9B7D5AD35D568FFAF2BED6BE709C64ED7B697D7B5AFF00935F7DB7BA5F3AFF00
                    C3047C64FF00A1534CFF00C1DC147FC3047C64FF00A1534CFF00C1DC15F4578C
                    BF6C5F885F067F608D17E207C42F87F6BE12F89DA95EE9BA05C787E6D421B8B2
                    B1D42FB528B4F867925B6966516FBA649D952576542537961BABC63C6FFB7EFE
                    D07E01FDA16C7E0BDC597C21BDF14B78B34BD0EEFC669A56A50E982D754B1BDB
                    9B4963D24DD3486547B0B84950EA18C08994FEF4889B83E6E55AFBDCAADB3778
                    AB27B7DA8BF47A75B52D61CEF4566DDFA249B6FF0007B5F54739FF000C11F193
                    FE854D33FF00077051FF000C11F193FE854D33FF000770574DFF000DF3F1C35C
                    FDB7F44F857A5EB9F0552EACBC60740F1378765F0DDFCBE21B7D221D37ED8DE2
                    14DBAA2AC16572E1618F7C522C2D3460CB70E0C6795F88DFF055EF8D5F0D74EF
                    8A7158C5F043E216A5E16F095B78BF4CB9D1EDF58B1D1ACE36D4DECAE2D4DE48
                    655D51A25D8C25B716CACC1D5922F972A31E6E4E5FB7AAF356E6BF92B5DEB6B5
                    9A767A13525C9194A7A72DAFE57972FF00E95A69BA6A4AF17724FF008608F8C9
                    FF0042A699FF0083B82B97F1B7FC129FE247C42F15787F5AD4FC24E750F0BCED
                    73A735AF8CE5B38E3918618BC70CA89282B95224561B5997186607D77C51FB64
                    7C457F8CA9E03F19F853E1378B47877E30681E1D7D4858DD409676D7F611EA16
                    B736F6B2BCF9BD81CB47E779C8BF2ACAA809F284BA07ED5DFB45CDF15FE26DBC
                    DE2CFD9DAE7C0FF0C7499135AD7EF7C37AAE87A6699AE3ED68F4F17CFA95C0B9
                    4B68983DC482087E668A20119DCC3307CCB9A3D2FF0084212F97C6976BB4AF76
                    9049D9F2BEAA2FD54A528AD3AFC2DDB7B5DDAC99F374DFF0432F10C9F12BC43E
                    305F02DF5BF893C5503DB6AB7D6FF112FA07BA8986DD984B90AAAA3014280130
                    36EDC0AD7F831FF0465F15FECFDF0EEF3C25E15F8776567E1ABF3219B4DBAF16
                    3EA16E7CC0448AAB71249B55B2772AE0124920935EDBF057FE0A45F13FE34B27
                    C3EB1B8F87B1FC48BBF883AB7836D3C5175E16D52C74296DAC74B8753FB58D26
                    7BB5BA32491CF1C6B17DB02B00D32C8D180ADC27EDBBE30D5BE1FF00ED23F0A3
                    C55F10B4DF827AC78BF4ED5FC33E1ED634EF0DAF882E35D65D4AFBECD2BBDDC1
                    3C315969AB23A4B1DB5FC33C374EACA4890465AE349F3429749F225E719ABC74
                    ED76B476B5EEF660EA5F9E6B594799FCE3EEBD7BE8ECF5D179ABF0DF0F7FE08B
                    1E2BF857A55C58E83E036B1B29A196DE180F8E2E268F4E490307168B24CC2D32
                    18F36FE591C63A0C6778BBFE085BAEF8F3E10E95E03D63E1FCFA87853459C5C5
                    A594DE3FBC251D492BBA5FB4798EA99F955D8AA71B40C0AFAA3E0AFF00C142FC
                    7FE37F197C1CF126ADA7F83A7F863F1FB5CD4340D034FD3ACAEA3D77C352DBDB
                    DE5C4525E5C3CED0DD0912C65DEA9040606655CCC016A3F69DFDBC7E38E99FB5
                    F6B5F0DBE08FC241F1013E1FD9691A9788D667D3A1FB7C77EF2911477175AB59
                    B5A6C8A076132DADF2BBE50A47B72C9C64DC54BED3FBADDFD37F2BE854BDD4FC
                    95FD6FA69EAD38FCBB1F207C76FF0082247C53F1BD9787AE7C35E07D2F4FF13E
                    8D25A588D7DBC797563A9C7A6C6E0CB0B5DDBB7DA6E77A065D92CA325F7EF0CA
                    33DB68FF00F047CF1BF87BC75A6F88EC3C0EB65AA693692595BF91E33963B631
                    C8C5E4F32DC4BE4CAEEE77B3C88CECC158925548F62F067FC1417E3E78ABC4FE
                    128AF745F84BA2DBF8ABE296BFF0B1ED238AFF0050934E9ACE1BC96DF50F3FCE
                    844C83EC4EAF079519937A91343822BD93E007ED63F107E2CFFC13E357F8883C
                    37A4EBBF123463AEE9EBA5E8F04B1D9EAD7BA6DFDD590686192569156536DBC4
                    465661BF66F27E6A69CBD8FB6E9F179FBD1BFE4D37FE2DEFCD67523CB515292D
                    76FF00C06528FE70925FE1DB6BFC35E06FF82156ADF0F27F15BE9FF0CAD264F1
                    C871AFC3A8F8CA6D4ADF562C4966962B99A4467C93F3EDDDC919C1AD4F87FF00
                    F045DF14FC33F14DBEB7A67C3DB69754B180DAD8DC6A5E3097536D2E13D62B51
                    732C82D908E0AC21060018C002BDB3E257FC149FC7B67FB2A4DE33F09F8EBE0B
                    DCEB7A1AEA6DA8DA6ABE0CF105BEAF7B7163630CEDA72F87FCF17D69705DE469
                    1E49651044D03797309372F3FE14F8BFA9F87BF6BDF8C9F113C33ADF853C27AB
                    78EBE187C3BD6DAE3C71A9DEDE68DA4CB7B75AA44E2281640CEC10208ED20781
                    679B037234ACF554E9BBB51FB297FE4C9F2AD6D64ED2F4EAACD326EA51E67BBB
                    BF5B4A3195FADD3945F5BECB54EDE57F18FF00E0899E29F8F9E33D1FC43E28F0
                    35CDE6AFE1FE74C9ED7C7D77A78D3DF39324496F3C6A921E32EA031014124018
                    AF6DFF00043BF14DAC96F22784B5F33DB6A1FDAAB3BFC50D4DE792E762C61E49
                    0DD979308A142B96500B8006F6CFD93FB3CFFC143750F107FC139BC6DF1A7C75
                    A6D9C97FF0E1FC490EA91E93A75D69D16A5FD9175730F9B15ADD179EDBCE5803
                    7952B33465C82C719AF983C7BFB50FC48FD8DFF6AEF1FF00C49F15DAE81E38F1
                    6F8B3E1E784E1D1F4BF0DBDDC3A6C171A9EBD2D8C1188EFAF8C23CB2F1EF9525
                    B48EE3CB0CCB0162C223092AAA9456EF4B756D394525D5CB97E5A5FA1A4E0FD9
                    CA73FB374EFD94A3095DED68F3F9DFA6976BCF3C4DFF0006FACBE2EB2B1B6BBF
                    85B125B69BA9CFAD5AC369E3BBBB38E0BE9A4323DCAAC370A04BB8F0D8CA8C2A
                    E14015E83E2BFF00824E7C42F1B69FA6C1A9782E39E4D1EDDEDAC6ED7C5CF15F
                    5A2BAAAB325D248275908400C81F7F5F9BE639FB4FF644F8BBF1AFC5FF0003BC
                    537FF197C05A5F80BC57A1DDDCA6992DD5C59D959EB368B0AC915D4D0DADFEA6
                    2C4072F1BA1BA9C8117980E1B62FCB7E1DFF0082A6FC5E7F1BDDE8926A9F07FC
                    4F168BE2FF0003595D6ADA3785F56B5D3B55D2FC457525A491D9493DEFEF24B7
                    923664BE4F3209978F26360C16E9D1739AA10D6FC96ED79B518FA6F677DB6767
                    A184EA28C1D6974E6BF7B4757F7F4EF7BAD2ECF38D0FFE08BFE2DF0CEADA05F6
                    9FE046B2BAF0DCB34F66F0F8DEE104B2CC419A5B8026C5D492606E7B81233772
                    6B93F13FFC1BE573E31F10F89F54D43E1CDECD7BE3439D7593E246A3126AA339
                    093225D04645E8A846D50000000057BAF8ABE2878A3E33FED99F056FBC6373A5
                    BEB7F0E7E3DF887C15652689F6DD3B4EBCD3FF00E116BCBA8DEE2D24BA9E37B8
                    04A0329E46D6D8103B29F65FD8BBF6DAF1C7C60FDAC3C49F0EFC5BA9FC35F12D
                    943E178FC51A76A7E0BD335186C6CC9BE96D65B2FB65CC8F16A3B36C67ED102C
                    2376E0D0A7CB52A9F3469BEB38F32F471E7FC63ABE9756DED7BA9350E695F44D
                    27EBED254FE7692D1EFADED6BB3E2C8FFE080BA9A6956B62DE03D626B2D3EC9F
                    4EB3827F89FA9CD1D8DBBA08DE3815EEC888141B0ECDBF2E57A122B5FE24FF00
                    C10F7C49F176DBC2D1F88BC0B79A8FFC21783A349FF0B0AF629ACDC6312F9897
                    0AEF28C0FDEB967FF6ABF5D28A9E677BF5DFE7DFF17F782492B2FEB6FF0025F7
                    23F243E2DFFC112FC53F1C7C67A37887C49E07BBBAD67C3ABB74BB9B5F881796
                    06C09EAF10B7B88D5643D0C806F60002480319FE25FF00820DEA1E2DF8547C13
                    7BF0BACBFE11892ECDFDCD9DBF8CA7B63A8DC12099AEA48A6592E5F2036E999C
                    EE01BA8CD7EBFD14BA5BFAEFF9EA55F54FB1F93FF0DBFE08E5E38F853E241ABE
                    93E11BF9B514B23A7452EABF102EF56FB3DB964631C6B773CAB182513EE01F74
                    567DFF00FC111BC4FAB7C2AD6BC1377E06BCBBF0CF886EDEF750B49FE20DE4AD
                    7123B6F7FDEB5C191519BE6645608C49254926BF5C28A25EF68FFAD6FF009EBE
                    BA8A3EEEDFD696FCB4F43F21AEBFE085FAE5D787FC31A71F878F10F05ABC7A25
                    EC3E3CBA8752D3637CEE892F527173E5E38F2CC8540000000004FF0016BFE087
                    FE20F8E3E19D1F46F12FC3A8EF34AD067375676B078D67B28D272DB8CEE20993
                    CC977127CC937382CC41CB367F5CA8A6DB7ABEF7F9F7F5F304ADB7A7CBB1F8FB
                    3FFC107B5FBBD41EF67F06EBF737F23DBB9BC9FE296A92DD7FA3BB3C2A256BB2
                    E151DD98286DBBB0719008D9D73FE08B1E2BF11FC72B1F89377E0477F19E9912
                    C16D7E9E39B88961897FE590856710F96792C8536B124B0249AFD69A284DAB5B
                    A6DF903D6E9F5D1FA763F377FE1823E327FD0A9A67FE0EE0A3FE1823E327FD0A
                    9A67FE0EE0AFD22A2901F9BBFF000C11F193FE854D33FF00077051FF000C11F1
                    93FE854D33FF00077057E9151401F9BBFF000C11F193FE854D33FF00077051FF
                    000C11F193FE854D33FF00077057E9151401F9BBFF000C11F193FE854D33FF00
                    077051FF000C11F193FE854D33FF00077057E9151401F9BBFF000C11F193FE85
                    4D33FF00077051FF000C11F193FE854D33FF00077057E9151401F9BBFF000C11
                    F193FE854D33FF00077051FF000C11F193FE854D33FF00077057E9151401F9BB
                    FF000C11F193FE854D33FF00077051FF000C11F193FE854D33FF00077057E915
                    1401F9BBFF000C11F193FE854D33FF00077051FF000C11F193FE854D33FF0007
                    7057E9151401F9BBFF000C11F193FE854D33FF00077051FF000C11F193FE854D
                    33FF00077057E9151401F97FF147F612F8C163F0CBC453CDE15D3562874BB977
                    235A8090A22624E3E94BF0BBF612F8C17DF0CFC3B343E16D35E29B4CB6746FED
                    A806E53129071F4AFD16F8E5FF002453C61FF604BDFF00D10F47C0DFF9229E0F
                    FF00B02597FE884A00F81BFE1823E327FD0A9A67FE0EE0A3FE1823E327FD0A9A
                    67FE0EE0AFD22A2803F377FE1823E327FD0A9A67FE0EE0AC1F8A3FB097C60B1F
                    865E229E6F0AE9AB143A5DCBB91AD404851131271F4AFD40AE5BE397FC914F18
                    7FD812F7FF00443D007E74FC2EFD84BE305F7C33F0ECD0F85B4D78A6D32D9D1B
                    FB6A01B94C4A41C7D2B77FE1823E327FD0A9A67FE0EE0AFBE7E06FFC914F07FF
                    00D812CBFF004425753401F9BBFF000C11F193FE854D33FF00077051FF000C11
                    F193FE854D33FF00077057E9151401F93DF1B3F61CF8B7A6F89FE1C25C78674D
                    8DEF3C52B0403FB6616DF27F67DEB6DE3A7CAADC9F4AEFFF00E1823E327FD0A9
                    A67FE0EE0AFB2BF699FF0091DBE0D7FD8F69FF00A69D4EBD62803F377FE1823E
                    327FD0A9A67FE0EE0A3FE1823E327FD0A9A67FE0EE0AFD22A2803F377FE1823E
                    327FD0A9A67FE0EE0AFA07FE08EBE1DBBF087EC336FA56A0B147A869BE3BF1D5
                    B5D471BEF58A54F186B2AE81B0376D6046470719191835F50D7807FC1353FE4D
                    D7C47FF6557E237FEA6FAED3E8065FC17F8AFE2DF0DF883E24D9E97F0BBC4DE2
                    3B34F1AEA5B6FAD754D2E08E4FF57D166B9471F8A8EB5E190FEC49E0DF0F6B77
                    BE19B0FD9DFF00698B7D37C572DEEB3AB5BD97C6ED4E1D0EE259A5DD706E621A
                    FADBBBCEF212D1EC62E37165DB935F5A7ECC0030F88A08041F1B6A591FF7EABE
                    07FD99BF60AF0EEB5FB46FC615D13F65CFD9B75CF0AE99F18DEDDBC4B7863B4F
                    12787EDC45A7CB2FD86D534D0A8222ED22326A11956776119236B987F7B10A1B
                    7BADDFFEDE847E4AF252BB76D3D09AF53D9D1E6DEF24ADE7CB395FCDDA2D2B26
                    FDEBED74FE85B9FD9934497C59E2CD66DFF676F8A5A5DC78DD663AD5BE95F125
                    34ED3EEE69A311C9762CEDF564B78EECA003ED51C6B38EA24079AE62CFF601F8
                    7FA7F822CBC390FECC3F1323D1AC34087C2F1DB8F899F7F4E82E1AE6DA091BFB
                    6374BF6795DDA0790B3C018AC4C8BC57BFFED75FB41788FE18F8B7E19F81FC18
                    DE1FB2F16FC56D66E749B0D575DB496F74ED256DEC67BD9657B68A6824B862B0
                    6C589668B25CB1701707E70F81BFF050FF008EFF001F3F6A0D07E18C7A37C2DF
                    0ABDA5BF8961D735892CF50D546A77BA16AB676770B696DE7DB7D9E19E2BA468
                    DDE79CA3BB0656117EF6A8F337ECE1A68DFCA09B6FD229B5DFDEB24EECA9AB47
                    99EDA2F9C9E8BD64E37EDEEDDDB425FDBB7E157C62FDAA3E2BFC0D7B0F813AE4
                    9E0DF879AF5CEABADCB2FC498343D68A4B613D8AFD8A7B29CCC254170D2F99F6
                    8898B4413700E5D7AEBFFD963C37777DE14BBB6FD9A7E216897BE0CB37D3B4DB
                    BD0FC7B068F7325ABCBE7496F752DAEA91BDE4324B991E3B96955DD999831662
                    7CABE067FC14C7E37FC6CF17EAF750789BF673B0F0E68FE11D435AF105A5EE9F
                    7F049F0E7568AED2DA3D1F59BE5D45D16550D24A48B68DA516EEAA912B2CB56B
                    E1D7FC14DFE387C44F1A784FC1BA7D9FC2BBBBCD4FE296AFF0DF50F15CFA1EAF
                    A65BB791A19D5AD2EE0D1E69BCE0AC990FBEF30FE5A98C9499658EA9C2734B95
                    5DD9CFA5F49726FB68DD93BEAA574DA64CD4633927F67DDF2D22EA7AECAEFB35
                    6693477365FB1678474DF10EAFAB41FB377C548B53D6FC4D178C2E2E97E279F3
                    A2D56385EDD6E206FED8CDB836EED03470EC8DE10B132B46AA83A96F82763FF0
                    CB5A9FC164FD9DBE22C1F0D75786E2DAEB4983C796D0BB43712B4B342B72BAA0
                    B88E266760634915363140021DB5E7BF093F6D3F88BFB41F8E7E1144FE10F843
                    69E30F12F817C617363E24BCB7BA9C695AC6977F0D84CB1C591243A7CCC61959
                    56E1A4755D84AEC12337E177ED8FFB41F8DBE177897C5D75E38FD9F2CFC1B75E
                    218743F0678A2FBC11ACD87FC241120945CDD5B698BAACF2DF2C93208AD923B8
                    88CA8B24E09408926553E06A7AC6DF2694BD9AFF00D25249A5A2D3446B04D38D
                    58E8FA3EAB472BDD7CDE8F7BF57AAEB3FF0004F0F01F8874FD7ED2F7F675F8DB
                    716DE29D1EC3C3FAB46FF19AF36DFD858EDFB240FF00F13CE563DA707A9DF264
                    9F31F758F1AFEC23E14F1A58789C5FFECF3F1B352B8F165C69D7FA97DA3E345E
                    21BFB9D380FB0BB4835A2C8622A8432F394562199571E4FF00197F6EDF883FB7
                    DFEC01E2ED27455F0B784F54B3F83B71E37F18B4D0EAB6B3DC979350B78ADF4E
                    315C5BCF687CCD3A6919E732EC0D1C4F0BEF72BE81E19FF8286FC40F077C1B9F
                    C5BA169BE0EB9F86DF08F5AF0F78175FD16E6D2EA4F106AAD736FA62C97B6D72
                    930860F2DB508F6DBBDBCA6658D8F9B16E006AA139D4941BF7935AFACDC79B5D
                    AD3492F36A4EC95CC656A71A734BE2BAFBA30924BBDE12BE8ED656577A2C2FF8
                    27CFEC57E2CF817F0D6F53E297ECDDA9EB5E2CB8D4F5D9156DFE2345E20D1C5A
                    6A9753CF26DB6BDBA8A18AE1A3B96B7965483CC992305E43BCA2F6FA8FEC11E0
                    BD57C0FA278766FD9E7E36FF0064F863528755D1513E325D472E8B3C28521169
                    32EB625B78A304EC86265890F2A80F35EE3FB4FF00C79F1CE95F1BFC1BF0ABE1
                    A49E12D2FC63E2FD1355F10A6ADE27D3AE751D36DADF4F7B38DA0F22DE7B791A
                    495EF2301BCD0235577DB21011BC53E2EFFC1443E2DF8174AF89BE27B5D1BE1D
                    C7A2FECF975A669DE3BD00C57B7B7FAECF7165677774FA65E8785618E14BB022
                    135A48D7063607C8E0D094AA3525A6DF7465CB7F453D3CA4EF649DCA74F913F3
                    BBFF00C0BA7CD7DE95BA12F883F621F07F8BB46B9B1D63F671F8B7ACC77FA4DD
                    6857F36A1F155EEEEB56B2B890CAF0DDDC49ACB4B7416425A333BBB427988C75
                    E83F1BFC06DFB45F80745F0E78BFF67BF883A8D9786EEA0BFD26EA0F1A5958EA
                    9A5DCC2A563B882FEDF528EEE29829653224A19833062431CF92782BFE0A13F1
                    EFC5FE25F0825DE8DF09746B4F167C51D7FE16B5AC70EA17F2E9D359C1792DBE
                    A1E7996112A0FB1BABDBF9519937A912C3822BD2FC0BFF000507D7348FF8261F
                    89FE3878C347D1EF7C43E0A5D76DEFACF49F32CEC350B8D3751B9B0122095A57
                    82295ADC390CD218D5CFCCFB7265464E8A9FD9D1A5EBEF2F9EA9FACBBDED524E
                    15795FC4DB57F9B83D7B3706BD23DB96FBFAD68B75E27F81F79F0E357FD9DBC6
                    3AD783B51B67B5BCB2D4FC4DA5DEC978AEDBD9E59E5BF69A494B9DE65673217F
                    9B76EE6BCEA2FD8FFC3710F0BB1FD9EBE304B75E10D757C4BA7DECBF15A496FA
                    4D412311473DD5CB6B266BC2910F2916E5E5548D9A35011994FA5FECDFFB43FC
                    459FF6A3F11FC25F8983C1BAB6A569E17B1F19697AE785F4EBAD3ED1ED6E2E26
                    B77B49A09E7B82258E4872B2ACB895589F2E22A54F84FC7EFF0082B4F8CFF671
                    F12F8F74CD7741D287892CF594D23C2BE0E9F40BCD3750D4A3B9D52D74FB2D42
                    0D42E6E534FD4EDDC5C09A5F2A4B6FB3978E19194932D0949CD386B296AADBB6
                    A56B2F352D3C9ABDFA842378BE8A3A3F2528DEFE8E0D5FC9A4F576313C27FB3D
                    FC71B5F8FDAF6BB7FF00073C69A6DA6ABE259BC40758D1BE355DC36F771BDC2B
                    9B597C31F6D5D2B2D6E0C2F2B4926F3FBD31966C2F4BAE7FC13A3E1DF883C271
                    6853FECCFF001721D260D2CE8696D69F16A6B451A779E2E16C898B5A526DA394
                    031C24F97101B515578AD0F83FFB5C7ED4B7DF19BC13E0EF895E0CF057C3E9BC
                    623C43676735EE8F1CB737AD676515CDA6A1E4596B97914116F91A296D5AE647
                    6F277ACE8240A9D0EA7FB7B7C48B2FF822FDC7ED0D65A1782B53F88561E0D97C
                    4971A7CAD7363A333C3B8CC51434B36D088CCB19932C40532203BC4C63CB0518
                    ED1E5B5BCD34BD2C934D696BEA93E61D38BAF51C56F2959DFBDD3FC5BBADF6D3
                    4B5F90D7FF00E09EBE08F13F8F2E7C4F7BFB3F7C7A975CBCD56DB5C9AE57E37D
                    FC7E65F5B4622B7B92ABAF05F3628C6C46C65578180714CD07FE09D7E01F0EF8
                    4AE7C3F07ECE7F1B27F0FDCBDC4E74ABDF8CD7979610CF3C8D2C97514136B8F1
                    C3726466905C46AB2ABB16570C49A6FC54FF008281FC75F859AD7C4FB7B9B7F8
                    4F3C7F0CE0F0B78964F2F4AD433A9697AC4D25BBD8293763CBB985E09585D90C
                    8E0A036AA72D563E347EDEBF15FC35FB44F883C07A5F897E12DC5B6B5A2F8A5F
                    449B47D0353D466F09DDE976C9341F6EBC6B84B4BA9A442C64B44481E16DA374
                    CAACC73AF2F61097374526D794629BFC2CBE5DACC8A2E35651E57BB825EB26F9
                    7EEBDFCAFF00CD7461FED49FB17EB3E2FF00D9EFC5DA1FC32FD9FBC65A2F8E7C
                    47ADDB788ED35FD4BE252C571A46AF1C31DAFF006AC5749A849729702DA3DAE2
                    1789AE06E592552ED20EC750FD8C3C2BAEDE4F79A87ECD9F12A6BFBF6D36E2FE
                    58BE23AC2BA85E69F324F6B7D2AAEAF892F125456FB53EEB86190F230241F24F
                    823FF050EFDA7F58F0D7813C1BE0AF01587C66F12F85BC15E19F10F8BB504B4B
                    3D346AF1EA913491C625BED72192D65482262D72B05F24F307FDD5B8F96BAAF1
                    27EDA1F19FC5FF00B3CF883C61E35F08FC0FD57C3DA5FC54B5F87F7BE129AC2F
                    6F7EC9B3C410580BF5BC924F2EEDD1DE27488DA5BE197CCF341511B76CA9D486
                    23D827EF29593FF0B8538B5D6D771517F7B514AD9D1A8AB528D687C2D2B7FDBE
                    9CEDEB68B935F77BCDA3D6BE187C0DD2FE0D7C52BCF18F873F66CF1C586B3797
                    5737CB1B78CACAE34EB0B9B924DCCF69632EA4D6B672CC4B1964B78A3693736F
                    2DB8E65F8A7F07AD7E327C5CB1F1DEB5FB3C7C468FC596563FD96F7FA578EED7
                    486D46CB79716978969A9C497B6E18B1115CAC8837B617E66CF19E3FFDACFC5F
                    E35FDAB753F833E22D5FC05AD7823C7DA6789F4E8D3C1D1EAF6BAB7869AC6DD1
                    D16E359499606BA923772F042904B6EDB40794297ACEF825FB585FFEC75FF042
                    6F817E35D3F43B9F156BB71E13F09E87A6D8892306E2F35036967133B4B2C51E
                    03CE18F99344AD8C1923CEF1CF4A2E749558EB6E4514B7F7DCE292EDAC6DA6FC
                    DD0DDC6D3946FBB97376F7545B6FBEF7D7B5F5D0B3A17EC1FE0EF0D6A7A3DE59
                    7ECF7F1BA29F41F134FE32B127E325D3AC3ABCE0ACD7655B5C2ACEEA5D58302A
                    44B282312386EE3E0F7C16B4F813F04353F871E1DFD9E7E252F83B58BD9F50BA
                    B1D4BC7F6FAB33CF3C82599966BBD5259903CB991955C297776C6E7627B5FD91
                    FE387C5DD5BE05F8AB5BF8F1F0FC781F59F0C5D5CBDB35B8B38FFB734F8E1595
                    6E45A5AEA3A8ADABE4C91988DE4C498C38601F6AFC1DF173F6DCF1CFC1EFDA33
                    E1DFED23E21B4D0BC47078DBE0D6A5A8786BC39A0DC5DC30DA25DEADA0456705
                    CB5CDDB5A492A1BF5325D4696A181646C2C68F574E0DCFD845DD5BA6ABE094A3
                    1B7792A7649ED6B3B34902FDE7BD2DEEED7FF125277EC9CEEDF5E6BF56CFA62E
                    FF0063AF096A06DE4BAFD9A3E245DDEC5F6F13EA171F11639B51D4D2FA28E1BA
                    8AF6E9B5633DEC52470C0BE5DCBC88A2DE10AABE5A6DC71FB0178146B175A81F
                    D9BBE2FB5FDDE9FA56966E5BE2D4CD2DBC1A5BA3E9FE4B1D6B30496EC994962D
                    B20324BF37EF64DDEC3FB27FC54FDA13E22FC1BF1D7FC2D2F03E95F0EFC5FA54
                    922786753BAB3B46B3D5A36B7DE93CDA7596B17C62114D9468FF00B43322A865
                    68F7154F03F03FFC14BBE3778B7C25F09756B4F0FF0082B5E9FE26FC19BDF1D3
                    693A4E817AF7B6DAB5A5D69B14BE48FB6933DB18AFD9D6D82ACC5A0DA2625C6D
                    23CCA4F91EA927A3ED19CD7A59465DACF4D2EC141D48F33D55DAD7CE515F736D
                    3F3B5FB1EDDF0CFC17FF000A8BE1D7887C23A1FECE3E314F0CF8AEF6FB50D574
                    DBDF14699A85BDDCD7ACCD7595B8D424DA92B33B322E109763B72C73E5FA77FC
                    13F7E1959477C2E3F647F146B32DFE847C32D71ADF8CAD357B9B7D33CD32ADA4
                    135D6A72496F1A39CA0859366D40BB42281A5E0BFDBEFC7FFB40EBBE17F037C3
                    5F117C2EBBF196A9A16ABE21BDD6F56F0C6AB6B6712E9F3DA5B35849A4CB7515
                    E5A5DBCB73991659D8DB285F927DC2BB483FE0A2179ACFFC1393C15F1A6D7C35
                    0D96BBE399347D2EDB4BBA95DED2C750D4750874E5691C0576B78E6977EE0033
                    46A3182789549B49C55F9AD15DDA6E508A57E97528D9EDE49A6E613E6938A7B3
                    6DF93D24EFE7B4AFD77DD3B5BF047852EFC07F09B54F0441F013E24EAFE1DD6E
                    DA5B3D463F1078E6D35EBABE824431B452DD5F6A735C3A6C62A15A42154E1401
                    C579E43FB14F83A2F0FEA9A6B7ECD5F13EE21D674ED334BBB9AE7E258B8BB78B
                    4D9DA7D3DD6E1F5733473DB48E4C53A3ACC830A1C2AA81D3F8A3E3DFC7EF0BFC
                    4CF09FC1DB9D47E0DC5F133C5F6FACEB763E294D0F529743974BD3CD9280FA59
                    BC49A3BA924BC08516FA544488CBB9CB7923E66FF86F93E17F8A975FB4B6A1E1
                    7D4BFB7ECFE086B6354F0F47AC4F2D835FE9DE2282C185B79C4470C2F3231F34
                    226E8F6B49CAE438F339C649FC5777EAF923392F37AC251EF16DE9DE2A4BD9D3
                    DB67156FF1CE11F96EA5D9A4B5EDED69FB0AF8060F88FA578BADFF0065AF1E58
                    F88F48D71FC4B1DED978FE1B56BBD49E2F25EE6E963D5556EDCC45A33F681202
                    92CAB8DB2C81B57E1D7ECA1E1FF8457B6173E18FD9E3E2CE8771A569A345B392
                    CFE2818DADAC05D25D259A11AC7CB6E92A2EC887C8885A35558DD90F98F8ABF6
                    98FDB03C417DF0CF4EF13689A07C226D6FE26E99A55B6A77BA1DADC47E26B19A
                    C6F2E5E17B4B0F105E3402292D82B1377FBF12C6408C2BC6DD77C03FDADBE253
                    1F036B4FA27C1CF017833C41F14FC4BE0EF1C5AE9BA35DDC48B7F0DD5E456F77
                    05D89E04DD733DB049259AD9999E743804E2953725A276B3B6FB3E5825F84F96
                    CB5E96B32AA2B439DABA693F5D6A3BFDF4E52BEDD6E99F4B7FC2F7F1F7FD110F
                    197FE0F344FF00E4CA3FE17BF8FBFE88878CBFF079A27FF2657CB777FF000504
                    F8EBFF0008578F6F6C7FE1535DEA3F087C1D07C40D722B8D0B50B41E26D3AEDA
                    FA7B5B5B55FB73B58CA2CECC179E4372A6690A885554B1FB8FE1CF8CE1F88FF0
                    FB42F10DBC13DAC1AF69D6FA8C70CEBB6585668D640AC3B300D83EE29723B3BF
                    4B5D7557BDBEFB3FB9F95C6D26977BD9F7B5AFF72945FCD75BA5C07FC2F7F1F7
                    FD110F197FE0F344FF00E4CA3FE17BF8FBFE88878CBFF079A27FF2657AC51523
                    3C9FFE17BF8FBFE88878CBFF00079A27FF002651FF000BDFC7DFF4443C65FF00
                    83CD13FF00932BD628A00F27FF0085EFE3EFFA221E32FF00C1E689FF00C9947F
                    C2F7F1F7FD110F197FE0F344FF00E4CAF58A2803C9FF00E17BF8FBFE88878CBF
                    F079A27FF2651FF0BDFC7DFF004443C65FF83CD13FF932BD628A00F27FF85EFE
                    3EFF00A221E32FFC1E689FFC9947FC2F7F1F7FD110F197FE0F344FFE4CAF58A2
                    803C9FFE17BF8FBFE88878CBFF00079A27FF002651FF000BDFC7DFF4443C65FF
                    0083CD13FF00932BD628A00F27FF0085EFE3EFFA221E32FF00C1E689FF00C994
                    7FC2F7F1F7FD110F197FE0F344FF00E4CAF58A2803C9FF00E17BF8FBFE88878C
                    BFF079A27FF2651FF0BDFC7DFF004443C65FF83CD13FF932BD628A00F27FF85E
                    FE3EFF00A221E32FFC1E689FFC9947FC2F7F1F7FD110F197FE0F344FFE4CAF58
                    A2803C9FFE17BF8FBFE88878CBFF00079A27FF002651FF000BDFC7DFF4443C65
                    FF0083CD13FF00932BD628A00F27FF0085EFE3EFFA221E32FF00C1E689FF00C9
                    947FC2F7F1F7FD110F197FE0F344FF00E4CAF58A2803C9FF00E17BF8FBFE8887
                    8CBFF079A27FF2651FF0BDFC7DFF004443C65FF83CD13FF932BD628A00F27FF8
                    5EFE3EFF00A221E32FFC1E689FFC9947FC2F7F1F7FD110F197FE0F344FFE4CAF
                    58A2803C0BE337C72F1DCFF07FC571C9F057C61046FA35E2BC8DAD68AC230607
                    CB102F3271D78E697E0D7C71F1DDBFC1FF000A4717C16F185C469A3DA2A4ABAD
                    68CA240204C3006F0100F5E466BD4FE397FC914F187FD812F7FF00443D1F037F
                    E48A783FFEC0965FFA21280390FF0085EFE3EFFA221E32FF00C1E689FF00C994
                    7FC2F7F1F7FD110F197FE0F344FF00E4CAF58A2803C9FF00E17BF8FBFE88878C
                    BFF079A27FF265735F19FE3978EE7F83DE2C493E0AF8C618DF46BC5690EB5A29
                    118303E588179938EBC57BED72DF1CBFE48A78C3FEC097BFFA21E803CB3E0D7C
                    71F1DDBFC1FF000A4717C16F185C469A3DA2A4ABAD68CA240204C3006F0100F5
                    E466BA4FF85EFE3EFF00A221E32FFC1E689FFC995D7FC0DFF9229E0FFF00B025
                    97FE884AEA6803C9FF00E17BF8FBFE88878CBFF079A27FF2651FF0BDFC7DFF00
                    4443C65FF83CD13FF932BD628A00F963F689F8D5E38BBF187C2569BE0E78B2D5
                    ADFC6892448FACE8EC6E5FFB33515F2D76DD900E199B2D81842339201F4FFF00
                    85EFE3EFFA221E32FF00C1E689FF00C9947ED33FF23B7C1AFF00B1ED3FF4D3A9
                    D7AC500793FF00C2F7F1F7FD110F197FE0F344FF00E4CA3FE17BF8FBFE88878C
                    BFF079A27FF2657AC51401E4FF00F0BDFC7DFF004443C65FF83CD13FF932B8FF
                    00F825DDDCFA87ECB7AADCDCDA49617373F133E214D35A48EAEF692378D35B66
                    859909466424A9284A92A4A961827E88AF00FF00826A7FC9BAF88FFECAAFC46F
                    FD4DF5DA7D0083E057C50D73C3FAC7C49B4B4F871E34D7604F1B6A58BCB0BAD2
                    52193FD5F413DF4520FC5075AF2ED33F608F0068D75AC496BF07BF69E823F115
                    FC9A9EAD6CBF1AF50FB26AB7326D12497107FC24BE54C5D5555848AC19542905
                    462BE85FD97C647C44FF00B1DF52FF00DA55F997A57EC557DE30FDAAFE3269FF
                    00047E05E95E15F16F873E3BE9DA95B7C53D3E5D2746B3F0FE9D1D8E95757FA7
                    B79528D4255994CC0C0B6CF6EED78599810C43C3C79ABF2EDEEDDBECB9E117F2
                    5CCA5BFD9EF6155972D2BEFAEDDDF2CDAF9E8D2D3ED76B9FA0DF1DFC2F63FB4A
                    7832CB42F17FC0AF8997965A5DE45A8E9F358EBBA56977DA5DCC5911CF6B776B
                    AB45716F2282CBBE2915B6B32E70483C3691FB2EF863C07E3CD13C65E15F80FF
                    0015F48F18F84B44BDD1743BA7F185BCB650C776CD2DC35C5A7F6E79374F34EC
                    259A5991E5964447672E88CBE7FF0009BFE0A0DF1C3C75F0E7C297BACA7C27D0
                    FC49F13FE21EAFF0DB43B2B6D1F50BDB1F0D5DE9D73AA09AF2E6E5AF227BF8DA
                    1D38AA42915A3348C0991036D4BFF0BFF6FDF8D3F1DBE2AEB3F06B40B1F865A2
                    7C58F0349AC8D6F59D534DBF9FC3BAC0B092C5621696E97093C22E16FE32ECD3
                    4DF6628C36DCF04BF6526DD35BB526EDBD947DE7A768495EDAB4ECAFAA55565E
                    C6CAA6C9A8ABED7E6924B5E8E709257D2EAEEC9A6FCFBF67EFD86FC683C2D178
                    4FE23FC10F89563E10B3B3FECEB9B0D2BE37DEEBF63E218957F76E9A7DDEA36F
                    6DA33473245711FD8773C2D1AA452A283BBD665FD837E1BC9F10ACFC54BF01FE
                    3DC1AF586B27C450DCDBFC509601FDA46D12CDAF5913C4011E77B64113C8CA59
                    D4BEE2DBDF773BE37FDBEFE397806DFE2047789F0A26D47C01F17BC2BE0B9A08
                    747D40C177A5EB2BA66F8D65378196E617D4702E4C651C43936C85F0B6BE13FE
                    DA1F1EBE267ECD577E3BD67C47FB3F7802F2E7C61A9F84A1B0BCD1356D5134F9
                    2C353BDB390C263BC8A5D5A697ECD1AC704715A373249B9B021AB9F3AA7F58E9
                    A2BAF3509FFEDF1D1689F6D0A74A495A4F47DFCF9BE7B45EFAB5A6AF42283FE0
                    989F07EDB4AB0B18FE007ED08969A658EA5A65AC63E2E5DE21B6D45B7DF423FE
                    2A3FB93B7CD203F798027900D6EF87BF60DF873E19B6D12283E05FED0373FF00
                    08BCD6D3E8725FFC559EFE5D08C08F1C696724FE2177B58CC723C6F1C251248D
                    B63ABAFCB5D3F81BFE0A11AC6ADFF04B4D0FE3B6A3A069E7C4DAA585BC4DA6C6
                    B716965FDA135EAD829659419E183CE60ECAE0C8899072C2A3F187C73F8FBF0F
                    FC6FE0DF859AA6A5F06DBE20FC43BFD4A5D13C536FA1EA47478B4EB1B58A794C
                    FA535E097ED46497CA544BF2A514CC581060A87CD09B8ADD3B7CD6BA7A5DCBE6
                    DAEA6706A7052E8FF26B5F93B25A6FA1CF6ADFB04FC29D6BC2761A1CDFB357C5
                    24D2F4FD3EFB484860F195BC1E7D85E4924B71653326B6AD3DA99257658252F1
                    464E5150818D3F0A7EC6BF0C7C07E2FD2759D07F662F1DE86FA32592C1A769DA
                    F69B69A34CD6400B39A7D3A3D6059DCCF0614C734D0BCA8514AB02A08F25D1BF
                    E0A8DF1D7E2AEBD61A2F87BC35F0AFC35729E11F196A37BA86A8BA86A91CBABF
                    86F558EC2E638ADE392DCADA4C5814733338F34923F73B66E8AE3FE0AD9E21F0
                    8CF1F893C5FA4E99E17F0A5EF8261F17E8BA55CE81A8B4DE2C8C686752B85B0D
                    615CD935CA4A1A1FB0C912CDE5C0F3066560AA6B4E2EAA764BDEBF95E6935D5D
                    DC276B6BBBB5B53454A539FB0B7BCEEADE9C975DB4E685F5B696DD1EDFF1EBC1
                    361FB4AC3A41F15FC10F8B2D7BE1E9DEE34BD4F47F1469FA16ABA6BBAEC93C8B
                    DB1D621B98D5D70AEAB20570006040AE675DFD997C11E23F88F61E2BBBFD9DFE
                    271D62C61B5824F2BC51630DA6AAB6A775B1BFB54D645BDFBC2DF346F771CAC8
                    DF329079AF077FF82917ED6FA47C2DD37C55ABFC1AF05685E1AF16EBBE17B4D1
                    BC43AC5C5B4315B5BEB17F15A344B6561AB5FBDEBC42E20759DE6B159159C985
                    0A047F5C5F8FDFB427843C77F107E1FEBDE2AF8337FE38B393C3B2F83EE6CBC0
                    7AA5A59DF5A5FDD490DCCD7103EB123398FC99C6D8E65F2C44246DE1C20A5425
                    16BA7BD6FF00B7928DD69ADD292BF757B5D19734650E7BDD5AF7E9CADE8EFB59
                    BFB9EF6652D13F607F86FE1DD5748BDB4F817FB414773A1789E7F1959337C569
                    E4116AF382B35E156F1090CEEA5C30605489650462470DDDFC16F827E1BF805F
                    03F59F86FE1EF805F14A6F0478826BC9F50D2B5BF13D86BD1DD35E126E816BED
                    6267092B33B32060A5A476C6E7627C33E337FC150BE2F7C20F8A5E3DD1B4E1F0
                    57C7E34EF06F8A7C51A45B6931EAB6D6DA449A25C5BA35ADDEA64C90DE4ED04C
                    CD2430430B413208989561357D09E25FDA83C5DFB3C7FC13E7C43F18BC7EFE18
                    F146ADA5E807C490D9E85A6CFA35A246F0A3C56AE66B9BA62559B0F382A0AF22
                    25C60E714DD1D3E16969D1A6DC52B7FDB8FCAD15AEC6F51545523CFF001393B3
                    F3566DDFA6B53D6F26FBB22FD9E7E1A68FFB2CD9DEC5E0CF817F15ADA4D42286
                    DE6BAD4FC51A7EB57860803082D85C5EEB134AB6F1077F2E15711C7BDB6AAEE3
                    9E73C59FB2B7807C7D3EBCDAF7ECE1F11F5C87C476B73697569A8F8934FBAB38
                    16E67FB45C35ADBC9AC18AD25966C3BCB6E91C8CCA84B1D8B8E9FF00670FDA1F
                    E234FF00B517893E137C4B5F06EAFA9DA785ACBC65A56B7E17D3AEB4EB37B5B8
                    B89ADDED268679EE08963921CACAB2E255627CB88A953E25E11FF8281FC7BF13
                    F8AFC270DE68FF0009347B5F14FC53D7FE15B5B450EA17F269F359C3792DBEA1
                    E799611320FB1387B7F2A3326F522587045369D4925BB69FE0D41AFF00C09F2F
                    6F96A670BA8B9AD126AFFF00803A89FF00E009CBBF4B73687A349FB307842EB4
                    0F0D585DFC0BF8D9A937847506D4F4BD4350F1F4779AAC32B46D0BA3DF4BAEB5
                    D4D0344ED1B412CAD0B21D850AF1524DFB30780C7EC9173F026CFF0066FF0088
                    7A2FC2ABD85EDEE343D1BC41A7696278DE4F324579EDB588E7612313E6664FDE
                    0660FB83107C37E277FC157FE2AF813F639D3FE25B5EFC1BB7D63C3EBAD1D7B4
                    0FEC8D56FF0050F131D2F5A934E99AC6DA19F769F6CD1C4D21BAB87B9485E455
                    71B4192B3F5FFF0082827C75F83FF1D7E2CE85692699F11B53F13FC57B6F02F8
                    1F49B5F0F2236820F86EDF56676FB56AF696F70822DCBE4B5C5B3492992412E1
                    9605D3D94E7CD6D776FCED28C3F392B5F64AEECAC107CAAE9DB97E56B2937F72
                    BB76EF657773D57C41FF0004FAF865E2CB4F1241A9FC08FDA0AFD3C5FA7E9BA5
                    EB067F8AF70EF7D6DA7B2B59C6CC7C45B8794C370208625DC924BB96DBF0A7EC
                    71F0F7C15AF5A6A5A7FECF5F1756EAC2F350BFB713F8DA0B98A296FE268AF888
                    E5D71936DC06669536ED924632B0321DF5CDFC16FDAD7F6ACF897F1E7C33F0FF
                    00C5BE04F85FF0A75797C1D73E28BF8B5332EB573A9B5B6A51DAB46A9677A60B
                    059E2911D48B8BE309930C25F2F0FE73E2BFF829478EFE05FEC0DE0FF893E1FD
                    3FE05F843CBD2351F116ADE09B2D1F51D42EF54316AAD15C476315ABC5F65876
                    B3BC9A84E922095F32428ACCC172B9B51BDF9DB5EAAF28B7E9784B4DF4D56AAF
                    829C54DC12D636BF93B45AF9DA51B3DADD6C9DBDA6C3F635F879A46A5E1ABDB0
                    FD9EFE306997BE14D213C3F697163E3986D66BCD350E52CAF9E3D715B50B75E8
                    B15E1991412000091552E7F61FF87979F06355F87D2FC07F8EF278575AF128F1
                    7DE5B37C4B633CBAA8944C2E45CFF6FF009EBFBE0B2EC590279AAB26DDE03574
                    5FB0AE856FE1FF00DB33F6AD4B69B52961BBF1468B7FB6F6FE7BC30B4FA2DB4C
                    E88D2B3148F7BB158D4844070AAA0003E79F8B1F1C7C69FB427ED3DFB377C568
                    B51F08D978222F891E28F0FE81A59BAD42D268BEC5A4EB50BCDA94A2E1AD6459
                    25B1DF8FB2092D94604926F715317294A3293DD2937DAF69FCDF359F9B5CDBA3
                    A62B46E2FA36BCED195BD3DDBAF24DAD6FAFB4CBFB147C3B7BF96EA3FD9FFE34
                    D9DC4977A9DF24967F1012D5AD66D4A268EFDA0F2F5E5F204E1D9DC45B434A4C
                    B8F33E7AEAB41F819E14F0F7ECA307C0F8FF00679F88D7BF0BAD6C3FB2E1D175
                    2D7F4CD47CAB60DB92359EE35779C08CE3CB3E6663DA810A8550337FE09E9FB6
                    AF8BFF0068BF8BDF133C19E2ED4BC09E257F0658689AC586BDE10D1B50D374CB
                    E83518EE498A2FB64B29BB589ED9C2DDC2C229830C246CAE83CAFE15FF00C148
                    BF692F8E377E24F17F83FE033EB9F0B3C9D7EDB47B9DDA7C57305DE9D2CD0405
                    9975792E6F3CF96DDD1A0FECFB47899D46F9002E4AB1946F4A7B349BED649B49
                    F4EAD47A6AEDA6A6519A7FBC5BA7F3BCB5BA5BEAB57D7BEBA1F45FC1FB03F037
                    C18FA0E87F073E305CD8CB9F364D73C5561AF5E4E08C0592EAFB589A77400E15
                    5A42AA38000E2BC5D3FE09B9F03A4920FB6FEC97E31D6E1B2B4BED3F4FB6D6B5
                    DD3B55B5D1ADAF401716F6505CEB1247671103E58EDD6358F73EC09BDB2EF87D
                    FF000502F1FF00C7FD4BC2DE02F87DE22F86B75F1075EB4D5F50B9D5F58F076B
                    1A75A69234C4D3566B2BCD1A6BB8EF6D6F249AFD708F70C23876C9FBEC856AFF
                    00173FE0A1FF0016BC0BA5FC4DF13DB68DF0EE3D13F67CBAD2F4EF1E683E55ED
                    EDFEBB3DC5959DDDD3E977A2485618E14BB022135A48D7063607C8E0D69ECA6E
                    5CDD5ABDFBC5BE5BFA5DF2BED7D74771C656A7EEEDBDBCD74F5EABFCCF68F81D
                    A127ECEFE143A3786BE0E7C6392CD9162326B7E2EB1D7AECC69BB645F69BFD66
                    69BCA4DCDB63DFB1771DA064D79769BFB05FC23D2F52D12F53F65CF1F4F79E18
                    371FD873DD788EC2EA4D05679927923B269359636B189114AC70EC48C1608155
                    981F3CF845F10BC45FB377817E38C5E03F14782FC3D7779F1AF568E3BAF1DAEA
                    9E23B99C36976B73F67B4B38274BBBEB8670156259D7CB883B28711089BD53C4
                    5FF052DD6341FF008254F80FE3DA7841751F14F8F2C7408AD743B47510A6A1AA
                    DC5BDAA0067921511A4B3EEC4B2C408015A44CEF19A529C635D5DC9AA7EB7AB1
                    BC62BBEEE3FA24C9A6934E095A2A53F4FDDCDC79BF0E6F2EF71DACFEC85E02D7
                    7C35A3E9D3FECFFF0018926D0AF2E6FED75783C730DBEBCF35CA2A5CB4DAA47A
                    E2DF5C0991116459A775916340C084503D13C49A369DE2EF824DF0DEFF00F679
                    F17CDE053611E98BA2ACFA0476B0DBC6144691AAEA43CBD9B54A1520A9552A41
                    00D78CFC37FDAAFF006A2D17C4DF0EA6F8B7E10F03FC39F0BEAFE309FC31AC4D
                    7DA4A35FEA504968D3585E40B65ADDEC161BEE10DABC72CD72771470C049B17C
                    93F693FDAEFE3768FF0009BE2AEAB711FC25D13C6DA57C0ED47C6FE1DF1B68FE
                    1DBA4D512CDAF9B65B1867B876B6CC11C4FF00EBE55F38872988FCB65CAE56A6
                    B552BE9E6A0E493E89F2ABD9D9A5D2FA1A53D6692D1DE2BFF02A9C975E5CCF75
                    BBD76BB5F416B9FB29F83BC4DE07D2342D47E087C76BE1A05EBEA1A6EB13FC47
                    0FE21B295D0C6FE5EAE75EFED05468CEC318B8D853E5DBB78A49FF00648F8797
                    5E354D765FD9BBE24493A78524F03FD85FC4B60DA4368B27FACB36D3CEB3F636
                    463F33130962C0316DC01AE47E347EDC9F157F669F881F0B746D43C49F083C59
                    16AFA9F86FC3FADE93A7E85AA8D6AE5F5494DB9BF7916E668749856429E5ADC8
                    B8F3F6C804AAE550F15E18FF0082B97C54F0078074CF1F7C4EF0FF00C3C87C2F
                    7371E3BD32FB46F0E457B35F58DCF871AF5D644BC964093452A594919536D1B6
                    E2B2640631254A937194F749C937E6A367EB78C92D2FA4ACEDAA59D29732872E
                    F2E4B2FF00136E3E96941BE9AABABE87B2E83FB2A782FC3DE06D23C3B1FC07F8
                    D579A6E81A95A6ABA63EA5E3E8B51BBD3A6B50EB02437571AEBCF1C08B2CAA20
                    59042565914A1576063F0FFEC8FE01F0E7C0EF127C378FF67AF8B57DE0BF176B
                    27C43AA69FAA78CEDB53335FB5C25CB4E92DC6B724B1169D048444EAACFB8904
                    B367E7ED47F685F885FB2C7ED91E3AF881E339BC25E23F12F8BFE1E784A1D2ED
                    F4893508345B09F54D7E4D3E00F1DC5CCF88E132446596DFC913AC5BBCA8D9AB
                    EB8FD973F68DF1BEB1F15FE29FC38F89C9E19BFF00127C308B4ED47FB77C35A6
                    DCE9FA6EB1637D14D2458B59E7B89209E36B7951D3CF9430D8E08DFB147CCA9B
                    AD376F8AFEB1924D5FAB5CB07F75AFCB7557B49463B7BB6F4945493B74F8E497
                    5D5DED768E7FE327ECFF00E10F8F9E33B0F10789FF00679F89373A9D8580D219
                    ACFC45A769D0EA3601F78B2BD86DB588E2BDB50D922DEE965886E6F97E639F47
                    D07C73AC786B58D56FAD7E11FC5732EB124724D1CFAF693716F098E358D4410C
                    9AAB476EBB54656154566CB302C493F16786BE3AF8F3E347ED67F02BE385DEA3
                    E03B4D13C6FF000EBC5BACF8574D9AFB50D3ECB49B6486CE5B61AACAF3CD6ECF
                    89774B710DB44F10678F1284563AFA17FC1507E365C5F5DF87ED20F843E30BFD
                    3FE22F863C293F896DB4AD6344D365B0D6604759EDACE79267B868E42EA255B9
                    58A45DACBCEE40A319DD516AD26ED6ED2954E4B7AB95AEDE9E6ED76569469C5D
                    593F7527AF9463CCFE492D176B68B54BED2FF85D9E25FF00A23FF117FF000374
                    1FFE5951FF000BB3C4BFF447FE22FF00E06E83FF00CB2AF963E14FEDF9F197E3
                    9F8C13E1668A7E16E93F1434997C52FA9EB97FA3DF4DA1EA10E8BAA45608B6F6
                    2B78B3C4F706746666B99441B4FCB36E005EFD9A7FE0A79E29F8F7E37F8633EB
                    7A5E91F0EFC39F11F4AB2974DB7D5742D46E22D6AF5C37DA61B5D611C5A472A3
                    C6E91DACF0AC93295915F194A982E65071DA76B79A7CC935D778B5DD5B549598
                    547C8E7196F0BA979356BA7D3669F66B66DE87D33FF0BB3C4BFF00447FE22FFE
                    06E83FFCB2A3FE1767897FE88FFC45FF00C0DD07FF009655E17FF051DFDB73C7
                    1FB216BDA76A1E1DD53E19CDA2D8A69F3EA3E1EBED3B51D4FC45ABC771A8C76B
                    2BC7F669123D3E08E37DCB733A4F1BC99465882EE6C3B3FF0082887C41BFF146
                    8FE35834DF084FF09355F8A137C2993465B1BA1E25B3B94D425D397523742730
                    3C6D731E4DB7D994AC4E1FCF623CBA7462EA34A3D5F2FCEEA297CE52497AEB64
                    9B0AAD538CA52DA2AEFF00F0194BFF00498C9FCACAEF43E90FF85D9E25FF00A2
                    3FF117FF0003741FFE5951FF000BB3C4BFF447FE22FF00E06E83FF00CB2AF1EF
                    DA6FF68EF8D3A2FED8169F0B7E1D5AFC2FD36D353F87BA978BECB58F11C37DA8
                    CAF776579690B5B496D0496EB1C4CB72A0482676058B15C47B24F1EF08FF00C1
                    563E207C44D7BE08EB7A7CBF0C2CFC35F1767D174E9BC310E9DA96ADAF68526A
                    5A7C938BBBBBD8A58ED6D956750A96D245BA7886F59D59C22A8C5CA3192FB4D2
                    5E6DCA505F7CA125E56BBB4751CED052949E914DBF24A3193FFC9649F9EA95DA
                    B1F617FC2ECF12FF00D11FF88BFF0081BA0FFF002CA8FF0085D9E25FFA23FF00
                    117FF03741FF00E5957C41FB1A7ED61FB4F78A2E7E14F83F53F14FC27D5DBE26
                    4FE2ED47FE129D43C37A84B7567FD97AA189ACCD8A6A08ACA55FF772ADC28446
                    44309F277CDD0FC34FDB87E2AB45F0CB4BF0E780FE0DF846EBE26FC59F17F82F
                    C433DB7DAE6B7B1BCB11A8C8B791C28B01BB799AC649259647899CE176A990C9
                    1D460E4ED1D746FEE6A3D6DD6EBE5D9A6EA31BD3757A2EBFF6ECA5F945EDE8F5
                    563EBEFF0085D9E25FFA23FF00117FF03741FF00E5951FF0BB3C4BFF00447FE2
                    2FFE06E83FFCB2AF87EFFF00E0AF3F153E18FC1BF0F78F7C6BA1FC3EBFD1754D
                    27C5F657BA5E8F6D796772BAAE81712DB9B94BA92E2454B4B87898F926269205
                    20F9F2E31597ADFED33F133FE09BBE31BBF863E1CF047C18BDD43C41AAF8635F
                    9353D2D354D2B4B5B5D6F58FECAB877B379EE9A4BE5B828CD389E313891E674D
                    E863770A4E5563456F27CB1F39376B7DC9CBD37B333725CAE4B68EFE495937E7
                    EF351D376F4BAD4FBD3FE1767897FE88FF00C45FFC0DD07FF96547FC2ECF12FF
                    00D11FF88BFF0081BA0FFF002CABE551FB6E78DF50F1E780F42F1D7847E1878A
                    6E346F8CDA9F81F51D660B1B880DA496BA44FA85A5FE9F6733CE619DA0DF13B3
                    5C9284B6DDC24213A2FD99FF006FFF00887F137C6FF04759F1169FE0D9FE1E7E
                    D1F617979E1AB5D22CAEA1D5FC28F0DA35EC715F4EF3C90DD8920470CF1C56FE
                    54A026D941DE153A6E71E78ECECD3F29454E3E9CCAF6BF6EED22AA7B9ABF3FFC
                    967284BEE7167D11FF000BB3C4BFF447FE22FF00E06E83FF00CB2A3FE1767897
                    FE88FF00C45FFC0DD07FF9655F37FC61FDBD3E396A7FB6AF88BE1F7C1DF8447C
                    6DE1EF867A8E9165E2C9677D3A06B94BE8A3B87922B9B8D5AD64B6F26DE4DCBB
                    6C6F1677464DD163359F6FFF00052EF1BE99FDB5A1EB16FE16D33E20DC78934E
                    F0EE9FE1AD53C3BA9E9371A11BFD452CE0BA99E5999354B3452D27DA6CDA3495
                    CAC5888E5AA29FBEE318EF2D12EADE96FF00C0B9959EDDDA0AB6A6A529BB28A4
                    DBE893BFE56D56FE47D41FF0BB3C4BFF00447FE22FFE06E83FFCB2A3FE176789
                    7FE88FFC45FF00C0DD07FF009655E21E23F8FF00F1FB4DF8A3A07C1E4BBF8356
                    DF13AFB42D5BC5527881F49D4A7D12FF004FB3B9B6B78624B0FB54735BCF335C
                    8DFF00E953A401323CFDE157C07E097ED45A9FC4AF8F1E21F8D9A0CFE1DF03EB
                    FE39F827A06AB711F8D759BCB8F0FE8774759BBB495950303B008B29143E47DA
                    1C47968DA469011D795ADA57B3F453EF6EB4E5177B34D6AAD6BB51BC66FAC796
                    FF00F6F4A11E97E935256BA6B6EB6FBB7FE1767897FE88FF00C45FFC0DD07FF9
                    6547FC2ECF12FF00D11FF88BFF0081BA0FFF002CABE3CF84DFF0516F8EFF001B
                    7C53E00F08E9317C29D3AF7C43E31F14783F52F14DEF87358485A5D2ADDEE209
                    E1D165B98678D26882EE125EB1041DBB9595EBF41A00EB0209591E40A37B2AED
                    563DC819381ED93F5AAE5F7633E9249AF46AE9DB7575DECFC8CA3523294A0B78
                    B69F934ECD5F67ADF6BA3CF3FE1767897FE88FFC45FF00C0DD07FF0096547FC2
                    ECF12FFD11FF0088BFF81BA0FF00F2CABD168A9343CEBFE1767897FE88FF00C4
                    5FFC0DD07FF96547FC2ECF12FF00D11FF88BFF0081BA0FFF002CABD168A00F3A
                    FF0085D9E25FFA23FF00117FF03741FF00E5951FF0BB3C4BFF00447FE22FFE06
                    E83FFCB2AF45A2803CEBFE1767897FE88FFC45FF00C0DD07FF0096547FC2ECF1
                    2FFD11FF0088BFF81BA0FF00F2CABD168A00F14F8D5F1A3C4937C1BF16A37C23
                    F8850ABE8D78A647BCD08AA0303F271A89381EC09F6A3E0B7C68F1241F073C24
                    8BF093E214CA9A359A8912F3420AE0409C8CEA20E0FB807DABD0BE397FC914F1
                    87FD812F7FF443D1F037FE48A783FF00EC0965FF00A2128030FF00E1767897FE
                    88FF00C45FFC0DD07FF96547FC2ECF12FF00D11FF88BFF0081BA0FFF002CABD1
                    68A00F3AFF0085D9E25FFA23FF00117FF03741FF00E595733F1ABE3478926F83
                    7E2D46F847F10A157D1AF14C8F79A11540607E4E3512703D813ED5ED75CB7C72
                    FF009229E30FFB025EFF00E887A00F3DF82DF1A3C4907C1CF0922FC24F88532A
                    68D66A244BCD082B81027233A88383EE01F6AE9BFE1767897FE88FFC45FF00C0
                    DD07FF009655B9F037FE48A783FF00EC0965FF00A212BA9A00F3AFF85D9E25FF
                    00A23FF117FF0003741FFE5951FF000BB3C4BFF447FE22FF00E06E83FF00CB2A
                    F45A2803E6AFDA33E30F886EBC63F08DA4F855E3DB63078D9244592EF4426E1B
                    FB2F511E5A6DD4080D825BE62AB853CE700FA87FC2ECF12FFD11FF0088BFF81B
                    A0FF00F2CAB33F699FF91DBE0D7FD8F69FFA69D4EBD62803CEBFE1767897FE88
                    FF00C45FFC0DD07FF96547FC2ECF12FF00D11FF88BFF0081BA0FFF002CABD168
                    A00F3AFF0085D9E25FFA23FF00117FF03741FF00E59579FF00FC130EE5EF7F66
                    2D62E25B79ACE5B9F89BF10A692DA62A65B576F1AEB6CD13942C85D092AC5199
                    0953B59970C7E85AF00FF826A7FC9BAF88FF00ECAAFC46FF00D4DF5DA7D0083E
                    04FC50D73C3DACFC49B5B4F871E34D7604F1B6A58BCB1BAD252193FD5F413DEC
                    527E683AD65FC04F837A37ECCFE22F19EADE10F82FF1BED6FF00E205E7F68EBD
                    26A3E3C87575BCB9DA10CEA979AE4AB149B0226F88236D8E35CED4403D23F65F
                    191F113FEC77D4BFF6957C9DF057F64C93E2DC1FB455F5AFC57F8EBE1BF12F83
                    FC7DAAE9DE1AD507C51D7EF2D7448E3B1B49E256B1BABB96CA6896599D8A4D03
                    8DA76F002E327351736F650727DF954A09AF3D649DAF6D3D06F6847F9A6A2BB7
                    372CE49BED6516AE937A9E91E1FF00D90FC05E19F80B75F0D2DFF67FF8C32F84
                    AEB5B7F1288EF3C730DE5FD9EA6F2F9CD796D7D36B8D776D3198B49BE1990877
                    91C7CCEC4D8D63F658F04EB1E19F0E69A3E017C60D3A5F09CB713E9BABE95E36
                    B7D335E8DEE486BA69354B7D6E3BE98CECAAD379B3BF9CCAA5F715047CFDFB38
                    FF00C17ABC45E3FF0081FF000CA65F843E31F893E2C9FC39A56A7E386F0BE85A
                    C5D9B56BB924883D9A59E9D756ECECB03DC18EEEE6CD7CB65D8F21C85F61F09F
                    FC1563C63E33F107872DE0F8213E9967E29F1DEB3F0DED0EA9E2C823BBB7D5EC
                    62B896369E28609512D645B5983C892BC91951B62981CD754E138D49413BB4DE
                    D7D797963A7DF14BAEC91109371F69DFF55293BFC949BF9B7BEBA7F13BF62FF8
                    61F19750D5E7F13FECC7E3ED5E2D7D34F5D46C65F1069EBA75EB586D16933DA2
                    EB02DDA78D51504DE5F985142162BF2D2784BF635F87FE07F869A4784B4DF803
                    F1A22D1F40F12CBE2FD35A5F1FA4F7D61AA4BBFCEB88AF24D75AE504BE6CDE64
                    62411C9E7CDBD5BCC7DD87E0BFF82B8F893E2D7816F6EBC1DF08AD35AF13F833
                    47BBD77C71A34FE2E1689A4DB5B6A57FA7BC761706D185F4F24BA6DDB46B2A5A
                    A14552F244CC16992FFC1642F359D475BD5341F84B7D77E00F0F37846EAE35DD
                    43C4505A5CDF69DE217096F7969691C536FF002D9E32D14D242C57CC390CAAAE
                    A10A89BA71D3557D74BB9595FA6AE3A3D9F2DD3B45B44E4935CDBEA977D23AAB
                    6FF0CAD6ED2B753D4FC29F0C3C3FE0DFD9EEEFE145A7ECF3E3E9FE1E5F45756F
                    36897FAB691A85BBC57123C92C599F55761196918AA060A9901428000E4F51FD
                    937C17AD7C3DD3BC377DF037E3A6A16FA36A09AA69BA9DDFC46171AF6977088D
                    1A35B6ACFAF1BF81424922048A754DB248BB70EC0F13FB407FC1537C6B75FB3A
                    7C73D63E1BF87BE1FA7893E17BDD5A182FFC5E5F52D21A3BA8ED924BFD3BEC66
                    4B79655334D0AFEF6192348D8CA37EC1DF7C35FDBB3E30FC47F18FC4AD060F81
                    1A2C3A97C28686CB57824F88312C9A95E4D651DD426C49B2113DA3798099AE24
                    B79163F98C1BF308CD5DC7DA7749FAA5669FE2ADF2B026AFC8BA36BD1BD1FDFB
                    3FB9997E28FD8ABE1DF8B759D32FE6F801F1A6C27D1FC3B77E14B45D27E20A69
                    50C5A6DDB16BA8BCAB6D7A346699C879256532C8EA8CCE591489BE167EC71F0F
                    7E0E5B6896FA37ECF7F17A6B1F0F2B8B1B1D5FC7106B365196805B891EDEF35C
                    9629244B70218E49159E2887968513E5AF45FD8A7F6D4B8FDADBE1BF8F35097C
                    3DA35A788BE1DF892F7C2FA958F877C491EBDA6DEDD5BC314C3EC97CD15B0903
                    2CC8A7CC8E22920756036935F3FF00807FE0AAFE23FF008447C1FA77837E076B
                    D793789FC0BAFF008FE06F147C40568E25D3B50115CD8B5D15BBB879879CA465
                    3C9432451C6CD1867889B71BF33DE3CDEB16A552FE96E693F56DEAF5AA71E792
                    8416A9B5E8D3506BEFB47CD2D345A74571FF0004FDF86173F0F34FF09FFC282F
                    8EF1786F47D460D534CD3E1F89F24306912C122CB0A5A05F100FB3411CA91C8B
                    6F0EC855E28982068D0AFB0788748B3F167C64F0D7C41D47E0278FEEFC61E0FB
                    3B9B0D23517D4F46DD670DC05130D9FDA9B19885003BA9650CE14A877DDF3978
                    A3FE0B0BE26F87FF0017FC53AEEABE12D2AEBE1347E02F07F88340B5B1BCBBB9
                    F105DDFF00882EAE2DED226B586CA46919E5408E9133B46910745B8794C71EFF
                    00C3EFF82B2FC4BF897E2AF06784ED3F66FF0010685E2BF186ADAA6930DCF8AF
                    52D43C37E1E76B3B3FB609609AF74B8F52963923C80CDA64615E391727682DBB
                    A7554B95DEF16EFE4FE195FB36AC9F5716AFA33373A7CAA57D1A8D9F7524A6BE
                    5AFA5EE5FF0015FF00C13F3E15F8CEC6EADAF3F677F8D315BDE0D52368ECBE22
                    7D856287539125BFB68841AFA7956D3C91AB3DBC7B6124B1D837B67D9B4A45D2
                    FE0B43F0EDFE06FC47D4FC1F1695FD86DA7EADABE8FAA7DA2CFCBF28C334B73A
                    AC92CC0A7CA4C8ECC47526BC0BC37FF05AF9FC5BE23F115CE99F04BE226AFE04
                    D32C7589AC3C4D61A36B4F6B3CFA6F982459E6934B8EC63826686510CB6F7974
                    CDB543C71B36C1D443FF00055A3716DF0E7C9D27E15DE1F88C2EBFB2F52B5F89
                    913E85ACC90C7062D74DBF6B354B9BC92799916DE75B57D96F2BF502338D3A6E
                    7154E2B4925A746BDE4BF295976BF4654EBA83E693D6377E9B36FF002BF9DAFA
                    A3B8FD9EBE19E8FF00B2D595EC3E0CF817F15AD64D42286DA7BAD4FC5161ACDE
                    1B7843082D96E2F7589A64B7883BF970AB88E3DEDB55771CF9C689FB03FC37F0
                    EEABA45EDA7C0BFDA0A3B9D0BC4F3F8CAC99BE2B4F208B579C159AF0AB788486
                    7752E18302A44B282312386D6F82BFF055D93E3CFED649E07F0F7C28F1D6A3E0
                    59B59D53C383C6B6DA36B0F67697DA7BCD1CCF712369CBA72DA34B049124B16A
                    12C9E66C57863C92BEB3FF00050AF8E11FECE1FB187C42F1A5C786FC41E2BB3D
                    0F4A925BBD3F44D70E897CD012164923BC592392DFCB562E5E16F34053E5867C
                    02D2949C6AF595ACFADAEADE9AA4F5DAC99A42EA6E8ED67AAF3B34FC9E8DAF9B
                    5D4F9FB49FF826A7C1DD17C31A8E8D0FECE3F1AA4D3758B1BDD36FE1B8F890D7
                    02FADAF2633CF14A64F1031914CECF328627CB9A59244D8F23B3763E32FD937C
                    01E3F875E5D5BF675F8A17337892FACB55BCBA5F15D9C37697D690C50DBDEC13
                    A6B4B2DB5D2C50C4A6E206495C46BB99B02B3BC41FF0548D77C21F14FC4DA24F
                    F086FACFC31E05F1CF87FC0FAAEAD7FE2787ED928D63C84B4BDB6B68E3944D1E
                    FB980B2CB344E2372D8DEAD1093C0DFB7E6ABACEA5ABF87FC17F0CF50B9F891A
                    EF8E35FD22D741F14F8DDE2B42BA5456E6EAEDAE952F16D216124223B6B68A45
                    DF32921374AC8936D5D6D66D7C9C25B7973C65E4DA76D1B59B7AA6F793F93BA9
                    75EB7506BCD2DF64F5FC21FB377863C0DF156DFC6FA7FC15F8EE3C556DA149E1
                    B5D42E7E230BB792CA439759165D7996495980733B8698BAAB6FDCA08E2F4FFF
                    0082727C21D33C0BFF0008CC7FB38FC667D11B47BAD025B69BE21F9DF69B0B99
                    4CD25B4ACFAF969631333CB1872DE4C8EEF1EC66627B2D3BF6C7F166A7F1A7C6
                    FA4DBFC17F14587C45F0CF80F43D6FFB1F57F1DDAC3A5DC2DF5CDC2321F2A69A
                    D2116D2453F9D7423333A424224AA2356F34F0EFFC151BE28FC6CF1EFC20B7F0
                    5781FE1FCD6BAC78D3C47E15F16DA5BF8D8DF45712E936B33B2E9F78B63E5CD1
                    B2812A348B016911627F254BC8A2BA979A4FEEE669BBF6BB777B5E4FBDDBAA95
                    2D65A5DC7E6DC6325F3E549AF24B6B597B27C0DF84DA3FECE5F107C65E2AF0A7
                    C12F8CB6FAEFC409609F5EB8D43C696BAB0BE9208FCB89FCBBBD6A548CAC6020
                    31AAFCAAABD1540F3EF1EFFC13D3E0C7C54D7AFAFBC4DFB2978D3C4316A3ABCB
                    AF49A5EA3AF69D73A347A84D1C91CD75169CFAC1B3865944AED23470A977DAED
                    975561A7FB3AFEDDFE21F13E97F03CD87C378347F03FC5B8F5867D4BC49F106E
                    2F355D1350B66BC9CD9323DB4FF682E903B29174123449554158A31257D4FF00
                    E0A75E3BF87737C24BCF1DFC27F08F86740F8A3AB695A247710FC454BABF6B8D
                    4A574B76B1B27B18A5BB8E35F25A7327D99E3123154956366A6A9CA728D35AB6
                    D417CDD92F46E3A74764D69612A9CB4DCF656E67E895EFF25F35AADEE763F017
                    E0C681FB33F89EEF5AF07FC0BF8BD67AADFE9167A15D5D5F78C2CF5592E6CECD
                    A536B1C86EF5A977B45E748AAE72E11B66EDA028C8D37F65AF03E8DE28F126AB
                    69FB3DFC56B6FF0084B6F25D4753D363F17DA2E8D2DDCBFEB6EA3D386B5F6386
                    E24E774D1429236E7CB1DCD9BDFB7A7FC14927FD907C77A2783FC33F0EFC45F1
                    3BC69AB69371E207D2F4BB0D5AE4C56104891120E9BA75FC82692470B189A38A
                    0255B7CF1F1BB7FF0069FF00DB9752F807FB37F80FC7FA57C34F11EBD378EF59
                    D0B461A56A5711E873E80FAACF0C11B5F89434B118E59923748E291C39C150A1
                    9D545CAADA6B5BBE4BF77295ADF392B3E975A8F9545FB2DB4E6B79452B37E916
                    AD7D6DB68717A87EC99E07D4BC376DA7BFC04F8CF15DD9EA736B316BB6FE3C8A
                    0F122DDCB1AC52CA7584D746A077451C71106E0A98E38E3C6C4551735CFD99BC
                    13E22F891A7F8B2EBF677F89A759B186D6093CBF13D8C369AAADA9DD6C6FED53
                    5916F7EF0B7CD1BDDC72B237CC083CD71FA4FF00C15D3C4571FB428F02BFC11F
                    156B91689ACAF85FC53AAF84ED35DD72CF46D53C95964315C8D1E2B29ACE2324
                    6924B2DD5BCEA4B1FB315019A6F0AFFC15BF55F1BFC3BF05EBDA17C36D0BC509
                    E38F15D9784A23A178EEDAE60D02EEE4CC7C8D4C49045716B730AC69E6C02DE4
                    28EECA1982876217928CE1DE36F595A31B7ADD24D746BA1352718B6A7D14AFE8
                    AF295FD2CDB5BDD773474AFD8ABE1E68BAB5D5FDBFC00F8D4B7F79E279BC652D
                    D3FC415927FED49A26827995DB5E2CA92C2C6392152219102ABA32A803AFB0F8
                    37E18B1FD9753E0B9FD9E3E20DDFC328EC7FB363D12F75AD2AF123B70DB96359
                    65D59A65D8D82843E63DABB0AED5C717E0BFF82A3F8B7E2878BB52F875E1CF84
                    BA6DD7C6CF0B4FAA2F897C377BE2F36BA469F0D81B4CC906A42C9DEE0CE97D6C
                    D029B58C1DCC256876E4F27AA7FC16F2E757F05EB9E28F0A7C1BD5B51F0BF86B
                    E1DDA7C4BBEBED5FC476DA734DA73CD2C5750DBC5125C33DCC0D05C2EC93CA49
                    1E1601D519246214DCA31A71DA495BB34A2EDE56518B49EC92B791716F9A4E3B
                    C5EB6DD3724B5EBCCE535A6EF9AFD6E7AA5D7C02F0C6AFF026F7E1B6ADF01FE2
                    F788BC27A94D0DC5D45AEF8C6D357BE9DE1952684B5EDD6B525D911BA2151E6E
                    140DA005E2ABFC4AFD9AFC1DF17FE246ADE2BF117ECFFF0016351D575DF0B4BE
                    0ABF8BFE12FB4874FB8D1E40C1ED0D947AD2DA853B89DC220E1B0C18300468F8
                    4FFE0A09A8FC45F8ADF117C2BE19F06E89AF6ADE06B796583438FC5F6F69E24B
                    E2B16F89E5B1B98A2482DA7764586E04F22302C5FCB2BB4FCEBE33FDBF3E227C
                    7BF8BBF0C53C3E967E1EF14F827E2F4DE04F10785FC3FE398F51F0A78A5A5F0E
                    5CEA3099B525B04B8291308C32880796EB28314CCB190462EA4979A52F94AD0B
                    F777E651696B6767A154E378B70FB3CCFE705ED3E5F0DD3DAEAE9DD1EC1E28FD
                    8BFE1E78C7509EEEFBF67CF8C66E6E9F4C9E692DFC7715B34B73A6BABD95E318
                    B5D5CDDC45147DA8FEFD946D691978AC4F0FFF00C13B7E14F87174048BF67CF8
                    E7776FE19BFD4753B0B6D43E26C9A85B2DC6A008BE69629FC40F1CE2E0349E6A
                    4AAEAFE6CBB81F31F747A27EDE37BFB4FF00C4AB4F00DD784BC75F0BFC747C3D
                    E2EB3B9D674BF14457163A0EA7A6C96D6F731C111062BE61E7DB4F0CF7368155
                    651B555CCB1AF1FF00B2B7FC143A3F86BF027E09EA3F1174EF1CEB37F6BFB3E7
                    FC27D7BE2A9FC48F243ADBA1D3E3B8B76B2F3B6DC5E3492C445C5C2294F34AC6
                    E4492E34A54E538392D9EBA6BCD7551DD5B7D293D7AAB5AFA5D4E0A3149F476E
                    C959C636F939F2F93BA76D4F40D0BF600F83DA13DF48DFB2CF8EF579EFF413E1
                    77B8D6FC4561AC5C41A5991A51670CB77ACCAF044AED95588A6C0A817684503D
                    4FE05786AD7F66FF000DDE699E15F825F15A38F529BED17B77AAF8974ED6B51B
                    F70A114CF797BABCD7136D455451248C11142AE14015E0DF097F68CF8F3A1FED
                    9BF1ECEBBE161A9EA369E11F09EADA2782A7F1E5B9D03425BBBAD4A19AE0DF35
                    942608D63B7596E3F71712868A41119D7CA5AAFAC7FC1513C55FB5BFECC3AED8
                    7C2EF0C5B58F8F1342D7EEF5DBCD2FC6B6DE478620D3EF2E2C3ED7A7DE3594C9
                    7D24D3C1235B87B7891D2372EF090B9C7112952A6E4F5F75B6AFD15E4D7A2D5B
                    7B277D772E1479A6A3D2F157E979455BE76B25D5D925D0E9754FF82747C14F10
                    5E89754FD943C6BAC450AEA096767A96BFA7DED8E92B7EA16ED6CADA5D65A1B3
                    5900CE2DD230A4B32852C499B52FD817E1A6ADAD596A53FC07F8FA6FEC6EB4EB
                    E59D3E294C925C5CE9EA56CAE272BE211E7CD129C2C92EF7C6012702B85F835F
                    F057DD57C3FA07C2DF05E99F0DBE227C59BFD37C3BE1787C6FADE99A5EB5A95D
                    D9DCEA3616D379AAF6FA75C5A4AC91CCB3CFF6ABDB570AC4A094F15F447ED4DF
                    B6978AFE07FC7CF0B7C3BF0AFC2F7F17EA7E2EF0F6ADAED96A97FE228748D291
                    F4F54692D5DD63B8B80E4491FCC202A3CC5C16F9F6698987D5DB8B7A45B49FF8
                    3DEBAEC96E9FDDA9CF427F5AA716D5F9A29D9F69F4F9DF55F37A1E63A7FEC09F
                    0C74AB0686DBE007C738673AC5E6BCB7E9F12DC6A515DDE002F192F3FE120FB4
                    2477180668564114A402E8C4035DBD8FC09F09E95E2DD0B58B3FD9E7E23D8C9E
                    1B7825D3EC2D7C41A6C1A4C325BC31416F21D3D357168F2431C31AC4EF13345B
                    72854924F21E30FF0082B2EA1E1CF873F077E2145F0DF4F8FE1AFC5683C3AC35
                    1D4FC656D65AB24FAC4F1C2905969E2191AF1AD8CB1BCC5E4B71B1818FCDC385
                    F52FDAB3F6B9F167C0EF8D7F0DBC05E13F8736BE2CD4BE24FF0068ADB6ABAB78
                    8D745D1F4F92CED5EE5A29A48E0BAB8DEC8848DB6E540072D9F969CA9CE93E57
                    A72C9C7D2504AEBCB955ACF6DACCA94D4D394B5E657D7AA93BFCEEEEDADEF7B9
                    C9FC74FD9CFC1FFB4978B352D73C61FB3EFC53BFD4B59D262D0F5092D3C5765A
                    725F5A43399E05963B6D663491E19599E29194C91176D8CBB8E65D03F67EF097
                    863E35CBF106CBF67DF89F178927BBFED1903789EC24D39EFBCA111BF360DAC9
                    B3FB698C6D375E4F9E4120C87273C0FC02FF0082BF788FF697F116A09E0EF809
                    E3AD67C3D7FA3DDEA9E16D73ECDA9E9FA6EA8F03AA08AEEF6FB4DB6B0B759816
                    78A4B6BABC0C91B6E08FB636E6AEBF6E4F137ED3DE28F847A9D86AAFE0BBDF09
                    7C7393E1E78B345F0A789E2D7340F10E34C9AE722F7ECD04B346B88BE4DB1057
                    F35244628A44D38CB9A2A3E5F2529A8DFBFC4D5D6F7B3EB72AA2D26E7D14AFEB
                    1A6E56FF00C062D2BE9D3C8B7FB4EFECFBF117F69EFF008280F82FC61AF7C0CF
                    13DC7C29F0FF0083B51F0F5DC967F10E0D13C40F3DDDC5BCE4AC565791AC96FF
                    00E88913C4F7616549DF7290811FD0A7FD91BE1EC9E315D760FD9C7E26E9B7B1
                    EA5A6EB1145A6F8AACAC2CA0BDD3A2486D2E23B5835A481254863488B2C60C91
                    22C6FBD005AE3B52FF008293F8B7C05FB2EEB1F12FC2FF00096C9B4DB3F146BD
                    A56AFA778D7E25DCC5A847AA5BEA7F6186C2C84367A8F9D35D5C6F586DA12904
                    5B5555B0C31DA6BFFF000512F1E7C28F8B1F0AF40F891F09FC33E0AB2F8937F6
                    3A1B3FFC2C3B7BDD56DB51B9B492E1C5BD8ADB29B9B481D0C324E6489F786658
                    5A3024654A4D53828E89356E9ACA4E6B5D2EF99DD7549C76BA0C453519D4F69D
                    A5CDE90B42575E8B55D6CED7B3645E0AFD91BC0BF0EBE2DF87FC71A27C04F8D1
                    A7F883C2D26A1269463F1EC66CACFEDF2BCD76AB6675D36C5249246628622A30
                    9800226DC0D23FE09F9F0CF41BFD0EEACFE04FED0704FE1BF11DDF8B74D65F8A
                    F718B5D56EB3F69BB00F88B05E40D206072A44D30C7EF64DDD09FDAABE257ED4
                    9F03F5CD63C33F07EEEF3E1EF8BB447BDF09EBBA57C488F45D4B528BED11C43E
                    D6C618E5D2D65899E759AD64B991218DCFEEA7F2E33E5DFB177FC14075EBCF03
                    A7C3EF08D8C9F15BE2E3EBFAFD9BC3E20F8971EA1A3C76DA41B3499A2D6E0D30
                    34B105BBB48E30D65E734AD279EDB8493174E32BB8AD1A57B75B5FDED3756766
                    FEF76B5DDD4728AF79FC4ECFD795B5EBA732FC15EEEDD7687FF04F3F853A0D97
                    876D53F678F8D97B65E169753974FB4D47E239D42D41D4B3F6F59629F5F74B84
                    B8DCDE624CAEAC5DF23E66CD8BEFD827E196A7E038BC393FECFF00F1C64D3E0D
                    42C352494FC496FB7892C199EC63FB67F6FF00DA7ECF6CEC5E1B7F33C989CEF4
                    45600D7ABF86BFE0A07E1BF11FEC31FF000BC4691AADBD9243242FA1C92442F5
                    7528EEDAC4E9E1F779464378BE487DDB0921B3839AF93E1FF828E7C45FD94BF6
                    9CF8BD67F12B42D6B5AF16F8A2FBC39A77843C11A6EAF7DE23D2F4D9A7B0D4AE
                    A516F269FA4B5E083CAB46791974F9A60EA41DF1AAB8139426D5ECE36FBD495A
                    D6DDDDDD5B6DFB18E9CA9A5BDFF26E57EDA5EF7DF6EE7AC597EC13F0DB4FF1BD
                    BF88E3F813F1FCEAF6BE296F1B472BFC539A441AC32796D78636F1098CB18B31
                    952A54C64A15DA4AD76BF06BE03F853F67FF001FDE7897C27FB3E7C4CD3752BA
                    370628E4F1269F7763A5FDA24F32E058DA4DAC3DBD8899F0D20B58E212100B6E
                    C0AC8F8BDFB79F8F25FF00824CF8EBE39787BE1EDFF81FC77E1FF0EEA57E3C3D
                    E33B7BCD39AC66B4F315E60935B24F2C6446658449042655318710EE6DB0783B
                    F6F8F8C3E24F8BBE25F87F6FF02F49BFF11F80FC27A4F8975771E3D8A28F5917
                    F15DF969A616B35597F7D68D193766CB1F3B602AA7994A9CE178AD3974F95BA7
                    4B5A2969D125D0BE54E0A7D1DFF092DFFEDE9FDEDBEBAF45E3BF825E1BF88DF1
                    B13E226A3F017E2B43E2E3649A6DDDDE9DE2BB1D322D62D50B1482FEDEDB598E
                    0BE890BBED4BA8E555DED80326B1EE3F652F00DFE8BADE9D79FB397C4CD4ECF5
                    DB3834F923D43C516379F60B785D248A3B132EB2C6C024B14728FB2188896359
                    3FD600D5E1FE33FDBF3E227C7BF8BBF0C53C3E967E1EF14F827E2F4DE04F1078
                    5FC3FE398F51F0A78A5A5F0E5CEA3099B525B04B8291308C32880796EB28314C
                    CB191E91F14BFE0AD1E2AF86BFB31EB1F11E5F843A45B47E00BBD5B4FF001E5B
                    EAFE3DB6D36DF48BBD3A44592D34F98DBBBEA33CEADE65B8315BA3AAE1DE190A
                    C66634DD96DDD6BD1A8BBF6B3E757ECE493B3691A4A9C94A3DE56B77BA738A5D
                    EEB91B5E4B4D8E97C47FB29F837C5DE19D074DD4BE06FC72BC9BC353CF71A7EB
                    327C445FEDF8CCE812647D57FB7BEDD2C5222A234524ED1B2468A54AA28193E2
                    EFD857E17F8DFC5577AC5EFECE1F1622BBBBD12C3C3AB1D8F8D60B0B5B2B1B09
                    639ACA3B5B7835C486D5ADE689658E48112449373AB067627C2FF6B3F8B7F11F
                    44F8D3F13755F0F7C51F89234DB3F1A7C2BD474DD122BEB6B783EC7A9EA26DEE
                    34B188879704A1C33156591D82892478C143F40F86FF00E0A63E2CF1DF88E4F8
                    7FA1FC2FD0AE7E34DAEB1ADE9D71A05CF8C5EDF438E0D2BEC8D35D2EA62C1A56
                    1225FDA08D3EC618BC8CADB150C957184EDCEBE24DE9D572C60E4FE4AA59B5B6
                    ADE9A98C2AA714E2FDD7A2ECF5934BFF0024725E76FB5A0CF0D7EC69E01F07FC
                    5ED27C75A6FC06F8E16BE23D1356B8D76CE45F88A0DA477D73108AE2E1AD0EBC
                    6DDDE645024DF19F3327764939F6AF0778FF005BF03787E2D32CBE12FC589EDA
                    1791D5F50D7F49D46E0977673BA6B8D55E5600B1001621570AB8550078A7C32F
                    F82B7699F18FC7FF000DF42D17C35A4E973F8F2C0DC35AF893C4F1693A835D47
                    A84D637965A7C461787509ECDEDA779D5278C88FCA68C4BE67CBD07EDE9FF052
                    49FF00641F1DE89E0FF0CFC3BF117C4EF1A6ADA4DC7881F4BD2EC356B9315841
                    2244483A6E9D7F209A491C2C6268E280956DF3C7C6ECA57828C1ED7692FF000D
                    EF6F449F9590D535CCE56D746FE7B5FD5BFBDDB73D7BFE1767897FE88FFC45FF
                    00C0DD07FF0096547FC2ECF12FFD11FF0088BFF81BA0FF00F2CAB1BE29FED11E
                    29D13F675D0BC6FE10F0125FDFEB90DB5DCDA778C75B5F0943E1E82587CD7935
                    19658A692031F11B46904AFE63282A1433AFC9D61FF055FF00887F16353F0DF8
                    A7C3FF000EB45D53E176B3F07756F1E6A5A65878C3C9D71A6B7B948245B59C5B
                    AC2FB18158DD6E210E92BCBB83247134D47C8E51968E37BDFA5A129BF95A12D5
                    5D5F408B525192FB56B77D6518AF9DE4B4767A9F657FC2ECF12FFD11FF0088BF
                    F81BA0FF00F2CA8FF85D9E25FF00A23FF117FF0003741FFE595781F853F6F4F1
                    BE8BA5EB1A6DAFC2DD1069FA47C32D2FC6BE109350F88575737DE2B33A247F61
                    95A4B0791258E5C46F3B493B3B4D6EC413336C668DFF000503BDD37C6FE3FD0A
                    DBE1CEA56FF149FC7565E06D3F41D57C6AF2699AB6A0DA3A6A1E7C336D992C6C
                    96D03CAC62B7F31C216683CE7295B4E94A3370B5ED7FC25C9F84B47DBAE9A934
                    66AA439E3DAFA745CAA77F4E577BFCB7BA3DFF00FE1767897FE88FFC45FF00C0
                    DD07FF0096547FC2ECF12FFD11FF0088BFF81BA0FF00F2CABE1DF859FF000509
                    F8AFFB277EC69E3AF1B78C7C371F8F62F0778D3C563C45A9F8A3E20DA69CDA75
                    BD8DEF97169F66EB69FE9972C9B84112DBDB44E223B9E276546E97F6ECFDB57C
                    75F10ECF429BE1947AA787FC15E11F8A5E10D03C45E21B4F10476977A84D797F
                    A7F9FA79B336B234B6821BE459245B981FCDC284923126551A4EACA9C63F6F93
                    E5CEE2AEFC9392D7AE96BDD1A4D7239A9E9CAE6BD5C2F74BCF4BDB75D6D676FA
                    F7FE1767897FE88FFC45FF00C0DD07FF0096547FC2ECF12FFD11FF0088BFF81B
                    A0FF00F2CABE59D07FE0B5D278AFC55E25B8D1FE0A7C46D67C01A5D9EB3369DE
                    27B2D135A36F732E98640E2E25934C4B18E199A1944525B5EDD31C00F1C6C768
                    FA7FF64CFDA04FED39F072CFC5C83C1F25A5F385B6BBF0B78993C45A4DF288D0
                    B4905DAC50B32AC8D247878A3706224AAE40A88C5CA3CEB6B5FE4DB4BF14FCF4
                    BEC44A6A33E47BEDF76AFF003FD37303E357C68F124DF06FC5A8DF08FE2142AF
                    A35E2991EF3422A80C0FC9C6A24E07B027DA8F82DF1A3C4907C1CF0922FC24F8
                    8532A68D66A244BCD082B81027233A88383EE01F6AF42F8E5FF2453C61FF0060
                    4BDFFD10F47C0DFF009229E0FF00FB02597FE884A45187FF000BB3C4BFF447FE
                    22FF00E06E83FF00CB2A3FE1767897FE88FF00C45FFC0DD07FF9655E8B450079
                    D7FC2ECF12FF00D11FF88BFF0081BA0FFF002CAB99F8D5F1A3C4937C1BF16A37
                    C23F8850ABE8D78A647BCD08AA0303F271A89381EC09F6AF6BAE5BE397FC914F
                    187FD812F7FF00443D0079EFC16F8D1E2483E0E784917E127C42995346B35122
                    5E68415C0813919D441C1F700FB574DFF0BB3C4BFF00447FE22FFE06E83FFCB2
                    ADCF81BFF2453C1FFF00604B2FFD1095D4D0079D7FC2ECF12FFD11FF0088BFF8
                    1BA0FF00F2CA8FF85D9E25FF00A23FF117FF0003741FFE5957A2D1401F357ED1
                    9F187C4375E31F846D27C2AF1EDB183C6C9222C977A21370DFD97A88F2D36EA0
                    406C12DF3155C29E73807D43FE1767897FE88FFC45FF00C0DD07FF00965599FB
                    4CFF00C8EDF06BFEC7B4FF00D34EA75EB1401E75FF000BB3C4BFF447FE22FF00
                    E06E83FF00CB2A3FE1767897FE88FF00C45FFC0DD07FF9655E8B450079D7FC2E
                    CF12FF00D11FF88BFF0081BA0FFF002CABCFFF00E098772F7BFB316B1712DBCD
                    672DCFC4DF8853496D31532DABB78D35B6689CA1642E8495628CC84A9DACCB86
                    3F42D7807FC1353FE4DD7C47FF006557E237FEA6FAED3E8065FC16F8E3AA783F
                    C41F126C6DBE1AFC41F10451F8DB5222F34C8F4F36EFCC6303CDBB8DBB6795EE
                    2BC360FD9175661E37B1BCD53F6CEBCF0CFC48D5AE758F12E828FE0BB0B7D524
                    B88921953ED3690C37B0C6628E34C437319C27524B13F59FECBDFF003513FEC7
                    7D4BFF006957CA5E1AF19F88FE11FED7979A17C69D73E2EF843C45E2CF1CEFF0
                    8F8B6DB56BBBCF01F89B4BFB6F9B67A2FD992436BA6DD180240DE6C514B3B824
                    4D386285538A95650FE656EF74DC74B6CF5B3E5DDF2E89B560A8F968BA9FCAEF
                    E6B497BD7E965757E9CCAF64DB5D23FECF7A77863E2AE9BE2AF007803F68DF85
                    2F6BE1FB3F0ADFE99E143E1C8B4ED6F4CB3DDF65B79E3B996768DA15924549AD
                    9A1982C8C3CCE98E2FC37FB155D78675AF0EDEC773FB61DCBF86BC7B7BF11ADE
                    3B88BC10C936A9769224FE662004C2C93DC008A548F3D8820AA14CBFF82847FC
                    1433C79A8FC2BF8E5F0D64B29BE0FF008DBC3DF0FEFBC77A0EA3E16F1BDA6A7A
                    D25AD9DEA4062BF896DB1A7BCFBE365F26694B46EFB668E446C77DF18BFE0B11
                    7BFB36F8F6EBE1BF8C7E195C0F8A97B258B785749D1AFF0050D7ED3C45677515
                    E491DD48F63A6CD7B0B4634FB913471595C18D82953221320D63CEE31C45DFBD
                    7B3DDB5CD77FF93A775BA716ED6D477716E925B2D74D1250B2BFFDB93E5BED66
                    A37BD91C2FC3AFF827C587C2EB095349B5FDB061BED452FECF59D404DE118EE7
                    5FD3AF6EE5BD9F4FB9F2D153C9FB4DC5D48924491DCC46EA558E7452AAB77E24
                    7EC2B69E3E7F19C167A6FED63E14D1FC66BA1432695A2C5E0C4B4D2ADF4560FA
                    7DBDAF9D1CB22471B004EF7766C60B11915F48F843F6F7B76FD83350F8E3E35F
                    0278CFC04BA169F7777A9F86F55D3A7B5D4A392DE478F6C497515BC8D1CCCAA6
                    1796284B2488CC919DCABE59E39FF82A7F8DBE107C5ED1FC09E31F843A1695E2
                    5D4357F0EA4C967E377BCB61A46B3A81D3A2BD864FECF4325C41738596D9D225
                    C30293C82854E6EB4682F89B492EEEFA25D1EADCBCAF2969793329CE0A0F112D
                    95DB7D55AC9BEEBECAF3B462AF648E6BC55FB22587C49B1D7C78C7C33FB52F8C
                    753D73C292F83E3D5B5393C2EB7FA6DA4D2C33CF245242D18924927822971702
                    68E329B628E28C98CBE7FD945759F0EFC65D375BD1FF006ADF1043F1B9AD24D6
                    1EF4F84D5F4E92D512385AD7C9F2C10238A2468EE04D13AA6191833EEEEF42FF
                    00828B7C40D53E23E9DA45C7C28F0ADAE911FC52BAF867AE6ABFF09D4ACBA4B2
                    DBC7716B78919D357CEFB42BF96222D1ED99A24DEC1CBAF1DE3DFF00829C7887
                    E1FF008EF5CD575FF827E21B8BEF0AF80BC4DE2DD24E83E3E13E9BAFE9BA7EA9
                    6D6AEC2DE516F1995A3D973E64D0968A26DB034CD2C8959F3734233FB2E2DAF4
                    E5F6AECBA68D4FA3EAAED58DA9A6EA7247E2BA5F3E674D26FB7345C7B5D2BEE9
                    BEDFF674F0B5C7ECCF6DE3D5D17C07FB42EA13FC42D4D759BE9F508BC365ACEF
                    059416665B758A58E34052DA26F2D95A356185554F92BC27C09FF04F19BE1FA6
                    96969AC7EDA5711685E1AD63C27A6A5C47E036FB158EAB224B78AA45A8667696
                    38E45772C54A003E5254FD69AA7ED917FF00093F629D6FE33FC4EF0BD8787AC7
                    4AD33FB6A2D2FC3FABCBAE4D716AF1A340859ED6DB172ECE10C48AEA1B1891F3
                    C677EC51FB72EB3FB4E681E34B9F177C30F167C3297C1CF1C9F68D4B4AD62D74
                    ED5ADA489A4F32DA5D534ED3E7778F632CA9F670A876E1DD58353AC9A94D54FB
                    31B3ECA36E4B765EEB71B6F6BAD8CE8CD72C654BED3D3BB77BDFBEAECEFB37AF
                    53E7A8FF0060AF0B5DF814E83AB781FF006A1D6E16F08E91E106BAB8BAF0EC17
                    5E56917335C697781EDE58B6DDDABCCDB1D4046DA85D1D97757616FF0006FC45
                    77F157E1AF8C75C93F6B8F146B3F0C6EAEAEAD3FB4A3F06AC1AA9B885A075B98
                    E08E300085990183C9639DCC59FE7AE73C17FF0005CFB8F1BF8235EF16C1F04F
                    C6D67E061A143AFF0087BC51A8E9FADE9DA2CF6F25CC1003A95E5CE931C16AA1
                    2E16E0C966FA8462DE299F712811BBCBBFF8298F8EBC43E38D0FC31E0AF83FA0
                    78C354F10F82350F1C69BAA5B7C44B46F0EEAF6F697B0DBB47697905BCD2CA64
                    49E3911DEDE352648D4EDFDE345ACE555BF693BDDB6DDFBA52936D3F28CAF7E8
                    ADB2481508F22824ADA457DD18A49F6578A56D2EFBDCC9F86DF0327F83F75E23
                    B4F0C687FB57687E10D7F52BBD621F0B59DF787A1D3745BCBA95A5B896D25594
                    5E22BC8F2BF92F72F0AB4AC56352176F35AA7EC69A66BDE04F14F87B50F0B7ED
                    437B63F103519352F18871E1448FC54D22C48EB3C09B6DE02D1410C7E75A456F
                    381106128767764F007FC1796C3E3B78B7401F0C7E0CFC4BF885E19BB9B4DB3D
                    6AF34AD17559AEF48B9BEB582E55018EC24D34A40B71109DAE751B668C6E6549
                    1402DDD780BFE0A31F163E26FECBA9F1534EF825E0ED2745BCBABA8618FC43F1
                    3E2D3069515A4D770DCCBA9CBF6078EDF0F6C8918B6377BDE7018C51A196A24A
                    5457B4969CBA5FC959FCD6DDD3497448AE6E69F27DA96B6EB7D7EE7BE9A3BB6F
                    76CCBF047C22D53E08EBDE30BEF87FE1CFDA77C39A578A2E6F7584F0A4371E19
                    FEC5B1D56E41692F61798CD731B34A4CA626964B62ECCCD6EF920F43F1D34BF1
                    17ED49FB1B5FFC26F1B783BE3F5B49E24D222D2F5DD7B4487C3906A17830BE79
                    5F3257B74F370C18AC0B80C7608CE36F5F75FF000508D3E5FF008271E89FB43D
                    9787DBFB3B5ED0B4FD6934FBDBFF00260D3D6EDA242F75751C52F976D079A5E6
                    9D227D9146EE11B1B6B8BFF8794F8BAF3C4A34FD37E1F780F5B8353F86DAB7C4
                    1D0B52D33E227DB74ED63FB3EEE181A159E2D3D9560952E23963B85DEC412AF0
                    A106A6AC654F9A9CFEC5D3F2E48CA4F5F28C5FAA8A4B648704DA8558AF89E9E6
                    E4E2B6FF001496AF6726DEAD9E3BE20FD83350F16597895754D6FF006D1BDBBF
                    16788745F13EA17AD07809267BDD23CBFB13284B454555305BB150B86302E786
                    903EFE81FB20CBE1996FB52B2B7FDAE61F16CDE2BBDF1869FE2553E0F1A868B7
                    57B188EF2185020B592DA74540D0DCC132831A326C650D5E8363FF000541D7A0
                    F1A7C131ACFC37D0B44F087C6B6D22CF4CBE9BC7103EB2D757FA79BC0D069A2D
                    F74F69130F25E669629370661014018FA8FC5FFDA7FC57F0ABF6A4F0CF829BC1
                    BE1B7F06F89FC3FA9EA90F8A6F7C5325A4915ED946246B13682CDC1DF1B09048
                    26E238EE1B66630AF5554A95D4B4E5724FC9C545C969E5087ADA295F44654E70
                    ACA1CBAAB464BD25CD18BB7FDBD25E5777B6A7CD3F15BF6354F8CDE3AF12F883
                    5CB1FDAE27BBF15683A6683791093C2460DBA7DE1BDB7B80ACA773FDA5A6768E
                    42F6EE2778CC3E5048D35FC39FB2E5A784B5EB0D574FF0AFED3F6FAA699E2BD4
                    3C616B74ADE18DF0DD5FD91B3BA880DDB7C9753BC2E3723F0ACA9FBBA77FC3E4
                    BC4917C46D07C2CBF01FC5FAE6B36ABA42F8DEDBC356FAD6BBFF0008C4DA9471
                    4D1C70CF6FA41B49FC98268E59FED57164CAA4F96B31183E99FB3FFEDABF14FE
                    2B7ED83AB7C31D77E13783347D33C35A52EA5AFEB7A3F8FA6D624F0FCB373676
                    17303697047F6B9933218E1B895638C6E6721E3F305097C0BAF32F926A52D7B3
                    697AE895F445546A51529EB6E57AEBBAE48BFBB45DAF7D373CCBC39FB2DE9FA3
                    FEC89A1FC1CBEF087ED3FADE8DE1BD606B1A76B57571E1CB7D6AD5BCF695E159
                    AD6485046E259E26223F33CBB8914383B4A9F17FF656D23E2FFC60D43C652F81
                    3F692D0EF350BDD0352367A6FF00C235F6582E345B849ECDA333C92CCB1E5007
                    83CCF25B2CE23590F9955BFE0A1DFB5D78FF005ED4EC2D3E1CAEA3A0F847C03F
                    16BC29E17F13788ECBC431DADCEA37173A8D82DC69FF006336AED2DA7937A8B2
                    48B73049E61550924624AEE7F664FF0082AB4DFB507ED2D1785345F851E3AFF8
                    40B539F52B3D37C6A9A2EB3F611358C8F1BB5D4B2E9D158470CCD14A2192DEFA
                    E4B10AAE91336D0E8A9351AF4F7E66D7AC6109297DCE2E2DEF6BAE8D956318C5
                    C67AAB59F5B2729271FBD3BA5B6CEDAA4FF8FF00E0DB9F8E3F163C27E3ED3FC1
                    5FB46FC3CF1D783EDAE74EB5D73C323C39E75D58DC18DA6B2B88AF65B9B79616
                    78A37198B7AB2028CBCE53F6A5F07DF7ED51F087C3BE0DBDF097ED27E17B3F0E
                    6B1A6EB897DA31F0DCB7D7D71A7CC9716DE7BDECB72ACA278A295B0AA59A3009
                    2A595BCFBF6A1F14FC68F8A7FF000513F13F84748D3B523E16F867E0FD27C5BA
                    35BF863E285C7872FAFAE66BBBB50F730B597D92E1247B4304905D4B2431C00C
                    A9BE5711A56B9FDB93C4DFB4F78A7E116A561AAB782AF3C25F1D24F877E2DD1B
                    C29E278B5CF0FF008871A64D73917BF668259A35C45F26C882BF9A9223945226
                    8733F67C9A3E64D7F77F78A2A5FF0081BBD975777AB6695A2E9CA7CDD22FE7FB
                    A752DFF802B26FD16895FB6B2F84971E1CF8DDE2EF19F873C35FB51784EDBC7D
                    731EA3E23F0EE9371E1D8F4AD56FD214845EE5E57BA826291C41FECF711249E5
                    2EF46CB6EF15FDA6BF664F17DD6ADA36B3E0EF871FB4BF883C59ABF8DB41D575
                    BF124F77E15B7D4B49D334B173E42407CF8E29E488DD3956B98E7924DCC2691D
                    42AD7A87C71FF82C5788FF00673F10FC4DD27C4DF06ED2E759F03F82EF3C7761
                    A3E89E3CB2BFD4E6D3AD6F52D656D4623124760DB6449D44725D178C48177488
                    63AFB03E0D7897C51E30F015AEA5E2ED0B43F0EEAB76CD2259695ACCBAB40B01
                    39899A692DAD8F985082C8232AAD901DC7CC54212E48568FC2B95AE9F04B45DE
                    C9C6DA6C934AC88ABF6A94FED7345FCE2AFE5B4A2EEF46DA6EECF8D1BF64DB1D
                    3EFB49D7B44F0B7ED47E1BF88B633DFCFA878E74E93C31FDB7E2117DE57DAE3B
                    C5959ED1E393ECF6F858EDA3F2BC88FCAF2B6D735F103FE09FFA2F8C749F11E8
                    FA6681FB56F843C33E24F01DBFC379744D1FFE1116B5B4D1E172E52292E566B8
                    F36469272F2C92BB31B8908208429FA334524DAB5B4B6DE5A3564BA2B3764B45
                    776DD9719B8B6D3DF7F37752BBEEEE93BEFA2D743F3F7C5FFB1A5A7C52F0E0D3
                    BC6DA2FED63E3510E83A86856975A9CDE168EEEC45F2BA5C4F1CB6C626DCD1B0
                    410B96B55545C400E497E9FF00B1B69BA536A37B6DE18FDA8ADFC4575AF69FE2
                    8B2D6E11E148AE746D56D34CFECB5BAB785716BFBCB4CA3C32C1241C929147C6
                    3EFF00A29F33BB69EFFE7CDF9EBF25D95A60B915A3E7F8A49DFBDD2B3EFAF777
                    F80AFBF640820F1A787BC41A068BFB56785353D0349D6F4D6974E3E1399B549B
                    58904BA85FDCB5D0999EEA595217054AC686040B1AA6E46E7B43FF008278F87E
                    CBC39E13D0756F0EFED5DE26F0C784BE1EDE7C318F46D49FC26B6DA868D72CAC
                    CB3BC0229FCE5315B6D92296323EC916724CA64FD1EA285392564FFAB497DD69
                    CD5BA293B0DC9BB5DEDFE69DFD6F14EFBB6AFB9F9C5AF7FC13DF49F196B377AD
                    F8834FFDB1FC43E2ABBB0D234EFED9BED5BC38C447A5DEB5E59992C91D74EB86
                    4762B9B9B5972371FBEF23BDDB1FD83B44D0750BDBDD1BC39FB58E83A8EAB26B
                    51EA5776379E1A59752B1D5AE5AEAEF4F977330F23ED0EF2C6EA16E232EC1660
                    A76D7E88514A6DC95A5B6BFF0093692FBD68FBABA7A3609B4ACBBA7FF80FC3FF
                    0080FD9FE5E963E08F833FB22E9DFB38F89F4DD43C01E1AFDACBC2B047A2D968
                    5ADD8C5ABE877D178AADECD1A3B66BB92EE79A749638D8C6B2DA4B6EE230880E
                    D4455EBFF688F87BABFED07F1AFC37E3A1A27ED3BE0ED4BC2BA2EA5A2585AE85
                    0784DAD025FA04B89D85DFDA1CCD8484A9DFB01857E4E5C3FD9145155BA9FC4D
                    77DFCEE9FE6F4D89A2952D29E96497DD6B7E4B5DCFCD2F0C7FC1353C3DE18F06
                    695A1A68DFB5B5E5B68FA3E89A25BCD72FE107B858746BF17BA69DE106D31380
                    855711CAA01912490092BDFBE2FE93A97C62F8F7F0D3C7F73E0DFDA2749BAF86
                    135D5C59695A7C3E19FECED4DEE61304A6E84D24931CC4CC83CA962C6E2460E0
                    D7D5F4554EA4A6F9A6EFAB7F37BB7DEFE7E5D909C534E2F6DBF2FBB6E87C029F
                    B1C585AFC19F15FC35B5F0F7ED5D67F0DBC4724F358F85E2BBF0D7D87C32F34C
                    D3B8B462E67921F31988B6BB96E6DC03B7CADB851563FD8B21B4F19699AD5A69
                    FF00B59D8CBA778EA0F888F6D02F83D6DEF3558AC22D3C798A50910B41110628
                    CA2A995F66C02309FA11454C64E2F9A2F5D3F069AFC527F25D9152D6F7EB7FFC
                    9938BFBD36BE6FBB3F36F4DFD816FF0043D5B45BDB0D7BF6D4B597C3BE27D57C
                    61A72183C037105B6A9A8BC8F7371E54D68F1B30696631975262F39F615CF1D1
                    DA7EC6F6A9F1053C537BA37ED61ABEB875DD23C4D71757F2F856692EF50D3A3F
                    292576E1824B1E55E042B02E4B431C2E4B57E80D1445F2DADD2D6F95ADF92FB9
                    7643AAFDA7339EBCD7BF9DEF7FBEEFEF7DD9F99DE15FD943C57E21D2FE277C38
                    D6FC1FFB4E687F04E4D4ED2F3C05A2595FF864FF006130945DCE514CB234B6E2
                    E87EEE0BD92787CB7286D902296EBED7F634B2D0FC433F88743D0BF6ABF0EF8C
                    DB5DBAD7AD7C49A79F098BED3DEEED6DADAF2DA34937DB35B4EB6B03B452C320
                    474531797B542FE8151445B8EDDADE6F6DFD7955FBDACF4D0525CCEF2EEDFA37
                    75FABB76BBEAD9F26EB5F0FBC37AF7EC9575F0566F817F1953C137962D67208E
                    6D312F4BB4866373E78BFDDF6833933799D7CCF9BDABC6B56FD80747F12F8DE4
                    F19EAFA4FED8BAAFC4957D3AE2CBC5F36B5E1F8EFB4CB8B1596382E22B58A44D
                    3CCBE54D2C4C64B470E92C808FDE3EEFD17A28BBE6E75BDEF7F3EEBB7CBCBB22
                    7923CBCAD69B7C9EF7EFF33E5BF1C4375F15BF65FF0011FC2CF177C3DFDA0BC5
                    1A778BB48B9D1B57D5EF5B418F53BC4B88CC72480C3731DBC4F839022852307A
                    276AF2BD5BF64B8FC51AEFC4ABDD6F46FDABB5B4F8A7E0CB5F03EAB6D70FE148
                    A2B7B3B6F34C32C0D0F9722CA1E7B9621DDE26FB43A98CA2C689F7C514F99EBE
                    7A79755B6CB7E9FA22D49A492E8EFF003BA7F9C53F91F0069FFB1B69BA536A37
                    B6DE18FDA8ADFC4575AF69FE28B2D6E11E148AE746D56D34CFECB5BAB785716B
                    FBCB4CA3C32C1241C929147C62BFC47FD857C25F11F40B6B097E1E7ED2BA707D
                    135ED1355B8B69FC3B2DC6BEBACB092FEE6E1E79652972F280FE65BF938C08C8
                    308F2ABF41E8A4E4DBBBFEB4E5D3B7BBA69D12EC8719CA2E2D3F86D6F2B3BAFB
                    9B6D766DB5BBBFE6EF8EBF6029FC7DE31D5358B9D4FF006CEB56D62E7C3F7775
                    696F1F817ECEF2E86E92E9CC03DB332F972AF9842B00ECC77065C28D9D3BF62D
                    1A2F8CF55F16585B7ED7361E39D43C477DE24B6F12C1FF00087ADFE96F7B0C50
                    DDDA449B0DBBDACA96F6F98E78652AD6F1BAB2B82C7F4268AAF692EFDFF1E5BF
                    DFCB1BF74927A192A714924B45B7C934BEE527F79F106B5FB37689AB785FC2DE
                    1B8FE1BFED1567E0EF0C5CD8DE9F0F24BA04F63A9DC5A5CC9771DC4CD34F24F1
                    CED73219A49ADA5864919543315054F4BFB40783AE7E38FC59F0A78FB4FF0005
                    7ED1BF0F3C73E0FB6B9D3AD75BF0C8F0E79D7563706369ACAE22BD96E6DE5859
                    E28DC662DEAC80ABAF39FAEA8A5CCEF7EB76FE6D59FDEB47DD69B1695972F4B5
                    BE5FD6B7DEF67D11F27FC7DF0E3FED09E15F04E9BA8FC3CFDA134C9BC05AC5B6
                    B7A7DF59BE853DC5C4F0C4F162E16EAE678A756491F25E32CAC43A323AAB8F2A
                    B2FD8A74BD17C0F6BA1699E1CFDAAB4B8ED3C2BAC78356EE09BC2ED72FA76A57
                    5F6A9119A42CA5A27C88DF6E7693E679A79AFD05A2A1C534D3EB7FC63CAFEF8E
                    9E8DF71DDDD3EAAD6F93E65F74B5F5D7A1F18699F056C60B4F838351F879FB44
                    EB779F05ADBEC3A6DEDD49E1F8A7D6AD8084A417E209E38E58D25B6B49808D23
                    CC96B116DC3706E4BC4FFB20DAF8AFE2178DBC553E85FB5543AFF8BBC5769E35
                    B1BCB76F0A46FE13D52DAD7EC714DA7F6DBF64C40D1DD7DA11D07CC0B1663F7E
                    515A4AA49CB9DBD757F36D49BF5E649DFBAB934D2843D9C7E1B256F249AB7A59
                    B56D9A7667E685EFFC130FC1B7F7DE24BA93C2FF00B5ECD75E31B6D7ED75B7BA
                    D6F41BD4BC4D6486BBF2A29E6922B26DE1583D9240CD80B29953E5ADFF001BFE
                    C15A078F5356B4B8F0CFED6B61A1F88AFF0048D6B5AD274BD5B40D3EDF54D5B4
                    DFB30835332C32ADC4172CB6902BFD9A68633B0388D645575FD10A28A7394397
                    934E5B5BCACEE97A27AA5B5D27BA56B9C9CEFCCEF7BBF9CAD77EAED66F7B69B1
                    F117C2EF80D2FC166F1058785B44FDAC344F076B7A85D6AD0785ADB51F0FA69F
                    A35DDCC8D2CF2DACFE6FDB80791E47F2A4B99220D2B11183B4AF51FB3FF86AFB
                    F6749EF67D27C15FB42DFDDEBDAE5CF88BC473DEDA78590F89AEE6B78EDC35C2
                    40F147108E3861DBF65580B18C190C859CB7D6B452526B67D2DF2BA76FC17DCB
                    B222493DFBDFE7AEBF8BF9B6F76CF02F8CFF00B496B575F07BC57137C1FF008A
                    902C9A35E299248B4AD9183038DC717C4E075E013ED4BF06BF691D66D3E10785
                    225F841F14EE162D1ED104B1C5A5EC9008106E5CDF0383D46403EC2BD4FE397F
                    C914F187FD812F7FF443D1F037FE48A783FF00EC0965FF00A212A46721FF000D
                    33ADFF00D11AF8B1FF007EB49FFE4FA3FE1A675BFF00A235F163FEFD693FFC9F
                    5EB14500793FFC34CEB7FF00446BE2C7FDFAD27FF93EB9AF8CFF00B496B575F0
                    7BC57137C1FF008A902C9A35E299248B4AD9183038DC717C4E075E013ED5EFB5
                    CB7C72FF009229E30FFB025EFF00E887A00F2CF835FB48EB369F083C2912FC20
                    F8A770B168F688258E2D2F6480408372E6F81C1EA3201F615D27FC34CEB7FF00
                    446BE2C7FDFAD27FF93EBAFF0081BFF2453C1FFF00604B2FFD1095D4D00793FF
                    00C34CEB7FF446BE2C7FDFAD27FF0093E8FF008699D6FF00E88D7C58FF00BF5A
                    4FFF0027D7AC51401F2CFED11FB446B17DE2FF0084CEFF00097E275A9B5F1A24
                    C89345A66EB93FD99A8AF969B6F48DD862DF3151846E73807D3BFE1A675BFF00
                    A235F163FEFD693FFC9F47ED33FF0023B7C1AFFB1ED3FF004D3A9D7AC500793F
                    FC34CEB7FF00446BE2C7FDFAD27FF93E8FF8699D6FFE88D7C58FFBF5A4FF00F2
                    7D7AC51401E4FF00F0D33ADFFD11AF8B1FF7EB49FF00E4FAE3FF00E0975A836A
                    FF00B2DEAD7925ADCD8C979F133E214EF6B72144F6ACFE35D6D8C526D2CBBD09
                    2ADB59972A70CC304FD115E01FF04D4FF9375F11FF00D955F88DFF00A9BEBB4F
                    A007C02F8A573E1ED5BE245AC7E10F16EA6B1F8DF52FF48B3B781A17FF0057D0
                    B4CA7F4AE2358FD9AF4DF11F8A34E9353B4F8F9A9F8474CD73FE1278FC1D76DA
                    54DA336A82F5AFA3BA2EC3EDBFBBB860E908B916EBB1711715EC9FB2F7FCD44F
                    FB1DF52FFDA55F247FC14BFF00E0A17A27ECF9FB5DF805D3E30E83E155F85FAE
                    E903C45E0B93C4B6B6973E2EB4D65DED2666B377134CB6313C374A554AE59CF5
                    4C829EB5A9C16EE492F277D1FC9DB5E8F5D2D74E5FC29B7B24DBF356DBE7B79D
                    DAD9B34B44FF008267FC3FD3ADAEACAFB46F8FDADE917BA06B9E179F4EBC6D21
                    229B4FD5AE62BA9E3792048E779126851927690CCDCF9B24BC636F5FFD85BC39
                    E2FD392FF5A83F684D57E245A6A363A9D87C449468B178934C92C9674B58E1F2
                    A24B210C71DCDCA189AD5924171299048CE5ABD9BE23FED67E2BB7F8F3A9F81F
                    E1DFC3987C7F2F846DB4CBFF00144B2788E2D266B482FE499621671C91347753
                    2A4124AE92CB6E8136ED91DCECAF21F8D3FB73F8C3C49F11FE207C16D4F424F8
                    5BAEEA7E08F10F883C31AEE85E30B2D575EB38B4F68E213DD597D99A2B233099
                    2584892E329B83795229558A95E50A5757F7549A57B3F72F51B5E7BCAFBB77B3
                    6552A6AAD471D3DE6937BAF7ED1B3B6EB64D6CB4BA5A1EABAEF86ECFE20FECF3
                    AC7C36F1BF84FE2BF8FB48F11E9D369BACDE6B31582DE6A692A15766FB33C314
                    4D8E408238D54805556BC8B50FD86B42F12F82F50B3F10BFED1BE27F14DCFF00
                    642D8F8C7516D14EB9A2C7A4DDFDB34F8EDCC7125B1115C169099ADE5698B1F3
                    5A5C0C70FF000FFF00E0AD7E2FF84BFB3DC897BF0B359F1647F0A7E16F847C6B
                    E23D7F53F14C30DCEBB63A85BB0B8B9B640933CB3A35BCC42DC343E6B249B9E3
                    1B1E4F6C7FDBCFE225CCDF12747B5F84FE175F147C3DD574F864FB7FC408EC74
                    44D32F6D5AEA2BFBBBE7B3F320655531BC315BDC11232057742D22F562A9CB0D
                    566DBB72BDD69F0B4934BA59BD1AB34AFD1339F0D57DB5282FE749D9B4FE28A9
                    59F7BAB369E8DF2F5B1809FB1D78553E167C48F0C1D17F680924F8A1AEC3E27D
                    4B579752B596FEC35485A178AF2C834860B69124B789C6C8B6E517208000C4FD
                    A2FF00615D33F681F11D8DE5B6A5FB48F806CAC3C0B73F0E934BF0E41E1C6B47
                    D22E4C7F698D8DEDADCCBE64821841904819444BB7692C5BD1BE09FF00C1583E
                    13FC57F80DE0DF12DEF8A7C1DA178D7C6DA036B7A6F815BC51653EB7A895F397
                    CAB38B7ABDD8792095639234C49B7200E40F3BD6BFE0B29158FC12F0B78834BF
                    07E85E31F11F8EF54974BD034DF08EBBA8F89AD2592081EE2E45CB69DA54F7F6
                    EF046AAB2C634F919257DA7E4065AE79AE4BC1FD9B276DB674EDA6FEEDE36D74
                    D3666B4A7F0CA0FE2BC97ADD4EFAECEE94AFDF55A9EB3AE780F48F1C7ECA12FC
                    1DF15F827E28F8B7C2F79E1F1E1CBEB8D420B086FAFEDC4422F31DAD9E28D65C
                    0077451A00C010054DF00B4DD5BE0A782E4D17567F8F1F12C3409691DDF8AE2D
                    21E78ADD14AAC58B35B68DF863BA4911A57E37C8D8188F57FDABFC63E39FF827
                    1EB7F16BC39E03D4BC25E348BC3779A9C7E1AF19ADCE8B3E9B3C02412097CCB5
                    79401E5B491EFB71E68F2F2230E4AFCBFF0002FF006A3F88FF00B0BFC34F0078
                    9FC7FA1DF788345F8B927869754BED6FE323EB4F15FEA7325B799A2D9DD58A4E
                    E4F9B15C5D5AEFB7B7803816CB20490D6BCB2AB5AA529FC4DC53BF594DC925DB
                    A4B5F3B6A9BB66A518D2A6E1B7BCD5BA28A8DF4DFAC74B74BBB34AFEC5F07BF6
                    5D1F023C0AFE13F0CEAFFB4D69FE10B2915FC3DA2A5C68EB6FE14459FCE105AC
                    8B189E5833F27957925CA08FE40A1722BC2EEFF634F157847F6BBF035A783FC2
                    DFB45786FC0DA6F84BC4165AE78D74897C316F7DA86A5AAEA36B7B3892D9C98D
                    2397ECF28736D671796F2C662D98674FA2B52FDBE3C5FE28F85FE33F1C693F07
                    350F10FC28D334ED75ACF57D2BC616F6BACDE49A6C9341287B59561FB3473343
                    2F932C5732C80282E90922BC5FE317EDA9E22FD963E2241F152C61F1F78D3C1D
                    67FB3D7FC2609E006F10C7241692457763BAE0DD5C0124D2AC32B19279DA6988
                    4628A59CA3450939564B7767BEBF153ABF175D541EFBB49CB44AEEACBDDF671F
                    B4D5ADA6AAA5349C5EDA3A8B5E89B51D5BB7A3FC3EFD8D3C3FF037C6B3EA5F0C
                    ACBE3EFC30D2351D3ECAC354F0F787C68E74BD58D9DB2DADB5C482E9269A39D2
                    14894BC12C5E60890481C020E7F863F619D17C37F087E1F7845A5FDA23524F86
                    BE24BCF13695A9DE41E1F7BC965BBF3FCF86645B75B768DBED53957585678CC9
                    98E54201173C79FF000550F19FC39D53C776DA9FC1CD3E21F0E8F87F55D59C78
                    CC36FD175891A286E2102CFE7BD8E58E60F6C4AC588F2B74C582D64786FF00E0
                    B497FE3AF167891FC35F023E25F8A7C15A7596B53695AFE9DA5EA50C37D3699E
                    689167B8BBB0834C86298C3288648750B82C5555D2376D94ABCDABBAAEF64DBB
                    EBA45733BFA27FFB6F46829A8CDAE4F25A7F7972AFBD7E927D19EA3F0A7E1745
                    F05BF655F0D7C25F0FD87C74B2D2BC256F6F6BA66B0874D4D5A28A0903C48CE9
                    B6175014232BC443A021C3EE627CD6CFF603F08E9163A20D374EF8FDA46A1A75
                    8EB9A6EA5A869FFD8F6B3F88E0D66549EFD2E51104316F9E38E506CE3B728CBF
                    2E15995B94F8C1FF00056EF8A73FC08D42FBC37F0C3C31E1AF145F7867C25E30
                    D15B51F163DDC0FA6EB77E964CB2ECB13E55CC5292BB42CB19475937120C35E8
                    7F0BBFE0AC1AA7C4FF00DAA2CFE1FD8FC1FF0016EA5A047AE4FE13D67C51A369
                    FADDFE9FA3EAD6CAC2E59AE0E951D83D824E8D07DA3EDAB3EFC16B545C91A4E9
                    CE556509FC4DC93F3FB325E8EFCB2EEF4652AD6A6AAA7EEE8EFD355CD17EB67C
                    D1EB6D57538CF865FF0004C7F037C1ED434A93C3F07ED2B05B68BABE8DAE59DB
                    DF6A3A6EAAD15CE99188611F68BC12DC985A21E59B7331850730A42DF357BB7E
                    D39E03D1FF006AFF000DE85A6788FC13F152CE3F0FEB116B16D3E982D2DE762A
                    92432DBB3995BF733DBCD3412A8C33473380CA70C39BFDAFFF00E0A2BE29FD9B
                    7E2F789BC29A1FC239BC5317857E1FDDFC449F55BEF1341A55A5EDA5A4E89736
                    F6EAB15C4A675462544891A33855DC158C8BE4DF1A3F6A9BDF875FB71FC3BF13
                    6BF278CFC2BE02F1FDD5BDAD8C51FC4F818EB912696DA824FF00F08EFD9A4F2E
                    CA3789E392782E60B9925CACA925B94066355C946A39697E6BBEE9F2DF5F3A76
                    4BAF2BB688152E5E6515AA8DACBF954549AFFC06A5DFF8B5DCF58F12FC06B7BD
                    FDA3357F895E1D87E3EF81354F14D95BD8789B4ED03FB2574EF12A5BA3476EF3
                    ADC2CD2453468C504B6B2412150A0B3055C62FECA3FB326A1FB2778925BBB2F1
                    5FED3BE2DD32EF53BDD6AF749F105B7865ADF52BEBBDDE65CDC4F6B6905DCCC3
                    77C8B24E51424602E2340BD4FECEFF00F050CD53E2DFC54F01689E24F87F1F84
                    B46F8C5E1DB8F14780B52835E5D4A5D46D604825786FA0F223FB1DCF93711481
                    2392E232370F3430DA79CF1A7FC151F5EF067C65F17E8773F08AEED3C33E04F1
                    F685E06D5B57BDF124097537F6C3411DA5F5ADAC51CAB245BEE602C924D1388D
                    F7637AB441C69CE3523492F79E897AC946CEFB7BF65676B3D7A09B8CE0E6B54A
                    CEEBCA2DA6ADBAE5BEAAE9EDD6C73FF1BFF606F097C74F18F8B2FEEACFF68DF0
                    F68BE38D6F4DF13EB7E1ED0351B1B0B0BCD5EC5EDDA0D4165526F2098ADAC28D
                    E45C4687607DA24559076BFB3AFC05B6FD97BC5DA9CDE1587E3F47E0FBFD4EEF
                    5983C1774FA5CDA26997774EF24F242F817BB5E492493CA92E9E10F216118217
                    1E73A7FF00C1722C2EBC47E24D48FC22F88B73F0BF48B6D59ECFC5D67A26AED6
                    F71369EEF1949E59F4F874E8E3B8923748248750B8CB6D122C24903B2F8EBFF0
                    526F1E7ECD1E1DD32CBC67F059E1F1DF8AF567D3FC2DA6687ACDFF00892C3598
                    52D5AEA6B877D3B4B9F5087CA4529228D3A402465DACF1932AC46A38538B4ED1
                    B69E8ED1F9FC31496E9256B248A9B539B849DDDFF2BBBF96EEEF66DB4DB6DA30
                    7E3EFEC4563FB457C5EF1E78B359D53F693B28FE21787ED7C35A8E8961078753
                    4D86CED6479ADD630F6CF39D93CB2CA44B2C8B219592459213E50CF8FF00E09F
                    FA55AF8C74DD66D756FDA5ECA4D3FC7507C447B6821F0DADBDE6AB169F169FFB
                    C5FB2E440D6F110628CA2A995F66CC4613B1F83DFF00054DBAF8B7F13BC11E15
                    B9F875378135CF15E8B06AB3685E34D5A5F0F788999AEA48275B0B0BAB546BD4
                    812192590EF865D8F01109F37E4E5AE7FE0A9B07C57FD9C2E3C572F821350D1F
                    FE12DD0FC3B756FE15F887E56A9E1D9EF3534B758F55545B6BAB1B981CDBF9F6
                    A8250DE7EC0D2C7E630D214E71928C56B751FF00C9D7DFEFA5AECDA577A68B9B
                    DAA94F7EFF0038356B7F81356E8B4EA721E2BFF82517847C4BE0EBED0E0D4FF6
                    9ED1ECB51D0F59F0CDC1B24F0DB4B2E99AADDC375776CEF2DA485D8BC2A05C3E
                    EB92ACDBE673B597EB1F86DE2AD6BE1FDA2DBDD69DF17BC4D045636965126A96
                    1A3A794D04651E706D8424C931C3480E50301E5A44B953E0FE0DFDBBBE3BDBDA
                    FC6ED4B50F873F0CB56D37C0BE3EB9F0FE9F7371F10BFB134FD2AC2DEC629DE4
                    BD9E6D3CB20398F6B4693B3CD74519618A2F34E04FFF0005B9D5357F86F7DE2E
                    D07E0A6A373E1FD1BE1869BF15EFAEF52F14DB5A2CDA5DC3309E3B558A29DA59
                    E1F2E60A2510AC8D111B91591D8A4E73A70A71774D45A5DB9E32A8B7DAEB99B7
                    B5EF7771CA2E5294AD769C93B77528D37B6EF9B96296F6B2B5969F5F7FC2EDBC
                    FF00A107C79FF80B6BFF00C7E8FF0085DB79FF00420F8F3FF016D7FF008FD7C8
                    9FB567ED8BE3BF8A5F117E1E5CF80A2D47C3FF000CF41F8BFA2F85757D76CFC4
                    714371E209CDC46975672D8FD9598D923398CBADDC6ED2C6CAD0BC5963E9DF0A
                    BFE0A5773E3FF885F0F1AFFC0B1695F0DBE326A779A3F81BC4B0EBBF6BBCBEB9
                    B786E26C5ED8FD9D05AA4D1DACEF1324F3921409042CDB6A29C1CE1CCBABB7FE
                    4B1927F352565BBE844AA25370ED1527F3724FEEE47CDDBADACEDEDBFF000BB6
                    F3FE841F1E7FE02DAFFF001FA3FE176DE7FD083E3CFF00C05B5FFE3F5F27FF00
                    C158FF006B1F1FC1F087E2AF873E15437FA5FF00C2B5B3D3AEFC51E2BB0F1245
                    A6DF6972DC3A491DA5B40D6B319F74255E63E6DB32473279523B92ABD5F81BFE
                    0AB737C48FDAF93E1E7873E14F8EBC41E0D83C4375E11BEF18D8E8DACCD6FA76
                    A36C1C4D2CAE34EFECE166B2A184CA35133072336E172F4A9AE7B28EEEF65E4A
                    DAFA5DA4BBF41D49725F9B64936FA6B776F5B26EC7D0BFF0BB6F3FE841F1E7FE
                    02DAFF00F1FA3FE176DE7FD083E3CFFC05B5FF00E3F5F35FED5BFF00051EF17F
                    EC91FB5C78BECB5DF0EE877FF0A3C25E03B0D789B1D42E65D76F6FAFB5192C6D
                    A38ED52CDFCC67B8448846B28C2C8641E631112E37813FE0AF5E3CF1778A7C15
                    E19BBFD9C3C67A27883C6BE28B9F0BDB5E6AD35FE89A0B489A64DA8453452EA9
                    A759DFCD1B2C12A3E34F5F2CC3260BFEE84AA927522A50D77FC24E3F9ADB7B34
                    693838C9C65A5BFF009053FC22CFAB7FE176DE7FD083E3CFFC05B5FF00E3F47F
                    C2EDBCFF00A107C79FF80B6BFF00C7EBE54D23FE0B0DE2597C0BA17892FBE095
                    C7F676BBA3789664B5D3FC5B04FA8A6ABA049225FDA08E682184DB130CA62B93
                    32BB84F9ADD0900E84DFF0576D4FC1FAAF87B48F187C2BFEC4D7BE24683A4EB7
                    E00B4B3F12ADF45AF35FDCDADA1B6BB94DB462CA4827BC80B9513A9898BA1660
                    62AA8C1CA7ECA3ACB456EB77CD64BBB7C92B25D15F6B194AA462B9A4ECB5D7A2
                    B72DEEFA25CD1BB7B5F5D9DBE9BFF85DB79FF420F8F3FF00016D7FF8FD1FF0BB
                    6F3FE841F1E7FE02DAFF00F1FAE3BF66CFDACF56F8CB2FC48F0F7887C16BE1DF
                    88BF0AEF63B1D6743D37584D52D2ECCD6A9756B259DE491DB7991CD1B800CD14
                    2CACAC1940018F8D7C31FF0082AC78C3C7FA3780355B8F81B796563F166C3571
                    E10B683C5B6B3EA377AB69EB7129D3AE91A28EDED84B0DB48E938B991328CAC1
                    70A595B5B2EC9FC9A6D7E0BD765BB48AE65F9FE0D27E8B5DF6B6BB26CFA5BFE1
                    76DE7FD083E3CFFC05B5FF00E3F47FC2EDBCFF00A107C79FF80B6BFF00C7EBE5
                    2D0BFE0AFDE2BF10EA30F86ACBE11787F56F1B1F887FF0AE2E9F49F88315E785
                    ECAF5F4D4D42191F511662E59591991952C58C6F0C81BF837FA527EDEFE2BF07
                    FED95E05F84FE39F87DE17F0DAFC437BDB4D26EACBC7516A7A94B716963F6B96
                    63A78B58D96C1B6CB1C770D2090B22799045E628AA853949A51EBFFC8A9FFE92
                    D3F98547C9F169A5FE5771BBEDAC5AD7B1EC7FF0BB6F3FE841F1E7FE02DAFF00
                    F1FA3FE176DE7FD083E3CFFC05B5FF00E3F5E39FB447EDAB0FC06FDA27C63677
                    1E0AF125DCDE0BF8763C4D16A2DE21922D2750864BF48190D9C465086261BE4B
                    A92032471AB040EA585636A9FF0005426D3E1F86491E91F0D2EA5F89915DC9A6
                    5F47F11A2FEC3D5DE111AA5B697A81B4F2AF2EA6924FDDC328B6631C7239C32F
                    96668AF6BCAA1AB77FC2528FE717F73DD6AE6A4D439B9FECFF00F23197E525F7
                    AEBA2F7CFF0085DB79FF00420F8F3FF016D7FF008FD1FF000BB6F3FE841F1E7F
                    E02DAFFF001FAF0E5FF82995C378FB4ABEFF00841616F843AC78EA5F86D078B1
                    35ECEA51EB4977259664D34DB802CDAEE3681665B96937618C0A877D7D5B4D45
                    F229F47F9D93B793B34ECFA35DCB97BB374E5BAFF36BF38B5EA99C1FFC2EDBCF
                    FA107C79FF0080B6BFFC7E8FF85DB79FF420F8F3FF00016D7FF8FD77945481C1
                    FF00C2EDBCFF00A107C79FF80B6BFF00C7E8FF0085DB79FF00420F8F3FF016D7
                    FF008FD7794500707FF0BB6F3FE841F1E7FE02DAFF00F1FA3FE176DE7FD083E3
                    CFFC05B5FF00E3F5DE51401C1FFC2EDBCFFA107C79FF0080B6BFFC7E8FF85DB7
                    9FF420F8F3FF00016D7FF8FD7794500707FF000BB6F3FE841F1E7FE02DAFFF00
                    1FA3FE176DE7FD083E3CFF00C05B5FFE3F5DE51401C1FF00C2EDBCFF00A107C7
                    9FF80B6BFF00C7E8FF0085DB79FF00420F8F3FF016D7FF008FD7794500707FF0
                    BB6F3FE841F1E7FE02DAFF00F1FA3FE176DE7FD083E3CFFC05B5FF00E3F5DE51
                    401C1FFC2EDBCFFA107C79FF0080B6BFFC7E8FF85DB79FF420F8F3FF00016D7F
                    F8FD7794500707FF000BB6F3FE841F1E7FE02DAFFF001FA3FE176DE7FD083E3C
                    FF00C05B5FFE3F5DE51401C1FF00C2EDBCFF00A107C79FF80B6BFF00C7E8FF00
                    85DB79FF00420F8F3FF016D7FF008FD779450078E7C6BF8D37737C1AF16A1F01
                    F8E903E8B783735ADB6D5FDC3F27F7FD297E0A7C68BB83E0DF84907813C73204
                    D16CD772DADB6D6C409C8CCFD2BB9F8E5FF2453C61FF00604BDFFD10F47C0DFF
                    009229E0FF00FB02597FE884A00CCFF85DB79FF420F8F3FF00016D7FF8FD1FF0
                    BB6F3FE841F1E7FE02DAFF00F1FAEF28A00E0FFE176DE7FD083E3CFF00C05B5F
                    FE3F5CC7C6BF8D37737C1AF16A1F01F8E903E8B783735ADB6D5FDC3F27F7FD2B
                    D8EB96F8E5FF002453C61FF604BDFF00D10F401C37C14F8D17707C1BF0920F02
                    78E6409A2D9AEE5B5B6DAD88139199FA574DFF000BB6F3FE841F1E7FE02DAFFF
                    001FAD3F81BFF2453C1FFF00604B2FFD1095D4D00707FF000BB6F3FE841F1E7F
                    E02DAFFF001FA3FE176DE7FD083E3CFF00C05B5FFE3F5DE51401F38FED1DF18A
                    EEEBC67F0849F03F8DA1F27C6E920125B5B0329FECAD486D5C4E7E6E73CE0601
                    E6BD4BFE176DE7FD083E3CFF00C05B5FFE3F587FB4CFFC8EDF06BFEC7B4FFD34
                    EA75EB1401C1FF00C2EDBCFF00A107C79FF80B6BFF00C7E8FF0085DB79FF0042
                    0F8F3FF016D7FF008FD7794500707FF0BB6F3FE841F1E7FE02DAFF00F1FAF37F
                    F8262DD7DBFF00664D6AE0C52C06E7E277C4398C32AED9202DE35D6D8C6E3A06
                    52769C12320E091827E84AF00FF826A7FC9BAF88FF00ECAAFC46FF00D4DF5DA7
                    D00F1EF87DFF000537F047C18F1DFC53F0EEA5E1BF887797961E3BD56279B4FD
                    1D27818ABAA12AC6419E50F6E98AF2EBDFDA4FE17788BF662F899F0BBC43ADFE
                    D37E28B0F8A92DEBEA9ACEA7E1CD10EA96A9768B1CB14063B54836045DA9E6C3
                    2322901580540BE63E20FF0092F9F18BFECA16B5FF00A5269F50E29DD3EAACFD
                    2E9FE88B8CE5169C7A34D7AABD9FE2CEEBC21F1DBE1A7817C41A2EB5A5F8CBF6
                    B7B6D7ED348B6D035CD50693A31B8F18D85AC923DB437E0DAF96AF12CD246B71
                    6896F7051BE69598061CAA5CFC0BD3B53BCBCD2B5AFDAAF46B9B987C496B0CB6
                    BA368CF25A41AEC91CB7B1ABCB6AED211244AD1CB319265FBA64650AAB9F455D
                    46EA5F9F5BDEFF00F6F6EBD1EBF7BEEEF34DFB3B72696B5BE5A2FB969F25D95B
                    262F047C1B3E06F157876E3E257EDA179A6F8BFC19A77806F965D0BC2E1D747B
                    0776B5811974C5C32ACB3A190E5D9677DC4B0465EB35EF10FC1EF14FC5EBCF1B
                    6A7E2EFDAD6FB58BCD5349D65A29741D03EC6B75A75ABDA42FE48B208C1A1925
                    0C1C300CFBE3F2E448DD3268AB9D59CE5CD3777BEBAEB7BFE7A99AA714AC9595
                    ADF2B256F4B24BD34D8F79F815FB72FC25FD9F7F66E5F861A2D8FED033E8F045
                    7B05AEA373A55BAEA9669732CB21F2E684C60346656D8E54B8DAA5998824F957
                    88FC61F02FC49AECFE267BBFDA76CFE237FC2430F88EC7C6D69A369506B1A64D
                    0C12DB471222C1F63962FB34D2C2DF68B699E546FDE3BB2AB0E6E8ACEEF9B9BA
                    FF0093BFE68A4924A3D15FF1567F26B4B6C7D01F113FE0A07F0F7E257ECD7AD7
                    C37BCBAFDA2E0FF84834F974EBEF1243A169EDACCA9313E738F3237B54675675
                    C2DB84456C46A9B576F81CB63F03750D3ADA1D4BC49FB59EAD716DA5689A48BB
                    BAD1341FB4347A3DF8BDD39B72592853130085502C72A80D2A4928F36A3A29C6
                    4E33738E8DB4FE6AF6FBAEEDDAE3FB2A3DAFF8D9BD77D7955FBD8EE8FC6DF851
                    A7F853C6FE18D1BC45FB55F87BC13E378B520DE1BB1D23496B1D1A7D40C8D777
                    168F35BC970A5DA6998452CD25BA34A4AC2A553679FF00C52D2BE107C59D02D3
                    4BBFF88BFB65DAD8C1F0FCFC33B88ED743F0D017FA333299124DFA736257D918
                    6963D8D88D71B72D99A8A4B4775BE9F82925F84E4BD1B5B03D5DDFAFCDB8CAFE
                    BCD18BF557DCB7E39D4BE137C4683C72356F881FB614F37C42D1F44D13559D74
                    0F0DC720874990CB6AD1EDD3C0573234ACE704379CE0000205E8BC0FF15BE157
                    C34F0378B7C2BE1FF177ED6BA4F84FC582FE53A343A468AD6BA55DDF07FB5DD5
                    B16B4322B48F2CD279323BDB2492B3242984DBC951454F7D494F5E64D3F34F7F
                    EBD3B21412834E1A5ACFE6B6FC34F4BAD9B1C6CFE09DD5AADBDF78B7F6B9D46D
                    61F07E95E0AB7866D0FC3E896D69A65D25DD8CCBE5D8A933C53A07DCC591F243
                    A32E147A97C27FDA7FE137C10F8BDAFF0089BC357DFB4E69DA478AB521AE6B3E
                    141A6583E8DA86A642092F8968CDDC524A635692386E52191B71688EE6CF95D1
                    57ED25CDCD7D75FC5F33BF7BCACFD527BA42508A8A82D95BFF00258A8AFBA2B9
                    5795D6CD9DE7ED35F1CFE14FED3FF13BC41E26BEF107ED49E1A6F12782EE7C07
                    71A7E89A06882CE2D3AE6457B831FDA6D66944B215197321C0FBA16B8CF05DB7
                    C06F096AD697973ABFED51E2092D75ED3FC46C354D0F437FB4DDDA589B002568
                    ED119E296D4F96F113B17198844C4B1AD456704A2ACB6FFED9CFEEE66E56EE5B
                    6DDEFD6FF8C545FDF18A8FA2B1E99FB35FED03F043F666F1368BA859DB7ED19E
                    28B6F0769B71A2F83F4ED7F4AB39ED7C1BA7CED1B496B666258A5742218503DD
                    493CAA912A2B852C0F13F16FC4FF0009BE2FF8A3C73AA5CF8DFF006BAD29BC7D
                    E2BD23C61796F61A07874456777A598CD8A41E6D848E218CC36E76BB396FB3A6
                    E66DD26FC9AF973E2E7C4DD6FE2FFF00C142748F8309ACEB3E1BF09E9BE177F1
                    36A8DA55DBD8DE6B52198471C0B731159628D7EF13132B3608CE2B48CE6EAC1C
                    5FBCAF67E9EFB7EB78F35F56DF9B1A7CB093E9D7E7EED9796B6B68ADE87DAFE1
                    BF899F027C3DE18F1A7849FF00E1A66FFE1978E24D42E2EBC0D3E9D649A3D94F
                    7C5DAEA5B792244BD8F7492CB288CDD344923EE48D4AAED778A3E367C32F1D78
                    57C390EB9E33FDAE355F15F823568F57F0BF8BE5D27468F59F0F32C2F018A258
                    ED56D268E48A59524FB55BCCF287F9DDB6A15F83FF006EAF1978A7F663F0C783
                    B40F09F8AFC416F1FC4AF15E99E194BFBDB96BDB8F0FDB1DC25314F31776924E
                    3E7977B8F9BE63F2EDCBF8ED7DA97ECD5FB547C37F01E8FE22F1C6A9E12F8A9A
                    6EA565AA5A6A3E26D42EEEAD26B7895D2EEDAEDE537303F3F308E454C67001E6
                    A39DF2DD6D7E55EB14A6BD2C9A49FCBE10B3DDF66DF5D24F95FADF56D75DDDE4
                    7E8E78E3F692F84DF14351F0D4BE27D4FF0069FF00115A787754B4D6DECAFB4B
                    D39E0D46FED64135BDCB111092D9926024DB64F6C8DC232B44046388F89DAEFC
                    14F8AF61AD1D47C43FB57C7AD6B7368864D762D1B456D4E3B7D22E3ED5656A64
                    92D1D6645B9C4CD25C2CB3B30DA65F2C98CFE6F786BC6BE2CF835AD685F07BE2
                    878AFC71ABE99E36BCD3B56F03F8BA1D7EFAD6FEEFCD9E1173A6DCDC4122C8CC
                    A92BE37B6DC608C1D9B7ACFDA6FE1FCFE04FDB97E05F852C3C65F1463D0FC777
                    3ABC9ADDBFFC275AC20BCF2E31244ABB6E4794A8588022D9C000E6B68C64A715
                    07BC9DBA5A4926FD1AB72FA24BE164C67EE4A4BA475F38EEBD53BF32BF5DFDE4
                    7E85F897E217C0CF12F8F9BC4667FDA6AD2F8F8C5BC6EB145A3E98F6D1DF4962
                    B6370043242E8565897258832C4C498248738AF33D6340F80BE11F845E26D16E
                    7E20FED85A7F846F7E1F47F0FAEE26D13C39B6C74181DE6F291CE9C5F761E706
                    466672B337390853E1AF885A1EA9F0DBFE0A3567E00B0D47E3678CBC2EDE095D
                    524D2ED7E21EA8930B96BB68CDDC9235EC6FB15000522DC7A62363935D87ED2D
                    E17BDF87FF00B707ECE9E12D3FC63F11D343F107F68C1AAC07C61A90FED14B68
                    D6487CDDB38DC41620B7DE7180E5AA2926FD9C60EDCDA2F2E55286DE4934ADD1
                    BDAECAE795373B7D94A4FCF553FBF99DDBDF9B5D7467DB5A66B3F003C5BA55B4
                    AFAD7ED832E81A86B5A7F8C6E34B5B4B5D223BED6AD963C6A6E60860B98279BC
                    B532C70C90C25B2CB1237CD5DFFC1AF8DBF023E0A7C42D2F56B2B0FDA2355D07
                    C2FAA5EEB5E14F0AEA7A4D9CDA37842F2F1655B896CB6AADCFCCB713AAA4F3CC
                    912CCE2358C1C0FCD2FF00828E6877FF000DFE1E78D3C51A0F8C3E23E95AAAF8
                    B749B588DAF8CF558ADEDA2B810F9D14702DC089158BB1C05F9777CBB460087E
                    31FED2FE2AFD87BF694F19F85347D4B5CF15F869FE1CDC78B74DB2D6EFA6D526
                    D22F61320FF8F899DA7785B664ABC8D8CFCA474A955DA839AD17BDA7A42327FF
                    009224A3A69CA92B2B19AA2B9F912DD475F273715FF9349B7DF99B776D9FA47F
                    B4B7C4DF811FB4DF8C3C63AA5E8FDA6FC2D6BF11F4BB6D27C5BA5F876CED6D6C
                    FC4496C4FD9A594C8B24D14D102543DBC91165C2BEF0001B1F053F68DF83FF00
                    B3BFC4CD5F5AF085EFED43A6787FC417A9AB6A7E1396D2D6F34ABFD44246AF7A
                    F34EAF7E2597CA46942DDAC7336E67462EE5BF2D7E2278C3C5DF067FE09D5E19
                    F8FB69E3BF186A7E3F9A2D3358D405E6B13CDA4EA0975344B25A9B02DF658A30
                    B26018A3470573BB24E7D23FE0AB5E34D5B49FD85E2F1968DAC789FC2FAD5BDD
                    69B2C52E8FABDDD8488B712C4B246E2075F306D62006070791835A2A72A52715
                    A352507DAEDAFBD26D3F271D9590BDD9DA4D68D392F92B7C9DB4F34F7DCFD05F
                    DA4BE3EFECFF00FB5578D75CD63C53E1DF8F623F12F8557C25A95858E990DBDB
                    DC411DCB5D5B5C060C668EE209DD9E378E4550C416572A8579DF127C68F01F8C
                    F5EF869AB6B3F13BF6C7D5758F85BAAB6AFA65E5C685E1CDD7731B796D80B845
                    D3C44C04171711EE444771312ECEE91B27E4D7C73D5BE29F84FE04FC4EF10C7A
                    DFC59D1BC15A7789F488BC0F26A5AD6A7A76B52C534EB1DE2399A48EE1E162D8
                    4FB5125782BB7AD7A27C29F8FF00AF784F43F8EFF113C2FABF8B0785BC07A34B
                    669E09F186AB71AB6AFA76B30AEE6B891A696568EDC81C2A4EE1F0E7E5C0ACE2
                    FD9D3725A28A6EDDB453775DEF3B75D5D9D96A573B9D451DDCACBD6FEE5BD396
                    3E965A5D9F6AF8FAFBE1CF82BE08DB5B785BC41FB5BF8A75BF07DA78A25D0F4E
                    BED1BC39143AB5D6BAB29BB4BB65B387F74D2CCED9478D903B6D3C281B7F087C
                    5DF07BC5BFB3C68563F13B4DFDA6356F1A5B78774BD2AC6FAFECB4E37FE056B2
                    921B88D34C9AD42A0D97504728967F3E493CB8C48EEA360F817E2278C3C5DF06
                    7FE09D5E19F8FB69E3BF186A7E3F9A2D3358D405E6B13CDA4EA0975344B25A9B
                    02DF658A30B26018A3470573BB24E7B1FD9E3E34B7ED79E3BF8ADE2AF1EF89F5
                    8F07783FE1D6A51E9761A65A788AE342B7B0089BA5BABB9A0922690B37412B18
                    C0046DEF57ECE54E7535F7A2D5DF6E4BEB17BDFF0078D5F47BEC9BBC349C613B
                    68EF6F3E669D9AFF00B713EDEAD24BF527E057FC140BE15FECE5A2F896EE0D17
                    E3D78DFC51E28BA1A9EB7AE6B3A158FF006A6BB711C0904418406DED630B1451
                    C6891C51463192373331F953F662D7BE1D78C7F654B5F0CFC65D2BF6988EFE3B
                    0D634CB3D0FECDA5CB65E16FED0966135D69F2400BB492432ECFF4A926540D2A
                    2A2A3B2B7C6BFB5DFC46B4B5D33E12DFF843E2978BFE255BDE78EDF4AD54F843
                    C60D14FA8DA48B2DC0B122CEE6183CD55D8AAE4A390072335E8FFB05FC58987C
                    18F887F12AFF00C67A96A1F0DDAEE6BBD134CD7B5296F755F0CC36E8DF6886F2
                    E2725C485C6446649022EDC39DD5095D4EA4BA2B7A24A36B5BCA5A76B3B5B4BD
                    5ED38C23ABBAB79EAFBF9C6FF3EBAA5F60D8EA9F06B4AF891A5789AD3C57FB58
                    DADC69BE27D3FC61359C5E1EF0EA59EA3A95969F1E9D1C9220B1CA235B21468A
                    031463CC628A8426DE9F4BF8ADF03345FDA22DBE245B0FDA4A3D52CFC6573E37
                    82C4E8BA6BDA2DE5CD8CB63711333446E2481A195B6AC93334585589E241B0FC
                    09FF0004EFFDA2EF7E3878CBE32FC3CF12F8C2D7C5D71A7EA4753B0D4F46D619
                    E33617A9B8C36D730C9B916063B018DC1424608238F39FD9E3E3C78CFE0EF8AF
                    E2BFC2CD67C59AF6B3AE6BDA5C3AFF00816FB59D427BF9E18AE10C4EAAF2B972
                    B0361F6EEC910C8DEA69BA9287BCB771E65E7A46F1F928A56DAD0B742F95555C
                    8F64D475E8BDE49FA7BEFCFDFBF73F573E2A7ED7DF0ABC55FB46DE7C5D9F5FFD
                    A77C33771F86D34096C34CD2B4CB6D360B486E45E799B9A16B80C645CB133ED6
                    5CA952A4A9E1B4DF8B3F007E257C04B9F0F25E7ED3F77E18F1BCF2EA7E23597C
                    39A65B2F8B7ED2EAF335C5B1B6486DCCA1231E659C36D2A85CA3A333337E7FFE
                    C09F196F7C3FFF0004C93E3BF1378E35393C47E22B99F4E1ADF8A7C453DC5BDA
                    4ED72F6D6F216B99B64491EE0CDB0AEE09CE4E2BB3FF0082737C4A93F6BFFD8E
                    7FE11DF1378A35BBFD7FC1DAABE8DAC6A9A4EBD3C375A87912EF8A45BD824123
                    24B1ED05D2405C06F9B9AA8D274A728C3785BF19734BE5CCE2DAEB75A3E99F3A
                    92537F69BF5BC63CB17EBCB1693E96B5D5F5FBDBC37F1A3E03F853E2A49AEDA5
                    8FED123C347C42DE3087C13269364FE1EB5D718963A8C6A57ED424F30B4BE59B
                    83079AC64F2B7E187B9F837FE0ADFE04F0C785ECB4FBDD2BE34788AEED63D92E
                    A5A8F872D12EAF0FF7E45B731421BFDC8D071D2BF17FF617F01DCFC63B6F8D13
                    6BDE35F8A774FE0DF1B6A7A4E978F1DEB0A22B38D084808FB4FCC06ECEF3FBCC
                    8043F15E5FFB327ED0FE38D4FE00FC0CF0C278CFC5CBAE7C66F14DFDB6B5E23D
                    4356B8D42EADECECE62A60B66B8775824914AA86451D09E5B9A504E4A34E3D54
                    1AFF00B7D2B7DD1B27E51495D245548F2B9546B6724FFEDDE66FEF777E6E4DBD
                    5B3FA03FF87C6FC3AFFA143E2AFF00E13E9FFC7A8FF87C6FC3AFFA143E2AFF00
                    E13E9FFC7ABF277F6C8D5355FD887F663F1478E3C1FAE789EFA4D1B4B6B3B6B1
                    D6754B8D6234B9B9B98116F1A5B991E52631BB0858A7CDC0519CF9B7ED05E21F
                    12FEC6FF00037E147C4AD1BC63E30F11EBDAC6B1A6D9F8860D535BB9D42C35D8
                    EF22679425B48E62B72187EECDBA26D1818238A98252764FAC63F393697CB66D
                    F66BADD22578C6EFB49FCA2937F3D745DEFD2CDFED5FFC3E37E1D7FD0A1F157F
                    F09F4FFE3D47FC3E37E1D7FD0A1F157FF09F4FFE3D5F1B236E50718C8CE29690
                    CFB23FE1F1BF0EBFE850F8ABFF0084FA7FF1EA3FE1F1BF0EBFE850F8ABFF0084
                    FA7FF1EAF8DE8A00FB23FE1F1BF0EBFE850F8ABFF84FA7FF001EA3FE1F1BF0EB
                    FE850F8ABFF84FA7FF001EAF8DE8A00FB23FE1F1BF0EBFE850F8ABFF0084FA7F
                    F1EA3FE1F1BF0EBFE850F8ABFF0084FA7FF1EAF8DE8A00FB23FE1F1BF0EBFE85
                    0F8ABFF84FA7FF001EA3FE1F1BF0EBFE850F8ABFF84FA7FF001EAF8DE8A00FB2
                    3FE1F1BF0EBFE850F8ABFF0084FA7FF1EA3FE1F1BF0EBFE850F8ABFF0084FA7F
                    F1EAF8DE8A00FB23FE1F1BF0EBFE850F8ABFF84FA7FF001EA3FE1F1BF0EBFE85
                    0F8ABFF84FA7FF001EAF8DE8A00FB23FE1F1BF0EBFE850F8ABFF0084FA7FF1EA
                    3FE1F1BF0EBFE850F8ABFF0084FA7FF1EAF8DE8A00FB23FE1F1BF0EBFE850F8A
                    BFF84FA7FF001EA3FE1F1BF0EBFE850F8ABFF84FA7FF001EAF8DE8A00FA9BE2F
                    7FC15F7E1E6ADF09FC516B1F84BE2924973A45DC4ACFA0A0505A170093E6F039
                    A3E117FC15F7E1EE91F09FC2F692784BE293C96BA4DA44CC9A0A15256140483E
                    77238AF903E23FFC93CD7BFEC1D71FFA29A8F871FF0024F341FF00B075BFFE8A
                    5A00FB87FE1F1BF0EBFE850F8ABFF84FA7FF001EA3FE1F1BF0EBFE850F8ABFF8
                    4FA7FF001EAF8DE8A00FB23FE1F1BF0EBFE850F8ABFF0084FA7FF1EAE77E2F7F
                    C15F7E1E6ADF09FC516B1F84BE2924973A45DC4ACFA0A0505A170093E6F039AF
                    966B1BE23FFC93CD7BFEC1D71FFA29A803EBFF00845FF057DF87BA47C27F0BDA
                    49E12F8A4F25AE9369133268285495850120F9DC8E2BA2FF0087C6FC3AFF00A1
                    43E2AFFE13E9FF00C7ABE1EF871FF24F341FFB075BFF00E8A5AD9A00FB23FE1F
                    1BF0EBFE850F8ABFF84FA7FF001EA3FE1F1BF0EBFE850F8ABFF84FA7FF001EAF
                    8DE8A00FA03E3EFF00C15ABC01AFF8B7E164B17853E26C6BA5F8C16F2512E848
                    A5D069BA84784FDEF2D9901C7A03E95E91FF000F8DF875FF004287C55FFC27D3
                    FF008F57C01F183FE462F007FD8CABFF00A43795DBD007D91FF0F8DF875FF428
                    7C55FF00C27D3FF8F51FF0F8DF875FF4287C55FF00C27D3FF8F57C6F45007D91
                    FF000F8DF875FF004287C55FFC27D3FF008F5741FF000499F175BFC41FD8F2E3
                    C41690DCDBDA6BDF117C7FA94115CA049E28E6F19EB522AC8A090AE0300CB938
                    208ED5F0BD7D9DFF000450FF00947CE95FF63AF8E3FF0052FD669F403E14F1C7
                    8E6D344FDA2BE325BCB1DCB3AFC41D68E51548FF008F93EA4541FF000B434FFF
                    009E379FF7C2FF00F154514803FE16869FFF003C6F3FEF85FF00E2A8FF0085A1
                    A7FF00CF1BCFFBE17FF8AA28A003FE16869FFF003C6F3FEF85FF00E2A8FF0085
                    A1A7FF00CF1BCFFBE17FF8AA28A003FE16869FFF003C6F3FEF85FF00E2A8FF00
                    85A1A7FF00CF1BCFFBE17FF8AA28A003FE16869FFF003C6F3FEF85FF00E2A8FF
                    0085A1A7FF00CF1BCFFBE17FF8AA28A003FE16869FFF003C6F3FEF85FF00E2A8
                    FF0085A1A7FF00CF1BCFFBE17FF8AA28A003FE16869FFF003C6F3FEF85FF00E2
                    A8FF0085A1A7FF00CF1BCFFBE17FF8AA28A003FE16869FFF003C6F3FEF85FF00
                    E2A8FF0085A1A7FF00CF1BCFFBE17FF8AA28A003FE16869FFF003C6F3FEF85FF
                    00E2A8FF0085A1A7FF00CF1BCFFBE17FF8AA28A003FE16869FFF003C6F3FEF85
                    FF00E2ABCDFE307C2FF097C5CF1C689E2C5BAF13F863C65E1C8DE0D3F5DD1648
                    23BB8A1720BC2E932C90CB1B7F7658DC0C92304E68A28EA9F61DF4B7723F1AFC
                    21F047C50F86B71E1BF15FFC249E25FB5DCC37D2EA7777091EA02EA1C7953C6F
                    0F9690B29190B0A220CB7CBF33671EDFE0178767F13CBE23D5BC55F103C43E2F
                    8B4D9749D335FD47FB39AEF448241893ECD1476E96C1DBBC9242EE7241247145
                    143D6FE7FE56F969A7A69B0AFF00D7CEFF009EBEBA9D0DE7C3AF096BFF000FBC
                    27A06BCFAF788DFC177B69A8E99A9DFA5B2DF473DB38689CB4491A7DD1B0ED41
                    B949CE49CD617C5FF811E1DF8CBF1EBC21F10EF3C51E3DD3756F03176D22D2C0
                    69E2CE1320026DCB25BBBBF98A02B65F803E5DA79A28AAE77CDCFD6F7F9B566F
                    EED09514A3C8B6B5BE5D8CFF0016FECE1A37897F68F9FE2A5AF8FBE26E87E2A9
                    34EFEC889AC63D1DADED6CF76FF25239ACE4C8DD96DCE59F27EF63004FE2AFD9
                    BFC23E2FD17C25F69F1078FD3C4FE09D42E353D33C531CF69FDACB3DC39698BE
                    E88DBBABE769430ED0A0000628A2A568925D36F2D6FF009EBE6CB6EEDB7D77FB
                    ADF969E9A107C6DFD99BC2DF1EFE19C5E17D6BC55F1122B793514D5B51BCB57D
                    3D6EF58BA8C462396667B7645D8235DA90AC49C6369180377C03F057C13E11F1
                    66BDE22D5E4F11F8DBC4DE25B01A4EA1AAEBFF006696692C867FD19238522823
                    88E7958E35DC796C9E68A28E8D77FD55BF2497A69B0BAA7DBFCEFF009EBEBA9C
                    DD87EC8FE0083C3FA4F86EEF54F1DEADE01D02E92F34EF08DF5CDB49A55AC88D
                    BE3058462EA5456C911CB3BA0CE36E0003A7FDABBE12F86BF6BCF86D1F84F5DD
                    63C61A2E8BF688EE678F47FB1C6D74D1B068C3B4D14A40565046CDB93D7238A2
                    8A6DB7BBEB7F9E9AFAE8B5F25D8168EEBB5BE5AE9E9ABFBCA9FB417C16D0BF69
                    4F83DA6782FC43E2BF1F45A7D84B04F717564BA74575A9C90B2B46F3136EC808
                    750D8892304F518E2A9DB7ECE3E0EB6F8CD278E7FB63C66DAB6ABA3C7A2F88AD
                    CAD80B2F15C28A577DEC2200A6420805A2F2B80000064128A2FBF9DDFDEACFEF
                    5A35B3D3B092B2B2EC97DCEEBEE7AAEC67D87EC8FE0083C3FA4F86EEF54F1DEA
                    DE01D02E92F34EF08DF5CDB49A55AC88DBE3058462EA5456C911CB3BA0CE36E0
                    0037BC4BF04BC2F79F1035BF14786F5BF19F80B59F1444916B726842C9A1D5C2
                    29556961BB8678B785246F455723A9345149BBEFFF000F7B5EFDEF657BEF65D8
                    6B477FEBBFCB5D7D4E4755FD8A3E1EFF00C229E02D0B41D6FE20784748F86F7E
                    756D1ADB4C9ACA50B7A5DDCDCC8D7504CCED976F973E5E0FDCAB737EC9BE14D3
                    BC7BE24D77C3BE31F895E104F16EA36FABEA9A5E94DA69D3AE2EE12AC26F2A7B
                    6976B3BA8670080E4F231800A2AB9E57E6BEB7BFDF6FF25F72EC2E556B7F5D7F
                    CDFDEFBB347C7FFB3C687E35FDA313E2959F8DBE247867C5316963478DB4A4D2
                    BC84B5CEE31949ED25DF9625B2E58827E5DA0003364FD917C1975AE683AD5D78
                    9BC7F79E25F0D69177A269DAD4C9A67DAE0B7B8E0F02D444CC8A6454668C9026
                    7CEE3B4A9454595B97A6BF8DEFF7DDFDEFB94E4EF7F4FC2D6F5B597DC33E007E
                    C95E1BFD9BED3C2F61A078F7E294DA0F846EE6BDB1D1EF4E9525A34930712798
                    56D1656C877C7EF015DC7695C9ADEF863F01BC3DF09BE38F8D3C7BA678ABE203
                    6A7E3C25F53B297FB3BEC1BC0C45224696EA43C638562C49E77EF24925154E4D
                    BE66F5B35F27BFE44A8AB5BA68FEEFF872A7C0BFD9CBC3DFB3E68FE39B4D13C6
                    5F11AE1FC7F7536A17F717ABA5C92DBDE4B9F32E610B6AA81CFF0075D5A31818
                    4AC2F037EC3DF0DBC0FF000534FF0002FF006A78F353D3741D4FFB6741BDBA9E
                    D23D43C3F77B998CB6D34114679662489448A7A631C514517EDE4BFF0001DBEE
                    E9D86F5DFBB7F7E8FEFEBDCF4A83C0DE1CD63C2BAAE93E2ED43C4FE3F8F5AB17
                    D32EE5D745A82F6CE72D1AC76C90C29938CBAC61CED4CB1DAB8E5341FD99BC15
                    6379E164D5F58F1CF8AF44F034E973E1CD17589ED64B1D1E48C1589D7CB89259
                    8C6A7086E24976E0639E68A284DA7CCBFAB6DF357767BABB1357567FD5F7F93B
                    24D6CD248F6BFF0085A1A7FF00CF1BCFFBE17FF8AA3FE16869FF00F3C6F3FEF8
                    5FFE2A8A290C3FE16869FF00F3C6F3FEF85FFE2A8FF85A1A7FFCF1BCFF00BE17
                    FF008AA28A003FE16869FF00F3C6F3FEF85FFE2A8FF85A1A7FFCF1BCFF00BE17
                    FF008AA28A003FE16869FF00F3C6F3FEF85FFE2A8FF85A1A7FFCF1BCFF00BE17
                    FF008AA28A003FE16869FF00F3C6F3FEF85FFE2A8FF85A1A7FFCF1BCFF00BE17
                    FF008AA28A003FE16869FF00F3C6F3FEF85FFE2A8FF85A1A7FFCF1BCFF00BE17
                    FF008AA28A003FE16869FF00F3C6F3FEF85FFE2A8FF85A1A7FFCF1BCFF00BE17
                    FF008AA28A003FE16869FF00F3C6F3FEF85FFE2A8FF85A1A7FFCF1BCFF00BE17
                    FF008AA28A003FE16869FF00F3C6F3FEF85FFE2A8FF85A1A7FFCF1BCFF00BE17
                    FF008AA28A00C8F883F132C26F016B8821BBCBE9F3A8CAAF78DBFDAA3E1F7C4C
                    B087C05A1A186EF29A7C0A70ABDA35FF006A8A28035FFE16869FFF003C6F3FEF
                    85FF00E2A8FF0085A1A7FF00CF1BCFFBE17FF8AA28A003FE16869FFF003C6F3F
                    EF85FF00E2AB23E20FC4CB09BC05AE2086EF2FA7CEA32ABDE36FF6A8A2800F87
                    DF132C21F01686861BBCA69F029C2AF68D7FDAAD7FF85A1A7FFCF1BCFF00BE17
                    FF008AA28A003FE16869FF00F3C6F3FEF85FFE2A8FF85A1A7FFCF1BCFF00BE17
                    FF008AA28A00E33E2CFC47B1B8D7FC0ACB15D810F8895DB2ABC8FB1DD8FEF7BD
                    767FF0B434FF00F9E379FF007C2FFF00154514007FC2D0D3FF00E78DE7FDF0BF
                    FC551FF0B434FF00F9E379FF007C2FFF00154514007FC2D0D3FF00E78DE7FDF0
                    BFFC557DDBFF000444BA5BEFF827768B3A0609378CBC6CEA0F500F8BB583CD14
                    53E823FFD9}
                end
              end
              object RLBand75: TRLBand
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
                object RLLabel141: TRLLabel
                  Left = 3
                  Top = 18
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
                end
                object RLDBText199: TRLDBText
                  Left = 101
                  Top = 3
                  Width = 60
                  Height = 15
                  DataField = 'ALUNOME'
                  DataSource = DataSource
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RLLabel145: TRLLabel
                  Left = 3
                  Top = 34
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
                  Left = 101
                  Top = 18
                  Width = 122
                  Height = 15
                  DataField = 'ALUNACIONALIDADE'
                  DataSource = DataSource
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                end
                object RLLabel146: TRLLabel
                  Left = 3
                  Top = 50
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
                  Top = 4
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
                  Top = 66
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
                  Left = 308
                  Top = 87
                  Width = 103
                  Height = 15
                  Caption = 'Parecer Descritivo'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                end
                object RLDraw53: TRLDraw
                  Left = 0
                  Top = 83
                  Width = 756
                  Height = 2
                  DrawKind = dkLine
                end
                object RLDBText202: TRLDBText
                  Left = 638
                  Top = 4
                  Width = 104
                  Height = 15
                  DataField = 'ALUNASCIMENTO'
                  DataSource = DataSource
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                end
                object LblAno: TRLLabel
                  Left = 99
                  Top = 66
                  Width = 41
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
                  Top = 34
                  Width = 71
                  Height = 15
                  DataField = 'CURTURMA'
                  DataSource = DataSource
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                end
                object LblCurNumTurma: TRLLabel
                  Left = 99
                  Top = 50
                  Width = 103
                  Height = 15
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                end
              end
              object RLBand76: TRLBand
                Left = 0
                Top = 726
                Width = 718
                Height = 125
                BandType = btColumnFooter
                Borders.Sides = sdCustom
                Borders.DrawLeft = True
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = True
                object RLLabel159: TRLLabel
                  Left = 345
                  Top = 6
                  Width = 66
                  Height = 14
                  Alignment = taCenter
                end
                object RLLabel160: TRLLabel
                  Left = 118
                  Top = 99
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
                  Top = 99
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
                  Top = 84
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
                  Top = 84
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
                  Left = 350
                  Top = 99
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
                object RLLabel10: TRLLabel
                  Left = 347
                  Top = 84
                  Width = 64
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
            object RLBand77: TRLBand
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
              object RLDBImage24: TRLDBImage
                Left = 1
                Top = 1
                Width = 181
                Height = 67
                Align = faLeft
                DataField = 'INSFIGURA'
                DataSource = DM.DSInstituto
              end
              object RLDBRichText13: TRLDBRichText
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
              object RLSystemInfo39: TRLSystemInfo
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
              object RLSystemInfo40: TRLSystemInfo
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
              object RLDraw56: TRLDraw
                Left = 1
                Top = 68
                Width = 716
                Height = 5
                Align = faBottom
                DrawKind = dkLine
              end
            end
          end
        end
        object TabHistFinanceiro: TTabSheet
          Caption = 'Pend'#234'ncias Financeiras'
          ImageIndex = 5
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 40
            Align = alTop
            TabOrder = 0
            object Label39: TLabel
              Left = 5
              Top = 1
              Width = 43
              Height = 15
              Caption = 'Servi'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnservicofin: TSpeedButton
              Left = 59
              Top = 17
              Width = 22
              Height = 21
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
              OnClick = btnservicofinClick
            end
            object Label50: TLabel
              Left = 164
              Top = 1
              Width = 69
              Height = 15
              Caption = 'Observa'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label45: TLabel
              Left = 84
              Top = 1
              Width = 26
              Height = 15
              Caption = 'Data'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object txtServicoFIn: TWSEdit
              Left = 5
              Top = 19
              Width = 53
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
              OnKeyDown = txtcodKeyDown
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
            object ToolBar2: TToolBar
              Left = 542
              Top = 1
              Width = 69
              Height = 38
              Align = alRight
              BorderWidth = 2
              ButtonHeight = 30
              ButtonWidth = 31
              Caption = 'ToolBarItem'
              Images = DM.ImageList
              TabOrder = 3
              Transparent = False
              object btnIncServicoFin: TToolButton
                Left = 0
                Top = 0
                Hint = 'Salvar Disciplina'
                ImageIndex = 14
                ParentShowHint = False
                ShowHint = True
                OnClick = btnIncServicoFinClick
              end
              object btnexcServicoFIn: TToolButton
                Left = 31
                Top = 0
                Hint = 'Excluir Disciplina'
                ImageIndex = 5
                ParentShowHint = False
                ShowHint = True
                OnClick = btnexcServicoFInClick
              end
            end
            object txtobservacao: TWSEdit
              Left = 164
              Top = 18
              Width = 365
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
              OnKeyDown = txtcodKeyDown
              enterclicar = True
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
            object txtdataservicofin: TWSMaskEdit
              Left = 84
              Top = 18
              Width = 77
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
              TabOrder = 1
              Text = '  /  /    '
              OnKeyDown = txtcodKeyDown
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
          end
          object DBGrid3: TDBGrid
            Left = 0
            Top = 40
            Width = 612
            Height = 338
            TabStop = False
            Align = alClient
            DataSource = DM.DSAlunoServicoFin
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -9
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            OnKeyDown = txtpesquisaKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'ALUSERFINDATA'
                Title.Caption = 'Data'
                Title.Color = clActiveBorder
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -9
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FINDESCRICAO'
                Title.Caption = 'Servi'#231'o Financeiro'
                Title.Color = clActiveBorder
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -9
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALUSERFINHISTORICO'
                Title.Caption = 'Hist'#243'rico'
                Title.Color = clActiveBorder
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -9
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 318
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALUSERFINUSUARIO'
                Title.Caption = 'Usu'#225'rio'
                Title.Color = clActiveBorder
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -9
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 78
                Visible = True
              end>
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Egresso'
          ImageIndex = 6
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object WSDBMemo3: TWSDBMemo
            Left = 0
            Top = 0
            Width = 612
            height = 378
            Align = alClient
            BevelInner = bvNone
            DataField = 'ALUEGRESSO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 0
            OnKeyDown = txtocorrenciasKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Foto'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ImgFoto: TDBImage
            Left = 0
            Top = 0
            Width = 612
            Height = 378
            Align = alClient
            DataField = 'ALUFOTO'
            DataSource = DM.DSAlunoFoto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnDblClick = ImgFotoDblClick
          end
        end
      end
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 628
    Height = 29
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 10
      Top = 7
      Width = 28
      Height = 15
      Caption = 'Filtro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtpesquisa: TWSEdit
      Left = 47
      Top = 6
      Width = 148
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
    object RBNome: TRadioButton
      Left = 253
      Top = 6
      Width = 52
      Height = 17
      Caption = 'Nome'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = RBEmailClick
    end
    object RBEmail: TRadioButton
      Left = 307
      Top = 6
      Width = 49
      Height = 17
      Caption = 'Email'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = RBEmailClick
    end
    object RBCod: TRadioButton
      Left = 208
      Top = 6
      Width = 44
      Height = 17
      Caption = 'C'#243'd.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = RBEmailClick
    end
  end
  object RLReport: TRLReport
    Left = 62
    Top = 555
    Width = 1123
    Height = 794
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand3: TRLBand
      Left = 19
      Top = 111
      Width = 1085
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 440
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
      Left = 19
      Top = 147
      Width = 1085
      Height = 21
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 7
        Top = 2
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
      object RLLabel3: TRLLabel
        Left = 54
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
      object RLLabel4: TRLLabel
        Left = 950
        Top = 2
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
      object RLLabel5: TRLLabel
        Left = 313
        Top = 2
        Width = 48
        Height = 15
        Caption = 'Tel Res.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 406
        Top = 2
        Width = 52
        Height = 15
        Caption = 'Tel Com.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 497
        Top = 2
        Width = 44
        Height = 15
        Caption = 'Tel Cel.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 588
        Top = 3
        Width = 57
        Height = 15
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 756
        Top = 3
        Width = 38
        Height = 15
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 873
        Top = 3
        Width = 26
        Height = 15
        Caption = 'CEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 19
      Top = 168
      Width = 1085
      Height = 16
      object RLDBText7: TRLDBText
        Left = 6
        Top = 1
        Width = 46
        Height = 14
        Alignment = taCenter
        DataField = 'ALUCOD'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 55
        Top = 1
        Width = 258
        Height = 13
        AutoSize = False
        DataField = 'ALUNOME'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 950
        Top = 1
        Width = 131
        Height = 13
        AutoSize = False
        DataField = 'cidade'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 315
        Top = 1
        Width = 88
        Height = 13
        AutoSize = False
        DataField = 'ALUFONE'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 407
        Top = 1
        Width = 88
        Height = 13
        AutoSize = False
        DataField = 'ALUFAX'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 497
        Top = 1
        Width = 88
        Height = 13
        AutoSize = False
        DataField = 'ALUCELULAR'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 590
        Top = 1
        Width = 163
        Height = 13
        AutoSize = False
        DataField = 'ALUENDERECO'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 758
        Top = 1
        Width = 113
        Height = 13
        AutoSize = False
        DataField = 'ALUBAIRRO'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 874
        Top = 1
        Width = 73
        Height = 13
        AutoSize = False
        DataField = 'ALUCEP'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 19
      Top = 184
      Width = 1085
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
      object RLDBImage1: TRLDBImage
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
      object RLDBText11: TRLDBText
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
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 38
      Width = 1085
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
        Width = 904
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
        Left = 935
        Top = 8
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
        Left = 987
        Top = 8
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
        Width = 1085
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object btnimportartxt: TButton
    Left = 2
    Top = 2
    Width = 75
    Height = 25
    Caption = 'btnimportartxt'
    TabOrder = 4
    Visible = False
    OnClick = btnimportartxtClick
  end
  object panimpressao: TPanel
    Left = 232
    Top = 300
    Width = 220
    Height = 143
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 5
    Visible = False
    object Image1: TImage
      Left = 13
      Top = 16
      Width = 100
      Height = 106
      AutoSize = True
      Picture.Data = {
        07544269746D61706E7C0000424D6E7C00000000000036000000280000006400
        00006A0000000100180000000000387C0000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFEFEFEFE7E7E7E7E7E7EFEFEF
        F7F3F7F7F3F7F7F3F7E7DFDED6CFCEB5B2ADA5A2A5A5A2A5B5B2ADD6CFCEE7DF
        DEEFEFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFFFFFFFFFBFFF7F3F7E7DFDED6CFCE
        BDBAB5BDBAB5BDBAB5CEC7C6D6CFCEDED7D6CEC7C6BDBAB5A5A2A58C8A847B75
        737B7D7B84827BA5A2A5BDBAB5D6CFCEE7E7E7FFFBFFFFFBFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFE7E7E7
        E7DFDED6CFCEC6BEBDA5A2A59C96948C8A84948E8C948E8C9C9E9C9C9694948E
        8C8C8A8484827B84827B948E8C8C8A848C8A848C8A849C9E9CBDBAB5CEC7C6DE
        D7D6E7E7E7F7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFBFFF7F3F7E7DFDECEC7C6B5B2ADA5A2A59C96948C8A8473716B6B6D636B6D
        6373716B73716B7B75737B75737B7D7B84827B9C9E9CADAAADADAAAD9C9E9C94
        8E8C948E8CA5A2A5ADAAADB5B2ADC6BEBDE7DFDEEFEFEFFFFBFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEFEFEFE7E7E7DED7D6C6BEBDA5A2A5948E8C7B75737371
        6B6B6D636B656363615A63615A63615A6B6D637B75738C8A849C9694B5B2ADCE
        C7C6DED7D6DED7D6D6CFCEB5B2ADA5A2A59C9694948E8C8C8A84A5A2A5BDBAB5
        D6CFCEE7DFDEF7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFF7F3F7F7F3F7EFEFEFDED7D6BDBAB5ADAAAD9C96
        948C8A8473716B6B6D636B65636B656363615A63615A5A59526B656373716B8C
        8A84A5A2A5C6BEBDDED7D6E7E7E7EFEFEFF7F3F7E7E7E7DED7D6C6BEBDADAAAD
        948E8C8C8A848C8A849C9E9CA5A2A5BDBAB5D6CFCEE7E7E7F7F3F7FFFBFFFFFB
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEFF7
        F3F7EFEFEFF7F3F7F7F3F7FFFBFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFE7DFDED6CF
        CEB5B2AD9C969484827B7B757373716B73716B6B6D6373716B6B6D636B6D636B
        6D637B757384827B9C9E9CB5B2ADDED7D6E7E7E7F7F3F7F7F3F7FFFBFFFFFBFF
        F7F3F7EFEFEFE7E7E7D6CFCEBDBAB59C9E9C948E8C8C8A848C8A84948E8CADAA
        ADC6BEBDDED7D6E7E7E7F7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF
        EFEFE7E7E7D6CFCECEC7C6CEC7C6D6CFCED6CFCEE7DFDEEFEFEFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFEFEFEFDED7D6C6BEBDA5A2A5948E8C7B7D7B7B75736B6D636B6D636B6D6373
        716B73716B7B75737B7D7B8C8A849C9694ADAAADC6BEBDDED7D6E7E7E7EFEFEF
        EFEFEFF7F3F7F7F3F7FFFBFFF7F3F7FFFBFFEFEFEFE7E7E7D6CFCEC6BEBDA5A2
        A59C96948C8A848C8A84948E8C9C9E9CADAAADC6BEBDD6CFCEE7E7E7F7F3F7F7
        F3F7F7F3F7F7F3F7E7E7E7DED7D6BDBAB5ADAAADA5A2A5ADAAADADAAADB5B2AD
        CEC7C6E7DFDEE7E7E7F7F3F7F7F3F7FFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFBFFF7F3F7E7DFDEC6BEBD9C9E9C8C8A847B75737B757373
        716B7B757373716B7B75737B75737B7D7B84827B9C9E9CB5B2ADCEC7C6DED7D6
        E7E7E7E7E7E7E7E7E7E7DFDEE7DFDEE7DFDEE7E7E7EFEFEFF7F3F7F7F3F7F7F3
        F7EFEFEFEFEFEFE7E7E7DED7D6C6BEBDADAAAD9C96948C8A8484827B8C8A849C
        9694ADAAADCEC7C6E7DFDEDED7D6DED7D6D6CFCECEC7C6B5B2AD9C9E9C8C8A84
        948E8C9C96949C9E9CA5A2A5BDBAB5C6BEBDD6CFCED6CFCEE7DFDEE7E7E7F7F3
        F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFE7E7E7CEC7C6A5A2A594
        8E8C7B75737B757373716B7B75737B75737B7D7B7B7D7B8C8A84948E8CADAAAD
        C6BEBDDED7D6E7DFDEE7E7E7DED7D6DED7D6C6BEBDBDBAB5B5B2ADBDBAB5BDBA
        B5D6CFCEDED7D6E7E7E7E7E7E7EFEFEFEFEFEFEFEFEFE7E7E7E7DFDECEC7C6B5
        B2AD9C9E9C948E8C84827B84827B8C8A849C9E9CA5A2A5ADAAADA5A2A5A5A2A5
        9C9E9C9C9694948E8C8C8A848C8A849C96949C9E9CADAAADADAAADB5B2ADADAA
        ADB5B2ADB5B2ADCEC7C6DED7D6EFEFEFEFEFEFFFFBFFFFFBFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
        F3F7DED7D6B5B2AD9C96947B7D7B7B75737B75737B75737B757384827B8C8A84
        9C9694A5A2A5BDBAB5D6CFCEE7E7E7EFEFEFEFEFEFDED7D6CEC7C6B5B2ADA5A2
        A59C9E9C9C96949C96949C9E9CADAAADC6BEBDDED7D6E7E7E7E7E7E7EFEFEFEF
        EFEFF7F3F7EFEFEFE7E7E7DED7D6C6BEBDA5A2A59C969484827B84827B84827B
        84827B84827B84827B84827B8C8A848C8A84948E8C948E8C9C96949C9E9CADAA
        ADB5B2ADBDBAB5ADAAADADAAAD9C9E9C9C9E9CADAAADCEC7C6D6CFCEE7DFDEE7
        E7E7F7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A584827B7B7D7B7B75737B7573
        7B7D7B84827B8C8A849C9E9CB5B2ADD6CFCEDED7D6E7E7E7E7E7E7E7DFDECEC7
        C6C6BEBDADAAADA5A2A5948E8C948E8C8C8A848C8A848C8A849C9694A5A2A5C6
        BEBDD6CFCEE7DFDEE7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7DED7D6CEC7C6
        BDBAB5A5A2A58C8A8484827B7B757373716B73716B7B75737B7D7B8C8A84948E
        8C9C96949C9694A5A2A5B5B2ADC6BEBDBDBAB5BDBAB5B5B2ADADAAADA5A2A5AD
        AAADADAAADADAAADB5B2ADCEC7C6DED7D6E7E7E7EFEFEFFFFBFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7E7DFDEC6BEBD9C9694
        84827B7B7D7B7B7D7B84827B948E8C9C9694ADAAADBDBAB5DED7D6E7E7E7F7F3
        F7EFEFEFE7DFDECEC7C6BDBAB5ADAAADA5A2A59C9E9C9C9694948E8C948E8C8C
        8A848C8A848C8A849C9694ADAAADCEC7C6DED7D6E7DFDEE7DFDEE7DFDEE7DFDE
        E7E7E7E7E7E7E7E7E7E7DFDEDED7D6C6BEBDADAAAD948E8C84827B7B75737B75
        737B757384827B8C8A849C96949C9E9CA5A2A5A5A2A5BDBAB5C6BEBDCEC7C6C6
        BEBDCEC7C6C6BEBDCEC7C6BDBAB5BDBAB5A5A2A5A5A2A5B5B2ADC6BEBDCEC7C6
        E7DFDEEFEFEFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E7DFDEC6BEBD9C9E9C948E8C7B7D7B84827B84827B9C9694A5A2A5BDBAB5D6CF
        CEE7E7E7EFEFEFF7F3F7E7E7E7DED7D6C6BEBDB5B2ADA5A2A5A5A2A5A5A2A5AD
        AAADADAAADADAAAD9C9E9C9C9E9C9C9694948E8C948E8C9C9E9CADAAADD6CFCE
        DED7D6DED7D6DED7D6DED7D6DED7D6DED7D6DED7D6E7DFDEE7DFDEDED7D6CEC7
        C6BDBAB59C9E9C948E8C84827B84827B84827B948E8C9C96949C9E9C9C9E9CAD
        AAADBDBAB5CEC7C6CEC7C6D6CFCED6CFCEE7DFDEE7DFDEE7DFDED6CFCEBDBAB5
        ADAAADADAAADADAAADADAAADB5B2ADCEC7C6E7DFDEEFEFEFEFEFEFFFFBFFFFFB
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCEC7C6A5A2A5948E8C84827B8C8A84948E8CA5A2
        A5B5B2ADCEC7C6DED7D6EFEFEFF7F3F7F7F3F7E7E7E7DED7D6C6BEBDB5B2ADA5
        A2A5A5A2A5ADAAADB5B2ADB5B2ADBDBAB5B5B2ADADAAADA5A2A5A5A2A59C9694
        948E8C948E8C9C9E9CB5B2ADCEC7C6D6CFCEDED7D6D6CFCED6CFCED6CFCEDED7
        D6DED7D6E7DFDEE7DFDEE7DFDECEC7C6BDBAB5A5A2A59C96948C8A848C8A8494
        8E8C9C9E9C9C9E9CA5A2A5ADAAADC6BEBDCEC7C6D6CFCED6CFCEE7DFDEE7E7E7
        FFFBFFF7F3F7EFEFEFDED7D6CEC7C6C6BEBDBDBAB5A5A2A5ADAAADB5B2ADCEC7
        C6D6CFCEDED7D6E7DFDEF7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADAAAD948E8C7B7D
        7B84827B948E8CADAAADC6BEBDE7DFDEEFEFEFF7F3F7F7F3F7F7F3F7E7DFDED6
        CFCEB5B2ADA5A2A59C9E9CA5A2A5A5A2A5B5B2ADB5B2ADBDBAB5B5B2ADB5B2AD
        ADAAADADAAAD9C9E9C9C9694948E8C948E8C8C8A849C9694A5A2A5BDBAB5C6BE
        BDD6CFCED6CFCED6CFCECEC7C6CEC7C6CEC7C6D6CFCED6CFCED6CFCECEC7C6B5
        B2AD9C9E9C948E8C8C8A849C96949C9694A5A2A5A5A2A5B5B2ADC6BEBDD6CFCE
        CEC7C6D6CFCEDED7D6E7E7E7F7F3F7FFFBFFFFFBFFFFFBFFEFEFEFE7E7E7D6CF
        CEC6BEBDB5B2ADB5B2ADADAAADADAAADB5B2ADC6BEBDDED7D6E7E7E7EFEFEFFF
        FBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF9C9E9C948E8C948E8C9C9E9CBDBAB5D6CFCEE7E7E7EFEFEFFFFBFFFF
        FBFFF7F3F7E7E7E7D6CFCEB5B2ADA5A2A59C9E9CA5A2A5A5A2A5ADAAADADAAAD
        B5B2ADB5B2ADBDBAB5B5B2ADADAAADA5A2A59C9E9C9C96949C96948C8A848C8A
        847B7D7B948E8C9C9E9CB5B2ADC6BEBDCEC7C6CEC7C6CEC7C6C6BEBDC6BEBDC6
        BEBDC6BEBDBDBAB5B5B2ADA5A2A59C9E9C9C96949C96949C9E9CA5A2A5A5A2A5
        ADAAADB5B2ADC6BEBDCEC7C6D6CFCED6CFCEE7DFDEE7E7E7FFFBFFFFFBFFFFFF
        FFFFFBFFFFFBFFF7F3F7EFEFEFE7DFDED6CFCEC6BEBDBDBAB5ADAAADADAAADB5
        B2ADC6BEBDCEC7C6DED7D6E7DFDEF7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9E9C9C9E9CB5B2ADCEC7C6E7DFDEEF
        EFEFF7F3F7FFFBFFF7F3F7FFFBFFE7E7E7D6CFCEB5B2AD9C9E9C9C96949C9E9C
        9C9E9CADAAAD9C9E9CA5A2A5A5A2A5B5B2ADB5B2ADB5B2ADA5A2A59C9E9C948E
        8C948E8C948E8C948E8C84827B7B75737B75738C8A849C9694ADAAADB5B2ADBD
        BAB5BDBAB5BDBAB5B5B2ADADAAAD9C9E9C9C9694948E8C9C96949C96949C9E9C
        9C9E9CA5A2A5A5A2A5ADAAADADAAADB5B2ADC6BEBDD6CFCED6CFCEDED7D6DED7
        D6E7E7E7EFEFEFF7F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFBFFEFEFEFE7
        E7E7D6CFCEC6BEBDB5B2ADADAAADADAAADADAAADB5B2ADCEC7C6E7DFDEEFEFEF
        EFEFEFFFFBFFFFFBFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC7C6CE
        C7C6DED7D6E7E7E7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFF7F3F7E7E7E7C6BEBD
        ADAAAD948E8C948E8C9C96949C9E9C9C9E9C9C9E9C9C9E9CA5A2A5B5B2ADC6BE
        BDB5B2ADA5A2A59C96949C96949C96949C9E9C9C96949C96948C8A848C8A848C
        8A84948E8C948E8C9C9E9C9C9E9CA5A2A5A5A2A59C9E9C9C9694948E8C8C8A84
        8C8A848C8A84948E8C948E8C9C96949C9E9CADAAADADAAADB5B2ADB5B2ADCEC7
        C6D6CFCED6CFCED6CFCEE7DFDEE7E7E7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFF
        FBFFFFFFFFFFFBFFFFFBFFF7F3F7EFEFEFE7DFDEDED7D6CEC7C6BDBAB5ADAAAD
        ADAAADADAAADC6BEBDCEC7C6D6CFCEE7DFDEF7F3F7FFFBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFF7F3F7F7F3F7FFFBFFF7F3F7F7F3F7
        F7F3F7F7F3F7E7DFDEC6BEBDA5A2A5948E8C948E8C9C96949C96949C9E9C9C96
        949C96949C9694ADAAADBDBAB5B5B2AD9C9E9C9C9694948E8C9C9E9C9C9E9CA5
        A2A5A5A2A5A5A2A59C9E9C9C96948C8A8484827B7B7D7B84827B84827B8C8A84
        84827B84827B7B7D7B84827B84827B84827B84827B8C8A84948E8C9C9E9CA5A2
        A5B5B2ADB5B2ADBDBAB5CEC7C6DED7D6D6CFCEDED7D6DED7D6E7E7E7F7F3F7F7
        F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFBFF
        F7F3F7EFEFEFD6CFCEC6BEBDADAAADADAAADADAAADADAAADADAAADCEC7C6DED7
        D6EFEFEFF7F3F7FFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7EFEFEFE7E7E7
        F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7EFEFEFE7E7E7D6CFCEBDBAB59C9E9C9C96
        94948E8C948E8C948E8C948E8C948E8C948E8C948E8C9C9E9C9C9E9CA5A2A59C
        9E9CA5A2A5A5A2A5B5B2ADADAAADB5B2ADB5B2ADBDBAB5B5B2ADA5A2A58C8A84
        7B7D7B73716B73716B6B6D6373716B7B75737B7D7B7B7D7B8C8A8484827B8482
        7B84827B948E8C9C9E9CADAAADB5B2ADBDBAB5C6BEBDD6CFCEDED7D6DED7D6DE
        D7D6E7E7E7E7E7E7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7
        FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFF7F3F7F7F3F7E7E7E7E7DFDED6CFCEC6BE
        BDADAAADADAAADB5B2ADC6BEBDC6BEBDD6CFCEDED7D6E7E7E7F7F3F7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFF7F3F7EFEFEFEFEFEFE7E7E7EFEFEFEFEFEFF7F3F7EFEFEFEFEFEFE7E7
        E7E7DFDECEC7C6BDBAB5A5A2A59C9E9C9C96949C96949C96949C9694948E8C94
        8E8C948E8C9C96949C9E9CA5A2A5ADAAADB5B2ADB5B2ADBDBAB5BDBAB5BDBAB5
        BDBAB5BDBAB59C9E9C8C8A8473716B6B656363615A6B65636B656373716B7B75
        737B7D7B84827B84827B7B7D7B84827B948E8CA5A2A5ADAAADBDBAB5B5B2ADC6
        BEBDD6CFCEDED7D6DED7D6E7DFDEE7DFDEEFEFEFEFEFEFF7F3F7EFEFEFF7F3F7
        EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFFFFB
        FFFFFBFFF7F3F7EFEFEFDED7D6CEC7C6B5B2ADB5B2ADB5B2ADADAAADA5A2A5B5
        B2ADC6BEBDE7DFDEF7F3F7FFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFF7F3F7E7E7E7E7E7
        E7E7E7E7EFEFEFEFEFEFF7F3F7EFEFEFE7E7E7DED7D6D6CFCEC6BEBDBDBAB5B5
        B2ADB5B2ADB5B2ADB5B2ADADAAADB5B2ADA5A2A5A5A2A5A5A2A5B5B2ADB5B2AD
        BDBAB5BDBAB5C6BEBDBDBAB5B5B2ADA5A2A58C8A847B75736B6D636B65636B65
        636B65636B6D636B6D637B7D7B7B7D7B84827B7B7D7B84827B84827B9C9694AD
        AAADBDBAB5BDBAB5C6BEBDC6BEBDDED7D6DED7D6E7DFDEE7DFDEE7E7E7E7E7E7
        EFEFEFEFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FFFB
        FFF7F3F7FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEFE7E7E7D6
        CFCECEC7C6ADAAAD9C9E9C948E8C9C9E9CBDBAB5E7E7E7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFBFFF7F3F7E7E7E7E7E7E7E7E7E7EFEFEFEFEFEFEFEFEFE7E7E7E7
        E7E7E7DFDEDED7D6CEC7C6CEC7C6C6BEBDC6BEBDC6BEBDC6BEBDBDBAB5B5B2AD
        ADAAADADAAADADAAADB5B2ADB5B2ADBDBAB5B5B2ADADAAAD9C9E9C948E8C7B7D
        7B73716B6B6D636B6D636B65636B6D636B6D6373716B7B75737B7D7B7B7D7B84
        827B84827B948E8C9C9E9CB5B2ADBDBAB5BDBAB5BDBAB5CEC7C6D6CFCEE7DFDE
        DED7D6E7DFDEE7DFDEE7E7E7EFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7EFEF
        EFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFF
        FBFFFFFBFFFFFBFFF7F3F7EFEFEFDED7D6CEC7C6B5B2ADA5A2A59C9E9CB5B2AD
        D6CFCEF7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7EFEFEFEFEFEFE7
        E7E7E7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7DFDEDED7D6D6CFCED6CFCECEC7C6
        D6CFCECEC7C6CEC7C6C6BEBDC6BEBDADAAADADAAADADAAADB5B2ADA5A2A5A5A2
        A59C9694948E8C84827B7B7D7B73716B73716B6B6D6373716B6B6D637B75737B
        75737B7D7B7B7D7B8C8A848C8A849C9694A5A2A5B5B2ADBDBAB5C6BEBDC6BEBD
        CEC7C6CEC7C6DED7D6E7DFDEE7DFDEE7DFDEE7E7E7E7E7E7EFEFEFEFEFEFEFEF
        EFEFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7
        F3F7FFFBFFF7F3F7FFFBFFF7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFBFFEFEFEF
        EFEFEFDED7D6D6CFCECEC7C6D6CFCECEC7C6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFBFFFFFBFFF7F3F7EFEFEFE7E7E7E7E7E7E7E7E7EFEFEFE7E7E7E7E7E7
        E7DFDEE7DFDEDED7D6D6CFCECEC7C6CEC7C6CEC7C6CEC7C6BDBAB5B5B2AD9C9E
        9C9C9E9C9C96949C96948C8A848C8A847B7D7B7B757373716B73716B6B6D6373
        716B6B6D6373716B73716B7B7D7B84827B948E8C948E8C9C9E9CA5A2A5B5B2AD
        BDBAB5C6BEBDC6BEBDC6BEBDC6BEBDD6CFCEDED7D6E7DFDEE7DFDEE7E7E7E7DF
        DEE7E7E7E7E7E7EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF7F3F7EFEFEFF7
        F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFF
        F7F3F7FFFBFFFFFBFFFFFBFFF7F3F7F7F3F7E7E7E7DED7D6C6BEBDBDBAB5FFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7F7F3F7EFEFEF
        EFEFEFE7E7E7E7DFDEDED7D6E7E7E7E7E7E7E7DFDED6CFCED6CFCECEC7C6CEC7
        C6C6BEBDBDBAB5ADAAAD9C9E9C948E8C8C8A8484827B84827B7B75737B757373
        716B73716B73716B73716B73716B73716B7B75737B7D7B84827B9C96949C9E9C
        ADAAADB5B2ADC6BEBDC6BEBDC6BEBDC6BEBDCEC7C6CEC7C6CEC7C6D6CFCEE7DF
        DEE7DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEF
        EFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7
        FFFBFFF7F3F7FFFBFFFFFBFFFFFBFFF7F3F7FFFBFFFFFBFFFFFBFFFFFBFFF7F3
        F7DED7D6CEC7C6BDBAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFBFFF7F3F7F7F3F7E7E7E7D6CFCEBDBAB5B5B2ADC6BEBDDED7D6E7DF
        DEE7DFDEDED7D6D6CFCEBDBAB5B5B2ADA5A2A59C9E9C948E8C8C8A8484827B84
        827B7B7D7B7B7D7B7B75737B757373716B7B757373716B7B75737B757384827B
        8C8A849C9694A5A2A5B5B2ADB5B2ADC6BEBDBDBAB5C6BEBDC6BEBDCEC7C6C6BE
        BDCEC7C6CEC7C6D6CFCEDED7D6E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EF
        EFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF7F3F7EFEFEFF7F3F7
        EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FFFBFFF7F3
        F7FFFBFFFFFBFFFFFBFFEFEFEFE7DFDECEC7C6BDBAB5FFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE7E7E7C6BEBDA5A2
        A59C9694ADAAADBDBAB5DED7D6E7DFDEE7DFDED6CFCEB5B2AD9C9E9C9C969494
        8E8C8C8A8484827B8C8A8484827B84827B7B7D7B7B7D7B7B75737B7D7B7B7573
        7B7D7B7B7D7B8C8A84948E8CA5A2A5ADAAADBDBAB5BDBAB5C6BEBDC6BEBDCEC7
        C6C6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CFCEDED7D6E7DFDEE7E7E7EFEFEFE7
        E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEF
        F7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3
        F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFBFFFFFBFFF7F3F7E7E7E7D6CFCEBD
        BAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFBFFE7DFDEB5B2AD948E8C8C8A84948E8CA5A2A5ADAAADBDBAB5BDBAB5B5
        B2ADA5A2A5A5A2A59C9694948E8C84827B84827B7B7D7B84827B7B7D7B84827B
        7B7D7B7B7D7B7B7D7B84827B8C8A849C96949C9E9CADAAADB5B2ADBDBAB5BDBA
        B5C6BEBDC6BEBDCEC7C6CEC7C6CEC7C6CEC7C6D6CFCECEC7C6D6CFCED6CFCEDE
        D7D6E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEF
        E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7EFEF
        EFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FF
        FBFFEFEFEFE7E7E7CEC7C6BDBAB5FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE7DFDEADAAAD948E8C84827B948E8C9C
        96949C96949C96949C96949C96949C9E9C9C96949C9694948E8C948E8C84827B
        84827B7B7D7B84827B7B7D7B84827B84827B8C8A84948E8C9C9E9CA5A2A5BDBA
        B5BDBAB5C6BEBDC6BEBDCEC7C6CEC7C6CEC7C6CEC7C6D6CFCED6CFCED6CFCED6
        CFCEDED7D6D6CFCEDED7D6DED7D6E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7
        E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7
        F3F7FFFBFFF7F3F7FFFBFFF7F3F7F7F3F7E7E7E7D6CFCEBDBAB5FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7D6CFCEAD
        AAAD8C8A8484827B948E8C9C9694948E8C8C8A847B75737B75737B7D7B8C8A84
        948E8C9C96949C9694948E8C8C8A8484827B7B7D7B7B7D7B84827B948E8C9C96
        94A5A2A5ADAAADBDBAB5BDBAB5C6BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6D6
        CFCECEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6E7DFDEE7DFDEE7E7E7
        E7E7E7EFEFEFE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7
        E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF7
        F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFEFEFEFE7E7E7
        CEC7C6BDBAB5FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEFEFEFD6CFCEA5A2A5948E8C8C8A849C96949C96949C969484827B
        73716B6B656373716B7B757384827B8C8A84948E8C948E8C948E8C8C8A848C8A
        848C8A849C96949C9E9CADAAADB5B2ADBDBAB5C6BEBDC6BEBDC6BEBDCEC7C6CE
        C7C6CEC7C6CEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6
        DED7D6DED7D6E7DFDEE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7
        FFFBFFF7F3F7F7F3F7E7DFDED6CFCEBDBAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A5948E8C948E8C
        9C96949C9E9C9C96948C8A846B6D636B656363615A6B6D6373716B7B7D7B7B7D
        7B8C8A848C8A849C96949C96949C9E9CA5A2A5B5B2ADB5B2ADC6BEBDBDBAB5C6
        BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6D6CFCED6CFCED6CFCED6CFCEDED7D6
        DED7D6DED7D6DED7D6DED7D6DED7D6DED7D6E7DFDEE7E7E7E7E7E7EFEFEFE7E7
        E7EFEFEFE7E7E7E7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7
        EFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7EFEFEFE7DFDECEC7C6BDBAB5FFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
        CEC7C69C9E9C9C9694948E8C9C9E9CA5A2A5A5A2A58C8A8473716B6B65636B65
        636B656373716B73716B7B7D7B8C8A849C9E9CA5A2A5ADAAADADAAADBDBAB5BD
        BAB5C6BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CFCED6CFCE
        DED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDEDED7D6DED7D6DED7D6E7DF
        DEE7DFDEE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFE7E7E7E7E7E7E7DFDEE7E7E7E7
        DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF7F3F7EFEFEFF7F3F7F7F3F7EFEF
        EFE7DFDECEC7C6B5B2ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A5948E8C948E8C9C9E9CADAAAD9C9E
        9C948E8C7B75736B6D636B65636B6D6373716B7B75737B7D7B9C9694A5A2A5B5
        B2ADB5B2ADBDBAB5BDBAB5C6BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6D6CFCE
        D6CFCED6CFCED6CFCEDED7D6DED7D6DED7D6DED7D6DED7D6DED7D6DED7D6DED7
        D6DED7D6DED7D6DED7D6DED7D6E7DFDEE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7E7
        E7E7E7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFF7F3F7E7E7E7E7DFDECEC7C6BDBAB5FFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFD6CFCEA5A2A59C96
        94948E8CA5A2A5ADAAADA5A2A59C96947B7D7B73716B73716B7B757384827B8C
        8A849C9694A5A2A5BDBAB5BDBAB5C6BEBDC6BEBDCEC7C6CEC7C6CEC7C6CEC7C6
        D6CFCECEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6E7DF
        DEE7DFDEE7E7E7E7DFDEE7DFDEDED7D6E7DFDEDED7D6E7DFDEE7DFDEE7E7E7EF
        EFEFEFEFEFEFEFEFEFEFEFE7E7E7E7E7E7E7DFDEE7DFDEE7DFDEE7E7E7E7DFDE
        E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF7F3F7EFEFEFEFEFEFE7DFDECEC7C6BD
        BAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFB
        FFEFEFEFCEC7C6A5A2A5948E8C948E8C9C9E9CADAAADA5A2A59C9E9C84827B7B
        7D7B7B7D7B8C8A849C9694A5A2A5ADAAADBDBAB5BDBAB5C6BEBDC6BEBDCEC7C6
        C6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7
        D6DED7D6DED7D6DED7D6DED7D6E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEDED7D6DE
        D7D6DED7D6E7DFDEE7DFDEEFEFEFEFEFEFEFEFEFE7E7E7EFEFEFE7DFDEE7DFDE
        E7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFE7E7E7E7DFDECEC7C6BDBAB5FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCEC7C69C9E9C9C9694948E8CA5A2A5AD
        AAADB5B2ADA5A2A59C9694948E8C9C96949C9E9CADAAADB5B2ADBDBAB5C6BEBD
        CEC7C6C6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CFCED6CFCED6CFCED6CFCEDED7
        D6DED7D6DED7D6DED7D6E7DFDEDED7D6E7DFDEDED7D6DED7D6D6CFCED6CFCECE
        C7C6DED7D6E7DFDEE7DFDEDED7D6E7DFDEE7DFDEE7E7E7E7E7E7EFEFEFEFEFEF
        F7F3F7EFEFEFEFEFEFE7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7
        E7E7EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE7DFDECEC7C6B5B2ADFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFCEC7C6A5
        A2A5948E8C948E8CA5A2A5B5B2ADADAAADADAAAD9C9E9CA5A2A5A5A2A5B5B2AD
        BDBAB5C6BEBDC6BEBDC6BEBDC6BEBDCEC7C6CEC7C6CEC7C6CEC7C6D6CFCED6CF
        CED6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6E7DFDEDED7D6DED7D6D6CFCED6
        CFCEBDBAB5B5B2ADA5A2A5ADAAADB5B2ADD6CFCEDED7D6E7DFDEE7DFDEE7DFDE
        E7DFDEE7E7E7E7E7E7EFEFEFEFEFEFEFEFEFE7E7E7E7E7E7E7DFDEE7DFDEE7DF
        DEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7
        E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7E7DFDE
        CEC7C6BDBAB5FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBFFEFEFEFCEC7C69C9E9C9C9694948E8CADAAADB5B2ADBDBAB5B5B2AD
        BDBAB5BDBAB5C6BEBDBDBAB5C6BEBDC6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CF
        CED6CFCEDED7D6D6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDEDE
        D7D6DED7D6CEC7C6C6BEBDADAAAD9C96947B7D7B7B75737B7573948E8CADAAAD
        D6CFCEE7DFDEE7E7E7E7DFDEE7E7E7E7E7E7EFEFEFEFEFEFF7F3F7EFEFEFF7F3
        F7E7E7E7E7E7E7E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7
        DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        EFEFEFEFEFEFE7E7E7DED7D6CEC7C6BDBAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A5948E8C9C9694
        A5A2A5BDBAB5BDBAB5BDBAB5BDBAB5C6BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7
        C6CEC7C6CEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6DE
        D7D6DED7D6E7DFDEDED7D6D6CFCEC6BEBDB5B2AD9C96947B7D7B6B6D635A5952
        52514A5A59526B6D638C8A84B5B2ADDED7D6E7DFDEE7E7E7E7DFDEE7E7E7E7E7
        E7EFEFEFEFEFEFF7F3F7EFEFEFEFEFEFE7E7E7E7E7E7E7DFDEE7DFDEDED7D6E7
        DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7
        E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7E7DFDEC6BEBDBDBAB5FFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
        CEC7C69C9E9C9C96949C9694ADAAADBDBAB5C6BEBDC6BEBDC6BEBDC6BEBDCEC7
        C6C6BEBDCEC7C6CEC7C6D6CFCED6CFCED6CFCED6CFCEDED7D6DED7D6DED7D6DE
        D7D6E7DFDEDED7D6E7DFDEDED7D6E7DFDEDED7D6D6CFCEBDBAB5A5A2A584827B
        6B6D635255524A4D424241394245424A4D425255526B65639C9694C6BEBDE7DF
        DEE7E7E7E7E7E7E7E7E7EFEFEFEFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7E7
        E7E7E7E7E7E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7DFDE
        E7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7E7E7
        E7DED7D6CEC7C6B5B2ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A5948E8C9C9694ADAAADC6BEBDBDBA
        B5C6BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CFCED6CFCEDE
        D7D6D6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDEDED7D6E7DFDED6CFCEC6BEBD
        A5A2A5948E8C73716B63615A52514A42454242413942454242454252514A5251
        4A63615A7B7D7BADAAADD6CFCEEFEFEFE7E7E7E7E7E7E7E7E7EFEFEFEFEFEFF7
        F3F7EFEFEFF7F3F7F7F3F7EFEFEFE7E7E7E7DFDEDED7D6E7DFDEDED7D6E7DFDE
        E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7DF
        DEE7E7E7E7E7E7EFEFEFE7DFDEDED7D6C6BEBDBDBAB5FFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD6CFCEA5A2A59C96
        949C9694B5B2ADC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6CEC7C6CEC7C6D6CFCED6
        CFCED6CFCED6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDEDED7D6DED7D6DED7D6
        DED7D6CEC7C6BDBAB59C9E9C7B7D7B63615A52514A4245424245424245425251
        4A52514A5A59525A59525A595263615A7B7573948E8CCEC7C6E7E7E7EFEFEFE7
        E7E7EFEFEFEFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7EFEFEFE7E7E7
        E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7
        E7E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7EFEFEFE7E7E7E7DFDED6CFCECEC7C6BD
        BAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFB
        FFEFEFEFCEC7C6A5A2A59C96949C9E9CADAAADCEC7C6CEC7C6CEC7C6CEC7C6CE
        C7C6CEC7C6D6CFCED6CFCED6CFCED6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDE
        DED7D6DED7D6D6CFCECEC7C6B5B2AD9C96947B75736B656352514A4A4D424245
        4242454242454252514A5255525A59525A595263615A63615A6B6D6373716B84
        827BADAAADDED7D6E7DFDEEFEFEFE7E7E7EFEFEFEFEFEFF7F3F7F7F3F7FFFBFF
        F7F3F7FFFBFFF7F3F7EFEFEFE7E7E7E7DFDEDED7D6E7DFDEDED7D6E7DFDEDED7
        D6E7DFDEDED7D6E7DFDEE7DFDEE7E7E7E7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7
        E7E7DED7D6D6CFCEC6BEBDBDBAB5FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD6CFCEA5A2A59C9E9C9C9E9CBDBAB5CE
        C7C6D6CFCECEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6
        E7DFDEDED7D6E7DFDEDED7D6DED7D6D6CFCEC6BEBDADAAAD8C8A846B65635251
        4A4241394241394241394A4D4252514A52555252555263615A63615A6B65636B
        65636B6D6373716B7B75737B7D7B9C9E9CBDBAB5E7DFDEEFEFEFEFEFEFEFEFEF
        F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFFFFBFFF7F3F7E7E7E7E7E7
        E7E7DFDEE7DFDEDED7D6E7DFDEDED7D6E7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7
        DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7DFDECEC7C6C6BEBDC6BEBDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFCEC7C6A5
        A2A59C96949C9E9CB5B2ADD6CFCECEC7C6D6CFCED6CFCED6CFCED6CFCEDED7D6
        DED7D6DED7D6DED7D6DED7D6DED7D6E7DFDEE7DFDEDED7D6C6BEBDADAAAD8C8A
        8473716B5A595252514A4241394245424245424A4D4252514A5255525A595263
        615A63615A6B65636B6D6373716B73716B7B75737B75737B7D7B8C8A84A5A2A5
        CEC7C6E7E7E7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7FFFBFFFFFBFFFFFBFFFFFB
        FFFFFBFFF7F3F7F7F3F7E7E7E7E7E7E7E7DFDEE7DFDEDED7D6DED7D6DED7D6E7
        DFDEDED7D6E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7D6CFCEC6BEBD
        C6BEBDCEC7C6FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEFEFEFD6CFCEA5A2A59C96949C9E9CBDBAB5D6CFCED6CFCED6CFCE
        DED7D6DED7D6DED7D6DED7D6DED7D6DED7D6E7DFDEDED7D6E7DFDEDED7D6D6CF
        CEB5B2AD9C9E9C7B7D7B6B656352514A4245424241394245424A4D4252514A52
        55525A59525A59526B65636B65636B6D636B6D6373716B7B75737B7D7B7B7D7B
        7B7D7B7B7D7B84827B948E8CB5B2ADD6CFCEEFEFEFF7F3F7F7F3F7EFEFEFEFEF
        EFE7E7E7EFEFEFF7F3F7FFFBFFFFFBFFFFFFFFFFFBFFFFFBFFEFEFEFEFEFEFE7
        DFDEE7DFDEDED7D6E7DFDEDED7D6E7DFDEDED7D6E7DFDEE7DFDEE7DFDEE7DFDE
        E7E7E7E7DFDEDED7D6BDBAB5CEC7C6DED7D6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A59C96949C9E9C
        BDBAB5D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDEDED7
        D6E7DFDED6CFCEBDBAB59C96947B757363615A52514A4A4D424245424245424A
        4D424A4D425255525255525A59525A59526B65636B65636B6D6373716B7B7573
        7B75737B7D7B7B7D7B84827B7B7D7B84827B84827B8C8A849C9694B5B2ADDED7
        D6EFEFEFEFEFEFE7DFDEC6BEBDC6BEBDC6BEBDE7E7E7F7F3F7FFFBFFFFFBFFFF
        FBFFFFFBFFFFFBFFF7F3F7EFEFEFE7E7E7E7E7E7DED7D6E7DFDEDED7D6E7DFDE
        DED7D6E7DFDEE7DFDEE7DFDEE7DFDEE7DFDED6CFCECEC7C6D6CFCEE7E7E7FFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
        D6CFCEA5A2A59C96949C9E9CBDBAB5D6CFCEE7DFDEDED7D6DED7D6DED7D6E7DF
        DEE7DFDEE7DFDEDED7D6D6CFCEBDBAB5ADAAAD8C8A8473716B5255524A4D4242
        45424245424A4D4252514A52514A5A59525A595263615A63615A6B6D636B6D63
        73716B73716B7B75737B75737B7D7B7B7D7B84827B84827B8C8A8484827B8C8A
        848C8A84948E8C9C9E9CCEC7C6DED7D6E7E7E7CEC7C6BDBAB5B5B2ADC6BEBDE7
        DFDEFFFBFFFFFBFFFFFFFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEF
        E7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7DFDED6CFCED6CF
        CECEC7C6E7DFDEF7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFF7F3F7D6CFCEADAAAD9C96949C9694BDBAB5DED7D6DED7
        D6E7DFDEDED7D6DED7D6DED7D6E7DFDEDED7D6CEC7C6A5A2A584827B6B656352
        55524A4D424A4D424245424A4D424A4D4252514A5255525A59525A595263615A
        6B65636B6D636B6D6373716B7B75737B7D7B7B7D7B7B7D7B7B7D7B84827B8482
        7B84827B84827B8C8A848C8A848C8A848C8A849C9694A5A2A5BDBAB5C6BEBDBD
        BAB5ADAAADC6BEBDD6CFCEEFEFEFF7F3F7FFFFFFFFFBFFFFFFFFFFFBFFFFFBFF
        FFFBFFFFFBFFF7F3F7F7F3F7EFEFEFEFEFEFE7E7E7EFEFEFE7E7E7EFEFEFE7E7
        E7E7E7E7DED7D6C6BEBDB5B2ADCEC7C6E7DFDEFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7E7DFDEBDBAB5A5A2
        A59C9E9CBDBAB5D6CFCEE7DFDEDED7D6E7DFDEDED7D6DED7D6CEC7C6BDBAB59C
        96947B7D7B63615A52514A42454242454242454252514A52514A5255525A5952
        63615A63615A6B65636B656373716B73716B7B75737B75737B7D7B7B7D7B8482
        7B84827B84827B84827B8C8A848C8A848C8A848C8A84948E8C8C8A84948E8C94
        8E8C9C9E9CA5A2A5B5B2ADB5B2ADC6BEBDD6CFCEEFEFEFF7F3F7FFFFFFFFFBFF
        FFFBFFF7F3F7F7F3F7EFEFEFF7F3F7F7F3F7FFFBFFF7F3F7F7F3F7F7F3F7F7F3
        F7EFEFEFF7F3F7E7E7E7E7DFDED6CFCEC6BEBDA5A2A5B5B2ADD6CFCEEFEFEFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFBFFE7E7E7CEC7C6B5B2ADADAAADB5B2ADCEC7C6DED7D6E7DFDEDED7D6DE
        D7D6CEC7C6ADAAAD84827B6B656352514A4A4D424245424245424A4D4252514A
        52514A5255525A595263615A63615A6B65636B6D6373716B73716B7B75737B75
        737B7D7B7B7D7B84827B84827B84827B84827B8C8A848C8A848C8A848C8A848C
        8A848C8A84948E8C948E8C948E8C948E8C9C9E9C9C9E9CB5B2ADCEC7C6E7E7E7
        F7F3F7FFFBFFFFFBFFF7F3F7E7E7E7E7DFDEDED7D6E7DFDEE7E7E7EFEFEFF7F3
        F7F7F3F7EFEFEFF7F3F7EFEFEFEFEFEFE7E7E7E7DFDECEC7C6BDBAB5A5A2A59C
        9694ADAAADDED7D6F7F3F7FFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7DED7D6BDBAB5A5A2A5B5B2ADC6
        BEBDE7DFDEE7DFDEE7DFDECEC7C6B5B2AD84827B63615A52514A4A4D42424542
        4A4D424A4D425255525255525A59525A59526B65636B65636B6D636B6D637B75
        737B75737B7D7B7B7D7B84827B7B7D7B84827B84827B8C8A8484827B8C8A848C
        8A84948E8C8C8A84948E8C948E8C948E8C948E8C9C96949C96949C96949C9694
        9C9E9CA5A2A5BDBAB5D6CFCEE7E7E7F7F3F7F7F3F7E7E7E7E7DFDED6CFCEDED7
        D6DED7D6E7E7E7EFEFEFF7F3F7EFEFEFEFEFEFE7E7E7E7E7E7DED7D6D6CFCEBD
        BAB5B5B2ADA5A2A59C9E9C9C9694B5B2ADE7DFDEFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFF7F3F7E7
        DFDEBDBAB5A5A2A5ADAAADC6BEBDD6CFCEE7DFDEDED7D6C6BEBD9C9E9C6B6D63
        42454242454242454252514A52514A5255525255525A595263615A6B65636B65
        636B6D6373716B7B75737B75737B7D7B7B7D7B84827B7B7D7B84827B84827B8C
        8A8484827B8C8A848C8A84948E8C8C8A84948E8C948E8C948E8C948E8C9C9694
        9C96949C96949C96949C9E9C9C9E9C9C9E9CA5A2A5BDBAB5CEC7C6E7DFDEE7DF
        DEDED7D6CEC7C6CEC7C6CEC7C6DED7D6E7DFDEE7E7E7E7E7E7E7E7E7E7DFDEE7
        DFDED6CFCEC6BEBDB5B2ADADAAAD9C9E9CA5A2A59C9E9C9C9E9CADAAADE7DFDE
        F7F3F7FFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFFE7E7E7C6BEBD9C9E9CA5A2A5B5B2ADDED7D6E7DFDE
        E7DFDEC6BEBD9C9E9C6B65634A4D4242454252514A5255525A59525A59526361
        5A63615A6B6D636B6D6373716B73716B7B7D7B7B7D7B7B7D7B7B7D7B84827B84
        827B8C8A8484827B8C8A848C8A84948E8C8C8A84948E8C948E8C948E8C948E8C
        9C96949C96949C96949C96949C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E
        9CA5A2A5B5B2ADBDBAB5C6BEBDBDBAB5C6BEBDC6BEBDCEC7C6D6CFCEE7DFDEE7
        DFDEE7DFDED6CFCED6CFCEC6BEBDC6BEBDB5B2ADB5B2ADADAAADB5B2ADADAAAD
        ADAAAD9C9E9CB5B2ADE7DFDEFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFCEC7C6ADAAAD
        9C9E9CADAAADCEC7C6E7DFDEDED7D6CEC7C69C9E9C73716B4A4D4252514A5255
        525A59525A59526B65636B65636B6D636B6D6373716B7B75737B7D7B7B7D7B7B
        7D7B7B7D7B84827B84827B84827B84827B8C8A848C8A848C8A848C8A84948E8C
        948E8C9C9694948E8C9C96949C96949C96949C96949C9E9C9C96949C9E9C9C9E
        9C9C9E9C9C96949C9E9C9C96949C9E9C9C9694A5A2A5A5A2A5ADAAADADAAADB5
        B2ADBDBAB5CEC7C6CEC7C6CEC7C6C6BEBDC6BEBDB5B2ADB5B2ADB5B2ADBDBAB5
        BDBAB5C6BEBDBDBAB5BDBAB5ADAAADA5A2A5B5B2ADE7DFDEF7F3F7FFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F3F7DED7D6BDBAB5ADAAADADAAADCEC7C6DED7D6E7DFDED6CFCEB5B2
        AD84827B63615A52555263615A63615A6B65636B656373716B73716B7B75737B
        75737B7D7B7B7D7B84827B84827B84827B84827B8C8A8484827B8C8A848C8A84
        948E8C8C8A84948E8C948E8C9C96949C96949C96949C96949C9E9C9C96949C9E
        9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C96949C9E9C9C96949C96949C
        96949C96949C96949C9E9C9C9E9CA5A2A5A5A2A5ADAAADADAAADADAAADADAAAD
        B5B2ADB5B2ADCEC7C6D6CFCEE7DFDEDED7D6DED7D6CEC7C6BDBAB5A5A2A5BDBA
        B5E7DFDEFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFFFBFFE7DFDECEC7C6ADAAADADAAADBDBA
        B5D6CFCEE7DFDEE7DFDEC6BEBD9C9E9C73716B6B656363615A6B65636B6D6373
        716B73716B7B75737B75737B7D7B7B7D7B84827B84827B84827B84827B8C8A84
        8C8A848C8A848C8A848C8A848C8A84948E8C948E8C9C9694948E8C9C96949C96
        949C9E9C9C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C
        9694948E8C9C9694948E8C948E8C8C8A84948E8C8C8A84948E8C948E8C9C9694
        9C9694A5A2A5A5A2A5ADAAADB5B2ADBDBAB5C6BEBDDED7D6E7DFDEE7E7E7E7DF
        DEDED7D6C6BEBDADAAADB5B2ADE7DFDEF7F3F7FFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3
        F7DED7D6BDBAB5A5A2A5B5B2ADC6BEBDE7DFDEE7DFDEE7DFDEBDBAB59C96947B
        75736B6D636B6D637B75737B75737B7D7B7B7D7B84827B84827B84827B84827B
        8C8A848C8A848C8A848C8A84948E8C8C8A84948E8C948E8C9C9694948E8C9C96
        949C96949C9E9C9C96949C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C96949C9E9C9C
        96949C9E9C9C96949C96949C96949C9694948E8C948E8C8C8A84948E8C8C8A84
        8C8A848C8A848C8A84948E8C9C9E9CADAAADBDBAB5C6BEBDC6BEBDC6BEBDCEC7
        C6D6CFCEE7DFDEE7E7E7EFEFEFE7E7E7DED7D6ADAAADBDBAB5E7DFDEFFFBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFF7F3F7E7E7E7BDBAB5ADAAADA5A2A5BDBAB5D6CFCEE7
        DFDEE7DFDEDED7D6B5B2AD948E8C7B75737B75737B75737B7D7B7B7D7B84827B
        84827B84827B84827B8C8A8484827B8C8A848C8A84948E8C8C8A84948E8C948E
        8C9C9694948E8C9C96949C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C
        9E9C9C96949C9E9C9C96949C96949C96949C9694948E8C948E8C948E8C948E8C
        8C8A848C8A8484827B8C8A8484827B948E8C948E8CA5A2A5ADAAADC6BEBDD6CF
        CEDED7D6CEC7C6CEC7C6BDBAB5CEC7C6D6CFCEE7DFDEE7E7E7E7E7E7D6CFCEB5
        B2ADBDBAB5E7E7E7F7F3F7FFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD6CFCEAD
        AAADADAAADADAAADCEC7C6E7DFDEEFEFEFE7E7E7DED7D6ADAAAD948E8C84827B
        7B7D7B7B7D7B84827B84827B8C8A848C8A848C8A848C8A84948E8C8C8A84948E
        8C948E8C948E8C948E8C9C96949C96949C96949C96949C9E9C9C9E9C9C9E9C9C
        9E9C9C9E9C9C9E9C9C9E9C9C96949C9E9C9C96949C96949C96949C9694948E8C
        948E8C948E8C948E8C8C8A848C8A848C8A848C8A848C8A84948E8C9C9E9CADAA
        ADBDBAB5D6CFCEDED7D6EFEFEFE7E7E7DED7D6CEC7C6BDBAB5BDBAB5CEC7C6D6
        CFCEE7DFDEDED7D6D6CFCEBDBAB5CEC7C6E7E7E7FFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFF7F3F7E7DFDECEC7C6ADAAADB5B2ADC6BEBDDED7D6E7E7E7EFEFEF
        E7DFDECEC7C6ADAAAD948E8C84827B84827B84827B8C8A8484827B8C8A848C8A
        84948E8C8C8A84948E8C948E8C948E8C948E8C9C96949C96949C96949C96949C
        9E9C9C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C9694
        948E8C9C9694948E8C948E8C8C8A848C8A8484827B8C8A8484827B948E8C948E
        8C9C9694A5A2A5B5B2ADC6BEBDD6CFCEDED7D6E7E7E7E7E7E7E7E7E7DED7D6CE
        C7C6BDBAB5C6BEBDC6BEBDCEC7C6CEC7C6CEC7C6C6BEBDCEC7C6D6CFCEEFEFEF
        FFFBFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7DED7D6C6BEBDB5B2AD
        C6BEBDD6CFCEE7E7E7EFEFEFEFEFEFE7DFDECEC7C6A5A2A5948E8C8C8A848C8A
        848C8A848C8A848C8A84948E8C948E8C9C9694948E8C9C9694948E8C9C96949C
        96949C9E9C9C96949C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9694
        9C9E9C9C96949C96949C96949C9694948E8C948E8C8C8A84948E8C8C8A848C8A
        848C8A84948E8C9C9694A5A2A5ADAAADC6BEBDCEC7C6DED7D6E7DFDEE7E7E7EF
        EFEFEFEFEFE7E7E7DED7D6CEC7C6C6BEBDC6BEBDD6CFCECEC7C6CEC7C6C6BEBD
        CEC7C6D6CFCEE7E7E7F7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFEFEFEFD6CFCEC6BEBDB5B2ADC6BEBDDED7D6E7E7E7EFEFEFEFEFEFE7DF
        DEC6BEBD9C9E9C948E8C8C8A848C8A848C8A84948E8C948E8C9C9694948E8C9C
        96949C96949C96949C96949C96949C96949C9E9C9C96949C9E9C9C96949C9E9C
        9C96949C96949C96949C9694948E8C9C9694948E8C9C96948C8A84948E8C8C8A
        848C8A848C8A848C8A848C8A849C96949C9E9CADAAADBDBAB5CEC7C6D6CFCEE7
        DFDEE7DFDEE7E7E7E7E7E7EFEFEFEFEFEFE7E7E7D6CFCED6CFCECEC7C6DED7D6
        E7DFDEDED7D6D6CFCEDED7D6DED7D6EFEFEFF7F3F7FFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE7E7E7CEC7C6BDBAB5B5B2ADCEC7
        C6DED7D6EFEFEFEFEFEFEFEFEFDED7D6C6BEBDA5A2A59C9694948E8C948E8C94
        8E8C9C9694948E8C9C96949C96949C9E9C9C96949C9E9C9C9E9C9C9E9C9C9E9C
        9C9E9C9C9E9C9C9E9C9C96949C9E9C9C96949C96949C96949C9694948E8C948E
        8C948E8C948E8C8C8A848C8A848C8A84948E8C948E8C9C9E9CA5A2A5BDBAB5C6
        BEBDDED7D6E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7
        DED7D6D6CFCED6CFCEDED7D6EFEFEFE7E7E7EFEFEFEFEFEFF7F3F7FFFBFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFF7F3
        F7E7E7E7BDBAB5ADAAADA5A2A5C6BEBDE7DFDEEFEFEFEFEFEFEFEFEFE7DFDEC6
        BEBDA5A2A59C9694948E8C9C9694948E8C9C96949C96949C9E9C9C96949C9E9C
        9C9E9C9C9E9C9C96949C9E9C9C96949C9E9C9C96949C96949C96949C9694948E
        8C948E8C948E8C948E8C8C8A848C8A848C8A848C8A848C8A84948E8C9C9694A5
        A2A5B5B2ADCEC7C6D6CFCEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7
        E7E7E7EFEFEFEFEFEFE7E7E7DED7D6D6CFCECEC7C6E7DFDEEFEFEFFFFBFFFFFB
        FFFFFBFFFFFBFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7D6CFCEB5B2ADADAAADB5B2ADD6CFCEE7
        DFDEF7F3F7F7F3F7F7F3F7E7DFDECEC7C6ADAAADA5A2A59C96949C96949C9694
        9C9E9C9C96949C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C96949C9E9C9C96949C96
        949C96949C9694948E8C9C9694948E8C948E8C8C8A848C8A848C8A848C8A8494
        8E8C9C96949C9E9CB5B2ADBDBAB5CEC7C6DED7D6E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFEFEFEFEFEFEFE7E7E7E7DFDED6CFCED6CF
        CEDED7D6F7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFBFFEFEFEFDE
        D7D6B5B2ADADAAADB5B2ADD6CFCEE7E7E7F7F3F7F7F3F7F7F3F7E7E7E7CEC7C6
        B5B2ADA5A2A59C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C9E9C9C96
        949C96949C96949C96949C96949C9694948E8C948E8C8C8A848C8A848C8A848C
        8A8484827B8C8A848C8A849C9E9CADAAADBDBAB5CEC7C6DED7D6DED7D6E7DFDE
        E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFDED7D6D6CFCECEC7C6E7DFDEEFEFEFFFFBFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFFE7E7E7CEC7C6B5B2ADB5B2ADBDBAB5DED7D6EFEFEF
        FFFBFFFFFBFFFFFBFFE7E7E7D6CFCEBDBAB5ADAAADA5A2A59C9E9C9C96949C9E
        9C9C9E9C9C9E9C9C96949C96949C96949C9694948E8C9C9694948E8C948E8C8C
        8A848C8A848C8A848C8A848C8A849C96949C9694A5A2A5B5B2ADCEC7C6D6CFCE
        E7DFDEE7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEF
        EFEFEFEFF7F3F7EFEFEFF7F3F7EFEFEFE7DFDEDED7D6D6CFCEDED7D6EFEFEFFF
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFF7F3F7E7DFDECEC7C6
        B5B2ADB5B2ADB5B2ADE7DFDEEFEFEFFFFBFFFFFBFFFFFBFFEFEFEFDED7D6C6BE
        BDB5B2ADA5A2A59C9E9C9C96949C9E9C9C96949C9694948E8C948E8C948E8C94
        8E8C948E8C948E8C8C8A848C8A8484827B8C8A848C8A849C96949C9E9CB5B2AD
        C6BEBDD6CFCEE7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEFEFEFF7F3F7EFEFEFEFEFEFE7DFDEDE
        D7D6D6CFCEE7DFDEEFEFEFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFBFFF7F3F7E7DFDED6CFCEBDBAB5BDBAB5CEC7C6E7DFDEE7E7E7F7F3
        F7FFFBFFFFFBFFEFEFEFE7DFDED6CFCEBDBAB5ADAAADA5A2A59C96949C969494
        8E8C948E8C8C8A84948E8C8C8A84948E8C8C8A848C8A848C8A84948E8C9C9694
        A5A2A5B5B2ADC6BEBDCEC7C6DED7D6E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7F7
        F3F7F7F3F7EFEFEFE7E7E7DED7D6DED7D6DED7D6EFEFEFFFFBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFF7F3F7E7DFDED6CFCEC6BE
        BDCEC7C6CEC7C6DED7D6E7DFDEF7F3F7F7F3F7FFFBFFF7F3F7E7E7E7D6CFCEC6
        BEBDADAAADA5A2A59C96949C9694948E8C948E8C8C8A848C8A848C8A848C8A84
        8C8A84948E8C9C9E9CADAAADBDBAB5D6CFCEDED7D6E7E7E7E7DFDEE7E7E7E7DF
        DEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEF
        EFEFEFEFEFF7F3F7F7F3F7F7F3F7F7F3F7EFEFEFE7DFDEDED7D6D6CFCEE7DFDE
        E7E7E7FFFBFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFBFFFFFBFFF7F3F7EFEFEFCEC7C6BDBAB5C6BEBDCEC7C6D6CFCEE7DFDEEF
        EFEFF7F3F7F7F3F7EFEFEFE7DFDEDED7D6C6BEBDBDBAB5ADAAADADAAAD9C9E9C
        9C9694948E8C948E8C8C8A849C9694A5A2A5BDBAB5D6CFCEDED7D6DED7D6E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEF
        EFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFF7F3F7
        E7E7E7DED7D6DED7D6E7DFDEEFEFEFF7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFDED7D6C6BEBDCE
        C7C6BDBAB5BDBAB5CEC7C6DED7D6E7DFDEE7E7E7E7E7E7E7E7E7DED7D6D6CFCE
        CEC7C6C6BEBDB5B2ADADAAAD9C9E9C9C9E9C948E8C9C96949C9E9CB5B2ADCEC7
        C6E7E7E7E7E7E7E7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EF
        EFEFE7E7E7EFEFEFEFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7FFFBFF
        FFFBFFFFFBFFF7F3F7F7F3F7E7E7E7E7DFDEDED7D6E7DFDEE7E7E7F7F3F7FFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF7F3F7EFEFEFE7DFDED6CFCEBDBAB5C6BEBDC6BEBDC6BEBDBDBAB5
        C6BEBDC6BEBDCEC7C6CEC7C6C6BEBDBDBAB5BDBAB5B5B2ADBDBAB5B5B2ADB5B2
        ADADAAADB5B2ADB5B2ADD6CFCEEFEFEFEFEFEFE7E7E7E7E7E7E7E7E7EFEFEFE7
        E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7F7F3F7F7F3F7F7F3F7
        FFFBFFF7F3F7FFFBFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7E7E7E7E7DFDEDED7
        D6DED7D6E7E7E7EFEFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7E7DFDEDED7D6
        CEC7C6CEC7C6BDBAB5B5B2ADB5B2ADBDBAB5BDBAB5C6BEBDBDBAB5C6BEBDC6BE
        BDCEC7C6D6CFCED6CFCECEC7C6BDBAB5B5B2ADB5B2ADD6CFCEF7F3F7EFEFEFE7
        E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7
        EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFF7F3
        F7EFEFEFE7DFDEE7DFDEDED7D6E7DFDEE7DFDEEFEFEFF7F3F7FFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFBFFFFFBFFF7F3F7EFEFEFE7DFDEDED7D6CEC7C6CEC7C6C6BEBDCEC7
        C6C6BEBDCEC7C6CEC7C6DED7D6E7E7E7EFEFEFEFEFEFE7DFDEC6BEBDB5B2ADB5
        B2ADD6CFCEEFEFEFF7F3F7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEF
        F7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFF
        FFFFFFFFFFFFFFF7F3F7F7F3F7E7E7E7E7E7E7E7DFDEE7DFDEE7DFDEEFEFEFEF
        EFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFF7F3F7E7E7
        E7E7E7E7E7DFDEE7DFDEDED7D6DED7D6DED7D6E7DFDEE7E7E7F7F3F7FFFBFFFF
        FBFFE7E7E7C6BEBDADAAADB5B2ADD6CFCEF7F3F7EFEFEFEFEFEFE7E7E7EFEFEF
        E7E7E7EFEFEFEFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7FFFBFFF7F3
        F7FFFBFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7EFEFEFE7E7E7E7E7E7E7DFDEE7
        DFDEE7DFDEE7E7E7E7E7E7F7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7FFFBFFF7F3F7FFFBFFFF
        FBFFFFFBFFFFFFFFFFFFFFFFFBFFE7E7E7C6BEBDB5B2ADB5B2ADD6CFCEF7F3F7
        F7F3F7EFEFEFEFEFEFEFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3
        F7F7F3F7FFFBFFFFFBFFFFFFFFFFFBFFFFFFFFFFFBFFFFFBFFEFEFEFEFEFEFE7
        E7E7E7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7EFEFEFFFFBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFBFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFE7E7E7C6BEBD
        ADAAADB5B2ADD6CFCEF7F3F7F7F3F7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7F7F3
        F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFF7F3F7F7
        F3F7EFEFEFE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7DFDEE7DFDEEFEFEF
        EFEFEFFFFBFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F3F7E7E7E7C6BEBDB5B2ADB5B2ADDED7D6F7F3F7F7F3F7EFEFEFF7F3
        F7EFEFEFF7F3F7F7F3F7FFFBFFF7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFFFFFF
        FBFFFFFBFFF7F3F7F7F3F7E7E7E7E7E7E7E7DFDEE7E7E7E7E7E7EFEFEFE7E7E7
        E7E7E7E7DFDEEFEFEFEFEFEFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFBFFE7DFDEC6BEBDB5B2ADBDBAB5D6CF
        CEF7F3F7F7F3F7F7F3F7EFEFEFF7F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFF
        FBFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEFE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7
        E7DFDEE7E7E7E7E7E7EFEFEFEFEFEFF7F3F7EFEFEFFFFBFFFFFBFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7E7E7
        E7C6BEBDB5B2ADBDBAB5DED7D6F7F3F7FFFBFFF7F3F7F7F3F7F7F3F7FFFBFFFF
        FBFFFFFBFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEFEFEFEFE7DFDE
        E7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEFEFF7F3F7FFFBFFFFFBFFFFFB
        FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFBFFE7DFDEC6BEBDB5B2ADBDBAB5DED7D6FFFBFFF7F3F7F7
        F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7EFEFEF
        E7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7DFDEE7DFDEE7E7E7E7E7E7EFEFEFF7F3
        F7FFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7E7E7E7C6BEBDBDBAB5BD
        BAB5E7DFDEFFFBFFFFFBFFF7F3F7FFFBFFFFFBFFFFFBFFFFFBFFFFFFFFFFFBFF
        F7F3F7EFEFEFEFEFEFE7E7E7E7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEF
        EFEFEFEFF7F3F7F7F3F7FFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFF
        FBFFE7DFDEC6BEBDB5B2ADC6BEBDDED7D6FFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
        FFFBFFFFFBFFF7F3F7F7F3F7E7E7E7E7E7E7E7DFDEE7E7E7E7DFDEE7DFDEE7DF
        DEE7E7E7E7E7E7EFEFEFEFEFEFF7F3F7FFFBFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7F3F7E7E7E7C6BEBDBDBAB5C6BEBDE7DFDEFFFBFF
        FFFFFFFFFBFFFFFBFFFFFBFFFFFBFFF7F3F7EFEFEFE7E7E7E7E7E7E7DFDEE7DF
        DEE7DFDEE7E7E7E7E7E7E7E7E7E7E7E7F7F3F7F7F3F7FFFBFFFFFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7E7DFDEC6BEBD
        B5B2ADC6BEBDE7DFDEFFFFFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEFEFEFEFE7DF
        DEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7E7E7EFEFEFEFEFEFEFEFEFEFEFEFFF
        FBFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F3F7E7E7E7BDBAB5BDBAB5C6BEBDE7E7E7FFFBFFFFFFFFF7F3F7F7F3
        F7E7E7E7E7E7E7E7DFDEE7E7E7E7DFDEE7DFDEE7DFDEE7E7E7E7E7E7EFEFEFF7
        F3F7FFFBFFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFF7F3F7E7DFDEC6BEBDB5B2ADC6BEBDDED7
        D6F7F3F7F7F3F7F7F3F7E7E7E7E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7
        E7E7E7E7E7EFEFEFEFEFEFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7E7E7
        E7CEC7C6C6BEBDC6BEBDDED7D6E7E7E7EFEFEFE7DFDEE7E7E7E7DFDEE7DFDEE7
        DFDEE7E7E7E7E7E7E7E7E7EFEFEFF7F3F7F7F3F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFBFFEFEFEFDED7D6CEC7C6D6CFCED6CFCEE7DFDEDED7D6DE
        D7D6E7DFDEE7E7E7E7DFDEE7E7E7EFEFEFEFEFEFEFEFEFF7F3F7F7F3F7FFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFEFEFEFEFEFEFE7
        E7E7E7DFDECEC7C6D6CFCEDED7D6E7E7E7E7E7E7E7E7E7E7E7E7F7F3F7FFFBFF
        FFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFBFFF7F3F7EFEFEFD6CFCEB5B2ADBDBAB5D6CFCEE7DFDEF7F3F7
        EFEFEFF7F3F7F7F3F7FFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE7E7E7CEC7C69C9E9C
        ADAAADBDBAB5E7DFDEF7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFE7E7E7BDBAB59C9E9C9C9E9CB5B2ADDED7D6FFFBFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnrelalunos: TSpeedButton
      Left = 8
      Top = 61
      Width = 205
      Height = 26
      Caption = 'Filtro do Relat'#243'rio de Alunos'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnrelalunosClick
    end
    object btnsintetico: TSpeedButton
      Left = 8
      Top = 17
      Width = 205
      Height = 26
      Caption = 'Relat'#243'rio Sint'#233'tico'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnsinteticoClick
    end
    object Label61: TLabel
      Left = 2
      Top = 2
      Width = 216
      Height = 15
      Align = alTop
      Alignment = taCenter
      Caption = 'Modelos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 48
    end
    object btnrelalunocurso: TSpeedButton
      Left = 8
      Top = 97
      Width = 205
      Height = 26
      Caption = 'Filtro de Relat'#243'rio de Ger. de Alunos'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnrelalunocursoClick
    end
  end
  object DataSource: TDataSource
    DataSet = DM.CDSAluno
    OnDataChange = DataSourceDataChange
    Left = 528
    Top = 8
  end
  object WSInformacao: TWSInformacao
    Tabela = 'TALUNO'
    Programa = 1
    Campo = 'ALUCOD'
    Left = 560
    Top = 8
  end
end
