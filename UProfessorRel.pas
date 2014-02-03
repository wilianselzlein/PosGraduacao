unit UProfessorRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, Buttons;

type
     TFProfessorRel = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
          btncidade: TSpeedButton;
          txtcidade: TWSEdit;
          RGOrdem: TRadioGroup;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          RLReportSint: TRLReport;
          RLBand1: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          RLBand3: TRLBand;
          RLLabel1: TRLLabel;
          RLBand4: TRLBand;
          RLLabel2: TRLLabel;
          RLLabel3: TRLLabel;
          lblgrupo: TRLLabel;
          lblestoque: TRLLabel;
          txtcod: TWSEdit;
          Label1: TLabel;
          RGModelo: TRadioGroup;
          Label2: TLabel;
          txtgrupo: TWSEdit;
          btngrupo: TSpeedButton;
          QRel: TSQLQuery;
          DSPRel: TDataSetProvider;
          CDSRel: TClientDataSet;
          DSRel: TDataSource;
          RLReportAna: TRLReport;
          RLBand8: TRLBand;
          RLLabel8: TRLLabel;
          RLGroup: TRLGroup;
          RLBand11: TRLBand;
          RLLabel9: TRLLabel;
          RLLabel10: TRLLabel;
          RLDBText19: TRLDBText;
          RLLabel5: TRLLabel;
          RLDBText10: TRLDBText;
          RLDBText11: TRLDBText;
          RLLabel6: TRLLabel;
          RLLabel7: TRLLabel;
          RLDBText12: TRLDBText;
          RLDBText23: TRLDBText;
          RLLabel15: TRLLabel;
          RLDBText24: TRLDBText;
          RLLabel16: TRLLabel;
          RLLabel17: TRLLabel;
          RLDBText25: TRLDBText;
          RLDBText26: TRLDBText;
          RLLabel18: TRLLabel;
          RLLabel19: TRLLabel;
          RLDBText27: TRLDBText;
          RLDBText28: TRLDBText;
          RLLabel20: TRLLabel;
          RLLabel21: TRLLabel;
          RLDBText29: TRLDBText;
          RLDBText30: TRLDBText;
          RLLabel22: TRLLabel;
          RLLabel23: TRLLabel;
          RLDBText31: TRLDBText;
          RLDBText32: TRLDBText;
          RLLabel24: TRLLabel;
          RLGroup1: TRLGroup;
          RLBand10: TRLBand;
          RLBand5: TRLBand;
          RLDBText7: TRLDBText;
          RLDBText8: TRLDBText;
          txtrelgrupo: TRLDBText;
          txtestoque: TRLDBText;
          txtcusto: TRLDBText;
          RLDBText33: TRLDBText;
          RLDBText34: TRLDBText;
          RLBand6: TRLBand;
          RLDBText13: TRLDBText;
          RLDBImage3: TRLDBImage;
          RLDBText14: TRLDBText;
          RLDBText15: TRLDBText;
          RLDBText16: TRLDBText;
          RLDBText17: TRLDBText;
          RLBand9: TRLBand;
          RLDBText21: TRLDBText;
          RLDBText22: TRLDBText;
          RLLabel11: TRLLabel;
          RLLabel12: TRLLabel;
          btndisciplina: TSpeedButton;
          txtdisciplina: TWSEdit;
          Label3: TLabel;
          RLLabel4: TRLLabel;
          RLLabel25: TRLLabel;
          RLDBMemo1: TRLDBMemo;
          RLDBMemo2: TRLDBMemo;
          RLLabel26: TRLLabel;
          QRelPROCOD: TIntegerField;
          QRelPRONOME: TStringField;
          QRelPROENDERECO: TStringField;
          QRelPROBAIRRO: TStringField;
          QRelPROCIDADE: TIntegerField;
          QRelPROCEP: TStringField;
          QRelPROFONE: TStringField;
          QRelPROFAX: TStringField;
          QRelPROCELULAR: TStringField;
          QRelPROEMAIL: TStringField;
          QRelPROSITE: TStringField;
          QRelPROCPF: TStringField;
          QRelPRONOTAFISCAL: TStringField;
          QRelPROGRUPO: TIntegerField;
          QRelPROOBS: TStringField;
          QRelPROCURRICULUM: TMemoField;
          QRelPROTITULACAO: TMemoField;
          QRelPRORESUMOTITULACAO: TStringField;
          QRelPROCURRICULUMLATTES: TStringField;
          QRelPRODISOBS: TStringField;
          QRelDISNOME: TStringField;
          CDSRelPROCOD: TIntegerField;
          CDSRelPRONOME: TStringField;
          CDSRelPROENDERECO: TStringField;
          CDSRelPROBAIRRO: TStringField;
          CDSRelPROCIDADE: TIntegerField;
          CDSRelPROCEP: TStringField;
          CDSRelPROFONE: TStringField;
          CDSRelPROFAX: TStringField;
          CDSRelPROCELULAR: TStringField;
          CDSRelPROEMAIL: TStringField;
          CDSRelPROSITE: TStringField;
          CDSRelPROCPF: TStringField;
          CDSRelPRONOTAFISCAL: TStringField;
          CDSRelPROGRUPO: TIntegerField;
          CDSRelPROOBS: TStringField;
          CDSRelPROCURRICULUM: TMemoField;
          CDSRelPROTITULACAO: TMemoField;
          CDSRelPRORESUMOTITULACAO: TStringField;
          CDSRelPROCURRICULUMLATTES: TStringField;
          CDSRelPRODISOBS: TStringField;
          CDSRelDISNOME: TStringField;
          RLDBText9: TRLDBText;
          QRelCIDNOME: TStringField;
          QRelGRUPRONOME: TStringField;
          CDSRelCIDNOME: TStringField;
          CDSRelGRUPRONOME: TStringField;
          btncodigo: TSpeedButton;
          QRelPROFOTO: TBlobField;
          CDSRelPROFOTO: TBlobField;
          RLDBImage5: TRLDBImage;
          RLSystemInfo1: TRLSystemInfo;
          RLSystemInfo2: TRLSystemInfo;
          Label4: TLabel;
          txtvinculo: TWSEdit;
          Label5: TLabel;
          RLDBText18: TRLDBText;
          RLDBText20: TRLDBText;
          RLDBText6: TRLDBText;
          RLDBText35: TRLDBText;
          RLDBText36: TRLDBText;
          RLLabel13: TRLLabel;
          RLDBText37: TRLDBText;
          RLDBText38: TRLDBText;
          RLLabel14: TRLLabel;
          QRelPROEMAIL2: TStringField;
          QRelPROFORMACAO: TStringField;
          CDSRelPROEMAIL2: TStringField;
          CDSRelPROFORMACAO: TStringField;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo3: TRLSystemInfo;
          RLSystemInfo4: TRLSystemInfo;
          RLDraw1: TRLDraw;
          RLBand7: TRLBand;
          RLDBImage4: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw2: TRLDraw;
          txtnomecidade: TWSEdit;
          txtnomedisciplina: TWSEdit;
          txtnomeprofessor: TWSEdit;
          txtnomegrupo: TWSEdit;
          lblcusto: TRLLabel;
          RLDBText39: TRLDBText;
          RLDBText40: TRLDBText;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btncidadeClick(Sender: TObject);
          procedure btngrupoClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure txtgrupoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btndisciplinaClick(Sender: TObject);
          procedure btncodigoClick(Sender: TObject);
          procedure txtvinculoKeyPress(Sender: TObject; var Key: Char);
          procedure txtcidadeExit(Sender: TObject);
          procedure txtdisciplinaExit(Sender: TObject);
          procedure txtcodExit(Sender: TObject);
          procedure txtgrupoExit(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FProfessorRel: TFProfessorRel;

implementation

uses UDM, UMenu, UProfessor, UCidade, UGrupoPro, UDisciplina, UFuncoes;

{$R *.dfm}

procedure TFProfessorRel.BtnImprimirClick(Sender: TObject);
begin
     with qrel.sql do
     begin
          clear;
          add('select PROCOD,PRONOME,PROENDERECO,PROBAIRRO,PROCIDADE,PROCEP,');
          add('PROFONE,PROFAX,PROCELULAR,PROEMAIL,PROEMAIL2,PROSITE,PROCPF,CIDNOME, GRUPRONOME,');
          add('PRONOTAFISCAL,PROGRUPO,PROOBS,PROCURRICULUM, PROTITULACAO, PROFORMACAO, PRORESUMOTITULACAO, PROCURRICULUMLATTES,');
          add('PROFOTO, PRODISOBS, DISNOME');
          add('from TPROFESSOR');
          add('  LEFT JOIN TCIDADE ON PROCIDADE = CIDCOD');
          add('  LEFT JOIN TGRUPOPRO ON PROGRUPO = GRUPROCOD');
          add('  LEFT JOIN TPROFESSORDISCIPLINA ON PROCOD = PRODISPROFESSOR');
          add('  LEFT JOIN TDISCIPLINA ON PRODISDISCIPLINA = DISCOD');
          add('WHERE 1=1');
          if trim(txtvinculo.text) <> '' then
               add('AND PROVINCULO = ' + quotedstr(trim(txtvinculo.text)));
          if trim(txtcidade.text) <> '' then
               add('AND PROCIDADE = ' + trim(txtcidade.text));
          if trim(txtcod.text) <> '' then
               add('AND PROCOD = ' + trim(txtcod.text));
          if trim(txtgrupo.text) <> '' then
          begin
               add('AND PROCOD IN (SELECT PROGRUPROFESSOR FROM TPROFESSORGRUPO WHERE PROGRUGRUPO = ' + trim(txtgrupo.text) + ')');
               add('OR PROGRUPO = ' + trim(txtgrupo.text));
          end;
          if trim(txtdisciplina.text) <> '' then
               add('AND PROCOD IN (SELECT PRODISPROFESSOR FROM TPROFESSORDISCIPLINA WHERE PRODISDISCIPLINA = ' + trim(txtdisciplina.text) + ')');
          case RGOrdem.itemindex of
               0: add('ORDER BY PRONOME');
               1: add('ORDER BY PROCOD');
          end;
     end;
     cdsrel.open;
     case RGModelo.itemindex of
          0: RLReportSint.PreviewModal;
          1: RLReportAna.PreviewModal;
     end;
     cdsrel.close;
end;

procedure TFProfessorRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFProfessorRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFProfessorRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFProfessorRel.btncidadeClick(Sender: TObject);
begin
     if Application.FindComponent('FCidade') <> nil then
          FCidade.Close;

     try
          fcidade := tfcidade.create(self);
          FCidade.FormStyle := fsNormal;
          fcidade.Visible := false;
          usuario('btnconsultar', fcidade.wsinformacao.programa);
          fcidade.showmodal;
          txtcidade.text := dm.cdscidadecidcod.asstring;
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFProfessorRel.btngrupoClick(Sender: TObject);
begin
     if Application.FindComponent('FGrupoPro') <> nil then
          FGrupoPro.Close;

     try
          fgrupopro := tfgrupopro.create(self);
          FGrupoPro.FormStyle := fsNormal;
          fgrupopro.Visible := false;
          usuario('btnconsultar', fgrupopro.wsinformacao.programa);
          fgrupopro.showmodal;
          txtgrupo.text := dm.cdsgrupoprogruprocod.asstring;
     finally
          fgrupopro.release;
          fgrupopro := nil;
          fgrupopro.free;
     end;
end;

procedure TFProfessorRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
end;

procedure TFProfessorRel.txtgrupoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtcidade then
               btncidade.click;
          if sender = txtgrupo then
               btngrupo.click;
          if sender = txtdisciplina then
               btndisciplina.click;
          if sender = txtcod then
               btncodigo.click;
     end;
end;

procedure TFProfessorRel.btndisciplinaClick(Sender: TObject);
begin
     if Application.FindComponent('FDisciplina') <> nil then
          FDisciplina.Close;

     try
          fdisciplina := tfdisciplina.create(self);
          FDisciplina.FormStyle := fsNormal;
          fdisciplina.Visible := false;
          usuario('btnconsultar', fdisciplina.wsinformacao.programa);
          fdisciplina.showmodal;
          txtdisciplina.text := dm.cdsdisciplinadiscod.asstring;
     finally
          fdisciplina.release;
          fdisciplina := nil;
          fdisciplina.free;
     end;
end;

procedure TFProfessorRel.btncodigoClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;

     try
          fprofessor := tfprofessor.create(self);
          FProfessor.FormStyle := fsNormal;
          fprofessor.Visible := false;
          usuario('btnconsultar', fprofessor.wsinformacao.programa);
          fprofessor.showmodal;
          txtcod.text := dm.cdsprofessorprocod.asstring;
     finally
          fprofessor.release;
          fprofessor := nil;
          fprofessor.free;
     end;
end;

procedure TFProfessorRel.txtvinculoKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;

end;

procedure TFProfessorRel.txtcidadeExit(Sender: TObject);
begin
     txtnomeCidade.clear;
     if trim(txtCidade.Text) <> '' then
     begin
          try
               strtoint(txtCidade.text);
          except
               txtnomeCidade.text := 'Campo Cidade Inválido!';
               txtCidade.setfocus;
               exit;
          end;
          if not dm.CDSCidade.active then
               dm.CDSCidade.open;
          if dm.CDSCidade.Locate('CIDCOD', txtCidade.text, []) then
          begin
               txtnomeCidade.text := dm.CDSCidadeCIDNOME.AsString;
          end
          else
          begin
               txtnomeCidade.text := 'Cidade não Cadastrado!';
               txtCidade.setfocus;
               exit;
          end;
     end;
end;

procedure TFProfessorRel.txtdisciplinaExit(Sender: TObject);
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

procedure TFProfessorRel.txtcodExit(Sender: TObject);
begin
     txtnomeprofessor.clear;
     if trim(txtcod.Text) <> '' then
     begin
          try
               strtoint(txtcod.text);
          except
               txtnomeprofessor.text := 'Campo Professor Inválido!';
               txtcod.setfocus;
               exit;
          end;
          if not dm.CDSProfessor.active then
               dm.CDSProfessor.open;
          if dm.CDSProfessor.Locate('PROCOD', txtcod.text, []) then
          begin
               txtnomeprofessor.text := dm.CDSProfessorPRONOME.AsString;
          end
          else
          begin
               txtnomeprofessor.text := 'Professor não Cadastrado!';
               txtcod.setfocus;
               exit;
          end;
     end;
end;

procedure TFProfessorRel.txtgrupoExit(Sender: TObject);
begin
     txtnomegrupo.clear;
     if trim(txtgrupo.Text) <> '' then
     begin
          try
               strtoint(txtgrupo.text);
          except
               txtnomegrupo.text := 'Campo grupo Inválido!';
               txtgrupo.setfocus;
               exit;
          end;
          if not dm.CDSgrupoPro.active then
               dm.CDSgrupoPro.open;
          if dm.CDSGrupoPro.Locate('GRUPROCOD', txtgrupo.text, []) then
          begin
               txtnomegrupo.text := dm.CDSGrupoProGRUPRONOME.AsString;
          end
          else
          begin
               txtnomegrupo.text := 'Grupo não Cadastrado!';
               txtgrupo.setfocus;
               exit;
          end;
     end;
end;

end.
