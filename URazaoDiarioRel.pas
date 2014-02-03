unit URazaoDiarioRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask,
     WSMaskEdit, dateutils, Buttons;

type
     TFRazaoDiarioRel = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
          txtlivro: TWSEdit;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          RGRazao: TRadioGroup;
          QRel: TSQLQuery;
          DSPRel: TDataSetProvider;
          CDSRel: TClientDataSet;
          DSRel: TDataSource;
          btncontaini: TSpeedButton;
          txtcontaini: TWSEdit;
          btncontafin: TSpeedButton;
          txtcontafin: TWSEdit;
          txtdatafin: TWSMaskEdit;
          Label4: TLabel;
          Label5: TLabel;
          txtdataini: TWSMaskEdit;
          QRelPLACODANA: TStringField;
          QRelLCTDATA: TDateField;
          QRelLCTNUMERO: TIntegerField;
          QRelCONTA: TStringField;
          QRelCONTRAPARTIDA: TStringField;
          QRelDEBITO: TFloatField;
          QRelCREDITO: TFloatField;
          QRelPLADESCRICAO: TStringField;
          CDSRelPLACODANA: TStringField;
          CDSRelLCTDATA: TDateField;
          CDSRelLCTNUMERO: TIntegerField;
          CDSRelCONTA: TStringField;
          CDSRelCONTRAPARTIDA: TStringField;
          CDSRelDEBITO: TFloatField;
          CDSRelCREDITO: TFloatField;
          CDSRelPLADESCRICAO: TStringField;
          RLReportRazao: TRLReport;
          RLBand8: TRLBand;
          RLTitulo1: TRLLabel;
          lblperiodo1: TRLLabel;
          RLBand6: TRLBand;
          RLDBText13: TRLDBText;
          RLDBImage3: TRLDBImage;
          RLDBText14: TRLDBText;
          RLDBText15: TRLDBText;
          RLDBText16: TRLDBText;
          RLDBText17: TRLDBText;
          RLBand5: TRLBand;
          RLLabel9: TRLLabel;
          RLLabel10: TRLLabel;
          RLLabel2: TRLLabel;
          RLLabel1: TRLLabel;
          RLLabel4: TRLLabel;
          RLLabel8: TRLLabel;
          RLGroup2: TRLGroup;
          RLBand10: TRLBand;
          RLLabel7: TRLLabel;
          RLDBResult1: TRLDBResult;
          RLDBResult2: TRLDBResult;
          RLBand1: TRLBand;
          RLLabel6: TRLLabel;
          RLDBText1: TRLDBText;
          RLDBText3: TRLDBText;
          lbltitulosaldoant: TRLLabel;
          lblsaldoant1: TRLLabel;
          RGDiario: TRadioGroup;
          RGImprimir: TRadioGroup;
          RLReportDiario: TRLReport;
          RLBand3: TRLBand;
          RLTitulo2: TRLLabel;
          lblperiodo2: TRLLabel;
          RLBand4: TRLBand;
          RLDBText7: TRLDBText;
          RLDBImage2: TRLDBImage;
          RLDBText8: TRLDBText;
          RLDBText11: TRLDBText;
          RLDBText12: TRLDBText;
          RLDBText20: TRLDBText;
          RLBand11: TRLBand;
          RLLabel13: TRLLabel;
          RLLabel15: TRLLabel;
          RLLabel16: TRLLabel;
          RLLabel17: TRLLabel;
          RLLabel18: TRLLabel;
          RLGroup3: TRLGroup;
          RLGroup1: TRLGroup;
          RLBand12: TRLBand;
          RLDBText24: TRLDBText;
          RLDBText25: TRLDBText;
          RLDBText26: TRLDBText;
          RLDBText27: TRLDBText;
          RLBand14: TRLBand;
          RLLabel22: TRLLabel;
          RLDBText28: TRLDBText;
          RLDBText29: TRLDBText;
          RLDBText30: TRLDBText;
          RLBand15: TRLBand;
          RLBand13: TRLBand;
          RLLabel21: TRLLabel;
          RLDBResult3: TRLDBResult;
          RLDBResult4: TRLDBResult;
          RLLabel11: TRLLabel;
          RLDBText22: TRLDBText;
          RLBand16: TRLBand;
          RLLabel12: TRLLabel;
          RLDBResult5: TRLDBResult;
          RLDBResult6: TRLDBResult;
          DSResumido: TDataSource;
          CDSResumido: TClientDataSet;
          DSPResumido: TDataSetProvider;
          QResumido: TSQLQuery;
          RLReportResumido: TRLReport;
          RLBand17: TRLBand;
          RLDBText31: TRLDBText;
          RLDBImage5: TRLDBImage;
          RLDBText32: TRLDBText;
          RLDBText33: TRLDBText;
          RLDBText34: TRLDBText;
          RLDBText35: TRLDBText;
          RLBand19: TRLBand;
          RLLabel14: TRLLabel;
          RLBand20: TRLBand;
          RLLabel19: TRLLabel;
          RLLabel20: TRLLabel;
          RLLabel23: TRLLabel;
          RLBand21: TRLBand;
          RLDBText37: TRLDBText;
          RLDBText39: TRLDBText;
          RLDBText38: TRLDBText;
          RLLabel24: TRLLabel;
          QResumidoDATA: TDateField;
          QResumidoCRE: TFloatField;
          QResumidoDEB: TFloatField;
          CDSResumidoDATA: TDateField;
          CDSResumidoCRE: TFloatField;
          CDSResumidoDEB: TFloatField;
          QResumidoDIF: TFloatField;
          CDSResumidoDIF: TFloatField;
          RLDBText40: TRLDBText;
          RLBand22: TRLBand;
          RLLabel25: TRLLabel;
          RLDBResult7: TRLDBResult;
          RLDBResult8: TRLDBResult;
          RLDBResult9: TRLDBResult;
          RLDBText41: TRLDBText;
          QRelDATA_CODANA: TStringField;
          txtcodredini: TWSEdit;
          txtcodredfin: TWSEdit;
          Label3: TLabel;
          Label1: TLabel;
          Label6: TLabel;
          txtplanoneg: TWSEdit;
          btnplanoneg: TSpeedButton;
          RLSystemInfo1: TRLSystemInfo;
          RLSystemInfo2: TRLSystemInfo;
          RLSystemInfo3: TRLSystemInfo;
          RLDBText36: TRLDBText;
          RLDBText42: TRLDBText;
          RLDBText21: TRLDBText;
          RLDBText43: TRLDBText;
          RLDBText18: TRLDBText;
          RLDBText44: TRLDBText;
          CDSRelDATA_CODANA: TStringField;
          RLBand7: TRLBand;
          RLDBImage4: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          RLBand2: TRLBand;
          RLDBImage1: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo4: TRLSystemInfo;
          RLSystemInfo5: TRLSystemInfo;
          RLDraw2: TRLDraw;
          RLBand18: TRLBand;
          RLDBImage6: TRLDBImage;
          RLDBRichText3: TRLDBRichText;
          RLSystemInfo6: TRLSystemInfo;
          RLSystemInfo7: TRLSystemInfo;
          RLDraw3: TRLDraw;
          txtnomeplanoneg: TWSEdit;
    RLLabel5: TRLLabel;
    QRelLCTDOCUMENTO: TIntegerField;
    CDSRelLCTDOCUMENTO: TIntegerField;
    chkComp: TCheckBox;
    RLBBandRazao: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    lblsaldo1: TRLLabel;
    RLDBText45: TRLDBText;
    QRelLCTCOMPLEMENTO: TMemoField;
    CDSRelLCTCOMPLEMENTO: TMemoField;
    lblTipoSaldoAnt1: TRLLabel;
    QRelHISNOME: TMemoField;
    CDSRelHISNOME: TMemoField;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    RLDBText2: TRLDBText;
    lbltiposaldo: TRLLabel;
    QRelPLADC: TStringField;
    CDSRelPLADC: TStringField;
    txtnomeini: TWSEdit;
    txtnomefin: TWSEdit;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure FormShow(Sender: TObject);
          procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
          procedure RLDBText19BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure RGImprimirClick(Sender: TObject);
          procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
          procedure txtcontainiKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure RLLabel7BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure txtcodrediniExit(Sender: TObject);
          procedure txtcodredfinExit(Sender: TObject);
          procedure btnplanonegClick(Sender: TObject);
          procedure txtplanonegExit(Sender: TObject);
    procedure btncontainiClick(Sender: TObject);
    procedure btncontafinClick(Sender: TObject);
    procedure RLLabel6BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure txtcodredfinKeyPress(Sender: TObject; var Key: Char);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FRazaoDiarioRel: TFRazaoDiarioRel;
     saldo: double = 0;
     conta: string = '';


