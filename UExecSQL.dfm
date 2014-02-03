object FExecSQL: TFExecSQL
  Left = 222
  Top = 124
  Caption = 'FExecSQL'
  ClientHeight = 457
  ClientWidth = 675
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 675
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Executar Comando'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 194
  end
  object Memo: TMemo
    Left = 0
    Top = 24
    Width = 675
    Height = 218
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 427
    Width = 675
    Height = 30
    Align = alBottom
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 96
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
    TabOrder = 1
    object BtnSalvar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Executar - F12'
      Caption = 'Executar'
      ImageIndex = 14
      OnClick = BtnSalvarClick
    end
    object btnabrir: TToolButton
      Left = 96
      Top = 0
      Caption = 'Abrir'
      ImageIndex = 6
      OnClick = btnabrirClick
    end
    object ToolButton2: TToolButton
      Left = 192
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnComandos: TToolButton
      Left = 200
      Top = 0
      Hint = 'Comandos Prontos'
      Caption = 'Comandos'
      DropdownMenu = PopupMenu1
      ImageIndex = 21
    end
    object BtnHtml: TToolButton
      Left = 296
      Top = 0
      Hint = 'Exportar para HTML'
      Caption = 'Html'
      ImageIndex = 7
      OnClick = BtnHtmlClick
    end
    object ToolButton22: TToolButton
      Left = 392
      Top = 0
      Width = 8
      Caption = 'ToolButton22'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 400
      Top = 0
      Hint = 'Sair - Esc'
      Caption = 'Sair'
      ImageIndex = 12
      OnClick = btnsairClick
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 242
    Width = 675
    Height = 25
    DataSource = DM.DSExec
    Align = alBottom
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 267
    Width = 675
    Height = 160
    TabStop = False
    Align = alBottom
    DataSource = DM.DSExec
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -9
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
  end
  object PopupMenu1: TPopupMenu
    Images = DM.ImageListMenu
    Left = 184
    Top = 312
    object odososEmails1: TMenuItem
      Caption = 'Todos os Emails'
      ImageIndex = 48
      OnClick = odososEmails1Click
    end
  end
end
