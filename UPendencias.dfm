object FPendencias: TFPendencias
  Left = 192
  Top = 109
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FPendencias'
  ClientHeight = 473
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 680
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Pend'#234'ncias do Sistema'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 237
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 24
    Width = 680
    Height = 40
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 12
      Width = 60
      Height = 15
      Caption = 'Pend'#234'ncia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ToolBarItem: TToolBar
      Left = 485
      Top = 1
      Width = 194
      Height = 38
      HelpType = htKeyword
      Align = alRight
      BorderWidth = 2
      ButtonHeight = 30
      ButtonWidth = 59
      Caption = 'ToolBarItem'
      Images = Dm.ImageList
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 0
      Transparent = False
      object btnok: TToolButton
        Left = 0
        Top = 0
        Hint = 'Puxar Alunos'
        Caption = '&Abrir'
        ImageIndex = 6
        ParentShowHint = False
        ShowHint = True
        OnClick = btnokClick
      end
      object btnexcel: TToolButton
        Left = 59
        Top = 0
        Hint = 'Exportar'
        Caption = 'Html'
        Enabled = False
        ImageIndex = 7
        OnClick = btnexcelClick
      end
      object btnsair: TToolButton
        Left = 118
        Top = 0
        Hint = 'Sair'
        Caption = '&Sair'
        ImageIndex = 12
        OnClick = btnsairClick
      end
    end
    object CmbPendencia: TWSComboBox
      Left = 75
      Top = 9
      Width = 396
      Height = 23
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      ParentShowHint = False
      TabOrder = 1
      Text = 'Alunos com notas maiores que 10 ou menor que 7 e maior que 0'
      Items.Strings = (
        'Alunos com notas maiores que 10 ou menor que 7 e maior que 0'
        'Alunos com frequ'#234'ncias maiores que 100'
        'Mensalidades pagas mas com o valor zerado'
        'Alunos sem disciplinas'
        'Alunos com frequencia e notas zeradas e situa'#231#227'o <> Ativa')
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object DBGrid: TDBGrid
    Left = 0
    Top = 64
    Width = 680
    Height = 409
    TabStop = False
    Align = alClient
    Color = clWhite
    DataSource = DataSource
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -12
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Visible = False
  end
  object DataSource: TDataSource
    DataSet = Dm.CDSExec
    Left = 8
    Top = 8
  end
end