implementation

uses UDM, UMenu, UPlanoConta, UPlanoNegocios, USenha, UFuncoes;

{$R *.dfm}

procedure TFRazaoDiarioRel.BtnImprimirClick(Sender: TObject);
begin
     try
          strtodate(txtdataini.text);
     except
          showmessage('Campo data inicial inválido!');
          txtdataini.setfocus;
          exit;
     end;
     try
          strtodate(txtdatafin.text);
     except
          showmessage('Campo data final inválido!');
          txtdatafin.setfocus;
          exit;
     end;

     //txtComplementoCompleto.Visible := chkComplemento.Checked;
     //if chkComplemento.Checked then
     //     RLBBandRazao.Height := 27
     //else
     //     RLBBandRazao.Height := 15;

     if (RGImprimir.ItemIndex = 0) or (RGDiario.itemindex = 0) then
     begin
          with qrel.sql do
          begin
               clear;
               add('select PLACODANA, LCTDATA, LCTNUMERO, LCTDOCUMENTO, LCTDATA||PLACODANA AS DATA_CODANA, LCTCOMPLEMENTO,');
               //if not chkComplemento.Checked then
               //    add('HISNOME ||'' ''|| cast(substring(LCTCOMPLEMENTO from 1 for 50) as varchar(50)) as HISNOME,')
               //else
                    add('COALESCE(HISNOME,'''') ||'' ''|| COALESCE(LCTCOMPLEMENTO,'''') as HISNOME,');
               add('LCTDEBITO as CONTA, LCTCREDITO AS CONTRAPARTIDA, LCTVALOR AS DEBITO, NULL AS CREDITO, PLADESCRICAO, PLADC');
               add('from TLCTOCONTABIL');
               add('left join THISTPADRAO on LCTHISTPADRAO = HISCOD');
               add('left join TPLANOCONTA on LCTDEBITO = PLACODRED');
               add('where LCTDATA between :dataini and :datafin');
               if trim(txtplanoneg.text) <> '' then
                    add('AND LCTPLANONEGOCIOS = ' + quotedstr(trim(txtplanoneg.text)));
               if trim(txtcontaini.text) <> '' then
                    add('AND PLACODANA >= ' + quotedstr(trim(txtcontaini.text)));
               if trim(txtcontafin.text) <> '' then
                    add('AND PLACODANA <= ' + quotedstr(trim(txtcontafin.text)));

               add('union all');

               add('select PLACODANA, LCTDATA, LCTNUMERO, LCTDOCUMENTO, LCTDATA||PLACODANA AS DATA_CODANA, LCTCOMPLEMENTO,');
               //0if not chkComplemento.Checked then
               //     add('HISNOME ||'' ''|| Coalesce(cast(substring(LCTCOMPLEMENTO from 1 for 50) as varchar(50)),'''') as HISNOME,')
               //else
                    add('COALESCE(HISNOME,'''') ||'' ''|| COALESCE(LCTCOMPLEMENTO,'''') as HISNOME,');
               add('LCTCREDITO as CONTA, LCTDEBITO AS CONTRAPARTIDA, NULL AS DEBITO, LCTVALOR AS CREDITO, PLADESCRICAO, PLADC');
               add('from TLCTOCONTABIL');
               add('left join THISTPADRAO on LCTHISTPADRAO = HISCOD');
               add('left join TPLANOCONTA on LCTCREDITO = PLACODRED');
               add('where LCTDATA between :dataini and :datafin');
               if trim(txtplanoneg.text) <> '' then
                    add('AND LCTPLANONEGOCIOS = ' + quotedstr(trim(txtplanoneg.text)));
               if trim(txtcontaini.text) <> '' then
                    add('AND PLACODANA >= ' + quotedstr(trim(txtcontaini.text)));
               if trim(txtcontafin.text) <> '' then
                    add('AND PLACODANA <= ' + quotedstr(trim(txtcontafin.text)));
               case RGImprimir.itemindex of
                    0: add('ORDER BY 1, 2, 3');
                    1: add('ORDER BY 4, 3');
               end;
          end;
          //if fsenha.txtusuario.text = 'Master' then
          //     showmessage(qrel.sql.text);
          QRel.ParamByName('dataini').asdate := strtodate(txtdataini.Text);
          QRel.ParamByName('datafin').asdate := strtodate(txtdatafin.Text);
          cdsrel.open;
          saldo := 0;

          if (trim(txtcontaini.text) = trim(txtcontafin.text)) and (cdsrel.recordcount = 0) then
          begin

               CDSRel.append;
               CDSRelPLACODANA.asString := txtcontaini.Text;
               CDSRelLCTDATA.asDateTime := strToDate(txtdataini.text);
               CDSRelLCTNUMERO.AsINteger := 0;
               CDSRelCONTA.AsString := txtcodredini.Text;
               CDSRelCONTRAPARTIDA.asString := '';
               CDSRelDEBITO.AsINteger := 0;
               CDSRelCREDITO.AsINteger := 0;
               CDSRelPLADESCRICAO.asString := executasqlretorno('Select pladescricao from tplanoconta where placodred = ' + txtcodredini.Text);
               CDSRelHISNOME.asString := '';
               CDSRel.Post;

               //saldo := sqltotal('SELECT SALDO FROM PSALDO_ANT_CONTA(' +
               //     quotedstr(CDSRelCONTA.asstring) + ', ' +
               //     quotedstr(buscatroca(txtdataini.Text, '/', '.')) + ' )');
               //saldo := saldo * -1;
               //lblsaldoant1.caption := formatfloat('#,###,###0.00', saldo);
          end;

          case RGimprimir.ItemIndex of
               0: RLReportRazao.PreviewModal;
               1: RLReportDiario.PreviewModal;
          end;
          cdsrel.close;
     end
     else
     begin
          with QResumido.sql do
          begin
               clear;
               add('select DATA, SUM(CREDITO) as CRE, SUM(DEBITO) as DEB, (SUM(CREDITO) - SUM(DEBITO)) as DIF');
               add('from VDIARIO');
               add('inner join TPLANOCONTA on CODANALITICO = PLACODANA');
               add('where DATA between :dataini and :datafin');
               if trim(txtplanoneg.text) <> '' then
                    add('AND PLANONEG = ' + quotedstr(trim(txtplanoneg.text)));
               if trim(txtcontaini.text) <> '' then
                    add('AND CODANALITICO >= ' + quotedstr(trim(txtcontaini.text)));
               if trim(txtcontafin.text) <> '' then
                    add('AND CODANALITICO <= ' + quotedstr(trim(txtcontafin.text)));
               add('GROUP BY DATA ORDER BY DATA');
          end;
          QResumido.ParamByName('dataini').asdate := strtodate(txtdataini.Text);
          QResumido.ParamByName('datafin').asdate := strtodate(txtdatafin.Text);
          CDSResumido.open;
          saldo := 0;
          RLReportResumido.PreviewModal;
          CDSResumido.close;
     end;
