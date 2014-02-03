unit UPrevPagamentoRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask,
     WSMaskEdit, dateutils, Buttons;

type
     TFPrevPagamentoRel = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
          btnaluno: TSpeedButton;
          txtaluno: TWSEdit;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          Label2: TLabel;
          txtcurso: TWSEdit;
          btncurso: TSpeedButton;
          RGModelo: TRadioGroup;
          Label3: TLabel;
          txtano: TWSMaskEdit;
          DSCurso: TDataSource;
          CDSCurso: TClientDataSet;
          DSPCurso: TDataSetProvider;
          QCurso: TSQLQuery;
          RLReportCurso: TRLReport;
          RLBand32: TRLBand;
          RLLabel44: TRLLabel;
          RLBand33: TRLBand;
          RLDBText57: TRLDBText;
          RLDBImage10: TRLDBImage;
          RLDBText58: TRLDBText;
          RLDBText59: TRLDBText;
          RLDBText60: TRLDBText;
          RLDBText61: TRLDBText;
          RLBand34: TRLBand;
          RLLabel45: TRLLabel;
          RLLabel48: TRLLabel;
          RLLabel50: TRLLabel;
          RLLabel52: TRLLabel;
          RLBand38: TRLBand;
          RLLabel55: TRLLabel;
          RLDBResult38: TRLDBResult;
          RLDBResult41: TRLDBResult;
          RLDBResult42: TRLDBResult;
          RLBand35: TRLBand;
          RLDBText63: TRLDBText;
          RLDBText66: TRLDBText;
          RLDBText68: TRLDBText;
          RLDBText70: TRLDBText;
          QAluno: TSQLQuery;
          DSPAluno: TDataSetProvider;
          CDSAluno: TClientDataSet;
          DSAluno: TDataSource;
          RLReportAluno: TRLReport;
          RLBand37: TRLBand;
          RLLabel46: TRLLabel;
          RLBand39: TRLBand;
          RLDBText64: TRLDBText;
          RLDBImage12: TRLDBImage;
          RLDBText65: TRLDBText;
          RLDBText67: TRLDBText;
          RLDBText69: TRLDBText;
          RLDBText71: TRLDBText;
          RLBand40: TRLBand;
          RLLabel47: TRLLabel;
          RLBand41: TRLBand;
          RLLabel54: TRLLabel;
          RLSystemInfo1: TRLSystemInfo;
          RLSystemInfo2: TRLSystemInfo;
          QCursoCURSOCOD: TIntegerField;
          QCursoCURSONOME: TStringField;
          QCursoJANE: TFloatField;
          QCursoFEVE: TFloatField;
          QCursoMARC: TFloatField;
          QCursoABRI: TFloatField;
          QCursoMAIO: TFloatField;
          QCursoJUNH: TFloatField;
          QCursoJULH: TFloatField;
          QCursoAGOS: TFloatField;
          QCursoSETE: TFloatField;
          QCursoOUTU: TFloatField;
          QCursoNOVE: TFloatField;
          QCursoDEZE: TFloatField;
          CDSCursoCURSOCOD: TIntegerField;
          CDSCursoCURSONOME: TStringField;
          CDSCursoJANE: TFloatField;
          CDSCursoFEVE: TFloatField;
          CDSCursoMARC: TFloatField;
          CDSCursoABRI: TFloatField;
          CDSCursoMAIO: TFloatField;
          CDSCursoJUNH: TFloatField;
          CDSCursoJULH: TFloatField;
          CDSCursoAGOS: TFloatField;
          CDSCursoSETE: TFloatField;
          CDSCursoOUTU: TFloatField;
          CDSCursoNOVE: TFloatField;
          CDSCursoDEZE: TFloatField;
          QCursoTOTAL: TFloatField;
          CDSCursoTOTAL: TFloatField;
          RLLabel1: TRLLabel;
          RLLabel2: TRLLabel;
          RLLabel3: TRLLabel;
          RLLabel4: TRLLabel;
          RLLabel5: TRLLabel;
          RLLabel6: TRLLabel;
          RLLabel7: TRLLabel;
          RLLabel8: TRLLabel;
          RLLabel9: TRLLabel;
          RLDBText1: TRLDBText;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          RLDBText6: TRLDBText;
          RLDBText7: TRLDBText;
          RLDBText8: TRLDBText;
          RLDBText9: TRLDBText;
          RLDBResult1: TRLDBResult;
          RLDBResult2: TRLDBResult;
          RLDBResult3: TRLDBResult;
          RLDBResult4: TRLDBResult;
          RLDBResult5: TRLDBResult;
          RLDBResult6: TRLDBResult;
          RLDBResult7: TRLDBResult;
          RLDBResult8: TRLDBResult;
          RLDBResult9: TRLDBResult;
          RLDBText10: TRLDBText;
          RLLabel10: TRLLabel;
          RLDBResult10: TRLDBResult;
          RLLabel11: TRLLabel;
          RLLabel12: TRLLabel;
          RLLabel13: TRLLabel;
          RLLabel14: TRLLabel;
          RLLabel15: TRLLabel;
          RLLabel16: TRLLabel;
          RLLabel17: TRLLabel;
          RLLabel18: TRLLabel;
          RLLabel19: TRLLabel;
          RLLabel20: TRLLabel;
          RLLabel21: TRLLabel;
          RLLabel22: TRLLabel;
          RLLabel23: TRLLabel;
          RLLabel24: TRLLabel;
          RLLabel25: TRLLabel;
          QAlunoCURSONOME: TStringField;
          QAlunoALUNOCOD: TIntegerField;
          QAlunoALUNONOME: TStringField;
          QAlunoALUCURSOINICIO: TDateField;
          QAlunoCIDADE: TStringField;
          QAlunoJANE: TFloatField;
          QAlunoFEVE: TFloatField;
          QAlunoMARC: TFloatField;
          QAlunoABRI: TFloatField;
          QAlunoMAIO: TFloatField;
          QAlunoJUNH: TFloatField;
          QAlunoJULH: TFloatField;
          QAlunoAGOS: TFloatField;
          QAlunoSETE: TFloatField;
          QAlunoOUTU: TFloatField;
          QAlunoNOVE: TFloatField;
          QAlunoDEZE: TFloatField;
          QAlunoTOTAL: TFloatField;
          CDSAlunoCURSONOME: TStringField;
          CDSAlunoALUNOCOD: TIntegerField;
          CDSAlunoALUNONOME: TStringField;
          CDSAlunoALUCURSOINICIO: TDateField;
          CDSAlunoCIDADE: TStringField;
          CDSAlunoJANE: TFloatField;
          CDSAlunoFEVE: TFloatField;
          CDSAlunoMARC: TFloatField;
          CDSAlunoABRI: TFloatField;
          CDSAlunoMAIO: TFloatField;
          CDSAlunoJUNH: TFloatField;
          CDSAlunoJULH: TFloatField;
          CDSAlunoAGOS: TFloatField;
          CDSAlunoSETE: TFloatField;
          CDSAlunoOUTU: TFloatField;
          CDSAlunoNOVE: TFloatField;
          CDSAlunoDEZE: TFloatField;
          CDSAlunoTOTAL: TFloatField;
          QAlunoCURSO_ALUNO: TStringField;
          CDSAlunoCURSO_ALUNO: TStringField;
          RLDBResult11: TRLDBResult;
          RLDBResult12: TRLDBResult;
          RLDBResult13: TRLDBResult;
          RLDBResult14: TRLDBResult;
          RLDBResult15: TRLDBResult;
          RLDBResult16: TRLDBResult;
          RLDBResult17: TRLDBResult;
          RLDBResult18: TRLDBResult;
          RLDBResult19: TRLDBResult;
          RLDBResult20: TRLDBResult;
          RLDBResult21: TRLDBResult;
          RLDBResult22: TRLDBResult;
          RLDBResult23: TRLDBResult;
          RLGroup1: TRLGroup;
          RLBand42: TRLBand;
          RLDBText73: TRLDBText;
          RLDBText11: TRLDBText;
          RLDBText12: TRLDBText;
          RLDBText13: TRLDBText;
          RLDBText14: TRLDBText;
          RLDBText15: TRLDBText;
          RLDBText16: TRLDBText;
          RLDBText17: TRLDBText;
          RLDBText18: TRLDBText;
          RLDBText19: TRLDBText;
          RLDBText20: TRLDBText;
          RLDBText21: TRLDBText;
          RLDBText22: TRLDBText;
          RLDBText23: TRLDBText;
          RLDBText24: TRLDBText;
          RLDBText25: TRLDBText;
          RLBand1: TRLBand;
          RLBand2: TRLBand;
          RLLabel26: TRLLabel;
          RLDBText26: TRLDBText;
          RLLabel27: TRLLabel;
          RLDBResult24: TRLDBResult;
          RLDBResult25: TRLDBResult;
          RLDBResult26: TRLDBResult;
          RLDBResult27: TRLDBResult;
          RLDBResult28: TRLDBResult;
          RLDBResult29: TRLDBResult;
          RLDBResult30: TRLDBResult;
          RLDBResult31: TRLDBResult;
          RLDBResult32: TRLDBResult;
          RLDBResult33: TRLDBResult;
          RLDBResult34: TRLDBResult;
          RLDBResult35: TRLDBResult;
          RLDBResult36: TRLDBResult;
          RLDBText27: TRLDBText;
          RLDBText28: TRLDBText;
          RLDBText29: TRLDBText;
          RLDBText30: TRLDBText;
          RGSituacao: TRadioGroup;
          RLBand3: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          RLBand4: TRLBand;
          RLDBImage1: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLSystemInfo3: TRLSystemInfo;
          RLSystemInfo4: TRLSystemInfo;
          RLDraw2: TRLDraw;
          txtnomealuno: TWSEdit;
          txtnomecurso: TWSEdit;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtcodKeyPress(Sender: TObject; var Key: Char);
          procedure btncursoClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure txtcursoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnalunoClick(Sender: TObject);
          procedure txtcursoKeyPress(Sender: TObject; var Key: Char);
          procedure txtalunoExit(Sender: TObject);
          procedure txtcursoExit(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FPrevPagamentoRel: TFPrevPagamentoRel;

implementation

uses UDM, UMenu, Ucurso, UAluno, UDisciplina, UProfessor, UBanco, UFuncoes;

{$R *.dfm}

procedure TFPrevPagamentoRel.BtnImprimirClick(Sender: TObject);
begin
     try
          strtoint(txtano.text);
     except
          showmessage('Campo ano obrigatório!');
          txtano.setfocus;
          exit;
     end;
     if txtaluno.text = '' then
          txtaluno.Text := '0';
     if txtcurso.text = '' then
          txtcurso.Text := '0';

     if RGModelo.itemindex = 1 then
     begin
          with qcurso.sql do
          begin
               clear;
               add('select cursocod, cursonome, sum(jane) as jane, sum(feve) as feve, sum(marc) as marc, sum(abri) as abri, sum(maio) as maio, sum(junh) as junh,');
               add('sum(julh) as julh, sum(agos) as agos, sum(sete) as sete, sum(outu) as outu, sum(nove) as nove, sum(deze) as deze, sum(total) as total');
               add('FROM PPREVISAOPGTO(' + txtaluno.text + ',' + txtcurso.text + ',' + txtano.text + ')');
               add('   inner join TALUNO on alucod = alunocod');
               add('where cursocod > 0');
               if RGSituacao.ItemIndex > 0 then
                    add('AND ALUSITUACAO = ' + quotedstr(RGSituacao.Items.Strings[RGSituacao.Itemindex]));
               add('GROUP BY CURSOCOD, CURSONOME ORDER BY CURSONOME');
          end;
          cdscurso.open;

          RLReportCurso.PreviewModal;
          cdsCurso.close;
     end;
     if RGModelo.itemindex = 0 then
     begin
          with qaluno.sql do
          begin
               clear;
               add('select (cursonome||alunonome) as curso_aluno, cursonome, alunocod, alunonome, ALUCURSOINICIO, (cidnome||''-''||ciduf) as cidade, jane, feve, marc, abri, maio, junh, julh, agos, sete, outu, nove, deze, total');
               add('FROM TAluno');
               add('   inner join PPREVISAOPGTO(' + txtaluno.text + ',' + txtcurso.text + ',' + txtano.text + ') on alucod = alunocod');
               add('   inner join TCidade on alucidade = cidcod');
               add('where alucod > 0');
               if RGSituacao.ItemIndex > 0 then
                    add('AND ALUSITUACAO = ' + quotedstr(RGSituacao.Items.Strings[RGSituacao.Itemindex]));
               add('ORDER BY 1');
          end;
          cdsaluno.open;

          RLReportAluno.PreviewModal;
          cdsaluno.close;
     end;
end;

procedure TFPrevPagamentoRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFPrevPagamentoRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFPrevPagamentoRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFPrevPagamentoRel.txtcodKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFPrevPagamentoRel.btncursoClick(Sender: TObject);
begin
     if Application.FindComponent('FCurso') <> nil then
          FCurso.Close;

     try
          FCurso := tFCurso.create(self);
          FCurso.FormStyle := fsNormal;
          FCurso.Visible := false;
          usuario('btnconsultar', FCurso.wsinformacao.programa);
          FCurso.showmodal;
          txtcurso.text := dm.CDSCursoCurCOD.asstring;
     finally
          FCurso.release;
          FCurso := nil;
          FCurso.free;
     end;
end;

procedure TFPrevPagamentoRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
     txtano.Text := inttostr(yearof(date));
end;

procedure TFPrevPagamentoRel.txtcursoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtcurso then
               btncurso.click;
          if sender = txtaluno then
               btnaluno.click;
     end;
end;

procedure TFPrevPagamentoRel.btnalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          Faluno.Close;

     try
          FAluno := tFAluno.create(self);
          FAluno.FormStyle := fsNormal;
          faluno.Visible := false;
          usuario('btnconsultar', FAluno.wsinformacao.programa);
          FAluno.showmodal;
          txtaluno.text := dm.CDSAlunoALUCOD.asstring;
          txtaluno.setfocus;
     finally
          FAluno.release;
          FAluno := nil;
          FAluno.free;
     end;
end;

procedure TFPrevPagamentoRel.txtcursoKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFPrevPagamentoRel.txtalunoExit(Sender: TObject);
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
               txtcursoexit(nil);
          end
          else
          begin
               txtnomealuno.text := 'Aluno não cadastrado!';
               txtaluno.setfocus;
               exit;
          end;
     end;
end;

procedure TFPrevPagamentoRel.txtcursoExit(Sender: TObject);
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

end.
