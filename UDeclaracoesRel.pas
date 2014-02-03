unit UDeclaracoesRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, DateUtils,
     Buttons, jpeg;

type
     TFDeclaracoesRel = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label4: TLabel;
          Label7: TLabel;
          btnaluno: TSpeedButton;
          txtprofessor: TWSEdit;
          txtaluno: TWSEdit;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          RGModelo: TRadioGroup;
          Label2: TLabel;
          txtcurso: TWSEdit;
          btncurso: TSpeedButton;
          btnprofessor: TSpeedButton;
          txtdata: TWSEdit;
          Label3: TLabel;
          Label5: TLabel;
          txtperiodo: TWSEdit;
          Label6: TLabel;
          btndisciplina: TSpeedButton;
          txtdisciplina: TWSEdit;
          txtnomealuno: TWSEdit;
          txtnomecurso: TWSEdit;
          txtnomeprofessor: TWSEdit;
          txtnomedisciplina: TWSEdit;
          RLReportIR: TRLReport;
          RLBand13: TRLBand;
          RLDBText29: TRLDBText;
          RLDBImage9: TRLDBImage;
          RLDBText30: TRLDBText;
          RLDBText31: TRLDBText;
          RLDBText32: TRLDBText;
          RLDBText33: TRLDBText;
          RLDBText34: TRLDBText;
          RLDBText35: TRLDBText;
          RLBand14: TRLBand;
          MemoIR: TRLMemo;
          RLBand15: TRLBand;
          RLDBImage10: TRLDBImage;
          RLDBRichText5: TRLDBRichText;
          RLSystemInfo7: TRLSystemInfo;
          RLSystemInfo10: TRLSystemInfo;
          RLDraw5: TRLDraw;
          MemoTitulo: TRLMemo;
          RLBand16: TRLBand;
          RLBand17: TRLBand;
          lblcidadedata5: TRLLabel;
          RLLabel9: TRLLabel;
          RLLabel11: TRLLabel;
          RLLabel12: TRLLabel;
          RLLabel13: TRLLabel;
          RLLabel14: TRLLabel;
          RLReportFreq: TRLReport;
          RLBand1: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          RLDBText6: TRLDBText;
          RLDBText28: TRLDBText;
          RLBand3: TRLBand;
          RLLabel1: TRLLabel;
          MemoFreq: TRLMemo;
          lblcidadedata1: TRLLabel;
          lblsecretaria1: TRLLabel;
          RLLabel2: TRLLabel;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          RLReportProf: TRLReport;
          RLBand10: TRLBand;
          RLDBText19: TRLDBText;
          RLDBImage7: TRLDBImage;
          RLDBText20: TRLDBText;
          RLDBText21: TRLDBText;
          RLDBText22: TRLDBText;
          RLDBText23: TRLDBText;
          RLDBText24: TRLDBText;
          RLDBText25: TRLDBText;
          RLBand12: TRLBand;
          RLLabel5: TRLLabel;
          MemoProf: TRLMemo;
          lblcidadedata4: TRLLabel;
          lblcoordenador1: TRLLabel;
          RLLabel10: TRLLabel;
          RLBand11: TRLBand;
          RLDBImage8: TRLDBImage;
          RLDBRichText4: TRLDBRichText;
          RLSystemInfo5: TRLSystemInfo;
          RLSystemInfo6: TRLSystemInfo;
          RLDraw4: TRLDraw;
          RLReportMatricula: TRLReport;
          RLBand7: TRLBand;
          RLDBText13: TRLDBText;
          RLDBImage5: TRLDBImage;
          RLDBText14: TRLDBText;
          RLDBText15: TRLDBText;
          RLDBText16: TRLDBText;
          RLDBText17: TRLDBText;
          RLDBText18: TRLDBText;
          RLDBText26: TRLDBText;
          RLBand9: TRLBand;
          RLLabel4: TRLLabel;
          MemoMatricula: TRLMemo;
          lblcidadedata3: TRLLabel;
          lblsecretaria3: TRLLabel;
          RLLabel8: TRLLabel;
          RLBand8: TRLBand;
          RLDBImage6: TRLDBImage;
          RLDBRichText3: TRLDBRichText;
          RLSystemInfo3: TRLSystemInfo;
          RLSystemInfo4: TRLSystemInfo;
          RLDraw3: TRLDraw;
          CDSIr: TClientDataSet;
          QIr: TSQLQuery;
          DSPIr: TDataSetProvider;
          DSIr: TDataSource;
          RLReportConclusao: TRLReport;
          RLBand4: TRLBand;
          RLDBText7: TRLDBText;
          RLDBImage3: TRLDBImage;
          RLDBText8: TRLDBText;
          RLDBText9: TRLDBText;
          RLDBText10: TRLDBText;
          RLDBText11: TRLDBText;
          RLDBText12: TRLDBText;
          RLBand5: TRLBand;
          RLDBImage4: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLBand6: TRLBand;
          RLLabel3: TRLLabel;
          MemoConclusao: TRLMemo;
          lblcidadedata2: TRLLabel;
          lblcoordenador: TRLLabel;
          RLLabel6: TRLLabel;
          RLDBText27: TRLDBText;
          QIrMENNUMERO: TIntegerField;
          QIrMENVALOR: TFloatField;
          QIrMENDESCONTO: TFloatField;
          QIrMENLIQUIDO: TFloatField;
          RLDBText36: TRLDBText;
          RLDBText37: TRLDBText;
          RLDBText38: TRLDBText;
          RLDBText39: TRLDBText;
          CDSIrMENNUMERO: TIntegerField;
          CDSIrMENVALOR: TFloatField;
          CDSIrMENDESCONTO: TFloatField;
          CDSIrMENLIQUIDO: TFloatField;
          RLDBResult1: TRLDBResult;
          RLDBResult2: TRLDBResult;
          RLDBResult3: TRLDBResult;
          RLLabel15: TRLLabel;
          RLLabel16: TRLLabel;
          CDSIrTotal: TAggregateField;
          chkmonografia: TCheckBox;
          QIrMENDATAPAGAMENTO: TDateField;
          CDSIrMENDATAPAGAMENTO: TDateField;
          txtha: TWSEdit;
          Label1: TLabel;
          txtsecretario: TWSEdit;
          Label8: TLabel;
          lblcoordenador2: TRLLabel;
          RLLabel18: TRLLabel;
          RLLabel17: TRLLabel;
          lblcoordenador3: TRLLabel;
          lblcoordenador4: TRLLabel;
          RLLabel20: TRLLabel;
          RLReportOrientacao: TRLReport;
          RLBand18: TRLBand;
          RLDBText40: TRLDBText;
          RLDBImage11: TRLDBImage;
          RLDBText41: TRLDBText;
          RLDBText42: TRLDBText;
          RLDBText43: TRLDBText;
          RLDBText44: TRLDBText;
          RLDBText45: TRLDBText;
          RLDBText46: TRLDBText;
          RLBand19: TRLBand;
          MemoOrientacao: TRLMemo;
          RLMemo2: TRLMemo;
          RLBand20: TRLBand;
          RLDBImage12: TRLDBImage;
          RLDBRichText6: TRLDBRichText;
          RLSystemInfo1: TRLSystemInfo;
          RLSystemInfo2: TRLSystemInfo;
          RLDraw2: TRLDraw;
          RLReportReativacao: TRLReport;
          RLBand21: TRLBand;
          RLDBText47: TRLDBText;
          RLDBImage13: TRLDBImage;
          RLDBText48: TRLDBText;
          RLDBText49: TRLDBText;
          RLDBText50: TRLDBText;
          RLDBText51: TRLDBText;
          RLDBText52: TRLDBText;
          RLDBText53: TRLDBText;
          RLBand23: TRLBand;
          RLDBImage14: TRLDBImage;
          RLDBRichText7: TRLDBRichText;
          RLSystemInfo11: TRLSystemInfo;
          RLSystemInfo12: TRLSystemInfo;
          RLDraw6: TRLDraw;
          RLBand22: TRLBand;
          MemoReativacao: TRLMemo;
          RLMemo3: TRLMemo;
          lblcidadedata6: TRLLabel;
          RLLabel21: TRLLabel;
          lblcoordenador6: TRLLabel;
          RLLabel23: TRLLabel;
          RLReportTrancamento: TRLReport;
          RLBand24: TRLBand;
          RLDBText54: TRLDBText;
          RLDBImage15: TRLDBImage;
          RLDBText55: TRLDBText;
          RLDBText56: TRLDBText;
          RLDBText57: TRLDBText;
          RLDBText58: TRLDBText;
          RLDBText59: TRLDBText;
          RLDBText60: TRLDBText;
          RLBand25: TRLBand;
          RLDBImage16: TRLDBImage;
          RLDBRichText8: TRLDBRichText;
          RLSystemInfo13: TRLSystemInfo;
          RLSystemInfo14: TRLSystemInfo;
          RLDraw7: TRLDraw;
          RLBand26: TRLBand;
          MemoTrancamento: TRLMemo;
          RLMemo4: TRLMemo;
          lblcidadedata7: TRLLabel;
          RLLabel22: TRLLabel;
          lblcoordenador7: TRLLabel;
          RLLabel25: TRLLabel;
    RLImage1: TRLImage;
    RLImage2: TRLImage;
    RLImage4: TRLImage;
    RLImage6: TRLImage;
    RLImage7: TRLImage;
    RLImage8: TRLImage;
    QMono: TSQLQuery;
    DSPMono: TDataSetProvider;
    CDSMono: TClientDataSet;
    DSMono: TDataSource;
    QMonoCURNOME: TStringField;
    QMonoALUNOME: TStringField;
    QMonoALUMONOTITULO: TStringField;
    QMonoALUMONODATA: TDateField;
    QMonoALUMONONOTA: TFloatField;
    RLBand27: TRLBand;
    RLBand28: TRLBand;
    RLImage3: TRLImage;
    lblcidade5: TRLLabel;
    RLLabel28: TRLLabel;
    lblcoordenador5: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText61: TRLDBText;
    CDSMonoCURNOME: TStringField;
    CDSMonoALUNOME: TStringField;
    CDSMonoALUMONOTITULO: TStringField;
    CDSMonoALUMONODATA: TDateField;
    CDSMonoALUMONONOTA: TFloatField;
    RLDBText62: TRLDBText;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnalunoClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure txtcursoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnprofessorClick(Sender: TObject);
          procedure btncursoClick(Sender: TObject);
          procedure btndisciplinaClick(Sender: TObject);
          procedure txtalunoExit(Sender: TObject);
          procedure txtcursoExit(Sender: TObject);
          procedure txtprofessorExit(Sender: TObject);
          procedure txtdisciplinaExit(Sender: TObject);
          procedure RLBand14BeforePrint(Sender: TObject; var PrintIt: Boolean);
          procedure RGModeloClick(Sender: TObject);
          procedure txtsecretarioKeyPress(Sender: TObject; var Key: Char);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FDeclaracoesRel: TFDeclaracoesRel;