end;

procedure TFRazaoDiarioRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFRazaoDiarioRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     salva_propriedades_tela((sender as tform).name, sender as TForm);
     action := cafree;
end;

procedure TFRazaoDiarioRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFRazaoDiarioRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
     txtdataini.Text := datetostr(startofthemonth(date));
     txtdatafin.Text := datetostr(endofthemonth(date));
end;

procedure TFRazaoDiarioRel.RLBand8BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     RLTitulo1.caption := RGrazao.Items.Strings[RGRazao.itemindex]; // + ' Nº ' + txtlivro.text;
     lblperiodo1.caption := 'Período: ' + txtdataini.Text + ' a ' + txtdatafin.Text;
end;

procedure TFRazaoDiarioRel.RLDBText19BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     saldo := saldo + CDSRelDEBITO.asfloat - CDSRelCREDITO.asfloat;
     if saldo < 0 then
          lblsaldo1.caption := formatfloat('#,###,###0.00', saldo * (-1))
     else
          lblsaldo1.caption := formatfloat('#,###,###0.00', saldo);     
     conta := CDSRelCONTA.asstring;

     if CDSRelPLADC.asString = 'DEVEDORA' then
     begin
          if saldo > 0 then
               lblTipoSaldo.Caption := 'D';
          if saldo < 0 then
               lblTipoSaldo.Caption := 'C';
          if saldo = 0 then
               lblTipoSaldo.Caption := ' ';
     end;

     if CDSRelPLADC.asString = 'CREDORA' then
     begin
          if saldo > 0 then
               lblTipoSaldo.Caption := 'C';
          if saldo < 0 then
               lblTipoSaldo.Caption := 'C';
          if saldo = 0 then
               lblTipoSaldo.Caption := ' ';
     end;

     if (Copy(CDSRelPLACODANA.asString,1,1) = '3') or (Copy(CDSRelPLACODANA.asString,1,1) = '2') then
     begin
          if CDSRelPLADC.asString = 'DEVEDORA' then
          begin
               if saldo > 0 then
                    lblTipoSaldo.Caption := 'C';
               if saldo < 0 then
                    lblTipoSaldo.Caption := 'D';
               if saldo = 0 then
                    lblTipoSaldo.Caption := ' ';
          end;

          if CDSRelPLADC.asString = 'CREDORA' then
          begin
               if saldo > 0 then
                    lblTipoSaldo.Caption := 'D';
               if saldo < 0 then
                    lblTipoSaldo.Caption := 'C';
               if saldo = 0 then
                    lblTipoSaldo.Caption := ' ';
          end;
     end;

     // and ((Copy(CDSRelTMPCODANA.asString,1,1) = '1') or (Copy(CDSRelTMPCODANA.asString,1,1) = '3')))
     // and ((Copy(CDSRelTMPCODANA.asString,1,1) = '2') or (Copy(CDSRelTMPCODANA.asString,1,1) = '4'))) then

     {if saldo < 0 then
          lblTipoSaldo.Caption := 'D';
     if saldo > 0 then
          lblTipoSaldo.Caption := 'C';
     if saldo = 0 then
          lblTipoSaldo.Caption := ' ';}

     if (trim(txtcontaini.text) = trim(txtcontafin.text)) and (CDSRelLCTNUMERO.AsInteger = 0) then
         //RLBBandRazao.visible := false
         RLBBandRazao.Height := 0
     else
         RLBBandRazao.Height := 18;
