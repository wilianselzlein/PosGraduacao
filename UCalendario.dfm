object FCalendario: TFCalendario
  Left = 231
  Top = 160
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 379
  ClientWidth = 371
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MonthCalendar1: TMonthCalendar
    Left = 0
    Top = 0
    Width = 371
    Height = 355
    Align = alClient
    CalColors.TextColor = clBlack
    CalColors.TitleBackColor = clNavy
    CalColors.TitleTextColor = clBlack
    Date = 38556.623839687500000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 373
    ExplicitHeight = 357
  end
  object Panel1: TPanel
    Left = 0
    Top = 355
    Width = 371
    Height = 24
    Align = alBottom
    Caption = 'Panel1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 357
    ExplicitWidth = 373
    object ToolBarNavegacao: TToolBar
      Left = 1
      Top = 2
      Width = 369
      Height = 21
      Align = alBottom
      AutoSize = True
      ButtonHeight = 21
      ButtonWidth = 88
      Images = DM.ImageListPageControl
      Indent = 150
      List = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitWidth = 371
      object btnsair: TToolButton
        Left = 150
        Top = 0
        Hint = 'Sair - Esc'
        ImageIndex = 3
        OnClick = btnsairClick
      end
    end
  end
end
