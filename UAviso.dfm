object FAviso: TFAviso
  Left = 243
  Top = 54
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 531
  ClientWidth = 635
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
    Width = 635
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de Avisos, Materiais e Not'#237'cias'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 403
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 501
    Width = 635
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
    Width = 635
    Height = 434
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
        Width = 619
        Height = 395
        Align = alClient
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'AVICOD'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AVIDATA'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AVIUSUARIO'
            Title.Caption = 'Usu'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AVITIPO'
            Title.Caption = 'Tipo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AVIMENSAGEM'
            Title.Caption = 'Mensagem'
            Width = 334
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
        Left = 32
        Top = 8
        Width = 39
        Height = 15
        Alignment = taRightJustify
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 45
        Top = 32
        Width = 26
        Height = 15
        Alignment = taRightJustify
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 152
        Width = 63
        Height = 15
        Alignment = taRightJustify
        Caption = 'Mensagem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 20
        Top = 57
        Width = 50
        Height = 15
        Alignment = taRightJustify
        Caption = 'Arquivos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 208
        Top = 32
        Width = 44
        Height = 15
        Caption = 'Usu'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnarquivo: TSpeedButton
        Tag = 99
        Left = 556
        Top = 77
        Width = 24
        Height = 23
        Hint = 'Selecionar Arquivo'
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
        OnClick = btnarquivoClick
      end
      object btnarquivo1: TSpeedButton
        Tag = 99
        Left = 556
        Top = 101
        Width = 24
        Height = 23
        Hint = 'Selecionar Arquivo'
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
        OnClick = btnarquivoClick
      end
      object btnarquivo2: TSpeedButton
        Tag = 99
        Left = 556
        Top = 125
        Width = 24
        Height = 23
        Hint = 'Selecionar Arquivo'
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
        OnClick = btnarquivoClick
      end
      object btnarquivo3: TSpeedButton
        Tag = 99
        Left = 556
        Top = 149
        Width = 24
        Height = 23
        Hint = 'Selecionar Arquivo'
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
        OnClick = btnarquivoClick
      end
      object Label37: TLabel
        Left = 34
        Top = 266
        Width = 41
        Height = 15
        Alignment = taRightJustify
        Caption = 'Cursos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 83
        Top = 51
        Width = 505
        Height = 28
        Caption = 
          '* N'#227'o coloque espa'#231'os, acentos, caracteres especiais e '#233' obrigat' +
          #243'rio a exten'#231#227'o do arquivo.'#13#10'Exemplos: Arquivo.zip Trabalho.pdf ' +
          'Impressao.doc Video.avi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object WSDBEdit1: TWSDBEdit
        Left = 82
        Top = 7
        Width = 121
        DataField = 'AVICOD'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 0
        OnKeyDown = WSDBEdit1KeyDown
        Chave = True
        FocoNovo = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit2: TWSDBEdit
        Left = 82
        Top = 31
        Width = 118
        DataField = 'AVIDATA'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 2
        OnKeyDown = WSDBEdit1KeyDown
        FocoAlterar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit4: TWSDBEdit
        Left = 82
        Top = 80
        Width = 469
        DataField = 'AVIARQUIVO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 4
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit5: TWSDBEdit
        Left = 260
        Top = 31
        Width = 121
        DataField = 'AVIUSUARIO'
        DataSource = DataSource
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        TabOrder = 3
        OnKeyDown = WSDBEdit1KeyDown
        Chave = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtMensagem: TWSDBMemo
        Left = 82
        Top = 174
        Width = 497
        height = 87
        BevelInner = bvNone
        DataField = 'AVIMENSAGEM'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ScrollBars = ssBoth
        TabOrder = 8
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtTipo: TDBRadioGroup
        Left = 320
        Top = -2
        Width = 297
        Height = 32
        Caption = 'Tipo'
        Columns = 4
        DataField = 'AVITIPO'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Items.Strings = (
          '&Aviso'
          '&Material'
          '&Not'#237'cia'
          '&Vagas')
        ParentBackground = True
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'A'
          'M'
          'N'
          'V')
      end
      object WSDBEdit3: TWSDBEdit
        Left = 82
        Top = 104
        Width = 469
        DataField = 'AVIARQUIVO1'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 5
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit6: TWSDBEdit
        Left = 82
        Top = 128
        Width = 469
        DataField = 'AVIARQUIVO2'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 6
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit7: TWSDBEdit
        Left = 82
        Top = 152
        Width = 469
        DataField = 'AVIARQUIVO3'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 7
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object chkCurso: TCheckListBox
        Left = 83
        Top = 267
        Width = 497
        Height = 123
        OnClickCheck = chkCursoClickCheck
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 15
        ParentFont = False
        TabOrder = 9
      end
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 635
    Height = 43
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 10
      Top = 14
      Width = 63
      Height = 15
      Caption = 'Mensagem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtpesquisa: TWSEdit
      Left = 79
      Top = 13
      Width = 172
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
    object RGFiltro: TRadioGroup
      Left = 265
      Top = 1
      Width = 369
      Height = 41
      Align = alRight
      Columns = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Avisos'
        'Materiais'
        'Not'#237'cias'
        'Vagas')
      ParentFont = False
      TabOrder = 1
    end
  end
  object RLReport: TRLReport
    Left = 55
    Top = 516
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
        Left = 257
        Top = 5
        Width = 204
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Avisos'
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
        Left = 70
        Top = 2
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
      object RLLabel4: TRLLabel
        Left = 174
        Top = 2
        Width = 47
        Height = 15
        Caption = 'Usu'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 318
        Top = 2
        Width = 66
        Height = 15
        Caption = 'Mensagem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 282
        Top = 2
        Width = 27
        Height = 15
        Caption = 'Tipo'
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
        Left = 5
        Top = 2
        Width = 48
        Height = 15
        Alignment = taCenter
        DataField = 'AVICOD'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 71
        Top = 2
        Width = 98
        Height = 15
        AutoSize = False
        DataField = 'AVIDATA'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 174
        Top = 3
        Width = 74
        Height = 15
        DataField = 'AVIUSUARIO'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBMemo1: TRLDBMemo
        Left = 317
        Top = 4
        Width = 388
        Height = 14
        Behavior = [beSiteExpander]
        DataField = 'AVIMENSAGEM'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 284
        Top = 3
        Width = 31
        Height = 15
        AutoSize = False
        DataField = 'AVITIPO'
        DataSource = DataSource
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
    DataSet = Dm.CDSAviso
    Left = 8
    Top = 8
  end
  object WSInformacao: TWSInformacao
    Tabela = 'TAVISO'
    Programa = 32
    Campo = 'AVICOD'
    Left = 40
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.*'
    Filter = 'Todos os tipos de arquivos |*.*'
    InitialDir = 'C:'
    Title = 'Abrir Arquivo'
    Left = 595
    Top = 169
  end
end