implementation

uses UDM, UMenu, UProfessor, UAluno, UCurso, UDisciplina, UFuncoes;

{$R *.dfm}

procedure TFDeclaracoesRel.BtnImprimirClick(Sender: TObject);
begin
     if (RGModelo.itemindex < 3) then
     begin
          if not dm.CDSAlunoLkp.active then
               dm.CDSAlunoLkp.open;

          try
               strtoint(txtaluno.text);
          except
               showmessage('Campo aluno inválido!');
               txtaluno.setfocus;
               exit;
          end;

          if not dm.CDSAlunoLkp.locate('ALUCOD', txtaluno.text, []) then
          begin
               showmessage('Aluno não cadastrado!');
               txtaluno.setfocus;
               exit;
          end;
     end;

     if rgmodelo.itemindex <> 5 then
     begin
          if not dm.CDSCurso.active then
               dm.CDSCurso.open;

          try
               strtoint(txtcurso.text);
          except
               showmessage('Campo curso inválido!');
               txtcurso.setfocus;
               exit;
          end;

          if not dm.CDSCurso.locate('CURCOD', txtcurso.text, []) then
          begin
               showmessage('Curso não cadastrado!');
               txtcurso.setfocus;
               exit;
          end;
     end;

     if rgmodelo.itemindex = 0 then
     begin
          if trim(txtdata.text) = '' then
          begin
               showmessage('Campo data obrigatório!');
               txtdata.setfocus;
               exit;
          end;
          if trim(txtperiodo.text) = '' then
          begin
               showmessage('Campo período obrigatório!');
               txtperiodo.setfocus;
               exit;
          end;

          MemoFreq.Lines.Text := BuscaTroca(MemoFreq.Lines.Text, ':aluno', dm.CDSAlunoLkpALUNOME.asstring);
          MemoFreq.Lines.Text := BuscaTroca(MemoFreq.Lines.Text, ':curso', dm.CDSAlunoLkpCURNOME.asstring);
          MemoFreq.Lines.Text := BuscaTroca(MemoFreq.Lines.Text, ':data', txtdata.text);
          MemoFreq.Lines.Text := BuscaTroca(MemoFreq.Lines.Text, ':periodo', txtperiodo.text);
          lblcidadedata1.Caption := dm.CDSInstitutoINSCIDADE.asstring + ', ' + FormatDateTime('dd" de "mmmm" de "yyyy', date) + '.';
          lblsecretaria1.Caption := dm.CDSCursoCURSECRETARIO.asstring;
          dm.CDSProfessor.locate('PROCOD', dm.CDSCursoCURCOORDENADOR.asstring, []);
          lblcoordenador4.Caption := dm.CDSProfessorPRONOME.asstring;
          RLReportFreq.PreviewModal;
     end;

     if rgmodelo.itemindex = 1 then
     begin
          MemoConclusao.Lines.Text := BuscaTroca(MemoConclusao.Lines.Text, ':aluno', dm.CDSAlunoLkpALUNOME.asstring);
          MemoConclusao.Lines.Text := BuscaTroca(MemoConclusao.Lines.Text, ':curso', dm.CDSAlunoLkpCURNOME.asstring);
          MemoConclusao.Lines.Text := BuscaTroca(MemoConclusao.Lines.Text, ':ha', dm.CDSCursoCURCARGA.asstring);
          if chkmonografia.Checked
               then MemoConclusao.Lines.Text := BuscaTroca(MemoConclusao.Lines.Text, ':monografia', '. Informamos ainda que o(a) aluno(a) está na fase de desenvolvimento da monografia (TCC).')
          else MemoConclusao.Lines.Text := BuscaTroca(MemoConclusao.Lines.Text, ':monografia', '.');

          lblcidadedata2.Caption := dm.CDSInstitutoINSCIDADE.asstring + ', ' + FormatDateTime('dd" de "mmmm" de "yyyy', date) + '.';
          dm.CDSProfessor.locate('PROCOD', dm.CDSCursoCURCOORDENADOR.asstring, []);

          lblcoordenador.Caption := dm.CDSProfessorPRONOME.asstring;

          RLReportConclusao.PreviewModal;
     end;

     if rgmodelo.itemindex = 2 then
     begin
          if trim(txtperiodo.text) = '' then
          begin
               showmessage('Campo período obrigatório!');
               txtperiodo.setfocus;
               exit;
          end;

          MemoMatricula.Lines.Text := BuscaTroca(MemoMatricula.Lines.Text, ':aluno', dm.CDSAlunoLkpALUNOME.asstring);
          MemoMatricula.Lines.Text := BuscaTroca(MemoMatricula.Lines.Text, ':curso', dm.CDSAlunoLkpCURNOME.asstring);
          MemoMatricula.Lines.Text := BuscaTroca(MemoMatricula.Lines.Text, ':data', txtperiodo.Text);
          lblcidadedata3.Caption := dm.CDSInstitutoINSCIDADE.asstring + ', ' + FormatDateTime('dd" de "mmmm" de "yyyy', date) + '.';
          lblsecretaria3.Caption := dm.CDSCursoCURSECRETARIO.asstring;
          dm.CDSProfessor.Locate('PROCOD', dm.CDSCursoCURCOORDENADOR.asinteger, []);
          lblcoordenador3.Caption := dm.CDSProfessorPRONOME.asstring;

          RLReportMatricula.PreviewModal;
     end;

     if rgmodelo.itemindex = 3 then
     begin
          if not dm.CDSProfessor.active then
               dm.CDSProfessor.open;

          try
               strtoint(txtprofessor.text);
          except
               showmessage('Campo professor inválido!');
               txtprofessor.setfocus;
               exit;
          end;

          if not dm.CDSProfessor.locate('PROCOD', txtprofessor.text, []) then
          begin
               showmessage('Professor não cadastrado!');
               txtprofessor.setfocus;
               exit;
          end;

          try
               strtoint(txtdisciplina.text);
          except
               showmessage('Campo disciplina inválido!');
               txtdisciplina.setfocus;
               exit;
          end;

          if not dm.CDSDisciplina.locate('DISCOD', txtdisciplina.text, []) then
          begin
               showmessage('Disciplina não cadastrada!');
               txtdisciplina.setfocus;
               exit;
          end;

          if trim(txtperiodo.text) = '' then
          begin
               showmessage('Campo período obrigatório!');
               txtperiodo.setfocus;
               exit;
          end;

          dm.CDSParamEmp.first;

          MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':empresa', dm.CDSParamEmpEMPNOME.asstring);
          MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':endereco', dm.CDSParamEmpEMPENDERECO.asstring);
          MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':numero', dm.CDSParamEmpEMPNUMERO.asstring);
          MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':bairro', dm.CDSParamEmpEMPBAIRRO.asstring);
          MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':cidade', dm.CDSParamEmpCIDNOME.asstring);
          dm.CDSProfessor.Locate('PROCOD', dm.CDSCursoCURCOORDENADOR.asinteger, []);
          MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':coordenador', dm.CDSProfessorPRONOME.asstring);

          dm.CDSProfessor.Locate('PROCOD', txtprofessor.text, []);
          MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':professor', dm.CDSProfessorPRONOME.asstring);
          dm.CDSDisciplina.Locate('DISCOD', txtdisciplina.text, []);
          MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':disciplina', dm.CDSDisciplinaDISNOME.AsString);
          dm.CDSCursoDisciplina.locate('CURDISCURSO;CURDISDISCIPLINA;CURDISPROFESSOR', vararrayof([txtcurso.text, txtdisciplina.text, txtprofessor.Text]), []);
          //MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':ha', dm.CDSCursoDisciplinaCURDISHORASAULA.asstring);
          MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':ha', txtha.text);
          MemoProf.Lines.Text := BuscaTroca(MemoProf.Lines.Text, ':periodo', txtperiodo.Text);
          lblcidadedata4.Caption := dm.CDSInstitutoINSCIDADE.asstring + ', ' + FormatDateTime('dd" de "mmmm" de "yyyy', date) + '.';
          dm.CDSProfessor.Locate('PROCOD', dm.CDSCursoCURCOORDENADOR.asinteger, []);
          lblcoordenador1.Caption := dm.CDSProfessorPRONOME.asstring;

          RLReportProf.PreviewModal;
     end;
     if rgmodelo.itemindex = 4 then
     begin
          try
               strtoint(txtdata.text);
          except
               showmessage('Campo Ano inválido, digite ' + inttostr(yearof(date)) + ' por exemplo!');
               txtdata.text;
               exit;
          end;
          CDSIr.close;
          with QIr.SQL do
          begin
               clear;
               add('select mennumero, MENDATAPAGAMENTO, menvalor, mendesconto, menliquido from tmensalidade');
               add('where menaluno = ' + txtaluno.text);
               add('and MENDATAPAGAMENTO between :ini and :fim'); //POG
               add('Order By MenNumero');
          end;
          QIr.ParamByName('ini').AsDate := strtodate('01/01/' + txtdata.text);
          QIr.ParamByName('fim').AsDate := strtodate('31/12/' + txtdata.text);
          CDSIr.open;
          MemoIR.Lines.Text := BuscaTroca(MemoIR.Lines.Text, ':empresa', dm.CDSParamEmpEMPNOME.asstring);
          //MemoIR.Lines.Text := BuscaTroca(MemoIR.Lines.Text, ':cnpj', dm.CDSParamEmpEMPCPFCNPJ.asstring);
          dm.CDSProfessor.Locate('PROCOD', dm.CDSCursoCURCOORDENADOR.asinteger, []);
          MemoIR.Lines.Text := BuscaTroca(MemoIR.Lines.Text, ':coordenador', dm.CDSProfessorPRONOME.asstring);
          MemoIR.Lines.Text := BuscaTroca(MemoIR.Lines.Text, ':aluno', dm.CDSAlunoLkpALUNOME.asstring);
          MemoIR.Lines.Text := BuscaTroca(MemoIR.Lines.Text, ':curso', dm.CDSCursoCURNOME.asstring);
          MemoIR.Lines.Text := BuscaTroca(MemoIR.Lines.Text, ':valortotal', CDSIrTotal.DisplayText);
          MemoIR.Lines.Text := BuscaTroca(MemoIR.Lines.Text, ':ano', dm.CDSCursoCURTURMA.asstring);

          lblcidadedata5.Caption := dm.CDSInstitutoINSCIDADE.asstring + ', ' + FormatDateTime('dd" de "mmmm" de "yyyy', date) + '.';
          lblcoordenador2.caption := dm.CDSProfessorPRONOME.asstring;
          RLReportIR.PreviewModal;
          CDSIr.close;
     end;

     if rgmodelo.itemindex = 5 then
     begin
          if trim(txtperiodo.text) = '' then
          begin
               showmessage('Campo período obrigatório!');
               txtperiodo.setfocus;
               exit;
          end;
          try
               strtoint(txtprofessor.text);
          except
               showmessage('Campo professor inválido!');
               txtprofessor.setfocus;
               exit;
          end;

          if not dm.CDSProfessor.locate('PROCOD', txtprofessor.text, []) then
          begin
               showmessage('Professor não cadastrado!');
               txtprofessor.setfocus;
               exit;
          end;

          CDSMOno.Close;
          with QMono.SQL do
          begin
              Clear;
              Add('select curnome, alunome, alumonotitulo, alumonodata, alumononota');
              Add('from taluno inner join tcurso on alucurso = curcod');
              Add('where aluorientador = ' + txtprofessor.text);
              if txtaluno.Text <> '' then
                  add('and alucod = ' + txtaluno.text);
              if txtcurso.Text <> '' then
                  add('and curcod = ' + txtcurso.text);
              Add('order by alunome');
          end;
          CDSMono.Open;

          dm.CDSParamEmp.first;
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':empresa', dm.CDSParamEmpEMPNOME.asstring);
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':endereco', dm.CDSParamEmpEMPENDERECO.asstring);
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':numero', dm.CDSParamEmpEMPNUMERO.asstring);
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':bairro', dm.CDSParamEmpEMPBAIRRO.asstring);
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':cidade', dm.CDSParamEmpCIDNOME.asstring);
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':periodo', txtperiodo.Text);
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':cnpj', dm.CDSParamEmpEMPCPFCNPJ.asstring);
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':professor', dm.CDSProfessorPRONOME.asstring);

          dm.CDSProfessor.Locate('PROCOD', dm.CDSCursoCURCOORDENADOR.asinteger, []);
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':coordenador', dm.CDSProfessorPRONOME.asstring);
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':aluno', dm.CDSAlunoLkpALUNOME.asstring);
          MemoOrientacao.Lines.Text := BuscaTroca(MemoOrientacao.Lines.Text, ':monografia', dm.CDSAlunoLkpALUMONOTITULO.asstring);

          lblcidade5.Caption := dm.CDSInstitutoINSCIDADE.asstring + ', ' + FormatDateTime('dd" de "mmmm" de "yyyy', date) + '.';
          lblcoordenador5.caption := dm.CDSProfessorPRONOME.asstring;
          RLReportOrientacao.PreviewModal;
     end;
     if rgmodelo.itemindex = 6 then
     begin
          if trim(txtdata.text) = '' then
          begin
               showmessage('Campo data obrigatório!');
               txtdata.setfocus;
               exit;
          end;

          dm.CDSParamEmp.first;
          MemoReativacao.Lines.Text := BuscaTroca(MemoReativacao.Lines.Text, ':aluno', dm.CDSAlunoALUNOME.asstring);
          MemoReativacao.Lines.Text := BuscaTroca(MemoReativacao.Lines.Text, ':data', txtdata.Text);

          dm.CDSProfessor.Locate('PROCOD', dm.CDSCursoCURCOORDENADOR.asinteger, []);

          lblcidadedata6.Caption := dm.CDSInstitutoINSCIDADE.asstring + ', ' + FormatDateTime('dd" de "mmmm" de "yyyy', date) + '.';
          lblcoordenador6.caption := dm.CDSProfessorPRONOME.asstring;
          RLReportReativacao.PreviewModal;
     end;
     if rgmodelo.itemindex = 7 then
     begin
          if trim(txtdata.text) = '' then
          begin
               showmessage('Campo data obrigatório!');
               txtdata.setfocus;
               exit;
          end;

          dm.CDSParamEmp.first;
          MemoTrancamento.Lines.Text := BuscaTroca(MemoTrancamento.Lines.Text, ':aluno', dm.CDSAlunoALUNOME.asstring);
          MemoTrancamento.Lines.Text := BuscaTroca(MemoTrancamento.Lines.Text, ':curso', dm.CDSCursoCURNOME.asstring);
          MemoTrancamento.Lines.Text := BuscaTroca(MemoTrancamento.Lines.Text, ':data', txtdata.Text);

          dm.CDSProfessor.Locate('PROCOD', dm.CDSCursoCURCOORDENADOR.asinteger, []);

          lblcidadedata7.Caption := dm.CDSInstitutoINSCIDADE.asstring + ', ' + FormatDateTime('dd" de "mmmm" de "yyyy', date) + '.';
          lblcoordenador7.caption := dm.CDSProfessorPRONOME.asstring;
          RLReportTrancamento.PreviewModal;
     end;
