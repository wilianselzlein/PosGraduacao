object FDre: TFDre
  Left = 62
  Top = 17
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 505
  ClientWidth = 645
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
    Width = 645
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Relat'#243'rio Gerencial Sint'#233'tico'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 285
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 475
    Width = 645
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
    Width = 645
    Height = 408
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
        Width = 637
        Height = 155
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
            FieldName = 'DRECOD'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRENOME'
            Title.Caption = 'Nome'
            Width = 493
            Visible = True
          end>
      end
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 155
        Width = 637
        Height = 223
        Align = alBottom
        TabOrder = 1
        object JvDBGrid1: TDBGrid
          Left = 318
          Top = 0
          Width = 315
          Height = 219
          Align = alClient
          DataSource = Dm.DSDreConta
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
          Columns = <
            item
              Expanded = False
              FieldName = 'Conta'
              Width = 241
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DRECONOPERACAO'
              Title.Caption = 'Op.'
              Visible = True
            end>
        end
        object JvDBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 318
          Height = 219
          Align = alLeft
          DataSource = Dm.DSDreItem
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
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DREITECOD'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186
              Width = 15
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DREITENOME'
              Title.Caption = 'Nome'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DREITEOPERACAO'
              Title.Caption = 'Op.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DREITEDESTACAR'
              Title.Caption = 'Dest.'
              Visible = True
            end>
        end
      end
    end
    object TabCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 8
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
        Left = 120
        Top = 6
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
      object txtdre: TWSDBEdit
        Left = 50
        Top = 6
        Width = 63
        DataField = 'DRECOD'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 1
        OnKeyDown = txtdreKeyDown
        Chave = True
        FocoNovo = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtnome: TWSDBEdit
        Left = 160
        Top = 6
        Width = 450
        DataField = 'DRENOME'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 2
        OnKeyDown = txtdreKeyDown
        FocoAlterar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object Panel1: TPanel
        Left = 0
        Top = 336
        Width = 637
        Height = 42
        Align = alBottom
        TabOrder = 0
        object btnconta: TSpeedButton
          Left = 401
          Top = 17
          Width = 22
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
          OnClick = btncontaClick
        end
        object Label5: TLabel
          Left = 3
          Top = 3
          Width = 61
          Height = 15
          Caption = 'Item Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 325
          Top = 3
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
        object Label6: TLabel
          Left = 149
          Top = 3
          Width = 56
          Height = 15
          Caption = 'Opera'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 206
          Top = 3
          Width = 52
          Height = 15
          Caption = 'Destacar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 424
          Top = 3
          Width = 56
          Height = 15
          Caption = 'Opera'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ToolItem: TToolBar
          Left = 252
          Top = 1
          Width = 70
          Height = 40
          Align = alNone
          BorderWidth = 2
          ButtonHeight = 30
          ButtonWidth = 31
          Caption = 'ToolItem'
          Images = Dm.ImageList
          TabOrder = 5
          object btnitemsalvar: TToolButton
            Left = 0
            Top = 0
            Hint = 'Salvar'
            Caption = 'btnitemsalvar'
            ImageIndex = 14
            ParentShowHint = False
            ShowHint = True
            OnClick = btnitemsalvarClick
          end
          object btnitemexcluir: TToolButton
            Left = 31
            Top = 0
            Hint = 'Excluir'
            Caption = 'btnitemexcluir'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
            OnClick = btnitemexcluirClick
          end
        end
        object txtitem: TWSEdit
          Left = 2
          Top = 20
          Width = 149
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
          OnKeyDown = txtdreKeyDown
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object txtcodconta: TWSEdit
          Left = 325
          Top = 20
          Width = 74
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
          OnKeyDown = txtdreKeyDown
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object ToolConta: TToolBar
          Left = 546
          Top = 3
          Width = 70
          Height = 38
          Align = alNone
          BorderWidth = 2
          ButtonHeight = 30
          ButtonWidth = 31
          Caption = 'ToolBarItem'
          Images = Dm.ImageList
          TabOrder = 6
          object btnsalvarconta: TToolButton
            Left = 0
            Top = 0
            Hint = 'Salvar'
            Caption = 'btnsalvaritem'
            ImageIndex = 14
            ParentShowHint = False
            ShowHint = True
            OnClick = btnsalvarcontaClick
          end
          object btnexcluirconta: TToolButton
            Left = 31
            Top = 0
            Hint = 'Excluir'
            Caption = 'btnexcluiritem'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
            OnClick = btnexcluircontaClick
          end
        end
        object txtitemoperacao: TWSComboBox
          Left = 153
          Top = 20
          Width = 53
          Height = 18
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          TabOrder = 1
          OnKeyDown = txtdreKeyDown
          Items.Strings = (
            '+'
            '-'
            'Sub Total'
            'Total')
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object txtitemdestacar: TWSComboBox
          Left = 208
          Top = 20
          Width = 46
          Height = 18
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          TabOrder = 2
          OnKeyDown = txtdreKeyDown
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object txtcontaoperacao: TWSComboBox
          Left = 425
          Top = 19
          Width = 53
          Height = 18
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          TabOrder = 4
          OnKeyDown = txtdreKeyDown
          Items.Strings = (
            '+'
            '-')
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 40
        Width = 637
        Height = 296
        Align = alBottom
        TabOrder = 3
        object JvDBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 318
          Height = 292
          Align = alLeft
          DataSource = Dm.DSDreItem
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
          OnKeyDown = txtpesquisaKeyDown
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DREITECOD'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186
              Width = 15
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DREITENOME'
              Title.Caption = 'Nome'
              Width = 211
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DREITEOPERACAO'
              Title.Caption = 'Op.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DREITEDESTACAR'
              Title.Caption = 'Dest.'
              Visible = True
            end>
        end
        object JvDBGrid3: TDBGrid
          Left = 318
          Top = 0
          Width = 315
          Height = 292
          Align = alClient
          DataSource = Dm.DSDreConta
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
          OnKeyDown = txtpesquisaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'Conta'
              Width = 241
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DRECONOPERACAO'
              Title.Caption = 'Op.'
              Width = 16
              Visible = True
            end>
        end
      end
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 645
    Height = 43
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 10
      Top = 14
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
      Top = 13
      Width = 162
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
    Left = 200
    Top = 490
    Width = 1123
    Height = 794
    DataSource = Dm.DSDreItem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    PreviewOptions.ShowModal = True
    Visible = False
    object RLBand17: TRLBand
      Left = 38
      Top = 188
      Width = 1047
      Height = 57
      BandType = btFooter
      object RLDBText31: TRLDBText
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
      object RLDBImage5: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'INSLOGO'
        DataSource = Dm.DSInstituto
        Stretch = True
      end
      object RLDBText32: TRLDBText
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
      object RLDBText33: TRLDBText
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
      object RLDBText34: TRLDBText
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
      object RLDBText35: TRLDBText
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
    object RLBand19: TRLBand
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
      object RLTitulo: TRLLabel
        Left = 478
        Top = 5
        Width = 90
        Height = 24
        Align = faCenter
        Alignment = taCenter
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
      Left = 38
      Top = 147
      Width = 1047
      Height = 21
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RL1: TRLLabel
        Left = 209
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
      object RL2: TRLLabel
        Left = 267
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
      object RL3: TRLLabel
        Left = 347
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
      object RL4: TRLLabel
        Left = 419
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
      object RL5: TRLLabel
        Left = 486
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
      object RL6: TRLLabel
        Left = 546
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
      object RL7: TRLLabel
        Left = 615
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
      object RL8: TRLLabel
        Left = 675
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
      object RL9: TRLLabel
        Left = 726
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
      object RL10: TRLLabel
        Left = 797
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
      object RL11: TRLLabel
        Left = 855
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
      object RL12: TRLLabel
        Left = 923
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
        Left = 1011
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
      Left = 38
      Top = 168
      Width = 1047
      Height = 20
      object RLtxtNome: TRLDBText
        Left = 2
        Top = 2
        Width = 165
        Height = 15
        AutoSize = False
        DataField = 'DREITENOME'
        DataSource = Dm.DSDreItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLtxtNomeBeforePrint
      end
      object RLTxtoperacao: TRLDBText
        Left = 168
        Top = 2
        Width = 19
        Height = 15
        AutoSize = False
        DataField = 'DREITEOPERACAO'
        DataSource = Dm.DSDreItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TRLLabel
        Left = 188
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TRLLabel
        Left = 254
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TRLLabel
        Left = 320
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TRLLabel
        Left = 386
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl5: TRLLabel
        Left = 452
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl6: TRLLabel
        Left = 518
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl7: TRLLabel
        Left = 584
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl8: TRLLabel
        Left = 650
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl9: TRLLabel
        Left = 716
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl10: TRLLabel
        Left = 782
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl11: TRLLabel
        Left = 848
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl12: TRLLabel
        Left = 914
        Top = 1
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblsubtotal: TRLLabel
        Left = 980
        Top = 1
        Width = 65
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
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
        DataSource = Dm.DSInstituto
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
        Width = 1047
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
  object panimpressao: TPanel
    Left = 208
    Top = 268
    Width = 220
    Height = 187
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 4
    Visible = False
    object btngerar: TSpeedButton
      Left = 8
      Top = 153
      Width = 205
      Height = 26
      Caption = 'Gerar o Relat'#243'rio'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btngerarClick
    end
    object Label61: TLabel
      Left = 2
      Top = 17
      Width = 216
      Height = 15
      Align = alTop
      Alignment = taCenter
      Caption = 'EM CONSTRU'#199#195'O!!!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 110
    end
    object Label9: TLabel
      Left = 2
      Top = 2
      Width = 216
      Height = 15
      Align = alTop
      Alignment = taCenter
      Caption = 'Selecione o(s) mes(es) a gerar:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 178
    end
    object chk1: TCheckBox
      Left = 20
      Top = 37
      Width = 49
      Height = 15
      Caption = 'Jan'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object chk2: TCheckBox
      Left = 20
      Top = 53
      Width = 49
      Height = 15
      Caption = 'Fev'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object chk4: TCheckBox
      Left = 20
      Top = 85
      Width = 49
      Height = 15
      Caption = 'Abr'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
    object chk3: TCheckBox
      Left = 20
      Top = 69
      Width = 49
      Height = 15
      Caption = 'Mar'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object chk6: TCheckBox
      Left = 20
      Top = 117
      Width = 49
      Height = 15
      Caption = 'Jun'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object chk5: TCheckBox
      Left = 20
      Top = 101
      Width = 49
      Height = 15
      Caption = 'Mai'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
    object chk7: TCheckBox
      Left = 124
      Top = 37
      Width = 49
      Height = 15
      Caption = 'Jul'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
    object chk8: TCheckBox
      Left = 124
      Top = 53
      Width = 49
      Height = 15
      Caption = 'Ago'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object chk10: TCheckBox
      Left = 124
      Top = 85
      Width = 49
      Height = 15
      Caption = 'Out'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 8
    end
    object chk9: TCheckBox
      Left = 124
      Top = 69
      Width = 49
      Height = 15
      Caption = 'Set'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 9
    end
    object chk12: TCheckBox
      Left = 124
      Top = 117
      Width = 49
      Height = 15
      Caption = 'Dez'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 10
    end
    object chk11: TCheckBox
      Left = 124
      Top = 101
      Width = 49
      Height = 15
      Caption = 'Nov'
      Checked = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 11
    end
  end
  object DataSource: TDataSource
    DataSet = Dm.CDSDre
    Left = 8
    Top = 8
  end
  object WSInformacao: TWSInformacao
    Tabela = 'TDRE'
    Programa = 11
    Campo = 'DRENOME'
    Left = 40
    Top = 8
  end
end
