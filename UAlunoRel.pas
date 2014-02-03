unit UAlunoRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, shellapi,
     WSComboBox, Buttons, Mask, WSMaskEdit, dateutils;

type
     TFAlunoRel = class(TForm)
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
          RLReportFicha: TRLReport;
          RLBand3: TRLBand;
          RLLabel1: TRLLabel;
          txtcod: TWSEdit;
          Label1: TLabel;
          RGModelo: TRadioGroup;
          Label2: TLabel;
          txtcurso: TWSEdit;
          btncurso: TSpeedButton;
          QRel: TSQLQuery;
          DSPRel: TDataSetProvider;
          CDSRel: TClientDataSet;
          DSRel: TDataSource;
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
          btnnaturalidade: TSpeedButton;
          txtnaturalidade: TWSEdit;
          Label3: TLabel;
          btncod: TSpeedButton;
          QRelALUCOD: TIntegerField;
          QRelALUNOME: TStringField;
          QRelALUENDERECO: TStringField;
          QRelALUBAIRRO: TStringField;
          QRelALUCIDADE: TIntegerField;
          QRelALUCEP: TStringField;
          QRelALUFONE: TStringField;
          QRelALUFAX: TStringField;
          QRelALUCELULAR: TStringField;
          QRelALUEMAIL: TStringField;
          QRelALUCPF: TStringField;
          QRelALUIDENTIDADE: TStringField;
          QRelALUORGAOEXPEDIDOR: TStringField;
          QRelALUDATAEXPEDICAO: TDateField;
          QRelALUCARTEIRA: TStringField;
          QRelALUFOTO: TBlobField;
          QRelALUOCORRENCIAS: TMemoField;
          QRelALUHISTESCOLAR: TMemoField;
          QRelALUNACIONALIDADE: TStringField;
          QRelALUNASCIMENTO: TDateField;
          QRelALUNATURALIDADE: TIntegerField;
          QRelALUSITUACAO: TStringField;
          QRelALUESTADOCIVIL: TStringField;
          QRelALUSEXO: TStringField;
          QRelALUNOMEMAE: TStringField;
          QRelALUNOMEPAI: TStringField;
          QRelALUMIDIA: TStringField;
          QRelCIDADE: TStringField;
          QRelNATURALIDADE: TStringField;
          CDSRelALUCOD: TIntegerField;
          CDSRelALUNOME: TStringField;
          CDSRelALUENDERECO: TStringField;
          CDSRelALUBAIRRO: TStringField;
          CDSRelALUCIDADE: TIntegerField;
          CDSRelALUCEP: TStringField;
          CDSRelALUFONE: TStringField;
          CDSRelALUFAX: TStringField;
          CDSRelALUCELULAR: TStringField;
          CDSRelALUEMAIL: TStringField;
          CDSRelALUCPF: TStringField;
          CDSRelALUIDENTIDADE: TStringField;
          CDSRelALUORGAOEXPEDIDOR: TStringField;
          CDSRelALUDATAEXPEDICAO: TDateField;
          CDSRelALUCARTEIRA: TStringField;
          CDSRelALUFOTO: TBlobField;
          CDSRelALUOCORRENCIAS: TMemoField;
          CDSRelALUHISTESCOLAR: TMemoField;
          CDSRelALUNACIONALIDADE: TStringField;
          CDSRelALUNASCIMENTO: TDateField;
          CDSRelALUNATURALIDADE: TIntegerField;
          CDSRelALUSITUACAO: TStringField;
          CDSRelALUESTADOCIVIL: TStringField;
          CDSRelALUSEXO: TStringField;
          CDSRelALUNOMEMAE: TStringField;
          CDSRelALUNOMEPAI: TStringField;
          CDSRelALUMIDIA: TStringField;
          CDSRelCIDADE: TStringField;
          CDSRelNATURALIDADE: TStringField;
          RLBand9: TRLBand;
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
          RLLabel23: TRLLabel;
          RLDBText32: TRLDBText;
          RLDBText9: TRLDBText;
          RLBand4: TRLBand;
          RLDBText7: TRLDBText;
          RLLabel11: TRLLabel;
          RLDBText8: TRLDBText;
          RLDBText20: TRLDBText;
          RLLabel12: TRLLabel;
          RLLabel13: TRLLabel;
          RLDBText21: TRLDBText;
          RLDBText30: TRLDBText;
          RLLabel22: TRLLabel;
          RLLabel24: TRLLabel;
          RLDBText31: TRLDBText;
          RLDBText33: TRLDBText;
          RLLabel25: TRLLabel;
          RLLabel26: TRLLabel;
          RLDBText34: TRLDBText;
          RLDBText35: TRLDBText;
          RLLabel27: TRLLabel;
          RLLabel28: TRLLabel;
          RLDBText36: TRLDBText;
          RLLabel29: TRLLabel;
          RLDBText37: TRLDBText;
          RLDBText38: TRLDBText;
          RLDBText39: TRLDBText;
          RLLabel31: TRLLabel;
          RLDBText40: TRLDBText;
          RLLabel32: TRLLabel;
          RLLabel33: TRLLabel;
          RLDBText41: TRLDBText;
          RLLabel34: TRLLabel;
          RLDBText42: TRLDBText;
          RLLabel35: TRLLabel;
          RLDBText43: TRLDBText;
          RLLabel36: TRLLabel;
          RLDBText44: TRLDBText;
          RLDBText45: TRLDBText;
          RLLabel37: TRLLabel;
          RLDBText46: TRLDBText;
          RLLabel38: TRLLabel;
          RLLabel39: TRLLabel;
          RLDBText47: TRLDBText;
          RLLabel40: TRLLabel;
          RLDBText48: TRLDBText;
          RLLabel41: TRLLabel;
          RLDBText49: TRLDBText;
          RLLabel42: TRLLabel;
          RLDBText50: TRLDBText;
          RLLabel45: TRLLabel;
          RLLabel46: TRLLabel;
          RLDBImage5: TRLDBImage;
          chkmala: TCheckBox;
          RLReportEmail: TRLReport;
          RLBand10: TRLBand;
          RLLabel2: TRLLabel;
          RLBand11: TRLBand;
          RLDBText22: TRLDBText;
          RLDBImage7: TRLDBImage;
          RLDBText53: TRLDBText;
          RLDBText54: TRLDBText;
          RLDBText55: TRLDBText;
          RLDBText56: TRLDBText;
          RLBand12: TRLBand;
          RLDBText58: TRLDBText;
          RLDBText63: TRLDBText;
          RLDBText70: TRLDBText;
          RLBand13: TRLBand;
          RLLabel3: TRLLabel;
          RLLabel4: TRLLabel;
          RLLabel49: TRLLabel;
          RLSystemInfo1: TRLSystemInfo;
          RLSystemInfo2: TRLSystemInfo;
          RLSystemInfo3: TRLSystemInfo;
          RGSituacao: TRadioGroup;
          RLBand1: TRLBand;
          RLDBImage1: TRLDBImage;
          RLDBText52: TRLDBText;
          RLDBText57: TRLDBText;
          RLDBText18: TRLDBText;
          RLDBText59: TRLDBText;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLDraw1: TRLDraw;
          RLBand5: TRLBand;
          RLDBImage6: TRLDBImage;
          RLDBRichText3: TRLDBRichText;
          RLSystemInfo6: TRLSystemInfo;
          RLSystemInfo7: TRLSystemInfo;
          RLDraw2: TRLDraw;
          RLBand7: TRLBand;
          RLDBImage4: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLSystemInfo4: TRLSystemInfo;
          RLSystemInfo5: TRLSystemInfo;
          RLDraw3: TRLDraw;
          txtnomecurso: TWSEdit;
          txtnomecidade: TWSEdit;
          txtnomenaturalidade: TWSEdit;
          txtnomealuno: TWSEdit;
          lblsituacao: TRLLabel;
    RLReportAcesso: TRLReport;
    RLBand14: TRLBand;
    RLBand15: TRLBand;
    RLDBImage8: TRLDBImage;
    RLBand16: TRLBand;
    RLBand17: TRLBand;
    RLBand18: TRLBand;
    RLDBImage9: TRLDBImage;
    RLDBRichText4: TRLDBRichText;
    RLDraw4: TRLDraw;
    QRelALUACEDATA: TDateField;
    QRelALUACEHORA: TStringField;
    QRelALUACECODIGO: TIntegerField;
    CDSRelALUACEDATA: TDateField;
    CDSRelALUACEHORA: TStringField;
    CDSRelALUACECODIGO: TIntegerField;
    Label4: TLabel;
    Label5: TLabel;
    txtacessoini: TWSMaskEdit;
    RGAcessos: TRadioGroup;
    txtacessofin: TWSMaskEdit;
    RLDBText73: TRLDBText;
    RLLabel48: TRLLabel;
    QRelCURNOME: TStringField;
    CDSRelCURNOME: TStringField;
    QRelALUCERTENTREGA: TDateField;
    CDSRelALUCERTENTREGA: TDateField;
    RLLabel50: TRLLabel;
    RLDBText74: TRLDBText;
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
          procedure btnnaturalidadeClick(Sender: TObject);
          procedure btncodClick(Sender: TObject);
          procedure txtcodKeyPress(Sender: TObject; var Key: Char);
          procedure RGModeloClick(Sender: TObject);
          procedure RLDBText63BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure txtcodExit(Sender: TObject);
          procedure txtcursoExit(Sender: TObject);
          procedure txtcidadeExit(Sender: TObject);
          procedure txtnaturalidadeExit(Sender: TObject);
          procedure RLSystemInfo3BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
    procedure RLDBText72BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FAlunoRel: TFAlunoRel;
     memo: Tmemo;