end;

procedure TFDeclaracoesRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFDeclaracoesRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFDeclaracoesRel.FormKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 27) and (btnsair.enabled = true) then
          btnsair.click;
     if (Key = VK_F8) and (btnimprimir.enabled = true) then
          btnimprimir.Click;
     if (key = 13) or (key = 40) then
          Perform(WM_nextDlgCtl, 0, 0);
     if (key = 38) then
          Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFDeclaracoesRel.btnalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          faluno.Close;

     try
          faluno := tfaluno.create(self);
          FAluno.FormStyle := fsNormal;
          faluno.Visible := false;
          usuario('btnconsultar', faluno.wsinformacao.programa);
          faluno.showmodal;
          txtaluno.text := dm.cdsalunoalucod.asstring;
     finally
          faluno.release;
          faluno := nil;
          faluno.free;
     end;
end;

procedure TFDeclaracoesRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
end;

procedure TFDeclaracoesRel.txtcursoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtaluno then
               btnaluno.click;
          if sender = txtcurso then
               btncurso.click;
          if sender = txtprofessor then
               btnprofessor.click;
          if sender = txtdisciplina then
               btndisciplina.click;
     end;
end;

procedure TFDeclaracoesRel.btnprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          fprofessor.Close;

     try
          fprofessor := tfprofessor.create(self);
          FProfessor.FormStyle := fsNormal;
          fprofessor.Visible := false;
          usuario('btnconsultar', fprofessor.wsinformacao.programa);
          fprofessor.showmodal;
          txtprofessor.text := dm.cdsprofessorprocod.asstring;
     finally
          fprofessor.release;
          fprofessor := nil;
          fprofessor.free;
     end;
