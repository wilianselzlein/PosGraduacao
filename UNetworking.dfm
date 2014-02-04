object FNetworking: TFNetworking
  Left = 218
  Top = 63
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 595
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
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
    Width = 632
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Empresas/Pessoas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 195
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 565
    Width = 632
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
    Top = 56
    Width = 632
    Height = 509
    ActivePage = TabCadastro
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabStop = False
    object TabConsulta: TTabSheet
      Caption = 'Consulta'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 624
        Height = 481
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
            FieldName = 'NETCOD'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETNOME'
            Title.Caption = 'Nome'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETEMPRESA'
            Title.Caption = 'Empresa'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETFONE'
            Title.Caption = 'Fone'
            Width = 98
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
      object Label1: TLabel
        Left = 5
        Top = 1
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
        Left = 6
        Top = 45
        Width = 48
        Height = 15
        Caption = 'Fantasia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 5
        Top = 109
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
        Top = 89
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
        Top = 66
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
        Left = 228
        Top = 86
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
        Left = 497
        Top = 88
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
        Left = 423
        Top = 110
        Width = 40
        Height = 15
        Caption = 'Tel. Cel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 5
        Top = 175
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
        Left = 304
        Top = 83
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
        OnClick = btncidadeClick
      end
      object Label19: TLabel
        Left = 5
        Top = 24
        Width = 73
        Height = 15
        Caption = 'Raz'#227'o Social'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 204
        Top = 110
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
      object Label13: TLabel
        Left = 5
        Top = 201
        Width = 22
        Height = 15
        Caption = 'Site'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 232
        Top = 2
        Width = 56
        Height = 15
        Caption = 'CPF/CNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 462
        Top = 45
        Width = 10
        Height = 15
        Caption = 'IE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 461
        Top = 25
        Width = 13
        Height = 15
        Caption = 'IM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 5
        Top = 327
        Width = 104
        Height = 15
        Caption = 'Org'#227'o de Classe 3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 5
        Top = 305
        Width = 104
        Height = 15
        Caption = 'Org'#227'o de Classe 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 427
        Top = 282
        Width = 45
        Height = 15
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 5
        Top = 283
        Width = 104
        Height = 15
        Caption = 'Org'#227'o de Classe 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 427
        Top = 303
        Width = 45
        Height = 15
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 427
        Top = 325
        Width = 45
        Height = 15
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 5
        Top = 261
        Width = 107
        Height = 15
        Caption = 'Nome do Contato 3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 5
        Top = 239
        Width = 107
        Height = 15
        Caption = 'Nome do Contato 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 426
        Top = 216
        Width = 48
        Height = 15
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 5
        Top = 217
        Width = 107
        Height = 15
        Caption = 'Nome do Contato 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 426
        Top = 237
        Width = 48
        Height = 15
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 426
        Top = 259
        Width = 48
        Height = 15
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 125
        Top = 2
        Width = 24
        Height = 15
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 173
        Top = 2
        Width = 16
        Height = 15
        Caption = 'F/J'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 5
        Top = 131
        Width = 69
        Height = 15
        Caption = 'Ramo Princ.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 301
        Top = 131
        Width = 61
        Height = 15
        Caption = 'Ramo Sec.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 5
        Top = 152
        Width = 65
        Height = 15
        Caption = 'Fund./Nasc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 313
        Top = 152
        Width = 48
        Height = 15
        Caption = 'Registro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnapagarpgto: TSpeedButton
        Tag = 99
        Left = 196
        Top = 150
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
        OnClick = btnapagarpgtoClick
      end
      object Label36: TLabel
        Left = 3
        Top = 348
        Width = 123
        Height = 15
        Caption = 'Desconto Conveniado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object WSDBEdit28: TWSDBEdit
        Left = 134
        Top = 347
        Width = 89
        DataField = 'NETDESCONTO'
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
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtnome: TWSDBEdit
        Left = 73
        Top = 45
        Width = 384
        DataField = 'NETNOME'
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
      object WSDBEdit3: TWSDBEdit
        Left = 74
        Top = 109
        Width = 121
        DataField = 'NETFONE'
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
      object WSDBEdit5: TWSDBEdit
        Left = 74
        Top = 66
        Width = 519
        DataField = 'NETENDERECO'
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
      object WSDBEdit6: TWSDBEdit
        Left = 74
        Top = 87
        Width = 119
        DataField = 'NETBAIRRO'
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
      object txtcodcidade: TWSDBEdit
        Left = 266
        Top = 87
        Width = 38
        DataField = 'NETCIDADE'
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
      object txtcidade: TWSDBEdit
        Left = 330
        Top = 87
        Width = 163
        DataField = 'Cidade'
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
      object WSDBEdit8: TWSDBEdit
        Left = 521
        Top = 87
        Width = 72
        DataField = 'NETCEP'
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
      object WSDBEdit10: TWSDBEdit
        Left = 474
        Top = 109
        Width = 121
        DataField = 'NETCELULAR'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 14
        OnKeyDown = txtcodKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit11: TWSDBEdit
        Left = 74
        Top = 173
        Width = 255
        DataField = 'NETEMAIL'
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
      object txtempresa: TWSDBEdit
        Left = 74
        Top = 24
        Width = 383
        DataField = 'NETEMPRESA'
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
      object WSDBEdit7: TWSDBEdit
        Left = 264
        Top = 109
        Width = 121
        DataField = 'NETFAX'
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
      object txtcod: TWSDBEdit
        Left = 74
        Top = 2
        Width = 49
        DataField = 'NETCOD'
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
        Chave = True
        FocoNovo = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtsite: TWSDBEdit
        Left = 74
        Top = 194
        Width = 255
        DataField = 'NETSITE'
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
      object WSDBEdit1: TWSDBEdit
        Left = 334
        Top = 173
        Width = 260
        DataField = 'NETEMAIL2'
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
      object txtcpfcnpj: TWSDBEdit
        Left = 296
        Top = 2
        Width = 161
        DataField = 'NETCPF'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 2
        OnEnter = txtcpfcnpjEnter
        OnExit = txtcpfcnpjExit
        OnKeyDown = txtcodKeyDown
        FocoNovo = True
        FocoAlterar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit4: TWSDBEdit
        Left = 334
        Top = 194
        Width = 260
        DataField = 'NETSITE2'
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
      object WSDBEdit9: TWSDBEdit
        Left = 487
        Top = 45
        Width = 107
        DataField = 'NETIE'
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
        FocoNovo = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit12: TWSDBEdit
        Left = 488
        Top = 24
        Width = 106
        DataField = 'NETIM'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 5
        OnKeyDown = txtcodKeyDown
        FocoNovo = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit13: TWSDBEdit
        Left = 134
        Top = 326
        Width = 283
        DataField = 'NETORGAONOME3'
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
      object WSDBEdit14: TWSDBEdit
        Left = 479
        Top = 304
        Width = 116
        DataField = 'NETORGAONUMERO2'
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
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit15: TWSDBEdit
        Left = 479
        Top = 326
        Width = 116
        DataField = 'NETORGAONUMERO3'
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
      object WSDBEdit16: TWSDBEdit
        Left = 479
        Top = 282
        Width = 116
        DataField = 'NETORGAONUMERO1'
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
      object WSDBEdit17: TWSDBEdit
        Left = 134
        Top = 304
        Width = 283
        DataField = 'NETORGAONOME2'
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
      object WSDBEdit18: TWSDBEdit
        Left = 134
        Top = 282
        Width = 283
        DataField = 'NETORGAONOME1'
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
      object WSDBEdit19: TWSDBEdit
        Left = 134
        Top = 260
        Width = 283
        DataField = 'NETCONTATO3'
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
      object WSDBEdit20: TWSDBEdit
        Left = 479
        Top = 238
        Width = 116
        DataField = 'NETCONTATOFONE2'
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
      object WSDBEdit21: TWSDBEdit
        Left = 479
        Top = 260
        Width = 116
        DataField = 'NETCONTATOFONE3'
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
      object WSDBEdit22: TWSDBEdit
        Left = 479
        Top = 216
        Width = 116
        DataField = 'NETCONTATOFONE1'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 24
        OnKeyDown = txtcodKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit23: TWSDBEdit
        Left = 134
        Top = 238
        Width = 283
        DataField = 'NETCONTATO2'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 25
        OnKeyDown = txtcodKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit24: TWSDBEdit
        Left = 134
        Top = 216
        Width = 283
        DataField = 'NETCONTATO1'
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
      object txtpessoa: TWSDBEdit
        Left = 150
        Top = 2
        Width = 19
        DataField = 'NETPESSOA'
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
        FocoNovo = True
        FocoAlterar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit2: TWSDBEdit
        Left = 74
        Top = 131
        Width = 224
        DataField = 'NETRAMOPRI'
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
      object WSDBEdit25: TWSDBEdit
        Left = 366
        Top = 131
        Width = 229
        DataField = 'NETRAMOSEC'
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
      object WSDBEdit26: TWSDBEdit
        Left = 74
        Top = 152
        Width = 119
        DataField = 'NETDATAFUND'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 17
        OnKeyDown = txtcodKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit27: TWSDBEdit
        Left = 366
        Top = 152
        Width = 229
        DataField = 'NETJUNTACOMERC'
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
      object PageControl1: TPageControl
        Left = 0
        Top = 372
        Width = 624
        Height = 109
        ActivePage = TabSheet3
        Align = alBottom
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 36
        TabStop = False
        object TabSheet2: TTabSheet
          Caption = 'Observa'#231#245'es'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object WSDBMemo3: TWSDBMemo
            Left = 0
            Top = 0
            Width = 608
            height = 80
            Align = alClient
            BevelInner = bvNone
            DataField = 'NETOBS'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 0
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Especialidades'
          ImageIndex = 2
          object WSDBMemo1: TWSDBMemo
            Left = 0
            Top = 0
            Width = 616
            height = 80
            Align = alClient
            BevelInner = bvNone
            DataField = 'NETESPECIALIDADES'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 0
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Informa'#231#245'es Especiais'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object WSDBMemo2: TWSDBMemo
            Left = 0
            Top = 0
            Width = 616
            height = 80
            Align = alClient
            BevelInner = bvNone
            DataField = 'NETINFESPECIAIS'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 0
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
        end
        object TabSheet_Logo: TTabSheet
          Caption = 'Logo'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ImgFoto: TDBImage
            Left = 0
            Top = 0
            Width = 616
            Height = 80
            Align = alClient
            DataField = 'NETLOGO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Stretch = True
            TabOrder = 0
            OnDblClick = ImgFotoDblClick
          end
          object BtnExcluiLogo: TBitBtn
            Left = 5
            Top = 4
            Width = 74
            Height = 25
            Caption = 'Excluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              B6080000424DB608000000000000B60000002800000020000000100000000100
              2000000000000008000000000000000000001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00800080000000
              0000000000000000000000000000800080000000000000000000000000008000
              8000800080008000800080008000800080008000800080008000800080007F7F
              7F007F7F7F007F7F7F007F7F7F00FFFFFF007F7F7F007F7F7F007F7F7F008000
              80008000800080008000FFFFFF00800080008000800080008000000000000000
              0000000000000000000000000000000000000000000000000000800080008000
              80008000800000000000800080008000800080008000800080007F7F7F007F7F
              7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00800080008000
              8000FFFFFF007F7F7F0080008000800080008000800080008000000000000000
              0000800080008000800000000000000000000000000080008000800080000000
              00008000800080008000800080008000800080008000800080007F7F7F007F7F
              7F00FFFFFF00800080007F7F7F007F7F7F007F7F7F00FFFFFF00800080007F7F
              7F00800080008000800080008000800080008000800080008000000000000000
              0000800080008000800080008000000000000000000080008000800080008000
              80008000800080008000800080008000800080008000800080007F7F7F007F7F
              7F00FFFFFF00FFFFFF00800080007F7F7F007F7F7F00FFFFFF0080008000FFFF
              FF00FFFFFF008000800080008000800080008000800080008000800080000000
              0000000000008000800080008000000000000000000080008000000000000000
              0000800080008000800080008000800080008000800080008000800080007F7F
              7F007F7F7F00FFFFFF00FFFFFF007F7F7F007F7F7F00800080007F7F7F007F7F
              7F00FFFFFF00FFFFFF0080008000800080008000800080008000800080008000
              8000000000000000000080008000000000008000800000000000000080000000
              8000000000008000800080008000800080008000800080008000800080008000
              80007F7F7F007F7F7F00FFFFFF007F7F7F00800080007F7F7F007F7F7F007F7F
              7F007F7F7F00FFFFFF00FFFFFF00800080008000800080008000800080008000
              800080008000800080000000000080008000000000000000FF000000FF000000
              FF00000080000000000080008000800080008000800080008000800080008000
              8000FFFFFF00FFFFFF007F7F7F00800080007F7F7F007F7F7F007F7F7F007F7F
              7F007F7F7F007F7F7F00FFFFFF00FFFFFF008000800080008000800080000000
              000000000000800080008000800080008000000000000000FF000000FF000000
              FF000000FF000000800000000000800080008000800080008000800080007F7F
              7F007F7F7F00FFFFFF0080008000FFFFFF007F7F7F007F7F7F007F7F7F007F7F
              7F007F7F7F007F7F7F007F7F7F0080008000FFFFFF0080008000800080000000
              00000000000080008000000000008000800080008000000000000000FF000000
              FF000000FF000000000000808000000000008000800080008000800080007F7F
              7F007F7F7F00FFFFFF007F7F7F0080008000FFFFFF007F7F7F007F7F7F007F7F
              7F007F7F7F007F7F7F00800080007F7F7F0080008000FFFFFF00800080008000
              8000000000000000000080008000000000008000800080008000000000000000
              FF000000000000FFFF0000000000008080000000000080008000800080008000
              80007F7F7F007F7F7F00800080007F7F7F0080008000800080007F7F7F007F7F
              7F007F7F7F00800080007F7F7F00800080007F7F7F0080008000800080008000
              8000800080008000800080008000800080008000800080008000800080000000
              000000FFFF000000000000FFFF00000000000080800000000000800080008000
              8000800080008000800080008000FFFFFF008000800080008000800080007F7F
              7F00800080007F7F7F00800080007F7F7F00800080007F7F7F00800080008000
              8000800080008000800000000000800080008000800080008000800080008000
              80000000000000FFFF000000000000FFFF000080800000808000800080008000
              800080008000800080007F7F7F00800080008000800080008000800080008000
              80007F7F7F00800080007F7F7F00800080008000800080008000800080008000
              8000800080008000800080008000800080008000800080008000800080008000
              8000800080000000000000FFFF0000FFFF0000FFFF0000808000800080008000
              80008000800080008000FFFFFF00800080008000800080008000800080008000
              8000800080007F7F7F0080008000FFFFFF008000800080008000800080008000
              8000800080000000000080008000800080008000800080008000800080008000
              800080008000800080000000000000FFFF0000FFFF0000FFFF00800080008000
              8000800080007F7F7F0080008000800080008000800080008000800080008000
              800080008000800080007F7F7F0080008000FFFFFF0080008000800080008000
              8000800080008000800080008000800080008000800080008000800080008000
              80008000800080008000800080000000000000FFFF0000FFFF00800080008000
              8000800080008000800080008000800080008000800080008000800080008000
              80008000800080008000800080007F7F7F0080008000FFFFFF00800080008000
              8000800080008000800080008000800080008000800080008000800080008000
              8000800080008000800080008000800080000000000000FFFF00800080008000
              8000800080008000800080008000800080008000800080008000800080008000
              8000800080008000800080008000800080007F7F7F0080008000}
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
            OnClick = BtnExcluiLogoClick
          end
        end
      end
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 632
    Height = 32
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 366
      Top = 10
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
    object btnfiltrocidade: TSpeedButton
      Left = 115
      Top = 5
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
      OnClick = btnfiltrocidadeClick
    end
    object Label24: TLabel
      Left = 10
      Top = 9
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
    object txtpesquisa: TWSEdit
      Left = 399
      Top = 9
      Width = 198
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
    object txtfiltrocidade: TWSEdit
      Left = 54
      Top = 8
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
      TabOrder = 1
      OnExit = txtfiltrocidadeExit
      OnKeyDown = txtpesquisaKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomecidade: TWSEdit
      Left = 139
      Top = 9
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
      TabOrder = 2
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object RLReport: TRLReport
    Left = 169
    Top = 615
    Width = 794
    Height = 1123
    DataSource = DataSource
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
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
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
        Left = 86
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
        Left = 494
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
        Left = 401
        Top = 2
        Width = 30
        Height = 15
        Caption = 'Fone'
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
        Left = 2
        Top = 2
        Width = 54
        Height = 15
        Alignment = taCenter
        DataField = 'NETCOD'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 87
        Top = 2
        Width = 314
        Height = 15
        AutoSize = False
        DataField = 'NETNOME'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 494
        Top = 3
        Width = 219
        Height = 15
        AutoSize = False
        DataField = 'cidade'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 403
        Top = 3
        Width = 88
        Height = 15
        AutoSize = False
        DataField = 'NETFONE'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
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
    DataSet = Dm.CDSNetworking
    Left = 8
    Top = 8
  end
  object WSInformacao: TWSInformacao
    Tabela = 'TNETWORKING'
    Programa = 22
    Campo = 'NETNOME'
    Left = 40
    Top = 8
  end
end
