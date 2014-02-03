program PosGraduacao;

uses
  Forms,
  Dialogs,
  U_Debug in 'U_Debug.pas',
  Uabout in 'Uabout.pas' {FSobre},
  UCabecalho in 'UCabecalho.pas' {FCabecalho},
  UMenu in 'UMenu.pas' {FMenu},
  UCalendario in 'UCalendario.pas' {FCalendario},
  UAviso in 'UAviso.pas' {FAviso},
  UExecSQL in 'UExecSQL.pas' {FExecSQL},
  UInstituto in 'UInstituto.pas' {FInstituto},
  USenha in 'USenha.pas' {FSenha},
  UDM in 'UDM.pas' {DM: TDataModule},
  UParametro in 'UParametro.pas' {FParametro},
  UContabil in 'UContabil.pas' {FContabil},
  UDre in 'UDre.pas' {FDre},
  UGrupoPro in 'UGrupoPro.pas' {FGrupoPro},
  UServicoFin in 'UServicoFin.pas' {FServicoFin},
  UBanco in 'UBanco.pas' {FBanco},
  UContaPagar in 'UContaPagar.pas' {FContaPagar},
  UHistPadrao in 'UHistPadrao.pas' {FHistPadrao},
  UFormaPgto in 'UFormaPgto.pas' {FFormaPgto},
  UAluno in 'UAluno.pas' {FAluno},
  UNetworking in 'UNetworking.pas' {FNetworking},
  UMaterial in 'UMaterial.pas' {FMaterial},
  UMensalidade in 'UMensalidade.pas' {FMensalidade},
  UPrevPagamentoRel in 'UPrevPagamentoRel.pas' {FPrevPagamentoRel},
  UProfessorRel in 'UProfessorRel.pas' {FProfessorRel},
  UAlunoIndicacaoRel in 'UAlunoIndicacaoRel.pas' {FAlunoIndicacaoRel},
  UEncerramentoContabil in 'UEncerramentoContabil.pas' {FEncerramentoContabil},
  UContaPagarBaixa in 'UContaPagarBaixa.pas' {FcontaPagarBaixa},
  UBalanceteRel in 'UBalanceteRel.pas' {FBalanceteRel},
  UAlunoCursoRel in 'UAlunoCursoRel.pas' {FAlunoCursoRel},
  URazaoDiarioRel in 'URazaoDiarioRel.pas' {FRazaoDiarioRel},
  UPrograma in 'UPrograma.pas' {FPrograma},
  UPendencias in 'UPendencias.pas' {FPendencias},
  UEmail in 'UEmail.pas' {FEmail},
  URelatorio in 'URelatorio.pas' {FRelatorio},
  UPlanoNegocios in 'UPlanoNegocios.pas' {FPlanoNegocios},
  UMensalidadeGera in 'UMensalidadeGera.pas' {FMensalidadeGera},
  UAlunoRel in 'UAlunoRel.pas' {FAlunoRel},
  UCursoRel in 'UCursoRel.pas' {FCursoRel},
  UUsuario in 'UUsuario.pas' {FUsuario},
  UReciboProfessorRel in 'UReciboProfessorRel.pas' {FReciboProfessorRel},
  UAlunoNotaFreq in 'UAlunoNotaFreq.pas' {FAlunoNotaFreq},
  UPlanoConta in 'UPlanoConta.pas' {FPlanoConta},
  UParamEmp in 'UParamEmp.pas' {FParamEmp},
  UContrato in 'UContrato.pas' {FContrato},
  UProfessor in 'UProfessor.pas' {FProfessor},
  UContratoProfessor in 'UContratoProfessor.pas' {FContratoProfessor},
  UDeclaracoesRel in 'UDeclaracoesRel.pas' {FDeclaracoesRel},
  UTipoMaterial in 'UTipoMaterial.pas' {FTipoMaterial},
  UDisciplina in 'UDisciplina.pas' {FDisciplina},
  UContaPagarRel in 'UContaPagarRel.pas' {FContaPagarRel},
  UGrupoCurso in 'UGrupoCurso.pas' {FGrupoCurso},
  UEditora in 'UEditora.pas' {FEditora},
  UAutor in 'UAutor.pas' {FAutor},
  UAssunto in 'UAssunto.pas' {FAssunto},
  UCurso in 'UCurso.pas' {FCurso},
  ULctoContabil in 'ULctoContabil.pas' {FLctoContabil},
  UTransito in 'UTransito.pas' {FTransito},
  UMensalidadeBaixa in 'UMensalidadeBaixa.pas' {FMensalidadeBaixa},
  UMensalidadeRel in 'UMensalidadeRel.pas' {FMensalidadeRel},
  UOrcamento in 'UOrcamento.pas' {FOrcamento},
  UCidade in 'UCidade.pas' {FCidade},
  SendMail in 'SendMail.pas',
  SendMailOptions in 'SendMailOptions.pas' {FormSendMailOptions},
  SelfPrintDefs in 'SelfPrintDefs.pas',
  UFuncoes in 'UFuncoes.pas',
  UThreadExecSql in 'UThreadExecSql.pas',
  UReconcileError in 'UReconcileError.pas' {FReconcileError},
  UCarregando in 'UCarregando.pas' {FCarregando};

{$R *.res}

begin
     AppVersion := '1.0';
     Carregando(True);
     {FSplash := TFsplash.Create(Application);
     fsplash.show;
     FSplash.Update;}
     Application.Initialize;
     Application.ProcessMessages;
     Application.Title := 'Reinandus';
     Application.CreateForm(TDM, DM);
  Application.CreateForm(TFMenu, FMenu);
  //fsplash.Free;
     Application.Run;
end.

     //Application.CreateForm(TFSenha, FSenha);
      {Application.ProcessMessages;
     fsplash.Gauge.Progress := 100;
     Application.ProcessMessages;
     Application.ProcessMessages;}