end;

procedure TFDeclaracoesRel.btncursoClick(Sender: TObject);
begin
     if Application.FindComponent('FCurso') <> nil then
          fcurso.Close;

     try
          fcurso := tfcurso.create(self);
          FCurso.FormStyle := fsNormal;
          fcurso.Visible := false;
          usuario('btnconsultar', fcurso.wsinformacao.programa);
          fcurso.showmodal;
          txtcurso.text := dm.cdscursocurcod.asstring;
     finally
          fcurso.release;
          fcurso := nil;
          fcurso.free;
     end;

end;

procedure TFDeclaracoesRel.btndisciplinaClick(Sender: TObject);
begin
     if Application.FindComponent('FDisciplina') <> nil then
          fdisciplina.Close;

     try
          fdisciplina := tfdisciplina.create(self);
          FDisciplina.FormStyle := fsNormal;
          FDisciplina.Visible := false;
          usuario('btnconsultar', fdisciplina.wsinformacao.programa);
          fdisciplina.showmodal;
          txtdisciplina.text := dm.CDSDisciplinaDISCOD.asstring;
     finally
          fdisciplina.release;
          fdisciplina := nil;
          fdisciplina.free;
     end;

end;

procedure TFDeclaracoesRel.txtalunoExit(Sender: TObject);
begin
     txtnomealuno.clear;
     if trim(txtaluno.Text) <> '' then
     begin
          try
               strtoint(txtaluno.text);
          except
               txtnomealuno.text := 'Campo Aluno Inválido!';
               txtaluno.setfocus;
               exit;
          end;
          if not dm.CDSAlunoLkp.active then
               dm.CDSAlunoLkp.open;
          if dm.CDSAlunoLkp.Locate('ALUCOD', txtaluno.text, []) then
          begin
               txtnomealuno.text := dm.CDSAlunoLkpALUNOME.asstring;
               txtcurso.Text := dm.cdsalunoLkpalucurso.asstring;
               txtperiodo.text := dm.CDSAlunoLkpALUCURSOINICIO.asstring + ' a ' + dm.CDSAlunoLkpALUCURSOFIM.asstring;
               txtcursoExit(nil);
          end
          else
          begin
               txtnomealuno.text := 'Aluno não cadastrado!';
               txtaluno.setfocus;
               exit;
          end;
     end;
