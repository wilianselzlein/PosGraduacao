object FEmail: TFEmail
  Left = 166
  Top = 124
  Caption = 'FEmail'
  ClientHeight = 498
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 574
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Enviar Email'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 126
  end
  object ToolBarEnvia: TToolBar
    Left = 0
    Top = 468
    Width = 574
    Height = 30
    HelpType = htKeyword
    Align = alBottom
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 86
    Customizable = True
    Font.Charset = DEFAULT_CHARSET
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
    TabOrder = 0
    object btnenviar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Enviar E-Mail - F12'
      Caption = '&Enviar'
      ImageIndex = 15
      OnClick = btnenviarClick
    end
    object ToolButton2: TToolButton
      Left = 86
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsDivider
    end
    object btncancelar: TToolButton
      Left = 94
      Top = 0
      Hint = 'Cancelar Altera'#231#245'es - Esc'
      Caption = '&Cancelar'
      Grouped = True
      ImageIndex = 13
      OnClick = btncancelarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 24
    Width = 574
    Height = 444
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 8
      Width = 15
      Height = 15
      Caption = 'De'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 32
      Width = 27
      Height = 15
      Caption = 'Para'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 56
      Width = 47
      Height = 15
      Caption = 'Assunto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 80
      Width = 117
      Height = 15
      Caption = 'Corpo da Mensagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 416
      Width = 43
      Height = 15
      Caption = 'Arquivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtde: TWSEdit
      Left = 56
      Top = 8
      Width = 491
      height = 17
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 0
      OnKeyDown = txtdeKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtpara: TWSEdit
      Left = 56
      Top = 32
      Width = 491
      height = 17
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 1
      OnKeyDown = txtdeKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtassunto: TWSEdit
      Left = 56
      Top = 56
      Width = 491
      height = 17
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 2
      OnKeyDown = txtdeKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtarquivo: TWSEdit
      Left = 56
      Top = 416
      Width = 491
      height = 17
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 3
      OnKeyDown = txtdeKeyDown
      OnKeyPress = txtarquivoKeyPress
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object chkconfima: TCheckBox
      Left = 8
      Top = 400
      Width = 353
      Height = 16
      Caption = 'Enviar Confirma'#231#227'o de Leitura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyDown = txtdeKeyDown
    end
  end
end