end;

procedure TFRazaoDiarioRel.RGImprimirClick(Sender: TObject);
begin
     RGRazao.Enabled := RGImprimir.ItemIndex = 0;
     RGDiario.Enabled := RGImprimir.ItemIndex = 1;
end;

procedure TFRazaoDiarioRel.RLBand3BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     RLTitulo2.caption := 'Diário Nº ' + txtlivro.text;
     lblperiodo2.caption := 'Período: ' + txtdataini.Text + ' a ' + txtdatafin.Text;
end;

procedure TFRazaoDiarioRel.txtcontainiKeyDown(Sender: TObject;
     var Key: Word; Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if (sender = txtcontaini) or (sender = txtcodredini) then
               btncontaini.click;
          if (sender = txtcontafin) or (sender = txtcodredfin) then
               btncontafin.click;
          if (sender = txtplanoneg) then
               btnplanoneg.click;
     end;
end;

procedure TFRazaoDiarioRel.RLLabel7BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     conta := '';
end;

procedure TFRazaoDiarioRel.txtcodrediniExit(Sender: TObject);
begin
     txtnomeini.Clear;
     if trim(txtcodredini.Text) <> '' then
     begin
          txtcontaini.text := executasqlretorno('SELECT PLACODANA FROM TPLANOCONTA WHERE PLASA = ''ANALITICA'' AND PLACODRED = ' + txtcodredini.text);
          txtnomeini.text := executasqlretorno('SELECT PLADESCRICAO FROM TPLANOCONTA WHERE PLASA = ''ANALITICA'' AND PLACODRED = ' + txtcodredini.text);
          if txtcontaini.text = '' then
          begin
               txtcontaini.text := 'Conta inválida.';
               txtcodredini.setfocus;
          end;
     end
     else
          txtcontaini.text := '1';
end;

procedure TFRazaoDiarioRel.txtcodredfinExit(Sender: TObject);
begin
     txtnomefin.Clear; 
     if trim(txtcodredfin.Text) <> '' then
     begin
          txtcontafin.text := executasqlretorno('SELECT PLACODANA FROM TPLANOCONTA WHERE PLASA = ''ANALITICA'' AND PLACODRED = ' + txtcodredfin.text);
          txtnomefin.text := executasqlretorno('SELECT PLADESCRICAO FROM TPLANOCONTA WHERE PLASA = ''ANALITICA'' AND PLACODRED = ' + txtcodredfin.text);
          if txtcontafin.text = '' then
          begin
               txtcontafin.text := 'Conta inválida.';
               txtcodredfin.setfocus;
          end;
     end
     else
          txtcontafin.text := '99999';
end;

procedure TFRazaoDiarioRel.btnplanonegClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoNegocios') <> nil then
          FPlanoNegocios.Close;

     try
          FPlanoNegocios := tFPlanoNegocios.create(self);
          FplanoNegocios.FormStyle := fsNormal;
          FPlanoNegocios.Visible := false;
          usuario('btnconsultar', FPlanoNegocios.wsinformacao.programa);
          FPlanoNegocios.showmodal;
          txtplanoneg.text := dm.CDSPlanoNegociosPLANEGCOD.asstring;
     finally
          FPlanoNegocios.release;
          FPlanoNegocios := nil;
          FPlanoNegocios.free;
     end;
end;

procedure TFRazaoDiarioRel.txtplanonegExit(Sender: TObject);
begin
     txtnomeplanoneg.clear;
     if trim(txtplanoneg.Text) <> '' then
     begin
          try
               strtoint(txtplanoneg.Text);
          except
               txtnomeplanoneg.text := 'Campo Plano de Negócios Inválido!';
               txtplanoneg.setfocus;
               exit;
          end;
          if not dm.CDSPlanoNegocios.active then
               dm.CDSPlanoNegocios.open;
          if dm.CDSPlanoNegocios.Locate('PLANEGCOD', txtplanoneg.text, []) then
          begin
               txtnomeplanoneg.text := dm.CDSPlanoNegociosPLANEGNOME.asstring;
          end
          else
          begin
               txtnomeplanoneg.text := 'Plano de Negócios não cadastrado!';
               txtplanoneg.setfocus;
               exit;
          end;
     end;
end;

procedure TFRazaoDiarioRel.btncontainiClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FplanoConta.Close;

     try
          FPlanoConta := tFPlanoConta.create(self);
          FplanoConta.FormStyle := fsNormal;
          FPlanoCOnta.Visible := false;
          usuario('btnconsultar', FPlanoConta.wsinformacao.programa);
          FPlanoConta.showmodal;
          txtcodredini.text := dm.CDSPlanoContaPLACODRED.asstring;
          txtcontaini.text := dm.CDSPlanoContaPLACODANA.asstring;
          txtnomeini.text := dm.CDSPlanoContaPLADESCRICAO.asstring;
     finally
          FPlanoConta.release;
          FPlanoConta := nil;
          FPlanoConta.free;
     end;
end;

procedure TFRazaoDiarioRel.btncontafinClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          FPlanoConta := tFPlanoConta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', FPlanoConta.wsinformacao.programa);
          FPlanoConta.showmodal;
          txtcodredfin.text := dm.CDSPlanoContaPLACODRED.asstring;
          txtcontafin.text := dm.CDSPlanoContaPLACODANA.asstring;
          txtnomeini.text := dm.CDSPlanoContaPLADESCRICAO.asstring;
     finally
          FPlanoConta.release;
          FPlanoConta := nil;
          FPlanoConta.free;
     end;
end;

procedure TFRazaoDiarioRel.RLLabel6BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     lblsaldoant1.Visible := conta <> CDSRelCONTA.asstring;
     lblTipoSaldoAnt1.Visible := conta <> CDSRelCONTA.asstring;
     lbltitulosaldoant.Visible := conta <> CDSRelCONTA.asstring;

     if conta <> CDSRelCONTA.asstring then
     begin
          saldo := sqltotal('SELECT SALDO FROM PSALDO_ANT_CONTA(' +
               quotedstr(CDSRelCONTA.asstring) + ', ' +
               quotedstr(buscatroca(txtdataini.Text, '/', '.')) + ' )');
     end;

     if saldo < 0 then
     begin
          lblTipoSaldoAnt1.Caption := 'D';
          lblsaldoant1.caption := formatfloat('#,###,###0.00', saldo * (-1));
     end;
     if saldo > 0 then
     begin
          lblTipoSaldoAnt1.Caption := 'C';
          lblsaldoant1.caption := formatfloat('#,###,###0.00', saldo);
     end;
     if saldo = 0 then
     begin
          lblTipoSaldoAnt1.Caption := ' ';
          lblsaldoant1.caption := formatfloat('#,###,###0.00', saldo);
     end;

     if CDSRelPLADC.asString = 'DEVEDORA' then
     begin
          if saldo > 0 then
               lblTipoSaldoAnt1.Caption := 'D';
          if saldo < 0 then
               lblTipoSaldoAnt1.Caption := 'C';
          if saldo = 0 then
               lblTipoSaldoAnt1.Caption := ' ';
     end;

     if CDSRelPLADC.asString = 'CREDORA' then
     begin
          if saldo > 0 then
               lblTipoSaldoAnt1.Caption := 'C';
          if saldo < 0 then
               lblTipoSaldoAnt1.Caption := 'D';
          if saldo = 0 then
               lblTipoSaldoAnt1.Caption := ' ';
     end;

     if (Copy(CDSRelPLACODANA.asString,1,1) = '3') or (Copy(CDSRelPLACODANA.asString,1,1) = '2') then
     begin
          if CDSRelPLADC.asString = 'DEVEDORA' then
          begin
               if saldo > 0 then
                    lblTipoSaldoAnt1.Caption := 'C';
               if saldo < 0 then
                    lblTipoSaldoAnt1.Caption := 'D';
               if saldo = 0 then
                    lblTipoSaldoAnt1.Caption := ' ';
          end;

          if CDSRelPLADC.asString = 'CREDORA' then
          begin
               if saldo > 0 then
                    lblTipoSaldoAnt1.Caption := 'D';
               if saldo < 0 then
                    lblTipoSaldoAnt1.Caption := 'C';
               if saldo = 0 then
                    lblTipoSaldoAnt1.Caption := ' ';
          end;
     end;

end;

procedure TFRazaoDiarioRel.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFRazaoDiarioRel.txtcodredfinKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;

end;

end.