end;

procedure TFDeclaracoesRel.txtcursoExit(Sender: TObject);
begin
     txtnomecurso.clear;
     if trim(txtcurso.Text) <> '' then
     begin
          try
               strtoint(txtcurso.text);
          except
               txtnomecurso.text := 'Campo Curso Inválido!';
               txtcurso.setfocus;
               exit;
          end;
          if not dm.CDSCurso.active then
               dm.CDSCurso.open;
          if dm.CDSCurso.Locate('CURCOD', txtcurso.text, []) then
          begin
               txtnomecurso.text := dm.CDSCursoCURNOME.AsString;
          end
          else
          begin
               txtnomecurso.text := 'Curso não Cadastrado!';
               txtcurso.setfocus;
               exit;
          end;
     end;
end;

procedure TFDeclaracoesRel.txtprofessorExit(Sender: TObject);
begin
     txtnomeprofessor.clear;
     if trim(txtprofessor.Text) <> '' then
     begin
          try
               strtoint(txtprofessor.text);
          except
               txtnomeprofessor.text := 'Campo Professor Inválido!';
               txtprofessor.setfocus;
               exit;
          end;
          if not dm.CDSProfessor.active then
               dm.CDSProfessor.open;
          if dm.CDSProfessor.Locate('PROCOD', txtprofessor.text, []) then
          begin
               txtnomeprofessor.text := dm.CDSProfessorPRONOME.AsString;
          end
          else
          begin
               txtnomeprofessor.text := 'Professor não Cadastrado!';
               txtprofessor.setfocus;
               exit;
          end;
     end;
