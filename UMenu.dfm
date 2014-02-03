object FMenu: TFMenu
  Left = 250
  Top = 36
  Caption = 'Sistema Gerenciador de P'#243's-Gradua'#231#227'o'
  ClientHeight = 433
  ClientWidth = 824
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MenuHotel
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 587
    Top = 23
    Width = 51
    Height = 240
    Alignment = taRightJustify
    Caption = 
      'Atalhos:'#13#10'Ins -'#13#10'F11 -'#13#10'F10 -'#13#10'Ctrl -'#13#10'F12 -'#13#10'Esc -'#13#10'F8 -'#13#10'F7 -'#13 +
      #10'F9 -'#13#10'F4 -'#13#10'F2 -'#13#10'F5 -'#13#10'F6 -'#13#10'F3 -'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label2: TLabel
    Left = 652
    Top = 39
    Width = 127
    Height = 224
    Caption = 
      'Incluir novo registro'#13#10'Incluir novo padr'#227'o'#13#10'Alterar'#13#10'Delete - Ex' +
      'cluir'#13#10'Salvar'#13#10'Cancelar ou Sair'#13#10'Imprimir'#13#10'Desconectar'#13#10'Atualiza' +
      'r'#13#10'Exportar'#13#10'Importar'#13#10'Visualizar Consulta'#13#10'Visualizar Cadastro'#13 +
      #10'Consultar Cadastro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 144
    Height = 433
    Align = alLeft
    AutoSize = True
    ButtonHeight = 70
    ButtonWidth = 72
    Caption = 'ToolBar'
    DrawingStyle = dsGradient
    GradientEndColor = clWhite
    GradientStartColor = clSkyBlue
    Images = DM.ImageListMenu
    GradientDirection = gdHorizontal
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object btnAluno: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = 'Cadastro de Alunos'
      ImageIndex = 2
      OnClick = Alunos1Click
    end
    object btnCurso: TToolButton
      Left = 72
      Top = 0
      Cursor = crHandPoint
      Hint = 'Cadastro de Cursos'
      ImageIndex = 0
      Wrap = True
      OnClick = Cursos1Click
    end
    object btnProfessor: TToolButton
      Left = 0
      Top = 70
      Cursor = crHandPoint
      Hint = 'Cadastro de professores'
      ImageIndex = 12
      OnClick = Professores1Click
    end
    object btnGerarContrato: TToolButton
      Left = 72
      Top = 70
      Cursor = crHandPoint
      Hint = 'Gerar Contrato Alunos'
      ImageIndex = 5
      Wrap = True
      OnClick = GerarContratos1Click
    end
    object btnMensalidade: TToolButton
      Left = 0
      Top = 140
      Cursor = crHandPoint
      Hint = 'Mensalidades'
      ImageIndex = 10
      OnClick = Mensalidades1Click
    end
    object btnContaPagar: TToolButton
      Left = 72
      Top = 140
      Cursor = crHandPoint
      Hint = 'Contas a Pagar'
      ImageIndex = 9
      Wrap = True
      OnClick = ContasaPagar1Click
    end
    object btnRazao: TToolButton
      Left = 0
      Top = 210
      Cursor = crHandPoint
      Hint = 'Raz'#227'o'
      ImageIndex = 4
      OnClick = RazoLivroCaixa1Click
    end
    object btnOrcamento: TToolButton
      Left = 72
      Top = 210
      Cursor = crHandPoint
      Hint = 'Or'#231'amentos'
      ImageIndex = 6
      Wrap = True
      OnClick = Oramentos2Click
    end
    object btnBalancete: TToolButton
      Left = 0
      Top = 280
      Cursor = crHandPoint
      Hint = 'Gerencial Anal'#237'tico'
      ImageIndex = 7
      OnClick = Balancete1lick
    end
    object btnGerenciaAluno: TToolButton
      Left = 72
      Top = 280
      Cursor = crHandPoint
      Hint = 'Gerenciamento de Alunos'
      ImageIndex = 8
      Wrap = True
      OnClick = AlunoeCursos1Click
    end
    object btnLctoContabil: TToolButton
      Left = 0
      Top = 350
      Cursor = crHandPoint
      Hint = 'Registros'
      ImageIndex = 11
      OnClick = LanamentosContbeis1Click
    end
    object btnSair: TToolButton
      Left = 72
      Top = 350
      Cursor = crHandPoint
      Hint = 'Sair'
      ImageIndex = 1
      OnClick = Sair2Click
    end
  end
  object PrinterSetupDialog: TPrinterSetupDialog
    Left = 136
    Top = 216
  end
  object MenuHotel: TMainMenu
    Tag = 99
    Left = 176
    Top = 216
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Alunos1: TMenuItem
        Caption = 'Alunos'
        ImageIndex = 0
        OnClick = Alunos1Click
      end
      object Professores1: TMenuItem
        Caption = 'Professores'
        ImageIndex = 12
        OnClick = Professores1Click
      end
      object Cursos1: TMenuItem
        Caption = 'Cursos'
        ImageIndex = 20
        OnClick = Cursos1Click
      end
      object Disciplinas1: TMenuItem
        Caption = 'Disciplinas'
        ImageIndex = 32
        OnClick = Disciplinas1Click
      end
      object Networking1: TMenuItem
        Caption = 'Empresas/Pessoas'
        ImageIndex = 61
        OnClick = Networking1Click
      end
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object Bancos1: TMenuItem
        Caption = 'Bancos'
        ImageIndex = 30
        OnClick = Bancos1Click
      end
      object FormasdePagamentos1: TMenuItem
        Caption = 'Formas de Pagamentos'
        ImageIndex = 74
        OnClick = FormasdePagamentos1Click
      end
      object Grupos1: TMenuItem
        Caption = 'Grupos de Professores'
        ImageIndex = 3
        Visible = False
        OnClick = Grupos1Click
      end
      object GrupodeCursos: TMenuItem
        Caption = 'Grupo de Cursos'
        ImageIndex = 20
        OnClick = GrupodeCursosClick
      end
      object CadastrodeEmpresas1: TMenuItem
        Caption = 'Institui'#231#227'o'
        ImageIndex = 25
        OnClick = CadastrodeEmpresas1Click
      end
      object MInstituto: TMenuItem
        Caption = 'Instituto'
        ImageIndex = 8
        OnClick = MInstitutoClick
      end
      object ServicosFinanceiros: TMenuItem
        Caption = 'Servi'#231'os Financeiros'
        ImageIndex = 63
        OnClick = ServicosFinanceirosClick
      end
    end
    object Biblioteca: TMenuItem
      Caption = 'Biblioteca'
      object Assunto1: TMenuItem
        Caption = 'Assuntos'
        ImageIndex = 70
        OnClick = Assunto1Click
      end
      object Autores1: TMenuItem
        Caption = 'Autores'
        ImageIndex = 66
        OnClick = Autores1Click
      end
      object Editoras1: TMenuItem
        Caption = 'Editoras'
        ImageIndex = 64
        OnClick = Editoras1Click
      end
      object Materiais1: TMenuItem
        Caption = 'Materiais'
        ImageIndex = 71
        OnClick = Materiais1Click
      end
      object ipoMaterial1: TMenuItem
        Caption = 'Tipos de Materiais'
        ImageIndex = 68
        OnClick = ipoMaterial1Click
      end
      object ransito1: TMenuItem
        Caption = 'Transito'
        ImageIndex = 69
        OnClick = ransito1Click
      end
    end
    object Secretaria: TMenuItem
      Caption = 'Secretaria'
      object Avisos1: TMenuItem
        Caption = 'Avisos, Materiais e Not'#237'cias'
        ImageIndex = 60
        OnClick = Avisos1Click
      end
      object GerarContratos1: TMenuItem
        Caption = 'Gerar Contratos - Alunos'
        ImageIndex = 73
        OnClick = GerarContratos1Click
      end
      object GerarContratosProfessores1: TMenuItem
        Caption = 'Gerar Contratos - Professores'
        ImageIndex = 73
        OnClick = GerarContratosProfessores1Click
      end
      object LanarNotaeFreqdosalunos1: TMenuItem
        Caption = 'Lan'#231'ar Nota e Freq. dos Alunos'
        ImageIndex = 0
        OnClick = LanarNotaeFreqdosalunos1Click
      end
    end
    object Financeiro1: TMenuItem
      Caption = 'Financeiro'
      object Mensalidades1: TMenuItem
        Caption = 'Mensalidades'
        ImageIndex = 33
        OnClick = Mensalidades1Click
      end
      object ContasaPagar1: TMenuItem
        Caption = 'Contas a Pagar'
        ImageIndex = 72
        OnClick = ContasaPagar1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object GerarMensalidades1: TMenuItem
        Caption = 'Gerar Mensalidades'
        ImageIndex = 56
        OnClick = GerarMensalidades1Click
      end
    end
    object Controladoria1: TMenuItem
      Caption = 'Controladoria'
      object HistricoPadro1: TMenuItem
        Caption = 'Hist'#243'rico Padr'#227'o'
        ImageIndex = 45
        OnClick = HistricoPadro1Click
      end
      object LanamentosContbeis1: TMenuItem
        Caption = 'Lan'#231'amentos'
        ImageIndex = 17
        OnClick = LanamentosContbeis1Click
      end
      object PlanodeContas1: TMenuItem
        Caption = 'Plano de Contas'
        ImageIndex = 51
        OnClick = PlanodeContas1Click
      end
      object PlanodeNegcios1: TMenuItem
        Caption = 'Plano de Neg'#243'cios'
        ImageIndex = 32
        Visible = False
        OnClick = PlanodeNegcios1Click
      end
      object Identificadores1: TMenuItem
        Caption = 'Identificadores'
        ImageIndex = 23
        Visible = False
        OnClick = Identificadores1Click
      end
      object N3: TMenuItem
        Caption = '-'
        Visible = False
      end
      object EncerramentoContbil1: TMenuItem
        Caption = 'Encerramento Cont'#225'bil'
        ImageIndex = 53
        Visible = False
        OnClick = EncerramentoContbil1Click
      end
      object DataEncerramentoContbil1: TMenuItem
        Caption = 'Data Encerramento Cont'#225'bil'
        ImageIndex = 54
        Visible = False
        OnClick = DataEncerramentoContbil1Click
      end
      object N4: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Oramentos2: TMenuItem
        Caption = 'Or'#231'amentos'
        ImageIndex = 62
        OnClick = Oramentos2Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Cadastros2: TMenuItem
        Caption = 'Cadastros'
        ImageIndex = 0
        object Alunos2: TMenuItem
          Caption = 'Alunos'
          ImageIndex = 0
          OnClick = Alunos2Click
        end
        object Cursos2: TMenuItem
          Caption = 'Cursos'
          ImageIndex = 20
          OnClick = Cursos2Click
        end
        object Professores2: TMenuItem
          Caption = 'Professores'
          ImageIndex = 12
          OnClick = Professores2Click
        end
      end
      object RelSecretaria: TMenuItem
        Caption = 'Secretaria'
        ImageIndex = 3
        object MIDeclaracoes: TMenuItem
          Caption = 'Declara'#231#245'es'
          ImageIndex = 57
          OnClick = MIDeclaracoesClick
        end
        object AlunoeCursos1: TMenuItem
          Caption = 'Gerenciamento de Alunos'
          ImageIndex = 0
          OnClick = AlunoeCursos1Click
        end
        object Indicaes1: TMenuItem
          Caption = 'Indica'#231#245'es de Alunos'
          ImageIndex = 26
          Visible = False
          OnClick = Indicaes1Click
        end
      end
      object Financeiro2: TMenuItem
        Caption = 'Financeiro'
        ImageIndex = 33
        object Mensalidades2: TMenuItem
          Caption = 'Mensalidades'
          ImageIndex = 33
          OnClick = Mensalidades2Click
        end
        object PrevisodePagamento1: TMenuItem
          Caption = 'Previs'#227'o de Pagamento'
          ImageIndex = 59
          OnClick = PrevisodePagamento1Click
        end
        object ContasaPagar2: TMenuItem
          Caption = 'Contas a Pagar'
          ImageIndex = 72
          OnClick = ContasaPagar2Click
        end
      end
      object Contabilidade2: TMenuItem
        Caption = 'Controladoria'
        ImageIndex = 17
        object RazoLivroCaixa1: TMenuItem
          Caption = 'Raz'#227'o'
          ImageIndex = 32
          OnClick = RazoLivroCaixa1Click
        end
        object Balancete1: TMenuItem
          Caption = 'Gerencial Anal'#237'tico'
          ImageIndex = 42
          OnClick = Balancete1lick
        end
        object ModeloDRE1: TMenuItem
          Caption = 'Gerencial Sint'#233'tico'
          ImageIndex = 58
          Visible = False
          OnClick = ModeloDRE1Click
        end
        object RecibodeLocao1: TMenuItem
          Caption = 'Recibo de Loca'#231#227'o'
          ImageIndex = 12
          OnClick = RecibodeLocao1Click
        end
      end
      object N6: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Pendencias: TMenuItem
        Caption = 'Pend'#234'ncias no Sistema'
        ImageIndex = 49
        Visible = False
        OnClick = PendenciasClick
      end
    end
    object Configuracoes: TMenuItem
      Caption = 'Configura'#231#245'es'
      object ipoSistema1: TMenuItem
        Caption = 'Tipo Sistema'
        ImageIndex = 43
        object Educacional1: TMenuItem
          Caption = 'Educacional'
          ImageIndex = 75
          OnClick = Educacional1Click
        end
        object Empresarial1: TMenuItem
          Caption = 'Empresarial'
          ImageIndex = 76
          OnClick = Educacional1Click
        end
      end
      object ConfiguracoesControladoria: TMenuItem
        Caption = 'Controladoria'
        ImageIndex = 55
        Visible = False
        OnClick = ConfiguracoesControladoriaClick
      end
      object Parmetros1: TMenuItem
        Caption = 'Par'#226'metros'
        ImageIndex = 28
        OnClick = Parmetros1Click
      end
      object Programas1: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        Visible = False
        OnClick = Programas1Click
      end
      object Usuarios1: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object AtualizaroSistema1: TMenuItem
        Caption = 'Atualizar o Sistema'
        ImageIndex = 49
        OnClick = AtualizaroSistema1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object AtivarGatilhos1: TMenuItem
        Caption = 'Ativar Gatilhos'
        ImageIndex = 24
        Visible = False
        OnClick = AtivarGatilhos1Click
      end
      object ExecutarComando1: TMenuItem
        Caption = 'Executar Comando'
        ImageIndex = 47
        OnClick = ExecutarComando1Click
      end
      object N5: TMenuItem
        Caption = '-'
        Visible = False
      end
      object GerarBancoBiblioteca1: TMenuItem
        Caption = 'Gerar Banco Biblioteca'
        Visible = False
        OnClick = GerarBancoBiblioteca1Click
      end
    end
    object outros1: TMenuItem
      Caption = 'Outros'
      Visible = False
      object AbrirRelatrios1: TMenuItem
        Caption = 'Abrir Relat'#243'rios'
        ImageIndex = 51
        OnClick = AbrirRelatrios1Click
      end
      object Calculadora1: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
      end
      object Calendrio1: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object EnviarBancodeDados1: TMenuItem
        Caption = 'Enviar Banco de Dados'
        ImageIndex = 49
        Visible = False
        OnClick = EnviarBancodeDados1Click
      end
      object EnviarEmail1: TMenuItem
        Caption = 'Enviar Email'
        ImageIndex = 48
        OnClick = EnviarEmail1Click
      end
      object Impressoras1: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
      object GerarRastreabilidade1: TMenuItem
        Caption = 'Gerar Rastreabilidade'
        ImageIndex = 52
        Visible = False
        OnClick = GerarRastreabilidade1Click
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      Visible = False
      object Ajuda2: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object SObre1: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Pginanaweb1: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object ContatoW31: TMenuItem
        Caption = 'Contato'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      object Sair2: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
end
