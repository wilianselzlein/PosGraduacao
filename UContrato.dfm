object FContrato: TFContrato
  Left = 192
  Top = 111
  Caption = 'FContrato'
  ClientHeight = 473
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 0
    Width = 653
    Height = 30
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 135
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Images = Dm.ImageList
    List = True
    ParentFont = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    ExplicitWidth = 862
    object BtnImprimir: TToolButton
      Left = 0
      Top = 0
      Caption = 'Imprimir Contrato'
      ImageIndex = 8
      OnClick = BtnImprimirClick
    end
    object ToolButton1: TToolButton
      Left = 135
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 143
      Top = 0
      Hint = 'Sair - Esc'
      Caption = 'Sair'
      ImageIndex = 12
      OnClick = btnsairClick
    end
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 30
    Width = 653
    Height = 443
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 36
    ExplicitWidth = 862
  end
end