end;

procedure TFDeclaracoesRel.txtdisciplinaExit(Sender: TObject);
begin
     txtnomedisciplina.clear;
     if trim(txtdisciplina.Text) <> '' then
     begin
          try
               strtoint(txtdisciplina.text);
          except
               txtnomedisciplina.text := 'Campo Disciplina Inválido!';
               txtdisciplina.setfocus;
               exit;
          end;
          if not dm.CDSdisciplina.active then
               dm.CDSdisciplina.open;
          if dm.CDSdisciplina.Locate('DISCOD', txtdisciplina.text, []) then
          begin
               txtnomedisciplina.text := dm.CDSDisciplinaDISNOME.AsString;
          end
          else
          begin
               txtnomedisciplina.text := 'Disciplina não Cadastrada!';
               txtdisciplina.setfocus;
               exit;
          end;
     end;
end;

procedure TFDeclaracoesRel.RLBand14BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     {memotitulo.lines.Clear;
     memotitulo.lines.add('D E C L A R A Ç Ã O   I R - ' + txtdata.text);
     memotitulo.lines.add('DESPESAS COM MENSALIDADES');
     memotitulo.lines.add(dm.CDSParamEmpEMPNOME.asstring);}
end;

procedure TFDeclaracoesRel.RGModeloClick(Sender: TObject);
begin
     chkmonografia.Enabled := RGModelo.ItemIndex = 1;
end;

procedure TFDeclaracoesRel.txtsecretarioKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

end.
