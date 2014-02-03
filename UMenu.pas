unit UMenu;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, Menus, ExtCtrls, StdCtrls, DB, comobj, shellapi, DateUtils, RLConsts,
  Vcl.ToolWin, Vcl.ComCtrls;

type
     TFMenu = class(TForm)
          PrinterSetupDialog: TPrinterSetupDialog;
          MenuHotel: TMainMenu;
          Cadastros1: TMenuItem;
          Cidades1: TMenuItem;
          Grupos1: TMenuItem;
          Configuracoes: TMenuItem;
          Programas1: TMenuItem;
          Usuarios1: TMenuItem;
          CadastrodeEmpresas1: TMenuItem;
          outros1: TMenuItem;
          Calculadora1: TMenuItem;
          Calendrio1: TMenuItem;
          Impressoras1: TMenuItem;
          Ajuda1: TMenuItem;
          Ajuda2: TMenuItem;
          SObre1: TMenuItem;
          N1: TMenuItem;
          MInstituto: TMenuItem;
          Pginanaweb1: TMenuItem;
          ContatoW31: TMenuItem;
          Sair1: TMenuItem;
          Sair2: TMenuItem;
          Label1: TLabel;
          Label2: TLabel;
          N2: TMenuItem;
          ExecutarComando1: TMenuItem;
          Disciplinas1: TMenuItem;
          Controladoria1: TMenuItem;
          HistricoPadro1: TMenuItem;
          Bancos1: TMenuItem;
          Professores1: TMenuItem;
          Cursos1: TMenuItem;
          PlanodeNegcios1: TMenuItem;
          PlanodeContas1: TMenuItem;
          LanamentosContbeis1: TMenuItem;
          Alunos1: TMenuItem;
          Mensalidades1: TMenuItem;
          Relatrios1: TMenuItem;
          Cursos2: TMenuItem;
          Professores2: TMenuItem;
          Alunos2: TMenuItem;
          AlunoeCursos1: TMenuItem;
          Indicaes1: TMenuItem;
          Mensalidades2: TMenuItem;
          Contabilidade2: TMenuItem;
          RazoLivroCaixa1: TMenuItem;
          Balancete1: TMenuItem;
          Parmetros1: TMenuItem;
          LanarNotaeFreqdosalunos1: TMenuItem;
          EnviarEmail1: TMenuItem;
          EnviarBancodeDados1: TMenuItem;
          AtivarGatilhos1: TMenuItem;
          AbrirRelatrios1: TMenuItem;
          GerarRastreabilidade1: TMenuItem;
          FormasdePagamentos1: TMenuItem;
          Secretaria: TMenuItem;
          Financeiro1: TMenuItem;
          N3: TMenuItem;
          EncerramentoContbil1: TMenuItem;
          DataEncerramentoContbil1: TMenuItem;
          N4: TMenuItem;
          ConfiguracoesControladoria: TMenuItem;
          GerarContratos1: TMenuItem;
          GerarMensalidades1: TMenuItem;
          N5: TMenuItem;
          GerarBancoBiblioteca1: TMenuItem;
    MIDeclaracoes: TMenuItem;
          Cadastros2: TMenuItem;
    RelSecretaria: TMenuItem;
          Financeiro2: TMenuItem;
          ModeloDRE1: TMenuItem;
          PrevisodePagamento1: TMenuItem;
          N6: TMenuItem;
    Pendencias: TMenuItem;
          GerarContratosProfessores1: TMenuItem;
          Networking1: TMenuItem;
          Oramentos2: TMenuItem;
    ServicosFinanceiros: TMenuItem;
          Identificadores1: TMenuItem;
    RecibodeLocao1: TMenuItem;
    Editoras1: TMenuItem;
    Autores1: TMenuItem;
    Assunto1: TMenuItem;
    ipoMaterial1: TMenuItem;
    Materiais1: TMenuItem;
    Biblioteca: TMenuItem;
    ransito1: TMenuItem;
    ContasaPagar1: TMenuItem;
    Educacional1: TMenuItem;
    ipoSistema1: TMenuItem;
    Empresarial1: TMenuItem;
    ContasaPagar2: TMenuItem;
    N7: TMenuItem;
    AtualizaroSistema1: TMenuItem;
    Avisos1: TMenuItem;
    GrupodeCursos: TMenuItem;
    ToolBar: TToolBar;
    btnCurso: TToolButton;
    btnSair: TToolButton;
    btnAluno: TToolButton;
    btnRazao: TToolButton;
    btnGerarContrato: TToolButton;
    btnOrcamento: TToolButton;
    btnBalancete: TToolButton;
    btnContaPagar: TToolButton;
    btnMensalidade: TToolButton;
    btnLctoContabil: TToolButton;
    btnProfessor: TToolButton;
    btnGerenciaAluno: TToolButton;
          procedure Cidades1Click(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure Sair2Click(Sender: TObject);
          procedure SObre1Click(Sender: TObject);
          procedure ExecutarComando1Click(Sender: TObject);
          procedure Pginanaweb1Click(Sender: TObject);
          procedure ContatoW31Click(Sender: TObject);
          procedure Calendrio1Click(Sender: TObject);
          procedure Impressoras1Click(Sender: TObject);
          procedure Programas1Click(Sender: TObject);
          procedure MInstitutoClick(Sender: TObject);
          procedure CadastrodeEmpresas1Click(Sender: TObject);
          procedure Usuarios1Click(Sender: TObject);
          procedure Grupos1Click(Sender: TObject);
          procedure Disciplinas1Click(Sender: TObject);
          procedure HistricoPadro1Click(Sender: TObject);
          procedure Bancos1Click(Sender: TObject);
          procedure Professores1Click(Sender: TObject);
          procedure Cursos1Click(Sender: TObject);
          procedure PlanodeNegcios1Click(Sender: TObject);
          procedure PlanodeContas1Click(Sender: TObject);
          procedure LanamentosContbeis1Click(Sender: TObject);
          procedure Alunos1Click(Sender: TObject);
          procedure Mensalidades1Click(Sender: TObject);
          procedure Cursos2Click(Sender: TObject);
          procedure Professores2Click(Sender: TObject);
          procedure Alunos2Click(Sender: TObject);
          procedure AlunoeCursos1Click(Sender: TObject);
          procedure Indicaes1Click(Sender: TObject);
          procedure Mensalidades2Click(Sender: TObject);
          procedure RazoLivroCaixa1Click(Sender: TObject);
          procedure Balancete1lick(Sender: TObject);
          procedure ermodeAberturaeEncerramento1Click(Sender: TObject);
          procedure Parmetros1Click(Sender: TObject);
          procedure LanarNotaeFreqdosalunos1Click(Sender: TObject);
          procedure EnviarEmail1Click(Sender: TObject);
          procedure EnviarBancodeDados1Click(Sender: TObject);
          procedure AtivarGatilhos1Click(Sender: TObject);
          procedure AbrirRelatrios1Click(Sender: TObject);
          procedure GerarRastreabilidade1Click(Sender: TObject);
          procedure FormasdePagamentos1Click(Sender: TObject);
          procedure EncerramentoContbil1Click(Sender: TObject);
          procedure DataEncerramentoContbil1Click(Sender: TObject);
          procedure ConfiguracoesControladoriaClick(Sender: TObject);
          procedure GerarContratos1Click(Sender: TObject);
          procedure GerarMensalidades1Click(Sender: TObject);
          procedure GerarBancoBiblioteca1Click(Sender: TObject);
          procedure MIDeclaracoesClick(Sender: TObject);
          procedure ModeloDRE1Click(Sender: TObject);
          procedure PrevisodePagamento1Click(Sender: TObject);
          procedure PendenciasClick(Sender: TObject);
          procedure GerarContratosProfessores1Click(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure Networking1Click(Sender: TObject);
          procedure Oramentos2Click(Sender: TObject);
          procedure ServicosFinanceirosClick(Sender: TObject);
          procedure Identificadores1Click(Sender: TObject);
    procedure RecibodeLocao1Click(Sender: TObject);
    procedure Editoras1Click(Sender: TObject);
    procedure Autores1Click(Sender: TObject);
    procedure Assunto1Click(Sender: TObject);
    procedure ipoMaterial1Click(Sender: TObject);
    procedure Materiais1Click(Sender: TObject);
    procedure ransito1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure Educacional1Click(Sender: TObject);
    procedure ContasaPagar2Click(Sender: TObject);
    procedure AtualizaroSistema1Click(Sender: TObject);
    procedure Avisos1Click(Sender: TObject);
    procedure GrupodeCursosClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FMenu: TFMenu;

implementation

uses UDM, USenha, UCidade, Uabout, UExecSQL, UCalendario, UPrograma,
     UInstituto, UParamEmp, UUsuario, UGrupoPro, UDisciplina,
     UHistPadrao, UBanco, UProfessor, UCurso, UPlanoNegocios,
     UPlanoConta, ULctoContabil, UAluno, UMensalidade, UCursoRel,
     UProfessorRel, UAlunoRel, UAlunoCursoRel, UAlunoIndicacaoRel,
     UMensalidadeRel, URazaoDiarioRel, UBalanceteRel, UParametro,
     UAlunoNotaFreq, UEmail, URelatorio, UFormaPgto, UFuncoes,
     UEncerramentoContabil, UContabil, UMensalidadeGera, UDre,
     UPrevPagamentoRel, UPendencias, UNetworking, UDeclaracoesRel,
     UContratoProfessor, UOrcamento, UServicoFin,  UIdentificador,
     UReciboProfessorRel, UEditora, UAutor, UAssunto, UTipoMaterial,
     UMaterial, UTransito, UContaPagar, UContaPagarRel, UAviso,
     UGrupoCurso;

{$R *.dfm}

procedure TFMenu.Cidades1Click(Sender: TObject);
begin
     usuario('btnconsultar', 3);
     if Application.FindComponent('FCidade') = nil then
          Application.CreateForm(TFCidade, FCidade)
     else
          FCidade.BringToFront;
end;

procedure TFMenu.FormShow(Sender: TObject);
begin
     ThreadExecSql(Dm.CDSInstituto);
     ThreadExecSql(DM.CDSParamEmp);

     Fsenha := TFSenha.Create(Self);
     FSenha.ShowModal;

     setCaption(FMenu);

     try
          dm.CDSPlanoContaPLACODANA.EditMask := valor_parametro(16); //mascara plano de contas
     except
     end;

     Fmenu.Caption := dm.CDSParamEmpEMPNome.asString + ' - ' + Valor_Parametro(20);
     Fmenu.Caption := Fmenu.Caption + '   Versão ' + formatfloat('0.0', dm.CDSInstitutoINSVERSAO.asinteger / 100);
     FMenu.Caption := FMenu.Caption + ' - Compilação em ' + DateTimeToStr(FileDateToDateTime(FileAge(Application.ExeName)));

     Application.Title := (sender as tform).caption;

//     if (FileExists('logo.jpg')) or (FileExists('LOGO.JPG')) or (FileExists('Logo.jpg')) then
//         img.Picture.LoadFromFile('logo.jpg');

//     if (FileExists('logo1.jpg')) or (FileExists('LOGO1.JPG')) or (FileExists('Logo1.jpg')) then
//         ImgRei.Picture.LoadFromFile('logo1.jpg');

     Secretaria.Visible := TipoSistema <> 'EMPRESARIAL';
     Biblioteca.Visible := Secretaria.Visible;
     RelSecretaria.Visible := Secretaria.Visible;
     Pendencias.Visible := Secretaria.Visible;
     ServicosFinanceiros.Visible := Secretaria.Visible;
     
     if TipoSistema = 'EMPRESARIAL' then
          Fmenu.Color := clskyBlue
     else
          Fmenu.Color := clWhite;

     MIDeclaracoes.Visible := valor_parametro(21) = '1';

    { if dm.CDSUsuario.locate('USULOGIN', fsenha.txtusuario.text, [loPartialKey, loCaseInsensitive]) then
     begin
         if dm.CDSUsuarioUSUPROFESSOR.AsInteger <> 0 then
         begin
             Fmenu.Menu := nil;
             image6.Visible := false;
             image10.Visible := false;
             image1.Visible := false;
             image7.Visible := false;
             image5.Visible := false;
             image8.Visible := false;
             ImgReduzido.Visible := false;
             Image4.hint := LanarNotaeFreqdosalunos1.Caption;
         end;
     end; }

     ThreadExecSql(Dm.CDSAlunoLkp);
     ThreadExecSql(Dm.CDSTela);
     ThreadExecSql(Dm.CDSDbGrid);
end;

procedure TFMenu.Sair2Click(Sender: TObject);
begin
     application.Terminate;
end;

procedure TFMenu.SObre1Click(Sender: TObject);
begin
     if Application.FindComponent('FSobre') = nil then
          Application.CreateForm(TFSobre, FSobre)
     else
          FSobre.BringToFront;
end;

procedure TFMenu.ExecutarComando1Click(Sender: TObject);
begin
     if Application.FindComponent('FExecSQL') = nil then
          Application.CreateForm(TFExecSQL, FExecSQL)
     else
          FExecSQL.BringToFront;
end;

procedure TFMenu.Pginanaweb1Click(Sender: TObject);
var
     ie: Variant;
begin
     IE := CreateOleObject('InternetExplorer.Application');
     IE.Visible := true;
     IE.Navigate(dm.CDSInstitutoINSSITE.asstring);
end;

procedure TFMenu.ContatoW31Click(Sender: TObject);
var
     Mail: string;
begin
     Mail := 'mailto:' + dm.CDSInstitutoINSEMAIL.asstring;
     ShellExecute(GetDesktopWindow, 'open', pchar(Mail), nil, nil, sw_ShowNormal);
end;

procedure TFMenu.Calendrio1Click(Sender: TObject);
begin
     if Application.FindComponent('FCalendario') = nil then
          Application.CreateForm(TFCalendario, FCalendario)
     else
          FCalendario.BringToFront;
end;

procedure TFMenu.Impressoras1Click(Sender: TObject);
begin
     PrinterSetupDialog.execute;
end;

procedure TFMenu.Programas1Click(Sender: TObject);
begin
     usuario('btnconsultar', 17);
     if Application.FindComponent('FPrograma') = nil then
          Application.CreateForm(TFPrograma, FPrograma)
     else
          FPrograma.BringToFront;
end;

procedure TFMenu.MInstitutoClick(Sender: TObject);
begin
     usuario('btnconsultar', 10);
     if Application.FindComponent('FInstituto') = nil then
          Application.CreateForm(TFInstituto, FInstituto)
     else
          FInstituto.BringToFront;
end;

procedure TFMenu.CadastrodeEmpresas1Click(Sender: TObject);
begin
     usuario('btnconsultar', 13);
     if Application.FindComponent('FParamEmp') = nil then
          Application.CreateForm(TFParamEmp, FParamEmp)
     else
          FParamEmp.BringToFront;
end;

procedure TFMenu.Usuarios1Click(Sender: TObject);
begin
     usuario('btnconsultar', 18);
     if Application.FindComponent('FUsuario') = nil then
          Application.CreateForm(TFUsuario, FUsuario)
     else
          FUsuario.BringToFront;
end;

procedure TFMenu.Grupos1Click(Sender: TObject);
begin
     usuario('btnconsultar', 8);
     if Application.FindComponent('FGrupoPro') = nil then
          Application.CreateForm(TFGrupoPro, FGrupoPro)
     else
          FGrupoPro.BringToFront;
end;

procedure TFMenu.Disciplinas1Click(Sender: TObject);
begin
     usuario('btnconsultar', 5);
     if Application.FindComponent('FDisciplina') = nil then
          Application.CreateForm(TFDisciplina, FDisciplina)
     else
          FDisciplina.BringToFront;
end;

procedure TFMenu.HistricoPadro1Click(Sender: TObject);
begin
     usuario('btnconsultar', 9);
     if Application.FindComponent('FHistPadrao') = nil then
          Application.CreateForm(TFHistPadrao, FHistPadrao)
     else
          FHistPadrao.BringToFront;
end;

procedure TFMenu.Bancos1Click(Sender: TObject);
begin
     usuario('btnconsultar', 2);
     if Application.FindComponent('FBanco') = nil then
          Application.CreateForm(TFBanco, FBanco)
     else
          FBanco.BringToFront;
end;

procedure TFMenu.Professores1Click(Sender: TObject);
begin
     usuario('btnconsultar', 16);
     if Application.FindComponent('FProfessor') = nil then
          Application.CreateForm(TFProfessor, FProfessor)
     else
          FProfessor.BringToFront;
end;

procedure TFMenu.Cursos1Click(Sender: TObject);
begin
     usuario('btnconsultar', 4);
     if Application.FindComponent('FCurso') = nil then
          Application.CreateForm(TFCurso, FCurso)
     else
          FCurso.BringToFront;
end;

procedure TFMenu.PlanodeNegcios1Click(Sender: TObject);
begin
     usuario('btnconsultar', 15);
     if Application.FindComponent('FPlanoNegocios') = nil then
          Application.CreateForm(TFPlanoNegocios, FPlanoNegocios)
     else
          FPlanoNegocios.BringToFront;
end;

procedure TFMenu.PlanodeContas1Click(Sender: TObject);
begin
     usuario('btnconsultar', 14);
     if Application.FindComponent('FPlanoConta') = nil then
          Application.CreateForm(TFPlanoConta, FPlanoConta)
     else
          FPlanoConta.BringToFront;
end;

procedure TFMenu.LanamentosContbeis1Click(Sender: TObject);
begin
     usuario('btnconsultar', 11);
     if Application.FindComponent('FLctoCOntabil') = nil then
          Application.CreateForm(TFLctoCOntabil, FLctoCOntabil)
     else
          FLctoCOntabil.BringToFront;
end;

procedure TFMenu.Alunos1Click(Sender: TObject);
begin
     usuario('btnconsultar', 1);
     if Application.FindComponent('FAluno') = nil then
          Application.CreateForm(TFAluno, FAluno)
     else
          FAluno.BringToFront;

//     if FAluno = nil then
//         FAluno := TFAluno.Create(Application);
//       FAluno := TFAluno.Create(self);
//       FAluno.Show;
end;

procedure TFMenu.Mensalidades1Click(Sender: TObject);
begin
     usuario('btnconsultar', 12);
     if Application.FindComponent('FMensalidade') = nil then
          Application.CreateForm(TFMensalidade, FMensalidade)
     else
          FMensalidade.BringToFront;
end;

procedure TFMenu.Cursos2Click(Sender: TObject);
begin
     usuario('BtnImprimir', 4);
     if Application.FindComponent('FCursoRel') = nil then
          Application.CreateForm(TFCursoRel, FCursoRel)
     else
          FCursoRel.BringToFront;
end;

procedure TFMenu.Professores2Click(Sender: TObject);
begin
     usuario('BtnImprimir', 16);
     if Application.FindComponent('FProfessorRel') = nil then
          Application.CreateForm(TFProfessorRel, FProfessorRel)
     else
          FProfessorRel.BringToFront;
end;

procedure TFMenu.Alunos2Click(Sender: TObject);
begin
     usuario('BtnImprimir', 1);
     if Application.FindComponent('FAlunoRel') = nil then
          Application.CreateForm(TFAlunoRel, FAlunoRel)
     else
          FAlunoRel.BringToFront;
end;

procedure TFMenu.AlunoeCursos1Click(Sender: TObject);
begin
     usuario('BtnImprimir', 19);
     if Application.FindComponent('FAlunoCursoRel') = nil then
          Application.CreateForm(TFAlunoCursoRel, FAlunoCursoRel)
     else
          FAlunoCursoRel.BringToFront;
end;

procedure TFMenu.Indicaes1Click(Sender: TObject);
begin
     usuario('BtnImprimir', 1);
     if Application.FindComponent('FAlunoIndicacaoRel') = nil then
          Application.CreateForm(TFAlunoIndicacaoRel, FAlunoIndicacaoRel)
     else
          FAlunoIndicacaoRel.BringToFront;
end;

procedure TFMenu.Mensalidades2Click(Sender: TObject);
begin
     usuario('BtnImprimir', 12);
     if Application.FindComponent('FMensalidadeRel') = nil then
          Application.CreateForm(TFMensalidadeRel, FMensalidadeRel)
     else
          FMensalidadeRel.BringToFront;
end;

procedure TFMenu.RazoLivroCaixa1Click(Sender: TObject);
begin
     usuario('BtnImprimir', 11);
     if Application.FindComponent('FRazaoDiarioRel') = nil then
          Application.CreateForm(TFRazaoDiarioRel, FRazaoDiarioRel)
     else
          FRazaoDiarioRel.BringToFront;
end;

procedure TFMenu.Balancete1lick(Sender: TObject);
begin
     usuario('BtnImprimir', 11);
     if Application.FindComponent('FBalanceteRel') = nil then
          Application.CreateForm(TFBalanceteRel, FBalanceteRel)
     else
          FBalanceteRel.BringToFront;
end;

procedure TFMenu.ermodeAberturaeEncerramento1Click(Sender: TObject);
begin
     showmessage('Em desenvolvimento!');
end;

procedure TFMenu.Parmetros1Click(Sender: TObject);
begin
     usuario('btnconsultar', 20);
     if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'N' then
     begin
          showmessage('Acesso negado para o usuário, não é coordenador!');
          exit;
     end;
     if Application.FindComponent('FParametro') = nil then
          Application.CreateForm(TFParametro, FParametro)
     else
          FParametro.BringToFront;
end;

procedure TFMenu.LanarNotaeFreqdosalunos1Click(Sender: TObject);
begin
     usuario('btnconsultar', 1);
     if Application.FindComponent('FAlunoNotaFreq') = nil then
          Application.CreateForm(TFAlunoNotaFreq, FAlunoNotaFreq)
     else
          FAlunoNotaFreq.BringToFront;
end;

procedure TFMenu.EnviarEmail1Click(Sender: TObject);
begin
     if Application.FindComponent('FEmail') = nil then
          Application.CreateForm(TFEmail, FEmail)
     else
          FEmail.BringToFront;
end;

procedure TFMenu.EnviarBancodeDados1Click(Sender: TObject);
begin
     {if application.messagebox ('Antes de enviar o banco de dados, certifique-se que nenhum outro usuário esteja conectado a ele! Deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes then
     begin
          verifica_banco;
          fechar_tabelas;
          if Application.FindComponent('FEmail') = nil then
               Application.CreateForm(TFEmail, FEmail)
          else
               FEmail.BringToFront;
          femail.txtarquivo.Text :=  ExtractFilePath(Application.ExeName) + 'banco.fdb';
          showmessage('O sistema precisa ser reiniciado!');
          application.Terminate;
     end;}
end;

procedure TFMenu.AtivarGatilhos1Click(Sender: TObject);
begin
     dm.CDSTabela.Open;
     dm.CDSTabela.first;
     while not dm.CDSTabela.eof do
     begin
          application.ProcessMessages;

          dm.QTrigger.Params[0].asstring := dm.CDSTabelaTABELA.asstring;
          dm.CDSTrigger.open;
          dm.CDSTrigger.first;
          while not dm.CDSTrigger.eof do
          begin
               application.ProcessMessages;
               execsql('alter trigger ' + dm.CDSTriggerNOMETRIGGER.AsString + ' active;');
               dm.CDSTrigger.next;
          end;
          dm.CDSTrigger.close;
          dm.CDSTabela.next;
     end;
     showmessage('Gatilhos ativados com sucesso!');
end;

procedure TFMenu.AbrirRelatrios1Click(Sender: TObject);
begin
     if Application.FindComponent('FRelatorio') = nil then
          Application.CreateForm(TFRelatorio, FRelatorio)
     else
          FRelatorio.BringToFront;
end;

procedure TFMenu.GerarRastreabilidade1Click(Sender: TObject);
begin
     {dm.CDSTabela.Open;
     dm.CDSTabela.first;
     while not dm.CDSTabela.eof do
     begin
          application.ProcessMessages;

          dm.QTrigger.Params[0].asstring := dm.CDSTabelaTABELA.asstring;
          dm.CDSTrigger.open;
          dm.CDSTrigger.first;
          while not dm.CDSTrigger.eof do
          begin
               application.ProcessMessages;
               execsql('alter trigger ' + dm.CDSTriggerNOMETRIGGER.AsString + ' active;');
               dm.CDSTrigger.next;
          end;
          dm.CDSTrigger.close;
          dm.CDSTabela.next;
     end;
     AtivarGatilhos1.Click;}
end;

procedure TFMenu.FormasdePagamentos1Click(Sender: TObject);
begin
     usuario('btnconsultar', 21);
     if Application.FindComponent('FFormaPgto') = nil then
          Application.CreateForm(TFFormaPgto, FFormaPgto)
     else
          FFormaPgto.BringToFront;
end;

procedure TFMenu.EncerramentoContbil1Click(Sender: TObject);
begin
     usuario('btnconsultar', 11);
     if Application.FindComponent('FEncerramentoContabil') = nil then
          Application.CreateForm(TFEncerramentoContabil, FEncerramentoContabil)
     else
          FEncerramentoContabil.BringToFront;
end;

procedure TFMenu.DataEncerramentoContbil1Click(Sender: TObject);
begin
     DM.CDSInstituto.first;
     usuario('btnconsultar', 11);
     if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S' then
     begin
          if application.messagebox(pchar('A data do encerramento contábil é ' + DM.CDSInstitutoINSDATAENCCONTABIL.asstring + ', deseja alterá-la?'), 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
          begin
               DM.CDSInstituto.edit;
               while true do
               begin
                    try
                         DM.CDSInstitutoINSDATAENCCONTABIL.asdatetime := strtodate(inputbox('Atenção', 'Digite a nova da do Encerramento contábil:', datetostr(date)));
                         break;
                    except
                         showmessage('Data Inválida!');
                    end;
               end;
               DM.CDSInstituto.post;
               DM.CDSInstituto.applyupdates(0);
               showmessage('Data Alterada com sucesso! Nova data: ' + DM.CDSInstitutoINSDATAENCCONTABIL.asstring);
          end;
     end;
end;

procedure TFMenu.ConfiguracoesControladoriaClick(Sender: TObject);
begin
     usuario('btnconsultar', 11);
     if Application.FindComponent('FContabil') = nil then
          Application.CreateForm(TFContabil, FContabil)
     else
          FContabil.BringToFront;
end;

procedure TFMenu.GerarContratos1Click(Sender: TObject);
begin
     if dm.CDSUsuario.locate('USULOGIN', lusuario, [loPartialKey, loCaseInsensitive]) then
     begin
         if dm.CDSUsuarioUSUPROFESSOR.AsInteger <> 0 then
         begin
             LanarNotaeFreqdosalunos1.Click;
             exit;
         end;
     end;

     usuario('btnconsultar', 12);
     if Application.FindComponent('FMensalidadeGera') = nil then
          Application.CreateForm(TFMensalidadeGera, FMensalidadeGera)
     else
          FMensalidadeGera.BringToFront;

     fmensalidadegera.lbltitulo.caption := 'Gerar Contratos';
     fmensalidadegera.BtnGerar.visible := false;
     fmensalidadegera.ImgMensalidade.visible := false;
     fmensalidadegera.ImgContrato.visible := true;
end;

procedure TFMenu.GerarMensalidades1Click(Sender: TObject);
begin
     usuario('btnconsultar', 12);
     if Application.FindComponent('FMensalidadeGera') = nil then
          Application.CreateForm(TFMensalidadeGera, FMensalidadeGera)
     else
          FMensalidadeGera.BringToFront;

     fmensalidadegera.lbltitulo.caption := 'Gerar Mensalidades';
     fmensalidadegera.BtnContrato.visible := false;
     fmensalidadegera.ImgContrato.visible := false;
     fmensalidadegera.ImgMensalidade.visible := true;
end;

procedure TFMenu.GerarBancoBiblioteca1Click(Sender: TObject);
begin
     {if not dm.CDSAluno.active then
          dm.CDSAluno.open;

     dm.ADOConnection.Connected := true;
     dm.TUsuario.open;
     while dm.TUsuario.recordcount > 0 do
          dm.TUsuario.delete;
     dm.CDSAluno.first;
     while not dm.CDSAluno.eof do
     begin
          Application.ProcessMessages;
          if dm.CDSAlunoALUSITUACAO.asstring <> 'Ativo' then
          begin
               dm.CDSAluno.next;
               continue;
          end;
          dm.TUsuario.Append;
          //dm.TUsuarioCodUsu.asinteger := dm.CDSAlunoALUCOD.asinteger;
          dm.TUsuarioNomUsu.asstring := dm.CDSAlunoALUNOME.asstring;
          dm.TUsuarioEmpUsu.asstring := 'A' + dm.CDSAlunoALUCOD.asstring;
          dm.TUsuarioRGUsu.asstring := dm.CDSAlunoALUIDENTIDADE.asstring;
          dm.TUsuarioComPar.asstring := dm.CDSAlunoCURNOME.asstring;
          dm.TUsuarioTipUsu.asstring := 'ALUNO';
          dm.TUsuarioEndUsu.asstring := dm.CDSAlunoALUENDERECO.asstring;
          if dm.CDSAlunoALUCEP.asstring <> '' then
               dm.TUsuarioCEP.asstring := dm.CDSAlunoALUCEP.asstring;
          dm.TUsuarioMaiUsu.asstring := dm.CDSAlunoALUEMAIL.asstring;
          dm.TUsuarioTelUsu.asstring := dm.CDSAlunoALUFONE.asstring;
          dm.TUsuarioDiaNas.asstring := inttostr(dayof(dm.CDSAlunoALUNASCIMENTO.asdatetime));
          dm.TUsuarioMesNas.asstring := inttostr(monthof(dm.CDSAlunoALUNASCIMENTO.asdatetime));
          dm.TUsuarioAnoNas.asstring := inttostr(yearof(dm.CDSAlunoALUNASCIMENTO.asdatetime));
          dm.TUsuario.Post;
          dm.CDSAluno.next;
     end;
     showmessage('OK');}
end;

procedure TFMenu.MIDeclaracoesClick(Sender: TObject);
begin
     usuario('BtnImprimir', 1);
     if Application.FindComponent('FDeclaracoesRel') = nil then
          Application.CreateForm(TFDeclaracoesRel, FDeclaracoesRel)
     else
          FDeclaracoesRel.BringToFront;
end;

procedure TFMenu.ModeloDRE1Click(Sender: TObject);
begin                                                                                 
     usuario('BtnImprimir', 11);
     if Application.FindComponent('FDre') = nil then
          Application.CreateForm(TFDre, FDre)
     else
          FDre.BringToFront;
end;

procedure TFMenu.PrevisodePagamento1Click(Sender: TObject);
begin
     usuario('BtnImprimir', 12);
     if Application.FindComponent('FPrevPagamentoRel') = nil then
          Application.CreateForm(TFPrevPagamentoRel, FPrevPagamentoRel)
     else
          FPrevPagamentoRel.BringToFront;
end;

procedure TFMenu.PendenciasClick(Sender: TObject);
begin
     usuario('BtnImprimir', 1);
     if Application.FindComponent('FPendencias') = nil then
          Application.CreateForm(TFPendencias, FPendencias)
     else
          FPendencias.BringToFront;
end;

procedure TFMenu.GerarContratosProfessores1Click(Sender: TObject);
begin
     usuario('btnconsultar', 16);
     if Application.FindComponent('FContratoProfessor') = nil then
          Application.CreateForm(TFContratoProfessor, FContratoProfessor)
     else
          FContratoProfessor.BringToFront;
end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     application.Terminate;
end;

procedure TFMenu.Networking1Click(Sender: TObject);
begin
     usuario('btnconsultar', 22);
     if Application.FindComponent('FNetworking') = nil then
          Application.CreateForm(TFNetworking, FNetworking)
     else
          FNetworking.BringToFront;
end;

procedure TFMenu.Oramentos2Click(Sender: TObject);
begin
     usuario('btnconsultar', 11);
     if Application.FindComponent('FOrcamento') = nil then
          Application.CreateForm(TFOrcamento, FOrcamento)
     else
          FOrcamento.BringToFront;
end;

procedure TFMenu.ServicosFinanceirosClick(Sender: TObject);
begin
     usuario('btnconsultar', 23);
     if Application.FindComponent('FServicoFin') = nil then
          Application.CreateForm(TFServicoFin, FServicoFin)
     else
          FServicoFin.BringToFront;
end;

procedure TFMenu.Identificadores1Click(Sender: TObject);
begin
     usuario('btnconsultar', 24);
     if Application.FindComponent('FIdentificador') = nil then
          Application.CreateForm(TFIdentificador, FIdentificador)
     else
          FIdentificador.BringToFront;
end;

procedure TFMenu.RecibodeLocao1Click(Sender: TObject);
begin
     usuario('btnconsultar', 12);
     if Application.FindComponent('FReciboProfessor') = nil then
          Application.CreateForm(TFReciboProfessorRel, FReciboProfessorRel)
     else
          FReciboProfessorRel.BringToFront;
end;

procedure TFMenu.Editoras1Click(Sender: TObject);
begin
     usuario('btnconsultar', 25);
     if Application.FindComponent('FEditora') = nil then
          Application.CreateForm(TFEditora, FEditora)
     else
          FEditora.BringToFront;
end;

procedure TFMenu.Autores1Click(Sender: TObject);                                             
begin
     usuario('btnconsultar', 26);
     if Application.FindComponent('FAutor') = nil then
          Application.CreateForm(TFAutor, FAutor)
     else
          FEditora.BringToFront;
end;

procedure TFMenu.Assunto1Click(Sender: TObject);
begin
     usuario('btnconsultar', 27);
     if Application.FindComponent('FAssunto') = nil then
          Application.CreateForm(TFAssunto, FAssunto)
     else
          FAssunto.BringToFront;
end;

procedure TFMenu.ipoMaterial1Click(Sender: TObject);
begin
     usuario('btnconsultar', 28);
     if Application.FindComponent('FTipoMaterial') = nil then
          Application.CreateForm(TFTipoMaterial, FTipoMaterial)
     else
          FTipoMaterial.BringToFront;
end;

procedure TFMenu.Materiais1Click(Sender: TObject);
begin
     usuario('btnconsultar', 29);
     if Application.FindComponent('FMaterial') = nil then
          Application.CreateForm(TFMaterial, FMaterial)
     else
          FMaterial.BringToFront;
end;

procedure TFMenu.ransito1Click(Sender: TObject);
begin
     usuario('btnconsultar', 30);
     if Application.FindComponent('FTransito') = nil then
          Application.CreateForm(TFTransito, FTransito)
     else
          FTransito.BringToFront;
end;

procedure TFMenu.ContasaPagar1Click(Sender: TObject);
begin
     usuario('btnconsultar', 31);
     if Application.FindComponent('FContaPagar') = nil then
          Application.CreateForm(TFContaPagar, FContaPagar)
     else
          FContaPagar.BringToFront;
end;

procedure TFMenu.Educacional1Click(Sender: TObject);
begin
     dm.CDSInstituto.First;
     dm.CDSInstituto.Edit;
     dm.CDSInstitutoInsTipoSistema.AsString := BuscaTroca(UpperCase((Sender as TMenuItem).Caption),'&','');
     dm.CDSInstituto.Post;
     dm.CDSInstituto.ApplyUpdates(0);
     TipoSistema := UpperCase(dm.CDSInstitutoInsTipoSistema.AsString);
     FormShow(nil);
end;

procedure TFMenu.ContasaPagar2Click(Sender: TObject);
begin
     usuario('BtnImprimir', 31);
     if Application.FindComponent('FContaPagarRel') = nil then
          Application.CreateForm(TFContaPagarRel, FContaPagarRel)
     else
          FContaPagarRel.BringToFront;
end;

procedure TFMenu.AtualizaroSistema1Click(Sender: TObject);
begin
     if fileexists('Atualizador.exe') then
     begin
          winexec('Atualizador.exe', SW_SHOW);
          close;
     end
     else
         showmessage('Você não possui o atualizador instalado no seu computador, solicite ao suporte técnico.');
end;

procedure TFMenu.Avisos1Click(Sender: TObject);
begin
     usuario('BtnImprimir', 32);
     if Application.FindComponent('FAviso') = nil then
          Application.CreateForm(TFAviso, FAviso)
     else
          FAviso.BringToFront;
end;

procedure TFMenu.GrupodeCursosClick(Sender: TObject);
begin
     usuario('BtnImprimir', 33);
     if Application.FindComponent('FGrupoCurso') = nil then
          Application.CreateForm(TFGrupoCurso, FGrupoCurso)
     else
          FGrupoCurso.BringToFront;
end;

initialization
    RLConsts.SetVersion(3,71,'B');

end.
