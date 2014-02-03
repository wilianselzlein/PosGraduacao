unit UAlunoIndicacaoRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, WSComboBox,
     Buttons;

type
     TFAlunoIndicacaoRel = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
          btncidade: TSpeedButton;
          txtcidade: TWSEdit;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          RGModelo: TRadioGroup;
          Label2: TLabel;
          txtcurso: TWSEdit;
          btncurso: TSpeedButton;
          QAnalitico: TSQLQuery;
          DSPAnalitico: TDataSetProvider;
          CDSAnalitico: TClientDataSet;
          DSAnalitico: TDataSource;
          RLReportAna: TRLReport;
          RLBand8: TRLBand;
          RLLabel8: TRLLabel;
          RLBand6: TRLBand;
          RLDBText13: TRLDBText;
          RLDBImage3: TRLDBImage;
          RLDBText14: TRLDBText;
          RLDBText15: TRLDBText;
          RLDBText16: TRLDBText;
          RLDBText17: TRLDBText;
          RLBand9: TRLBand;
          RLDBText19: TRLDBText;
          RLDBText9: TRLDBText;
          RGPagas: TRadioGroup;
          txtindicacao: TWSComboBox;
          Label1: TLabel;
          QAnaliticoALUCOD: TIntegerField;
          QAnaliticoALUNOME: TStringField;
          QAnaliticoALUINDICACAO: TStringField;
          QAnaliticoALUINDICACAOVALOR: TFloatField;
          QAnaliticoALUINDICACAOPAGO: TStringField;
          CDSAnaliticoALUCOD: TIntegerField;
          CDSAnaliticoALUNOME: TStringField;
          CDSAnaliticoALUINDICACAO: TStringField;
          CDSAnaliticoALUINDICACAOVALOR: TFloatField;
          CDSAnaliticoALUINDICACAOPAGO: TStringField;
          DSGerencial: TDataSource;
          CDSGerencial: TClientDataSet;
          DSPGerencial: TDataSetProvider;
          QGerencial: TSQLQuery;
          RLBand1: TRLBand;
          RLLabel9: TRLLabel;
          RLLabel10: TRLLabel;
          RLLabel1: TRLLabel;
          RLLabel2: TRLLabel;
          RLLabel3: TRLLabel;
          RLBand2: TRLBand;
          RLLabel7: TRLLabel;
          RLDBText1: TRLDBText;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBResult1: TRLDBResult;
          RLReportGerencial: TRLReport;
          RLBand4: TRLBand;
          RLLabel4: TRLLabel;
          RLBand5: TRLBand;
          RLDBText4: TRLDBText;
          RLDBImage2: TRLDBImage;
          RLDBText5: TRLDBText;
          RLDBText6: TRLDBText;
          RLDBText7: TRLDBText;
          RLDBText8: TRLDBText;
          RLBand10: TRLBand;
          RLDBText12: TRLDBText;
          RLDBText21: TRLDBText;
          RLDBText22: TRLDBText;
          RLBand11: TRLBand;
          RLLabel6: TRLLabel;
          RLLabel12: TRLLabel;
          RLLabel13: TRLLabel;
          RLBand12: TRLBand;
          RLLabel14: TRLLabel;
          RLDBResult2: TRLDBResult;
          RLLabel5: TRLLabel;
          RLLabel11: TRLLabel;
          RLDBText11: TRLDBText;
          RLDBResult3: TRLDBResult;
          RLDBText20: TRLDBText;
          QGerencialALUINDICACAO: TStringField;
          QGerencialALUINDICACAOPAGO: TStringField;
          QGerencialCOUNTA: TIntegerField;
          QGerencialSUM: TFloatField;
          QGerencialPERC: TFloatField;
          CDSGerencialALUINDICACAO: TStringField;
          CDSGerencialALUINDICACAOPAGO: TStringField;
          CDSGerencialCOUNTA: TIntegerField;
          CDSGerencialSUM: TFloatField;
          CDSGerencialPERC: TFloatField;
          RLSystemInfo1: TRLSystemInfo;
          RLSystemInfo2: TRLSystemInfo;
          RLDBText10: TRLDBText;
          RLDBText23: TRLDBText;
          RLDBText18: TRLDBText;
          RLDBText24: TRLDBText;
          RLBand3: TRLBand;
          RLDBImage1: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          RLBand7: TRLBand;
          RLDBImage4: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLSystemInfo3: TRLSystemInfo;
          RLSystemInfo4: TRLSystemInfo;
          RLDraw2: TRLDraw;
          txtnomecurso: TWSEdit;
          txtnomecidade: TWSEdit;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btncidadeClick(Sender: TObject);
          procedure btncursoClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure txtcursoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtcursoKeyPress(Sender: TObject; var Key: Char);
          procedure txtcursoExit(Sender: TObject);
          procedure txtcidadeExit(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FAlunoIndicacaoRel: TFAlunoIndicacaoRel;

implementation

uses UDM, UMenu, UCidade, UAluno, UCurso, UFuncoes;

{$R *.dfm}

procedure TFAlunoIndicacaoRel.BtnImprimirClick(Sender: TObject);
begin
     if RGModelo.itemindex = 0 then
     begin
          with qanalitico.sql do
          begin
               clear;
               add('select ALUCOD,ALUNOME,ALUINDICACAO,ALUINDICACAOVALOR,ALUINDICACAOPAGO');
               add('from TALUNO');
               add('WHERE ALUCOD > 0');
               case RGPagas.ItemIndex of
                    1: add('AND ALUINDICACAOPAGO = ''S''');
                    2: add('AND ALUINDICACAOPAGO = ''N''');
               end;
               if txtindicacao.itemindex > 0 then
                    add('AND ALUINDICACAO = ' + quotedstr(trim(txtindicacao.text)));
               if trim(txtcidade.text) <> '' then
                    add('AND ALUCIDADE = ' + trim(txtcidade.text));
               if trim(txtcurso.text) <> '' then
                    add('AND ALUCURSO = ' + trim(txtcurso.text));
               add('ORDER BY ALUINDICACAO, ALUNOME');
          end;
          cdsanalitico.open;
          RLReportAna.PreviewModal;
          cdsanalitico.close;
     end;
     if RGModelo.itemindex = 1 then
     begin
          with qgerencial.sql do
          begin
               clear;
               add('select ALUINDICACAO,ALUINDICACAOPAGO,CAST(COUNT(ALUCOD) AS INTEGER) AS COUNTA, SUM(ALUINDICACAOVALOR),');
               add('CAST(((COUNT(ALUCOD) * 100) / (SELECT COUNT(ALUCOD) FROM TALUNO)) AS FLOAT) AS PERC');
               add('from TALUNO WHERE ALUCOD > 0');
               case RGPagas.ItemIndex of
                    1: add('AND ALUINDICACAOPAGO = ''S''');
                    2: add('AND ALUINDICACAOPAGO = ''N''');
               end;
               if txtindicacao.itemindex > 0 then
                    add('AND ALUINDICACAO = ' + quotedstr(trim(txtindicacao.text)));
               if trim(txtcidade.text) <> '' then
                    add('AND ALUCIDADE = ' + trim(txtcidade.text));
               if trim(txtcurso.text) <> '' then
                    add('AND ALUCURSO = ' + trim(txtcurso.text));
               add('GROUP BY ALUINDICACAO, ALUINDICACAOPAGO');
               add('ORDER BY ALUINDICACAO, ALUINDICACAOPAGO');
          end;
          cdsgerencial.open;
          RLReportGerencial.PreviewModal;
          cdsgerencial.close;
     end;
end;

procedure TFAlunoIndicacaoRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFAlunoIndicacaoRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFAlunoIndicacaoRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAlunoIndicacaoRel.btncidadeClick(Sender: TObject);
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

procedure TFAlunoIndicacaoRel.btncursoClick(Sender: TObject);
begin
     if Application.FindComponent('FCurso') <> nil then
          FCurso.Close;

     try
          FCurso := tFCurso.create(self);
          FCurso.FormStyle := fsNormal;
          fcurso.Visible := false;
          usuario('btnconsultar', FCurso.wsinformacao.programa);
          FCurso.showmodal;
          txtcurso.text := dm.CDScursoCurCod.asstring;
     finally
          FCurso.release;
          FCurso := nil;
          FCurso.free;
     end;
end;

procedure TFAlunoIndicacaoRel.FormShow(Sender: TObject);
begin
     seta_indicacao(txtindicacao.items);
     txtindicacao.Items.Insert(0, 'Todos');
     txtindicacao.itemindex := 0;

     setCaption(sender as tform);
end;

procedure TFAlunoIndicacaoRel.txtcursoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtcidade then
               btncidade.click;
          if sender = txtcurso then
               btncurso.click;
     end;
end;

procedure TFAlunoIndicacaoRel.txtcursoKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          BtnImprimir.click;
end;

procedure TFAlunoIndicacaoRel.txtcursoExit(Sender: TObject);
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

procedure TFAlunoIndicacaoRel.txtcidadeExit(Sender: TObject);
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

end.
