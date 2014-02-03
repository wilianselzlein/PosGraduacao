object FCursoRel: TFCursoRel
  Left = 240
  Top = 241
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 185
  ClientWidth = 573
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
    Width = 573
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Filtro de Relat'#243'rio de Cursos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 288
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 573
    Height = 123
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 575
    ExplicitHeight = 125
    object Label4: TLabel
      Left = 181
      Top = 66
      Width = 75
      Height = 15
      Caption = 'C'#243'digo Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 181
      Top = 19
      Width = 74
      Height = 15
      Caption = 'Coordenador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btncoordenador: TSpeedButton
      Left = 324
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
      OnClick = btncoordenadorClick
    end
    object Label1: TLabel
      Left = 181
      Top = 89
      Width = 68
      Height = 15
      Caption = 'C'#243'digo Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 181
      Top = 42
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
      Left = 324
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
      OnClick = btnprofessorClick
    end
    object txtcodini: TWSEdit
      Left = 263
      Top = 65
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
      TabOrder = 4
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtcoordenador: TWSEdit
      Left = 263
      Top = 19
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
      TabOrder = 2
      OnExit = txtcoordenadorExit
      OnKeyDown = txtprofessorKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object RGOrdem: TRadioGroup
      Left = 15
      Top = 16
      Width = 155
      Height = 38
      Caption = ' Ordem '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'C'#243'digo')
      ParentFont = False
      TabOrder = 0
    end
    object txtcodfin: TWSEdit
      Left = 263
      Top = 88
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
      TabOrder = 5
      OnKeyPress = txtcodfinKeyPress
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object RGModelo: TRadioGroup
      Left = 15
      Top = 66
      Width = 155
      Height = 38
      Caption = ' Modelo '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Sint'#233'tico'
        'Anal'#237'tico')
      ParentFont = False
      TabOrder = 1
    end
    object txtprofessor: TWSEdit
      Left = 263
      Top = 42
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
      TabOrder = 3
      OnExit = txtprofessorExit
      OnKeyDown = txtprofessorKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object RLReportSint: TRLReport
      Left = 461
      Top = 47
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
      object RLBand1: TRLBand
        Left = 38
        Top = 256
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
        object RLDBText40: TRLDBText
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
          Left = 202
          Top = 5
          Width = 314
          Height = 24
          Align = faCenter
          Alignment = taCenter
          Caption = 'Relat'#243'rio de Cursos - Sint'#233'tico'
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
      object RLBand4: TRLBand
        Left = 38
        Top = 147
        Width = 718
        Height = 22
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
        object lblgrupo: TRLLabel
          Left = 326
          Top = 2
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
        object lblpreco: TRLLabel
          Left = 582
          Top = 2
          Width = 23
          Height = 15
          Caption = 'Fim'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblestoque: TRLLabel
          Left = 489
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
        object lblcusto: TRLLabel
          Left = 392
          Top = 1
          Width = 37
          Height = 15
          Caption = 'Carga'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 678
          Top = 2
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
      end
      object RLGroup1: TRLGroup
        Left = 38
        Top = 169
        Width = 718
        Height = 87
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataFields = 'CURCOD'
        object RLBand10: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 40
          BandType = btHeader
          object RLDBText7: TRLDBText
            Left = 0
            Top = 3
            Width = 58
            Height = 15
            Alignment = taCenter
            DataField = 'CURCOD'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 71
            Top = 3
            Width = 253
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
          object txtrelgrupo: TRLDBText
            Left = 326
            Top = 3
            Width = 67
            Height = 15
            AutoSize = False
            DataField = 'CURTURMA'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object txtpreco: TRLDBText
            Left = 640
            Top = 3
            Width = 73
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CURVALOR'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object txtestoque: TRLDBText
            Left = 550
            Top = 3
            Width = 86
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'CURFIM'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object txtcusto: TRLDBText
            Left = 463
            Top = 3
            Width = 86
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'CURINICIO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 395
            Top = 3
            Width = 67
            Height = 15
            AutoSize = False
            DataField = 'CURCARGA'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 5
            Top = 20
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
          object RLLabel12: TRLLabel
            Left = 256
            Top = 20
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
          object RLLabel25: TRLLabel
            Left = 511
            Top = 20
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
          object RLLabel26: TRLLabel
            Left = 686
            Top = 20
            Width = 22
            Height = 15
            Caption = 'H/A'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 40
          Width = 718
          Height = 20
          object RLDBText33: TRLDBText
            Left = 3
            Top = 1
            Width = 253
            Height = 15
            AutoSize = False
            DataField = 'DISNOME'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText34: TRLDBText
            Left = 257
            Top = 1
            Width = 253
            Height = 15
            AutoSize = False
            DataField = 'PROFESSOR'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText35: TRLDBText
            Left = 512
            Top = 1
            Width = 127
            Height = 15
            AutoSize = False
            DataField = 'PRORESUMOTITULACAO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText36: TRLDBText
            Left = 640
            Top = 3
            Width = 73
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CURDISHORASAULA'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object bandtotal: TRLBand
          Left = 0
          Top = 60
          Width = 718
          Height = 20
          BandType = btSummary
          object RLLabel14: TRLLabel
            Left = 596
            Top = 1
            Width = 34
            Height = 15
            Caption = 'Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult1: TRLDBResult
            Left = 638
            Top = 1
            Width = 75
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CURDISHORASAULA'
            DataSource = DSRel
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
        object RLDraw2: TRLDraw
          Left = 0
          Top = 68
          Width = 718
          Height = 5
          Align = faBottom
          DrawKind = dkLine
        end
      end
    end
    object RLReportAna: TRLReport
      Left = 430
      Top = 359
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
        Height = 36
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel8: TRLLabel
          Left = 203
          Top = 5
          Width = 312
          Height = 24
          Align = faCenter
          Alignment = taCenter
          Caption = 'Relat'#243'rio de Cursos - Anal'#237'tico'
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
      object RLGroup: TRLGroup
        Left = 38
        Top = 147
        Width = 718
        Height = 142
        DataFields = 'CURCOD'
        object RLBand11: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 96
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel9: TRLLabel
            Left = 3
            Top = 2
            Width = 45
            Height = 15
            Caption = 'C'#243'digo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 103
            Top = 2
            Width = 39
            Height = 15
            Caption = 'Nome:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText19: TRLDBText
            Left = 45
            Top = 2
            Width = 58
            Height = 15
            Alignment = taCenter
            DataField = 'CURCOD'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 144
            Top = 2
            Width = 226
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
          object RLLabel5: TRLLabel
            Left = 372
            Top = 2
            Width = 43
            Height = 15
            Caption = 'Turma:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 417
            Top = 2
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
          object RLDBText11: TRLDBText
            Left = 524
            Top = 2
            Width = 71
            Height = 15
            DataField = 'CURCARGA'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 483
            Top = 2
            Width = 40
            Height = 15
            Caption = 'Carga:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 378
            Top = 21
            Width = 36
            Height = 15
            Caption = 'Valor:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 417
            Top = 21
            Width = 69
            Height = 15
            DataField = 'CURVALOR'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText23: TRLDBText
            Left = 524
            Top = 21
            Width = 61
            Height = 15
            AutoSize = False
            DataField = 'CURDESCONTO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 483
            Top = 21
            Width = 38
            Height = 15
            Caption = 'Desc.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 638
            Top = 21
            Width = 79
            Height = 15
            DataField = 'CURLIQUIDO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 589
            Top = 21
            Width = 47
            Height = 15
            Caption = 'L'#237'quido:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 12
            Top = 21
            Width = 32
            Height = 15
            Caption = 'Vcto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText25: TRLDBText
            Left = 49
            Top = 21
            Width = 85
            Height = 12
            DataField = 'CURVENCIMENTO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText26: TRLDBText
            Left = 640
            Top = 2
            Width = 55
            Height = 15
            DataField = 'CURTCC'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 603
            Top = 2
            Width = 29
            Height = 15
            Caption = 'TCC:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 126
            Top = 21
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
          object RLDBText27: TRLDBText
            Left = 167
            Top = 21
            Width = 54
            Height = 12
            DataField = 'CURINICIO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            Left = 293
            Top = 21
            Width = 40
            Height = 12
            DataField = 'CURFIM'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 260
            Top = 21
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
          object RLLabel21: TRLLabel
            Left = 3
            Top = 39
            Width = 192
            Height = 15
            Caption = 'Sistema de Avalia'#231#227'o de Aprend.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 193
            Top = 40
            Width = 253
            Height = 16
            AutoSize = False
            DataField = 'CURSISTEMAAVALIACAO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 194
            Top = 57
            Width = 263
            Height = 15
            AutoSize = False
            DataField = 'CURCRITERIOSAVALIACAO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 11
            Top = 57
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
          object RLLabel23: TRLLabel
            Left = 448
            Top = 38
            Width = 80
            Height = 15
            Caption = 'Coordenador:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText31: TRLDBText
            Left = 525
            Top = 55
            Width = 192
            Height = 15
            AutoSize = False
            DataField = 'CURSECRETARIO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText32: TRLDBText
            Left = 525
            Top = 38
            Width = 192
            Height = 15
            AutoSize = False
            DataField = 'COORDENADOR'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 460
            Top = 55
            Width = 63
            Height = 15
            Caption = 'Secret'#225'ro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel27: TRLLabel
            Left = 5
            Top = 76
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
          object RLLabel28: TRLLabel
            Left = 256
            Top = 76
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
          object RLLabel29: TRLLabel
            Left = 511
            Top = 76
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
          object RLLabel30: TRLLabel
            Left = 686
            Top = 76
            Width = 22
            Height = 15
            Caption = 'H/A'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand9: TRLBand
          Left = 0
          Top = 96
          Width = 718
          Height = 20
          object RLDBText21: TRLDBText
            Left = 3
            Top = 1
            Width = 253
            Height = 15
            AutoSize = False
            DataField = 'DISNOME'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 257
            Top = 1
            Width = 253
            Height = 15
            AutoSize = False
            DataField = 'PROFESSOR'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText37: TRLDBText
            Left = 512
            Top = 1
            Width = 127
            Height = 15
            AutoSize = False
            DataField = 'PRORESUMOTITULACAO'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText38: TRLDBText
            Left = 640
            Top = 3
            Width = 73
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CURDISHORASAULA'
            DataSource = DSRel
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand12: TRLBand
          Left = 0
          Top = 116
          Width = 718
          Height = 20
          BandType = btSummary
          object RLLabel13: TRLLabel
            Left = 596
            Top = 1
            Width = 34
            Height = 15
            Caption = 'Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult2: TRLDBResult
            Left = 638
            Top = 0
            Width = 75
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CURDISHORASAULA'
            DataSource = DSRel
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
      end
      object RLBand6: TRLBand
        Left = 38
        Top = 289
        Width = 718
        Height = 57
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
          Height = 52
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
        object RLDBText39: TRLDBText
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
    object txtnomeprofessor: TWSEdit
      Left = 350
      Top = 42
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
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtnomecoordenador: TWSEdit
      Left = 352
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
      TabOrder = 9
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 147
    Width = 573
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
    ExplicitTop = 149
    ExplicitWidth = 575
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
  object QRel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT CURCOD,CURNOME,CURTURMA,CURCARGA,CURVALOR,CURPERCDESCONTO' +
        ','
      'CURDESCONTO,CURVENCIMENTO,CURTCC,CURINICIO,CURFIM,CURLIQUIDO,'
      
        'CURSISTEMAAVALIACAO, CURCRITERIOSAVALIACAO, CURSECRETARIO, TBCOO' +
        'RDENADOR.PRONOME AS COORDENADOR,'
      
        'TBPROFESSOR.PRONOME AS PROFESSOR, DISNOME, CURDISHORASAULA, TBPR' +
        'OFESSOR.PRORESUMOTITULACAO'
      
        'FROM TCURSO INNER JOIN TPROFESSOR TBCOORDENADOR ON TBCOORDENADOR' +
        '.PROCOD = CURCOORDENADOR,'
      
        'TCURSODISCIPLINA INNER JOIN TPROFESSOR TBPROFESSOR ON TBPROFESSO' +
        'R.PROCOD = CURDISPROFESSOR'
      '            INNER JOIN TDISCIPLINA ON DISCOD = CURDISDISCIPLINA'
      'WHERE CURCOD = CURDISCURSO')
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 14
    object QRelCURCOD: TIntegerField
      FieldName = 'CURCOD'
      Required = True
    end
    object QRelCURNOME: TStringField
      FieldName = 'CURNOME'
      Size = 50
    end
    object QRelCURTURMA: TStringField
      FieldName = 'CURTURMA'
      Size = 10
    end
    object QRelCURCARGA: TIntegerField
      FieldName = 'CURCARGA'
    end
    object QRelCURVALOR: TFloatField
      FieldName = 'CURVALOR'
    end
    object QRelCURPERCDESCONTO: TFloatField
      FieldName = 'CURPERCDESCONTO'
    end
    object QRelCURDESCONTO: TFloatField
      FieldName = 'CURDESCONTO'
    end
    object QRelCURVENCIMENTO: TSmallintField
      FieldName = 'CURVENCIMENTO'
    end
    object QRelCURTCC: TStringField
      FieldName = 'CURTCC'
      Size = 1
    end
    object QRelCURINICIO: TDateField
      FieldName = 'CURINICIO'
    end
    object QRelCURFIM: TDateField
      FieldName = 'CURFIM'
    end
    object QRelCURLIQUIDO: TFloatField
      FieldName = 'CURLIQUIDO'
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
    object QRelPROFESSOR: TStringField
      FieldName = 'PROFESSOR'
      Size = 100
    end
    object QRelDISNOME: TStringField
      FieldName = 'DISNOME'
      Size = 100
    end
    object QRelCURDISHORASAULA: TIntegerField
      FieldName = 'CURDISHORASAULA'
    end
    object QRelPRORESUMOTITULACAO: TStringField
      FieldName = 'PRORESUMOTITULACAO'
      Size = 50
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
    Top = 14
    object CDSRelCURCOD: TIntegerField
      FieldName = 'CURCOD'
      Required = True
    end
    object CDSRelCURNOME: TStringField
      FieldName = 'CURNOME'
      Size = 50
    end
    object CDSRelCURTURMA: TStringField
      FieldName = 'CURTURMA'
      Size = 10
    end
    object CDSRelCURCARGA: TIntegerField
      FieldName = 'CURCARGA'
    end
    object CDSRelCURVALOR: TFloatField
      FieldName = 'CURVALOR'
    end
    object CDSRelCURPERCDESCONTO: TFloatField
      FieldName = 'CURPERCDESCONTO'
    end
    object CDSRelCURDESCONTO: TFloatField
      FieldName = 'CURDESCONTO'
    end
    object CDSRelCURVENCIMENTO: TSmallintField
      FieldName = 'CURVENCIMENTO'
    end
    object CDSRelCURTCC: TStringField
      FieldName = 'CURTCC'
      Size = 1
    end
    object CDSRelCURINICIO: TDateField
      FieldName = 'CURINICIO'
    end
    object CDSRelCURFIM: TDateField
      FieldName = 'CURFIM'
    end
    object CDSRelCURLIQUIDO: TFloatField
      FieldName = 'CURLIQUIDO'
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
    object CDSRelPROFESSOR: TStringField
      FieldName = 'PROFESSOR'
      Size = 100
    end
    object CDSRelDISNOME: TStringField
      FieldName = 'DISNOME'
      Size = 100
    end
    object CDSRelCURDISHORASAULA: TIntegerField
      FieldName = 'CURDISHORASAULA'
    end
    object CDSRelPRORESUMOTITULACAO: TStringField
      FieldName = 'PRORESUMOTITULACAO'
      Size = 50
    end
  end
  object DSRel: TDataSource
    DataSet = CDSRel
    Left = 120
    Top = 14
  end
end