implementation

uses UDM, UMenu, UCidade, UAluno, UCurso, UEmail, UFuncoes;

{$R *.dfm}

procedure TFAlunoRel.BtnImprimirClick(Sender: TObject);
begin
     with qrel.sql do
     begin
          clear;
          add('select DISTINCT TALUNO.ALUCOD,ALUNOME,ALUENDERECO,ALUBAIRRO,ALUCIDADE,ALUCEP,ALUFONE,ALUFAX,ALUCELULAR,');
          add('ALUEMAIL,ALUCPF,ALUIDENTIDADE,ALUORGAOEXPEDIDOR,ALUDATAEXPEDICAO, ALUCERTENTREGA, CURNOME,');
          add('ALUCARTEIRA,TALUNOFOTO.ALUFOTO,ALUOCORRENCIAS,ALUHISTESCOLAR,');
          add('ALUNACIONALIDADE, ALUNASCIMENTO, ALUNATURALIDADE,');
          add('ALUSITUACAO, ALUESTADOCIVIL,');
          add('ALUSEXO, ALUNOMEMAE, ALUNOMEPAI, ALUMIDIA, TBCIDADE.CIDNOME AS CIDADE,');
          add('TBNATURAL.CIDNOME AS NATURALIDADE, ');
          if (RGModelo.ItemIndex = 3) and (RGAcessos.ItemIndex <> 1) then
               add('ALUACEDATA, ALUACEHORA, ALUACECODIGO')
          else
               add('cast(null as Date) as ALUACEDATA, cast('''' as varchar(5)) AS ALUACEHORA, 0 AS ALUACECODIGO'); //''01/01/2000''
          add('from TALUNO');
          add('LEFT JOIN TCIDADE TBCIDADE ON ALUCIDADE = TBCIDADE.CIDCOD');
          add('LEFT JOIN TCIDADE TBNATURAL ON ALUNATURALIDADE = TBNATURAL.CIDCOD');
          add('LEFT JOIN TALUNOACESSO ON TALUNO.ALUCOD = ALUACEALUNO');
          add('LEFT JOIN TALUNOFOTO ON TALUNO.ALUCOD = TALUNOFOTO.ALUCOD');
          add('LEFT JOIN TCURSO ON TALUNO.ALUCURSO = TCURSO.CURCOD');
          add('WHERE TALUNO.ALUCOD > 0 AND (TALUNO.ALUBLOQ <> ''S'' or TALUNO.ALUBLOQ IS NULL)');
          if RGSituacao.ItemIndex > 0 then
               add('AND ALUSITUACAO = ' + quotedstr(RGSituacao.Items.Strings[RGSituacao.Itemindex]));
          if trim(txtcidade.text) <> '' then
               add('AND ALUCIDADE = ' + trim(txtcidade.text));
          if trim(txtcod.text) <> '' then
               add('AND TALUNO.ALUCOD = ' + trim(txtcod.text));
          if trim(txtnaturalidade.text) <> '' then
               add('AND ALUNATURALIDADE = ' + trim(txtnaturalidade.text));
          if trim(txtcurso.text) <> '' then
               add('AND ALUCURSO = ' + trim(txtcurso.text));
          //if RGModelo.ItemIndex <> 3 then
          //     add('AND ALUACECODIGO = 0');
          if RGAcessos.ItemIndex = 0 then
               add('AND ALUACECODIGO >= 0');
          if RGAcessos.ItemIndex = 1 then //AND (ALUACEDATA > :DATAINI OR ALUACEDATA IS NULL)
               add('AND TALUNO.ALUCOD NOT IN (SELECT DISTINCT T1.ALUACEALUNO FROM TALUNOACESSO T1 WHERE T1.ALUACEDATA BETWEEN :DATAINI AND :DATAFIN)');
          if RGAcessos.ItemIndex = 0 then
               add('AND ALUACEDATA BETWEEN :DATAINI AND :DATAFIN');
          case RGOrdem.itemindex of
               0: add('ORDER BY ALUNOME');
               1: add('ORDER BY TALUNO.ALUCOD');
          end;
          if RGModelo.ItemIndex = 3 then
               add(', ALUACECODIGO');
     end;
     if RGAcessos.ItemIndex < 2 then
     begin
          QRel.Params.parambyname('DATAINI').AsDate := strToDate(txtacessoini.text);
          QRel.Params.parambyname('DATAFIN').AsDate := strToDate(txtacessofin.text);
     end;
     cdsrel.open;

     if rgmodelo.ItemIndex >= 2 then
     begin
          memo := Tmemo.Create(nil);
          memo.Name := 'MEMOIMPORT';
          memo.Parent := FAlunoRel;
          memo.ScrollBars := ssBoth;
          memo.visible := false;
          memo.Lines.clear;
     end;

     case RGModelo.itemindex of
          0: RLReportAna.PreviewModal;
          1: RLReportFicha.PreviewModal;
          2: RLReportEmail.PreviewModal;
          3: RLReportAcesso.PreviewModal;
     end;

     if rgmodelo.ItemIndex >= 2 then
     begin
          memo.Lines.savetofile('c:\posgraduacao\emails.txt');
          memo.free;
          ShellExecute(GetDesktopWindow, 'open', pchar('c:\posgraduacao\emails.txt'), nil, nil, sw_ShowNormal);
     end;

     if (chkmala.Checked) and (cdsrel.recordcount > 0) then
     begin
          try
               femail := tfemail.create(self);
               //femail.txtTexto.ReadOnly := true;
               cdsrel.first;
               while not cdsrel.eof do
               begin
                    femail.txtpara.text := CDSRelALUEMAIL.asstring;
                    {with femail.txtTexto.Lines do
                    begin
                         clear;
                         Add('Prezado aluno(a), segue a sua ficha cadastral que consta em nosso sistema, ' +
                             'favor confirmar e responder esse email se está tudo correto ou a devida correção caso contrário:');
                         add('Aluno...: ' + CDSRelALUCOD.asstring + ' - ' + CDSRelALUNOME.asstring);
                         add('Endereço: ' + CDSRelALUENDERECO.asstring);
                         add('Bairro..: ' + CDSRelALUBAIRRO.asstring);
                         add('Cidade..: ' + CDSRelCIDADE.asstring);
                         add('CEP.....: ' + CDSRelALUCEP.asstring);
                         add('Telefone: ' + CDSRelALUFONE.asstring);
                         add('Fax.....: ' + CDSRelALUFAX.asstring);
                         add('Celular.: ' + CDSRelALUCELULAR.asstring);
                         add('Email...: ' + CDSRelALUEMAIL.asstring);
                         add('Sexo....: ' + CDSRelALUSEXO.asstring);
                         add('Nome Mãe: ' + CDSRelALUNOMEMAE.asstring);
                         add('Nome Pai: ' + CDSRelALUNOMEPAI.asstring);
                         add('CPF.....: ' + CDSRelALUCPF.asstring);
                         add('Registro Geral.: ' + CDSRelALUIDENTIDADE.asstring);
                         add('Orgão Expedidor: ' + CDSRelALUORGAOEXPEDIDOR.asstring);
                         add('Data Expedição.: ' + CDSRelALUDATAEXPEDICAO.asstring);
                         add('Nacionalidade..: ' + CDSRelALUNACIONALIDADE.asstring);
                         add('Nascimento.....: ' + CDSRelALUNASCIMENTO.asstring);
                         add('Naturalidade...: ' + CDSRelALUNATURALIDADE.asstring);
                         add('Estado Civil...: ' + CDSRelALUESTADOCIVIL.asstring);
                    end;}
                    femail.ShowModal;
                    application.ProcessMessages;
                    cdsrel.next;
               end;
          finally
               femail.release;
               femail := nil;
               femail.free;
          end;
     end;
     cdsrel.close;
end;

procedure TFAlunoRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFAlunoRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFAlunoRel.FormKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 27) and (btnsair.enabled = true) then
          btnsair.click;
     if (Key = VK_F8) and (btnimprimir.enabled = true) then
          btnimprimir.Click;
     if (key = 13) then
          Perform(WM_nextDlgCtl, 0, 0);
     if (key = 40) then
          Perform(WM_nextDlgCtl, 0, 0);
     if (key = 38) then
          Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFAlunoRel.btncidadeClick(Sender: TObject);
begin
     if Application.FindComponent('FCidade') <> nil then
          FCidade.Close;

     try
          fcidade := tfcidade.create(self);
          FCidade.FormStyle := fsNormal;
          fCidade.Visible := false;
          usuario('btnconsultar', fcidade.wsinformacao.programa);
          fcidade.showmodal;
          txtcidade.text := dm.cdscidadecidcod.asstring;
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFAlunoRel.btncursoClick(Sender: TObject);
begin
     if Application.FindComponent('FCurso') <> nil then
          FCurso.Close;

     try
          FCurso := tFCurso.create(self);
          FCurso.FormStyle := fsNormal;
          Fcurso.Visible := false;
          usuario('btnconsultar', FCurso.wsinformacao.programa);
          FCurso.showmodal;
          txtcurso.text := dm.CDScursocurcod.asstring;
     finally
          FCurso.release;
          FCurso := nil;
          FCurso.free;
     end;
end;

procedure TFAlunoRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
     txtacessoini.Text := datetostr(startofthemonth(date));
     txtacessofin.Text := datetostr(endofthemonth(date));
end;

procedure TFAlunoRel.txtcursoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtcidade then
               btncidade.click;
          if sender = txtcurso then
               btncurso.click;
          if sender = txtnaturalidade then
               btnnaturalidade.click;
          if sender = txtcod then
               btncod.click;
     end;
end;

procedure TFAlunoRel.btnnaturalidadeClick(Sender: TObject);
begin
     if Application.FindComponent('FCidade') <> nil then
          FCidade.Close;

     try
          fcidade := tfcidade.create(self);
          FCidade.FormStyle := fsNormal;
          fcidade.Visible := false;
          usuario('btnconsultar', fcidade.wsinformacao.programa);
          fcidade.showmodal;
          txtnaturalidade.text := dm.cdscidadecidcod.asstring;
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFAlunoRel.btncodClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          faluno := tfaluno.create(self);
          FAluno.FormStyle := fsNormal;
          faluno.Visible := false;
          usuario('btnconsultar', faluno.wsinformacao.programa);
          faluno.showmodal;
          txtcod.text := dm.cdsalunoalucod.asstring;
     finally
          faluno.release;
          faluno := nil;
          faluno.free;
     end;
end;

procedure TFAlunoRel.txtcodKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          BtnImprimir.click;
end;

procedure TFAlunoRel.RGModeloClick(Sender: TObject);
begin
     chkmala.Checked := false;
     chkmala.Enabled := Rgmodelo.ItemIndex = 1;
     RGAcessos.ItemIndex := 2;
     RGAcessos.Enabled := RGModelo.ItemIndex = 3;
     txtacessoini.Enabled := RGAcessos.Enabled;
     txtacessofin.Enabled := RGAcessos.Enabled;
end;

procedure TFAlunoRel.RLDBText63BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     memo.lines.add(cdsrelaluemail.asstring);
end;

procedure TFAlunoRel.txtcodExit(Sender: TObject);
begin
     txtnomealuno.clear;
     if trim(txtcod.Text) <> '' then
     begin
          try
               strtoint(txtcod.text);
          except
               txtnomealuno.text := 'Campo Aluno Inválido!';
               txtcod.setfocus;
               exit;
          end;
          if not dm.CDSAlunoLkp.active then
               dm.CDSAlunoLkp.open;
          if dm.CDSAlunoLkp.Locate('ALUCOD', txtcod.text, []) then
          begin
               txtnomealuno.text := dm.CDSAlunoLkpALUNOME.asstring;
               txtcurso.Text := dm.cdsalunoLkpalucurso.asstring;
               txtcursoExit(nil);
          end
          else
          begin
               txtnomealuno.text := 'Aluno não cadastrado!';
               txtcod.setfocus;
               exit;
          end;
     end;
end;

procedure TFAlunoRel.txtcursoExit(Sender: TObject);
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

procedure TFAlunoRel.txtcidadeExit(Sender: TObject);
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

procedure TFAlunoRel.txtnaturalidadeExit(Sender: TObject);
begin
     txtnomeNaturalidade.clear;
     if trim(txtNaturalidade.Text) <> '' then
     begin
          try
               strtoint(txtNaturalidade.text);
          except
               txtnomeNaturalidade.text := 'Campo Naturalidade Inválido!';
               txtNaturalidade.setfocus;
               exit;
          end;
          if not dm.CDSCidade.active then
               dm.CDSCidade.open;
          if dm.CDSCidade.Locate('CIDCOD', txtNaturalidade.text, []) then
          begin
               txtnomeNaturalidade.text := dm.CDSCidadeCIDNOME.AsString;
          end
          else
          begin
               txtnomeNaturalidade.text := 'Naturalidade não Cadastrad!';
               txtNaturalidade.setfocus;
               exit;
          end;
     end;
end;

procedure TFAlunoRel.RLSystemInfo3BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     lblsituacao.caption := 'Situação: ' + RGSituacao.Items.Strings[RGSituacao.ItemIndex];
end;

procedure TFAlunoRel.RLDBText72BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     if trim(cdsrelaluemail.asstring) <> '' then
          if trim(cdsrelaluacehora.asstring) = '' then
               if RGAcessos.ItemINdex >= 1 then
                    memo.lines.add(cdsrelaluemail.asstring);
end;

end.
