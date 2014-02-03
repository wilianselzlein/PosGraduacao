object FProfessor: TFProfessor
  Left = 90
  Top = 4
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 533
  ClientWidth = 623
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 623
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de Professores'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 252
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 503
    Width = 623
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
    Top = 75
    Width = 623
    Height = 428
    ActivePage = TabConsulta
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabStop = False
    object TabConsulta: TTabSheet
      Caption = 'Consulta'
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 615
        Height = 400
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
            FieldName = 'PROCOD'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRONOME'
            Title.Caption = 'Nome'
            Width = 151
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROVINCULO'
            Title.Caption = 'Vinc.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROFONE'
            Title.Caption = 'Tel. Res.'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROFAX'
            Title.Caption = 'Tel. Com.'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROCELULAR'
            Title.Caption = 'Tel. Cel.'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROEMAIL'
            Title.Caption = 'Email'
            Width = 99
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 16
        Top = 8
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
        Left = 128
        Top = 8
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
        Left = 16
        Top = 75
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
        Left = 16
        Top = 53
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
        Left = 16
        Top = 32
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
        Left = 222
        Top = 51
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
        Top = 53
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
        Left = 421
        Top = 75
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
        Left = 16
        Top = 100
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
        Left = 296
        Top = 48
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
        Left = 16
        Top = 123
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
        Left = 198
        Top = 75
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
      object Label17: TLabel
        Left = 15
        Top = 192
        Width = 63
        Height = 15
        Caption = 'Curr'#237'culum'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btncurriculum: TSpeedButton
        Left = 386
        Top = 167
        Width = 23
        Height = 21
        Hint = 'Abrir Cadastro'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555FFFFF555555555544C4C5555555555F777775FF5555554C444C444
          5555555775FF55775F55554C4334444445555575577F55557FF554C4C334C4C4
          335557F5577FF55577F554CCC3334444335557555777F555775FCCCCC333CCC4
          C4457F55F777F555557F4CC33333CCC444C57F577777F5F5557FC4333333C3C4
          CCC57F777777F7FF557F4CC33333333C4C457F577777777F557FCCC33CC4333C
          C4C575F7755F777FF5755CCCCC3333334C5557F5FF777777F7F554C333333333
          CC55575777777777F755553333CC3C33C555557777557577755555533CC4C4CC
          5555555775FFFF77555555555C4CCC5555555555577777555555}
        NumGlyphs = 2
        OnClick = btncurriculumClick
      end
      object Label26: TLabel
        Left = 416
        Top = 170
        Width = 42
        Height = 15
        Caption = 'V'#237'nculo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 552
        Top = 170
        Width = 27
        Height = 15
        Caption = '(S/N)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 16
        Top = 172
        Width = 36
        Height = 15
        Caption = 'Lattes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 16
        Top = 145
        Width = 52
        Height = 15
        Caption = 'Titula'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 408
        Top = 146
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
      object Label18: TLabel
        Left = 403
        Top = 123
        Width = 59
        Height = 15
        Caption = 'Identidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 15
        Top = 336
        Width = 98
        Height = 15
        Caption = 'Dados Financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object WSDBMemo2: TWSDBMemo
        Left = 15
        Top = 352
        Width = 578
        height = 38
        BevelInner = bvNone
        DataField = 'PRODADOSFIN'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 18
        OnKeyDown = WSDBMemo1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit4: TWSDBEdit
        Left = 468
        Top = 122
        Width = 121
        DataField = 'PROIDENTIDADE'
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
      object txtvinculo: TWSDBEdit
        Left = 466
        Top = 169
        Width = 71
        DataField = 'PROVINCULO'
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
      object txtnome: TWSDBEdit
        Left = 168
        Top = 7
        Width = 425
        DataField = 'PRONOME'
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
        FocoAlterar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit3: TWSDBEdit
        Left = 74
        Top = 74
        Width = 121
        DataField = 'PROFONE'
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
      object WSDBEdit5: TWSDBEdit
        Left = 74
        Top = 31
        Width = 520
        DataField = 'PROENDERECO'
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
      object WSDBEdit6: TWSDBEdit
        Left = 74
        Top = 52
        Width = 142
        DataField = 'PROBAIRRO'
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
      object txtcodcidade: TWSDBEdit
        Left = 258
        Top = 52
        Width = 38
        DataField = 'PROCIDADE'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 3
        OnExit = txtcodcidadeExit
        OnKeyDown = txtcodKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtcidade: TWSDBEdit
        Left = 319
        Top = 52
        Width = 175
        DataField = 'CIDNOME'
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
      object WSDBEdit8: TWSDBEdit
        Left = 520
        Top = 52
        Width = 72
        DataField = 'PROCEP'
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
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit10: TWSDBEdit
        Left = 472
        Top = 74
        Width = 121
        DataField = 'PROCELULAR'
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
      object WSDBEdit11: TWSDBEdit
        Left = 74
        Top = 99
        Width = 255
        DataField = 'PROEMAIL'
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
      object txtcpf: TWSDBEdit
        Left = 74
        Top = 122
        Width = 121
        DataField = 'PROCPF'
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
        Left = 258
        Top = 74
        Width = 121
        DataField = 'PROFAX'
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
      object WSDBMemo1: TWSDBMemo
        Left = 15
        Top = 210
        Width = 578
        height = 127
        BevelInner = bvNone
        DataField = 'PROCURRICULUM'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 17
        OnKeyDown = WSDBMemo1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtcod: TWSDBEdit
        Left = 74
        Top = 8
        Width = 49
        DataField = 'PROCOD'
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
        FocoNovo = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtresumo: TWSDBEdit
        Left = 72
        Top = 145
        Width = 313
        DataField = 'PRORESUMOTITULACAO'
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
        EnterClicar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtcurriculum: TWSDBEdit
        Left = 74
        Top = 169
        Width = 311
        DataField = 'PROCURRICULUMLATTES'
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
      object WSDBEdit1: TWSDBEdit
        Left = 334
        Top = 99
        Width = 256
        DataField = 'PROEMAIL2'
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
      object WSDBEdit2: TWSDBEdit
        Left = 466
        Top = 146
        Width = 124
        DataField = 'PROFORMACAO'
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
        EnterClicar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object PanGrupos: TPanel
        Left = 604
        Top = 33
        Width = 588
        Height = 356
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWhite
        TabOrder = 21
        Visible = False
        object Label15: TLabel
          Left = 2
          Top = 2
          Width = 41
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = 'Grupos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel3: TPanel
          Left = 2
          Top = 314
          Width = 584
          Height = 40
          Align = alBottom
          TabOrder = 0
          object Grupo: TLabel
            Left = 5
            Top = 3
            Width = 34
            Height = 15
            Caption = 'Grupo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 112
            Top = 3
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
          object btngrupos: TSpeedButton
            Left = 86
            Top = 16
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
            OnClick = btngruposClick
          end
          object txtcodgrupos: TWSEdit
            Left = 5
            Top = 19
            Width = 80
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
          object ToolBarItemGrupo: TToolBar
            Left = 513
            Top = 1
            Width = 70
            Height = 38
            Align = alRight
            BorderWidth = 2
            ButtonHeight = 30
            ButtonWidth = 31
            Caption = 'ToolBarItem'
            Images = DM.ImageList
            TabOrder = 2
            object btnsalvaritemgrupo: TToolButton
              Left = 0
              Top = 0
              Hint = 'Salvar'
              Caption = 'btnsalvaritem'
              ImageIndex = 14
              ParentShowHint = False
              ShowHint = True
              OnClick = btnsalvaritemgrupoClick
            end
            object btnexcluiritemgrupo: TToolButton
              Left = 31
              Top = 0
              Hint = 'Excluir'
              Caption = 'btnexcluiritem'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
              OnClick = btnexcluiritemgrupoClick
            end
          end
          object txtobsgrupo: TWSEdit
            Left = 110
            Top = 19
            Width = 400
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
            enterclicar = True
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 17
          Width = 584
          Height = 297
          TabStop = False
          Align = alClient
          DataSource = DM.DSProfessorGrupo
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          OnKeyDown = txtpesquisaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'GRUPRONOME'
              Title.Caption = 'Grupo'
              Width = 272
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROGRUOBS'
              Title.Caption = 'Observa'#231#245'es'
              Visible = True
            end>
        end
      end
      object pandisciplinas: TPanel
        Left = 604
        Top = 31
        Width = 589
        Height = 360
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWhite
        TabOrder = 19
        Visible = False
        object Label20: TLabel
          Left = 2
          Top = 2
          Width = 62
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = 'Disciplinas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 2
          Top = 318
          Width = 585
          Height = 40
          Align = alBottom
          TabOrder = 0
          object Label5: TLabel
            Left = 5
            Top = 3
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
          object Label21: TLabel
            Left = 112
            Top = 3
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
          object btndisciplina: TSpeedButton
            Left = 86
            Top = 16
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
            OnClick = btndisciplinaClick
          end
          object Label22: TLabel
            Left = 397
            Top = 3
            Width = 75
            Height = 15
            Caption = 'Pesquisa S/N'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object txtdisciplina: TWSEdit
            Left = 5
            Top = 19
            Width = 80
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
          object ToolBarItemDisciplina: TToolBar
            Left = 474
            Top = 1
            Width = 110
            Height = 38
            Align = alRight
            BorderWidth = 2
            ButtonHeight = 30
            ButtonWidth = 31
            Caption = 'ToolBarItemDisciplina'
            Images = DM.ImageList
            TabOrder = 3
            object btnsalvaritemdisc: TToolButton
              Left = 0
              Top = 0
              Hint = 'Salvar'
              Caption = 'btnsalvaritemdisc'
              ImageIndex = 14
              ParentShowHint = False
              ShowHint = True
              OnClick = btnsalvaritemdiscClick
            end
            object btnexcluiritemdisc: TToolButton
              Left = 31
              Top = 0
              Hint = 'Excluir'
              Caption = 'btnexcluiritemdisc'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
              OnClick = btnexcluiritemdiscClick
            end
            object ToolButton3: TToolButton
              Left = 62
              Top = 0
              Width = 8
              Caption = 'ToolButton3'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnPesquisa: TToolButton
              Left = 70
              Top = 0
              Hint = 'Marcar todos os professores para N'#195'O aparecer na pesquisa.'
              ImageIndex = 13
              ParentShowHint = False
              ShowHint = True
              OnClick = btnPesquisaClick
            end
          end
          object txtobs: TWSEdit
            Left = 110
            Top = 19
            Width = 319
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
          object txtincpesquisa: TWSEdit
            Left = 431
            Top = 19
            Width = 39
            height = 17
            BevelInner = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 1
            ParentFont = False
            ParentShowHint = False
            TabOrder = 2
            Text = 'S'
            OnKeyDown = txtcodKeyDown
            enterclicar = True
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
        end
        object JvDBGrid1: TDBGrid
          Left = 2
          Top = 17
          Width = 585
          Height = 301
          Align = alClient
          DataSource = DM.DSProfessorDisciplina
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
              FieldName = 'DISNOME'
              ReadOnly = True
              Title.Caption = 'Disciplina'
              Width = 270
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODISOBS'
              Title.Caption = 'Observa'#231#245'es'
              Width = 233
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODISPESQUISA'
              PickList.Strings = (
                'S'
                'N')
              Title.Caption = 'Pesquisa'
              Visible = True
            end>
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Foto'
      ImageIndex = -1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ImgFoto: TDBImage
        Left = 0
        Top = 0
        Width = 615
        Height = 400
        Align = alClient
        DataField = 'PROFOTO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 623
    Height = 51
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 14
      Top = 29
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
      Left = 108
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
      Left = 47
      Top = 28
      Width = 160
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
      Left = 47
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
      Left = 134
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
    Left = 9
    Top = 518
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
      object RLLabel1: TRLLabel
        Left = 231
        Top = 5
        Width = 256
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Professores'
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
        Left = 1
        Top = 2
        Width = 56
        Height = 15
        Alignment = taCenter
        DataField = 'PROCOD'
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
        DataField = 'PRONOME'
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
        DataField = 'PROFONE'
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
  object PanBotoes: TPanel
    Left = 434
    Top = 4
    Width = 174
    Height = 25
    TabOrder = 4
    object btnmostrargrupos: TSpeedButton
      Left = 5
      Top = 3
      Width = 73
      Height = 19
      Caption = 'Grupos'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        52060000424D5206000000000000360000002800000016000000170000000100
        1800000000001C060000C40E0000C40E00000000000000000000CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        0000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D68C6D18CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6846100FF9E298C6D18CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6ADAAAD737173523C
        29523C29393C39393C39B5B6B5846100FF9E29DEA67BFF9E298C6D1873717373
        7573393C39A5A6A5CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6949294AD
        FFFF9CFBFF9CFBFF52DFFF52BED6846100DEA67BDEA67BDEA67BDEA67BFF9E29
        8C6D1852DFFF52C3D6393C39CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6
        949294ADFFFFADFFFFADFFFFADFFFF846100DEA67BFFFFC6FFFFC6DEA67BDEA6
        7BDEA67BFF9E298C6D1852DFFF393C39CED3D6CED3D6CED3D6CED3D60000CED3
        D6CED3D6949294ADFFFFADFFFFADFFFFE7BE7B8C6D188C6D188C6D18FFFFC6FF
        FFC6DEA67B8C6D188C6D188C6D18E7BE7B737173CED3D6CED3D6CED3D6CED3D6
        0000CED3D6CED3D6949294ADFFFFADFFFFADFFFFADFFFFADFFFFADFFFF9C7D31
        FFFFC6FFFFC6FFF3AD9C7D31B5B6B59CFBFF52DFFF393C39CED3D6CED3D6CED3
        D6CED3D60000CED3D6CED3D6949294CED3D6ADFFFFADFFFFADFFFFADFFFFADFF
        FFAD8A42FFFFC6FFFFC6DEA67BFFD7949CF7FF52DFFFADDFD6393C39CED3D6CE
        D3D6CED3D6CED3D60000CED3D6CED3D6949294ADFFFFADFFFFADFFFFADFFFFAD
        FFFFBD964ADEA67BFFF3ADFFFFC6AD8A429CF7FF9CF7FF9CFBFF52DFFF5A595A
        CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6ADAAADCED3D6ADFFFFCED3D6
        ADFFFFADFFFFBD964AFFE79CFFF3ADE7BE73FFD794ADFFFFADFFFFADFFFFADFF
        FF636563CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6B5B6B5ADFFFFCED3
        D6ADFFFFADFFFFAD8A39DEA67BFFD794E7BE7BADFFFFADFFFFADFFFFADFFFFAD
        FFFFADFFFF737173CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6C6C3C6CE
        D3D6ADFFFFCED3D6D6B26BD6B26BD6B26BD6B26BEFCB84C6C7C6C6C7C6ADDFD6
        52BED652BED652BED6848284CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6
        CECFCEB5B6B5B5B6B5B5B6B5CECBCEADDFD6ADDFD652DFFF52DFFF52DFFF52DF
        FF52DFFF52DFFF52DFFF52BED6C6C3C6CED3D6CED3D6CED3D6CED3D60000CED3
        D6CED3D6CED3D6DEDBDE00F3FF00F3FF00F3FF00F3FF52BED6E7E7E78C8E8C8C
        8E8C8C8E8C8C8E8C8C8E8C8C8E8C8C8E8CCED3D6CED3D6CED3D6CED3D6CED3D6
        0000CED3D6CED3D6CED3D69C9A9C52FFFF63F7FF63F7FF63F7FF00F3FFB5B6B5
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D60000CED3D6CED3D6CED3D6CED3D69C9A9C8C8E8C8C8E8C8C8E8C9C9A
        9CCED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000}
      ParentFont = False
      Visible = False
      OnClick = btnmostrargruposClick
    end
    object btndisciplinas: TSpeedButton
      Left = 82
      Top = 3
      Width = 88
      Height = 19
      Caption = 'Disciplinas'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        52060000424D5206000000000000360000002800000016000000170000000100
        1800000000001C060000C40E0000C40E00000000000000000000CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        0000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D68C6D18CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6846100FF9E298C6D18CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6ADAAAD737173523C
        29523C29393C39393C39B5B6B5846100FF9E29DEA67BFF9E298C6D1873717373
        7573393C39A5A6A5CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6949294AD
        FFFF9CFBFF9CFBFF52DFFF52BED6846100DEA67BDEA67BDEA67BDEA67BFF9E29
        8C6D1852DFFF52C3D6393C39CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6
        949294ADFFFFADFFFFADFFFFADFFFF846100DEA67BFFFFC6FFFFC6DEA67BDEA6
        7BDEA67BFF9E298C6D1852DFFF393C39CED3D6CED3D6CED3D6CED3D60000CED3
        D6CED3D6949294ADFFFFADFFFFADFFFFE7BE7B8C6D188C6D188C6D18FFFFC6FF
        FFC6DEA67B8C6D188C6D188C6D18E7BE7B737173CED3D6CED3D6CED3D6CED3D6
        0000CED3D6CED3D6949294ADFFFFADFFFFADFFFFADFFFFADFFFFADFFFF9C7D31
        FFFFC6FFFFC6FFF3AD9C7D31B5B6B59CFBFF52DFFF393C39CED3D6CED3D6CED3
        D6CED3D60000CED3D6CED3D6949294CED3D6ADFFFFADFFFFADFFFFADFFFFADFF
        FFAD8A42FFFFC6FFFFC6DEA67BFFD7949CF7FF52DFFFADDFD6393C39CED3D6CE
        D3D6CED3D6CED3D60000CED3D6CED3D6949294ADFFFFADFFFFADFFFFADFFFFAD
        FFFFBD964ADEA67BFFF3ADFFFFC6AD8A429CF7FF9CF7FF9CFBFF52DFFF5A595A
        CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6ADAAADCED3D6ADFFFFCED3D6
        ADFFFFADFFFFBD964AFFE79CFFF3ADE7BE73FFD794ADFFFFADFFFFADFFFFADFF
        FF636563CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6B5B6B5ADFFFFCED3
        D6ADFFFFADFFFFAD8A39DEA67BFFD794E7BE7BADFFFFADFFFFADFFFFADFFFFAD
        FFFFADFFFF737173CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6C6C3C6CE
        D3D6ADFFFFCED3D6D6B26BD6B26BD6B26BD6B26BEFCB84C6C7C6C6C7C6ADDFD6
        52BED652BED652BED6848284CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6
        CECFCEB5B6B5B5B6B5B5B6B5CECBCEADDFD6ADDFD652DFFF52DFFF52DFFF52DF
        FF52DFFF52DFFF52DFFF52BED6C6C3C6CED3D6CED3D6CED3D6CED3D60000CED3
        D6CED3D6CED3D6DEDBDE00F3FF00F3FF00F3FF00F3FF52BED6E7E7E78C8E8C8C
        8E8C8C8E8C8C8E8C8C8E8C8C8E8C8C8E8CCED3D6CED3D6CED3D6CED3D6CED3D6
        0000CED3D6CED3D6CED3D69C9A9C52FFFF63F7FF63F7FF63F7FF00F3FFB5B6B5
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D60000CED3D6CED3D6CED3D6CED3D69C9A9C8C8E8C8C8E8C8C8E8C9C9A
        9CCED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000}
      ParentFont = False
      OnClick = btndisciplinasClick
    end
  end
  object DataSource: TDataSource
    DataSet = DM.CDSProfessor
    Left = 8
    Top = 8
  end
  object WSInformacao: TWSInformacao
    Tabela = 'TPROFESSOR'
    Programa = 16
    Campo = 'PROCOD'
    Left = 40
    Top = 8
  end
end
