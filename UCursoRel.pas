unit UCursoRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, Buttons;

type
     TFCursoRel = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label4: TLabel;
          Label7: TLabel;
          btncoordenador: TSpeedButton;
          txtcodini: TWSEdit;
          txtcoordenador: TWSEdit;
          RGOrdem: TRadioGroup;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          txtcodfin: TWSEdit;
          Label1: TLabel;
          RGModelo: TRadioGroup;
          Label2: TLabel;
          txtprofessor: TWSEdit;
          btnprofessor: TSpeedButton;
          QRel: TSQLQuery;
          DSPRel: TDataSetProvider;
          CDSRel: TClientDataSet;
          DSRel: TDataSource;
          QRelCURCOD: TIntegerField;
          QRelCURNOME: TStringField;
          QRelCURTURMA: TStringField;
          QRelCURCARGA: TIntegerField;
          QRelCURVALOR: TFloatField;
          QRelCURPERCDESCONTO: TFloatField;
          QRelCURDESCONTO: TFloatField;
          QRelCURVENCIMENTO: TSmallintField;
          QRelCURTCC: TStringField;
          QRelCURINICIO: TDateField;
          QRelCURFIM: TDateField;
          QRelCURLIQUIDO: TFloatField;
          QRelCURSISTEMAAVALIACAO: TStringField;
          QRelCURCRITERIOSAVALIACAO: TStringField;
          QRelCURSECRETARIO: TStringField;
          QRelCOORDENADOR: TStringField;
          QRelPROFESSOR: TStringField;
          QRelDISNOME: TStringField;
          QRelCURDISHORASAULA: TIntegerField;
          QRelPRORESUMOTITULACAO: TStringField;
          CDSRelCURCOD: TIntegerField;
          CDSRelCURNOME: TStringField;
          CDSRelCURTURMA: TStringField;
          CDSRelCURCARGA: TIntegerField;
          CDSRelCURVALOR: TFloatField;
          CDSRelCURPERCDESCONTO: TFloatField;
          CDSRelCURDESCONTO: TFloatField;
          CDSRelCURVENCIMENTO: TSmallintField;
          CDSRelCURTCC: TStringField;
          CDSRelCURINICIO: TDateField;
          CDSRelCURFIM: TDateField;
          CDSRelCURLIQUIDO: TFloatField;
          CDSRelCURSISTEMAAVALIACAO: TStringField;
          CDSRelCURCRITERIOSAVALIACAO: TStringField;
          CDSRelCURSECRETARIO: TStringField;
          CDSRelCOORDENADOR: TStringField;
          CDSRelPROFESSOR: TStringField;
          CDSRelDISNOME: TStringField;
          CDSRelCURDISHORASAULA: TIntegerField;
          CDSRelPRORESUMOTITULACAO: TStringField;
          RLReportAna: TRLReport;
          RLBand8: TRLBand;
          RLLabel8: TRLLabel;
          RLGroup: TRLGroup;
          RLBand11: TRLBand;
          RLLabel9: TRLLabel;
          RLLabel10: TRLLabel;
          RLDBText19: TRLDBText;
          RLDBText20: TRLDBText;
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
          RLBand9: TRLBand;
          RLDBText21: TRLDBText;
          RLDBText22: TRLDBText;
          RLDBText37: TRLDBText;
          RLDBText38: TRLDBText;
          RLBand6: TRLBand;
          RLDBText13: TRLDBText;
          RLDBImage3: TRLDBImage;
          RLDBText14: TRLDBText;
          RLDBText15: TRLDBText;
          RLDBText16: TRLDBText;
          RLDBText17: TRLDBText;
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
          lblpreco: TRLLabel;
          lblestoque: TRLLabel;
          lblcusto: TRLLabel;
          RLLabel4: TRLLabel;
          RLGroup1: TRLGroup;
          RLBand10: TRLBand;
          RLDBText7: TRLDBText;
          RLDBText8: TRLDBText;
          txtrelgrupo: TRLDBText;
          txtpreco: TRLDBText;
          txtestoque: TRLDBText;
          txtcusto: TRLDBText;
          RLDBText9: TRLDBText;
          RLLabel11: TRLLabel;
          RLLabel12: TRLLabel;
          RLLabel25: TRLLabel;
          RLLabel26: TRLLabel;
          RLBand5: TRLBand;
          RLDBText33: TRLDBText;
          RLDBText34: TRLDBText;
          RLDBText35: TRLDBText;
          RLDBText36: TRLDBText;
          RLLabel27: TRLLabel;
          RLLabel28: TRLLabel;
          RLLabel29: TRLLabel;
          RLLabel30: TRLLabel;
          RLSystemInfo1: TRLSystemInfo;
          RLSystemInfo2: TRLSystemInfo;
          bandtotal: TRLBand;
          RLLabel14: TRLLabel;
          RLDBResult1: TRLDBResult;
          RLBand12: TRLBand;
          RLLabel13: TRLLabel;
          RLDBResult2: TRLDBResult;
          RLDBText18: TRLDBText;
          RLDBText39: TRLDBText;
          RLDBText6: TRLDBText;
          RLDBText40: TRLDBText;
          RLBand7: TRLBand;
          RLDBImage4: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLSystemInfo3: TRLSystemInfo;
          RLSystemInfo4: TRLSystemInfo;
          RLDraw1: TRLDraw;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw2: TRLDraw;
          txtnomeprofessor: TWSEdit;
          txtnomecoordenador: TWSEdit;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtcodfinKeyPress(Sender: TObject; var Key: Char);
          procedure btncoordenadorClick(Sender: TObject);
          procedure btnprofessorClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure txtprofessorKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtprofessorExit(Sender: TObject);
          procedure txtcoordenadorExit(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FCursoRel: TFCursoRel;

implementation

uses UDM, UMenu, UProfessor, UFuncoes;

{$R *.dfm}

procedure TFCursoRel.BtnImprimirClick(Sender: TObject);
begin
     with qrel.sql do
     begin
          clear;
          add('SELECT CURCOD,CURNOME,CURTURMA,CURCARGA,CURVALOR,CURPERCDESCONTO,');
          add('CURDESCONTO,CURVENCIMENTO,CURTCC,CURINICIO,CURFIM,CURLIQUIDO,');
          add('CURSISTEMAAVALIACAO, CURCRITERIOSAVALIACAO, CURSECRETARIO, TBCOORDENADOR.PRONOME AS COORDENADOR,');
          add('TBPROFESSOR.PRONOME AS PROFESSOR, DISNOME, CURDISHORASAULA, TBPROFESSOR.PRORESUMOTITULACAO');
          add('FROM TCURSO LEFT OUTER JOIN TPROFESSOR TBCOORDENADOR ON TBCOORDENADOR.PROCOD = CURCOORDENADOR,');
          add('TCURSODISCIPLINA LEFT OUTER JOIN TPROFESSOR TBPROFESSOR ON TBPROFESSOR.PROCOD = CURDISPROFESSOR');
          add('            LEFT OUTER JOIN TDISCIPLINA ON DISCOD = CURDISDISCIPLINA');
          add('WHERE CURCOD = CURDISCURSO');
          if trim(txtprofessor.text) <> '' then
               add('AND TBPROFESSOR.PROCOD = ' + txtprofessor.text);
          if trim(txtcoordenador.text) <> '' then
               add('AND TBCOORDENADOR.PROCOD = ' + txtcoordenador.text);
          if trim(txtcodini.text) <> '' then
               add('AND CURCOD >= ' + txtcodini.text);
          if trim(txtcodfin.text) <> '' then
               add('AND CURCOD <= ' + txtcodfin.text);
          case RGOrdem.itemindex of
               0: add('ORDER BY CURNOME');
               1: add('ORDER BY CURCOD');
          end;
     end;
     cdsrel.open;
     case RGModelo.itemindex of
          0: RLReportSint.PreviewModal;
          1: RLReportAna.PreviewModal;
     end;
     cdsrel.close;
end;

procedure TFCursoRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFCursoRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFCursoRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFCursoRel.txtcodfinKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFCursoRel.btncoordenadorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;

     try
          fprofessor := tfprofessor.create(self);
          FProfessor.FormStyle := fsNormal;
          fprofessor.Visible := false;
          usuario('btnconsultar', fprofessor.wsinformacao.programa);
          fprofessor.showmodal;
          txtcoordenador.text := dm.cdsprofessorprocod.asstring;
     finally
          fprofessor.release;
          fprofessor := nil;
          fprofessor.free;
     end;
end;

procedure TFCursoRel.btnprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;

     try
          fprofessor := tfprofessor.create(self);
          FProfessor.FormStyle := fsNormal;
          FProfessor.Visible := false;
          usuario('btnconsultar', fprofessor.wsinformacao.programa);
          fprofessor.showmodal;
          txtprofessor.text := dm.cdsprofessorprocod.asstring;
     finally
          fprofessor.release;
          fprofessor := nil;
          fprofessor.free;
     end;
end;

procedure TFCursoRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
end;

procedure TFCursoRel.txtprofessorKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtcoordenador then
               btncoordenador.click;
          if sender = txtprofessor then
               btnprofessor.click;
     end;
end;

procedure TFCursoRel.txtprofessorExit(Sender: TObject);
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

procedure TFCursoRel.txtcoordenadorExit(Sender: TObject);
begin
     txtnomecoordenador.clear;
     if trim(txtcoordenador.Text) <> '' then
     begin
          try
               strtoint(txtcoordenador.text);
          except
               txtnomecoordenador.text := 'Campo coordenador Inválido!';
               txtcoordenador.setfocus;
               exit;
          end;
          if not dm.CDSProfessor.active then
               dm.CDSProfessor.open;
          if dm.CDSProfessor.Locate('PROCOD', txtcoordenador.text, []) then
          begin
               txtnomecoordenador.text := dm.CDSProfessorPRONOME.AsString;
          end
          else
          begin
               txtnomecoordenador.text := 'Coordenador não Cadastrado!';
               txtcoordenador.setfocus;
               exit;
          end;
     end;
end;

end.
