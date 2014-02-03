unit UBalanceteRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, math,
     WSMaskEdit, dateutils, Buttons, WSComboBox;

type
     TFBalanceteRel = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          QRel: TSQLQuery;
          DSPRel: TDataSetProvider;
          CDSRel: TClientDataSet;
          DSRel: TDataSource;
          Label1: TLabel;
          btncontaini: TSpeedButton;
          txtcontaini: TWSEdit;
          btncontafin: TSpeedButton;
          txtcontafin: TWSEdit;
          Label3: TLabel;
          txtdatafin: TWSMaskEdit;
          Label4: TLabel;
          txtdataini: TWSMaskEdit;
          RLReportDiario: TRLReport;
          RLBand8: TRLBand;
          RLTitulo: TRLLabel;
          lblperiodo: TRLLabel;
          RLBand6: TRLBand;
          RLDBText13: TRLDBText;
          RLDBImage3: TRLDBImage;
          RLDBText14: TRLDBText;
          RLDBText15: TRLDBText;
          RLDBText16: TRLDBText;
          RLDBText17: TRLDBText;
          RLBand5: TRLBand;
          RLLabel10: TRLLabel;
    lblcodigo: TRLLabel;
          lblsaldoant: TRLLabel;
          lblcredito: TRLLabel;
          lbldebito: TRLLabel;
    lblsaldoatual: TRLLabel;
          RGContasZeradas: TRadioGroup;
          RGModelo_: TRadioGroup;
          RLReportAnual: TRLReport;
          RLBand17: TRLBand;
          RLDBText31: TRLDBText;
          RLDBImage5: TRLDBImage;
          RLDBText32: TRLDBText;
          RLDBText33: TRLDBText;
          RLDBText34: TRLDBText;
          RLDBText35: TRLDBText;
          RLBand19: TRLBand;
          RLTituloAnual: TRLLabel;
          RLBand20: TRLBand;
          RLBand21: TRLBand;
    txtdesc: TRLDBText;
    txtmes2: TRLDBText;
    txtmes1: TRLDBText;
          RLLabel24: TRLLabel;
    txtmes3: TRLDBText;
          RGRel: TRadioGroup;
          RLBand9: TRLBand;
    TxtNivelA: TRLDBText;
    txtCOdigo: TRLDBText;
          txtdebito: TRLDBText;
          txtcredito: TRLDBText;
          QRelNIVEL_DESC: TStringField;
          QRelTMPCODANA: TStringField;
          QRelTMPCONTA: TStringField;
          QRelTMPDESC: TStringField;
          QRelTMPDEBITO: TFloatField;
          QRelTMPCREDITO: TFloatField;
          QRelTMPSALDOANTERIOR: TFloatField;
          QRelTMPMES1: TFloatField;
          QRelTMPMES2: TFloatField;
          QRelTMPMES3: TFloatField;
          QRelTMPMES4: TFloatField;
          QRelTMPMES5: TFloatField;
          QRelTMPMES6: TFloatField;
          QRelTMPMES7: TFloatField;
          QRelTMPMES8: TFloatField;
          QRelTMPMES9: TFloatField;
          QRelTMPMES10: TFloatField;
          QRelTMPMES11: TFloatField;
          QRelTMPMES12: TFloatField;
          CDSRelNIVEL_DESC: TStringField;
          CDSRelTMPCODANA: TStringField;
          CDSRelTMPCONTA: TStringField;
          CDSRelTMPDESC: TStringField;
          CDSRelTMPDEBITO: TFloatField;
          CDSRelTMPCREDITO: TFloatField;
          CDSRelTMPSALDOANTERIOR: TFloatField;
          CDSRelTMPMES1: TFloatField;
          CDSRelTMPMES2: TFloatField;
          CDSRelTMPMES3: TFloatField;
          CDSRelTMPMES4: TFloatField;
          CDSRelTMPMES5: TFloatField;
          CDSRelTMPMES6: TFloatField;
          CDSRelTMPMES7: TFloatField;
          CDSRelTMPMES8: TFloatField;
          CDSRelTMPMES9: TFloatField;
          CDSRelTMPMES10: TFloatField;
          CDSRelTMPMES11: TFloatField;
          CDSRelTMPMES12: TFloatField;
          QRelTMPSALDO: TFloatField;
          QRelTMPTIPOSALDO: TStringField;
          QRelTMPTIPOSALDOANT: TStringField;
          CDSRelTMPSALDO: TFloatField;
          CDSRelTMPTIPOSALDO: TStringField;
          CDSRelTMPTIPOSALDOANT: TStringField;
    txtsaldoatual: TRLDBText;
          txtsaldoant: TRLDBText;
          txttiposaldoant: TRLDBText;
    txttiposaldoatual: TRLDBText;
          RLLabel1: TRLLabel;
    txtmes6: TRLDBText;
    txtmes5: TRLDBText;
    txtmes4: TRLDBText;
    txtmes8: TRLDBText;
    txtmes7: TRLDBText;
    txtmes9: TRLDBText;
    txtmes12: TRLDBText;
    txtmes11: TRLDBText;
    txtmes10: TRLDBText;
    txttotal: TRLDBText;
          RLLabel4: TRLLabel;
          RLLabel5: TRLLabel;
          RLLabel6: TRLLabel;
          RLLabel7: TRLLabel;
          RLLabel9: TRLLabel;
          RLLabel11: TRLLabel;
          RLLabel12: TRLLabel;
          RLLabel13: TRLLabel;
          RLLabel15: TRLLabel;
          RLLabel16: TRLLabel;
          RLLabel17: TRLLabel;
          RLLabel18: TRLLabel;
          QRelTMPTOTALMES: TFloatField;
          CDSRelTMPTOTALMES: TFloatField;
          panano: TPanel;
          Label2: TLabel;
          txtano: TWSMaskEdit;
          RLBand1: TRLBand;
    lbltotal2: TRLLabel;
          lbltotaldebito: TRLLabel;
          lbltotalcredito: TRLLabel;
          txtcodredini: TWSEdit;
          txtcodredfin: TWSEdit;
          btnplanoneg: TSpeedButton;
          Label6: TLabel;
          txtplanoneg: TWSEdit;
          RLSystemInfo1: TRLSystemInfo;
          RLSystemInfo2: TRLSystemInfo;
          RLDBText18: TRLDBText;
          RLDBText22: TRLDBText;
          RLDBText23: TRLDBText;
          RLDBText24: TRLDBText;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          RLBand3: TRLBand;
          RLDBImage1: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLSystemInfo3: TRLSystemInfo;
          RLSystemInfo4: TRLSystemInfo;
          RLDraw2: TRLDraw;
          txtnomeplanoneg: TWSEdit;
          chknivel1e2: TCheckBox;
          RLBand4: TRLBand;
          lblm1: TRLLabel;
          RLLabel19: TRLLabel;
          lblm2: TRLLabel;
          lblm4: TRLLabel;
          lblm3: TRLLabel;
          lblm5: TRLLabel;
          lblm6: TRLLabel;
          lblm8: TRLLabel;
          lblm7: TRLLabel;
          lblm10: TRLLabel;
          lblm11: TRLLabel;
          lbltotal: TRLLabel;
          lblm12: TRLLabel;
          lblm9: TRLLabel;
          lbla1: TRLLabel;
          RLLabel20: TRLLabel;
          lbla2: TRLLabel;
          lbla4: TRLLabel;
          lbla3: TRLLabel;
          lbla5: TRLLabel;
          lbla6: TRLLabel;
          lbla8: TRLLabel;
          lbla7: TRLLabel;
          lbla10: TRLLabel;
          lbla11: TRLLabel;
          lblatotal: TRLLabel;
          lbla12: TRLLabel;
          lbla9: TRLLabel;
          RGDados: TRadioGroup;
          QRelTMPSALDOANTORC: TFloatField;
          QRelTMPMES1ORC: TFloatField;
          QRelTMPMES2ORC: TFloatField;
          QRelTMPMES3ORC: TFloatField;
          QRelTMPMES4ORC: TFloatField;
          QRelTMPMES5ORC: TFloatField;
          QRelTMPMES6ORC: TFloatField;
          QRelTMPMES7ORC: TFloatField;
          QRelTMPMES8ORC: TFloatField;
          QRelTMPMES9ORC: TFloatField;
          QRelTMPMES10ORC: TFloatField;
          QRelTMPMES11ORC: TFloatField;
          QRelTMPMES12ORC: TFloatField;
          QRelTMPTOTALMESORC: TFloatField;
          CDSRelTMPSALDOANTORC: TFloatField;
          CDSRelTMPMES1ORC: TFloatField;
          CDSRelTMPMES2ORC: TFloatField;
          CDSRelTMPMES3ORC: TFloatField;
          CDSRelTMPMES4ORC: TFloatField;
          CDSRelTMPMES5ORC: TFloatField;
          CDSRelTMPMES6ORC: TFloatField;
          CDSRelTMPMES7ORC: TFloatField;
          CDSRelTMPMES8ORC: TFloatField;
          CDSRelTMPMES9ORC: TFloatField;
          CDSRelTMPMES10ORC: TFloatField;
          CDSRelTMPMES11ORC: TFloatField;
          CDSRelTMPMES12ORC: TFloatField;
          CDSRelTMPTOTALMESORC: TFloatField;
          CDSRelTMPDIF1: TFloatField;
          CDSRelTMPDIF2: TFloatField;
          CDSRelTMPDIF3: TFloatField;
          CDSRelTMPDIF4: TFloatField;
          CDSRelTMPDIF5: TFloatField;
          CDSRelTMPDIF6: TFloatField;
          CDSRelTMPDIF7: TFloatField;
          CDSRelTMPDIF8: TFloatField;
          CDSRelTMPDIF9: TFloatField;
          CDSRelTMPDIF10: TFloatField;
          CDSRelTMPDIF11: TFloatField;
          CDSRelTMPDIF12: TFloatField;
          CDSRelTMPP1: TFloatField;
          CDSRelTMPP2: TFloatField;
          CDSRelTMPP3: TFloatField;
          CDSRelTMPP4: TFloatField;
          CDSRelTMPP5: TFloatField;
          CDSRelTMPP6: TFloatField;
          CDSRelTMPP7: TFloatField;
          CDSRelTMPP8: TFloatField;
          CDSRelTMPP9: TFloatField;
          CDSRelTMPP10: TFloatField;
          CDSRelTMPP11: TFloatField;
          CDSRelTMPP12: TFloatField;
          RLReportAcu: TRLReport;
          RLBand7: TRLBand;
          RLDBText25: TRLDBText;
          RLDBImage4: TRLDBImage;
          RLDBText26: TRLDBText;
          RLDBText27: TRLDBText;
          RLDBText28: TRLDBText;
          RLDBText29: TRLDBText;
          RLDBText30: TRLDBText;
          RLDBText36: TRLDBText;
          RLBand10: TRLBand;
          RLLabelOrcRel: TRLLabel;
          RLSystemInfo5: TRLSystemInfo;
          RLBand11: TRLBand;
          RLLabel23: TRLLabel;
          RLLabel25: TRLLabel;
          RLLabel26: TRLLabel;
          RLLabel110: TRLLabel;
          RLLabel111: TRLLabel;
          RLLabel112: TRLLabel;
          RLLabel113: TRLLabel;
          RLBand12: TRLBand;
          RLDBText41: TRLDBText;
          rltxtmes: TRLDBText;
          rltxtorc: TRLDBText;
          rltxtdif: TRLDBText;
          rltxtp: TRLDBText;
          RLDBText55: TRLDBText;
          RLBand13: TRLBand;
          RLDBImage6: TRLDBImage;
          RLDBRichText3: TRLDBRichText;
          RLSystemInfo6: TRLSystemInfo;
          RLSystemInfo7: TRLSystemInfo;
          RLDraw3: TRLDraw;
          RLBand14: TRLBand;
          lblorc: TRLLabel;
          RLLabel39: TRLLabel;
          lblmes: TRLLabel;
          lblp: TRLLabel;
          lbldif: TRLLabel;
          lblacuorc: TRLLabel;
          RLLabel53: TRLLabel;
          lblacumes: TRLLabel;
          lblacup: TRLLabel;
          lblacudif: TRLLabel;
          RLLabel22: TRLLabel;
          RLLabel27: TRLLabel;
          RLLabel28: TRLLabel;
          RLLabel29: TRLLabel;
          RLLabel31: TRLLabel;
          RLDBText54: TRLDBText;
          RLDBText56: TRLDBText;
          RLDBText57: TRLDBText;
          RLDBText58: TRLDBText;
          lblmesacu: TRLLabel;
          lbldifacu: TRLLabel;
          lblpacu: TRLLabel;
          lblorcacu: TRLLabel;
          lblacumesacu: TRLLabel;
          lblacudifacu: TRLLabel;
          lblacupacu: TRLLabel;
          lblacuorcacu: TRLLabel;
          CDSRelTMPTOTALDIF: TFloatField;
          CDSRelTMPTOTALP: TFloatField;
          txtmes: TWSMaskEdit;
          Label7: TLabel;
          Label8: TLabel;
    txtdataexc: TWSMaskEdit;
    Label9: TLabel;
    QRelPLASA: TStringField;
    QRelPLADC: TStringField;
    CDSRelPLASA: TStringField;
    CDSRelPLADC: TStringField;
    QRelPLANIVEL: TIntegerField;
    CDSRelPLANIVEL: TIntegerField;
    chkDataIni: TCheckBox;
    lblDataIni: TLabel;
    txtNivel: TWSComboBox;
    Label5: TLabel;
    txtnomefin: TWSEdit;
    txtnomeini: TWSEdit;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtcodKeyPress(Sender: TObject; var Key: Char);
          procedure FormShow(Sender: TObject);
          procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
          procedure btncontainiClick(Sender: TObject);
          procedure btncontafinClick(Sender: TObject);
          procedure txtcontafinKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure RGRelClick(Sender: TObject);
          procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
          procedure txtcodrediniExit(Sender: TObject);
          procedure txtcodredfinExit(Sender: TObject);
          procedure btnplanonegClick(Sender: TObject);
          procedure txtplanonegKeyPress(Sender: TObject; var Key: Char);
          procedure txtplanonegExit(Sender: TObject);
          procedure txtdescBeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure RLLabel19BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure TxtNivelABeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure RLDBText41BeforePrint(Sender: TObject;
               var Text: string; var PrintIt: Boolean);
          procedure RLLabel39BeforePrint(Sender: TObject;
               var Text: string; var PrintIt: Boolean);
          procedure RLSystemInfo5BeforePrint(Sender: TObject;
               var Text: string; var PrintIt: Boolean);
          procedure RGDadosClick(Sender: TObject);
    procedure chkDataIniClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FBalanceteRel: TFBalanceteRel;
     m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12: double;
     o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12: double;
     orc: double = 0;
     mes: double = 0;
     saldo: double = 0;

implementation

uses UDM, UMenu, UPlanoConta, UPlanoNegocios, USenha, UFuncoes;

{$R *.dfm}

procedure TFBalanceteRel.BtnImprimirClick(Sender: TObject);
var i, planoneg: integer;
begin
     if RgRel.ItemIndex = 1 then
     begin
          try
               strtoint(txtano.text);
          except
               showmessage('Campo ano inválido!');
               txtano.setfocus;
               exit;
          end;

          txtdataini.text := '01/01/' + txtano.text;
          txtdatafin.text := '31/12/' + txtano.text;

          if RGDados.itemindex = 2 then
          begin
               try
                    strtoint(txtmes.text);
               except
                    showmessage('Campo mês inválido!');
                    txtmes.setfocus;
                    exit;
               end;
               txtdataini.text := '01/' + '01' + '/' + txtano.text;
               txtdatafin.text := DateToStr(EndOfTheMonth(StrToDate('15/' + txtmes.text + '/' + txtano.text)));
          end;
     end
     else
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
     end;

     try
          strtodate(txtdataexc.text);
     except
          showmessage('Campo data para ignorar o movimento inválida!');
          txtdataexc.setfocus;
          exit;
     end;

     if trim(txtcontaini.text) = '' then
     begin
          showmessage('Campo conta inicial obrigatório!');
          txtcontaini.setfocus;
          exit;
     end;
     if trim(txtcontafin.text) = '' then
     begin
          showmessage('Campo conta final obrigatório!');
          txtcontafin.setfocus;
          exit;
     end;

     execsql('EXECUTE PROCEDURE PBALANCETE_MONTA_PLANO_CONTA;');

     if txtplanoneg.Text <> '' then
     begin
          try
               planoneg := strtoint(txtplanoneg.text);
          except
               showmessage('Campo plano de negócios inválido!');
               txtplanoneg.setfocus;
               exit;
          end;
     end
     else
          planoneg := 0;

     if (RGDados.Itemindex = 0) or (RGDados.Itemindex = 2) then
          execsql('EXECUTE PROCEDURE PBALANCETE_VALORES          (' + quotedstr(trim(txtcontaini.text)) + ', ' + quotedstr(trim(txtcontafin.text)) + ', ' + inttostr(planoneg) + ', ' + quotedstr(buscatroca(txtdataini.text, '/', '.')) + ', ' + quotedstr(buscatroca(txtdatafin.text, '/', '.'))+ ', ' + quotedstr(buscatroca(txtdataExc.text, '/', '.')) + ')');
     if (RGDados.Itemindex = 1) or (RGDados.Itemindex = 2) then
          execsql('EXECUTE PROCEDURE PBALANCETE_VALORES_ORCAMENTO(' + quotedstr(trim(txtcontaini.text)) + ', ' + quotedstr(trim(txtcontafin.text)) + ', ' + quotedstr(buscatroca(txtdataini.text, '/', '.')) + ', ' + quotedstr(buscatroca(txtdatafin.text, '/', '.')) + ')');

     execsql('EXECUTE PROCEDURE PBALANCETE_AJUSTA;');

     with QRel.sql do
     begin
          clear;
          add('SELECT PLADESCRICAO AS NIVEL_DESC, TMPCODANA, TMPCONTA, TMPDESC, TMPDEBITO, TMPCREDITO, TMPSALDOANTERIOR, PLASA, PLADC, PLANIVEL, ');
          add('TMPSALDO, TMPTIPOSALDO, TMPTIPOSALDOANT, TMPMES1, TMPMES2, TMPMES3, TMPMES4, TMPMES5, TMPMES6, TMPMES7, TMPMES8, TMPMES9, TMPMES10, TMPMES11, TMPMES12,TMPTOTALMES,');
          add('TMPSALDOANTORC, TMPMES1ORC, TMPMES2ORC, TMPMES3ORC, TMPMES4ORC, TMPMES5ORC, TMPMES6ORC, TMPMES7ORC, TMPMES8ORC, TMPMES9ORC, TMPMES10ORC, TMPMES11ORC, TMPMES12ORC, TMPTOTALMESORC');
          add('FROM TTMPBALANCETE inner join TPLANOCONTA on TMPCONTA = PLACODRED');
          add('where tmpnivel <> ''''');
          if trim(txtcontaini.text) <> '' then
               add('AND TMPCODANA >= ' + quotedstr(trim(txtcontaini.text)));
          if trim(txtcontafin.text) <> '' then
               add('AND TMPCODANA <= ' + quotedstr(trim(txtcontafin.text)));
          if (RGRel.ItemIndex = 1) and (RGContasZeradas.ItemIndex = 1) then
               add('AND TMPTOTALMES <> 0');
          if (RGRel.ItemIndex = 0) and (RGContasZeradas.ItemIndex = 1) then
               add('AND (TMPDEBITO <> 0 OR TMPCREDITO <> 0)');
          if RgRel.ItemINdex = 1 then
               add('AND PLANIVEL <= ' + txtNivel.Text);
          if not chknivel1e2.checked then
               add('AND PLANIVEL1 <> ''1'' AND PLANIVEL1 <> ''2'' ');
          add('ORDER BY TMPNIVEL');
     end;
     CDSRel.open;

     lblsaldoant.Visible := RGRel.ItemIndex = 0;
     lbldebito.Visible := RGRel.ItemIndex = 0;
     lblcredito.Visible := RGRel.ItemIndex = 0;

     txtsaldoant.Visible := RGRel.ItemIndex = 0;
     txtdebito.Visible := RGRel.ItemIndex = 0;
     txtcredito.Visible := RGRel.ItemIndex = 0;
     txttiposaldoant.Visible := RGRel.ItemIndex = 0;

     case RGDados.ItemIndex of
          0: RLTituloAnual.caption := 'Relatório Gerencial Analítico - ' + txtano.text;
          1: RLTituloAnual.caption := 'Orçamento Analítico - ' + txtano.text;
     end;

     case RGDados.ItemIndex of
          0: RLTitulo.caption := 'Relatório Gerencial Analítico';
          1: RLTitulo.caption := 'Orçamento Analítico';
     end;

     if (RGDados.ItemIndex = 0) then // and (RGRel.ItemIndex <> 1) then
     begin
          if (RGRel.ItemIndex = 2) then
          begin
               lbldebito.visible := false;
               lblcredito.visible := lbldebito.visible;
               lblsaldoatual.visible := lbldebito.visible;
               txtdebito.visible := lbldebito.visible;
               txtcredito.visible := lbldebito.visible;
               //txtsaldoatual.visible := lbldebito.visible;
               txttiposaldoatual.visible := TipoSistema = 'EMPRESARIAL';
               lbltotal2.visible := lbldebito.visible;
               lbltotalcredito.visible := lbldebito.visible;
               lbltotaldebito.visible := lbldebito.visible;
               lblcodigo.visible := TipoSistema = 'EMPRESARIAL';
               txtcodigo.visible := TipoSistema = 'EMPRESARIAL';
          end;

          CDSRel.first;
          while not CDSRel.eof do
          begin
               cdsRel.edit;
               if (RGRel.ItemIndex = 2) and (TipoSistema <> 'EMPRESARIAL') then
                   CDSRelTMPSALDO.asFloat := Arredonda(CDSRelTMPDEBITO.asFloat - CDSRelTMPCREDITO.asFloat,2)
               else
                   CDSRelTMPSALDO.asFloat := Arredonda(CDSRelTMPSALDOANTERIOR.asFloat + CDSRelTMPDEBITO.asFloat - CDSRelTMPCREDITO.asFloat,2);

               if CDSRelPLADC.asString = 'DEVEDORA' then
               begin
                    if CDSRelTMPSALDO.AsFloat > 0 then
                         CDSRelTMPTIPOSALDO.asString := 'D';
                    if CDSRelTMPSALDO.AsFloat < 0 then
                         CDSRelTMPTIPOSALDO.asString := 'C';
                    if CDSRelTMPSALDO.AsFloat = 0 then
                         CDSRelTMPTIPOSALDO.asString := ' ';
               end;

               if CDSRelPLADC.asString = 'CREDORA' then
               begin
                    if CDSRelTMPSALDO.AsFloat > 0 then
                         CDSRelTMPTIPOSALDO.asString := 'C';
                    if CDSRelTMPSALDO.AsFloat < 0 then
                         CDSRelTMPTIPOSALDO.asString := 'D';
                    if CDSRelTMPSALDO.AsFloat = 0 then
                         CDSRelTMPTIPOSALDO.asString := ' ';
               end;

               if (Copy(CDSRelTMPCODANA.asString,1,1) = '3') or (Copy(CDSRelTMPCODANA.asString,1,1) = '2') then
               begin
                    if CDSRelPLADC.asString = 'DEVEDORA' then
                    begin
                         if CDSRelTMPSALDO.AsFloat > 0 then
                              CDSRelTMPTIPOSALDO.asString := 'C';
                         if CDSRelTMPSALDO.AsFloat < 0 then
                              CDSRelTMPTIPOSALDO.asString := 'D';
                         if CDSRelTMPSALDO.AsFloat = 0 then
                              CDSRelTMPTIPOSALDO.asString := ' ';
                    end;

                    if CDSRelPLADC.asString = 'CREDORA' then
                    begin
                         if CDSRelTMPSALDO.AsFloat > 0 then
                              CDSRelTMPTIPOSALDO.asString := 'D';
                         if CDSRelTMPSALDO.AsFloat < 0 then
                              CDSRelTMPTIPOSALDO.asString := 'C';
                         if CDSRelTMPSALDO.AsFloat = 0 then
                              CDSRelTMPTIPOSALDO.asString := ' ';
                    end;
               end;

               if (CDSRelTMPSALDO.asFloat < 0) and (TipoSistema = 'EMPRESARIAL') then
                    CDSRelTMPSALDO.asFloat :=  CDSRelTMPSALDO.asFloat * (-1);

               if CDSRelPLADC.asString = 'DEVEDORA' then
               begin
                    if CDSRelTMPSALDOANTERIOR.AsFloat > 0 then
                         CDSRelTMPTIPOSALDOANT.asString := 'D';
                    if CDSRelTMPSALDOANTERIOR.AsFloat < 0 then
                         CDSRelTMPTIPOSALDOANT.asString := 'C';
                    if CDSRelTMPSALDOANTERIOR.AsFloat = 0 then
                         CDSRelTMPTIPOSALDOANT.asString := ' ';
               end;

               if CDSRelPLADC.asString = 'CREDORA' then
               begin
                    if CDSRelTMPSALDOANTERIOR.AsFloat > 0 then
                         CDSRelTMPTIPOSALDOANT.asString := 'C';
                    if CDSRelTMPSALDOANTERIOR.AsFloat < 0 then
                         CDSRelTMPTIPOSALDOANT.asString := 'D';
                    if CDSRelTMPSALDOANTERIOR.AsFloat = 0 then
                         CDSRelTMPTIPOSALDOANT.asString := ' ';
               end;

               if (Copy(CDSRelTMPCODANA.asString,1,1) = '3') or (Copy(CDSRelTMPCODANA.asString,1,1) = '2') then
               begin
                    if CDSRelPLADC.asString = 'DEVEDORA' then
                    begin
                         if CDSRelTMPSALDOANTERIOR.AsFloat > 0 then
                              CDSRelTMPTIPOSALDOANT.asString := 'C';
                         if CDSRelTMPSALDOANTERIOR.AsFloat < 0 then
                              CDSRelTMPTIPOSALDOANT.asString := 'D';
                         if CDSRelTMPSALDOANTERIOR.AsFloat = 0 then
                              CDSRelTMPTIPOSALDOANT.asString := ' ';
                    end;

                    if CDSRelPLADC.asString = 'CREDORA' then
                    begin
                         if CDSRelTMPSALDOANTERIOR.AsFloat > 0 then
                              CDSRelTMPTIPOSALDOANT.asString := 'D';
                         if CDSRelTMPSALDOANTERIOR.AsFloat < 0 then
                              CDSRelTMPTIPOSALDOANT.asString := 'C';
                         if CDSRelTMPSALDOANTERIOR.AsFloat = 0 then
                              CDSRelTMPTIPOSALDOANT.asString := ' ';
                    end;
               end;

               {if CDSRelTMPSALDOANTERIOR.asFloat < 0 then
                    CDSRelTMPSALDOANTERIOR.asFloat := CDSRelTMPSALDOANTERIOR.asFloat * (-1);}

               CDSRel.Post;

               if (RGRel.ItemIndex = 1) then
                    CDSRel.Next
               else
               begin
                    if trim(CDSRelPLASA.AsString) = 'ANALITICA' then
                    begin
                         if RGContasZeradas.itemindex = 1 then
                         begin
                              if RoundTo(CDSRelTMPSALDO.AsFloat,-2) = 0 then
                                   CDSRel.Delete
                              else
                                   CDSRel.Next;
                         end
                         else
                              CDSRel.Next;
                    end
                    else
                        if CDSRelPLANIVEL.asInteger < strToInt(txtNivel.Text) then
                             CDSRel.Delete
                        else
                             CDSRel.Next;
               end;
          end;
     end;

     if (RGDados.ItemIndex = 0) and (RGRel.ItemIndex = 1) then
     begin
          CDSRel.first;
          while not CDSRel.eof do
          begin
               cdsRel.edit;

               if (Copy(CDSRelTMPCODANA.asString,1,1) = '1') or (Copy(CDSRelTMPCODANA.asString,1,1) = '2') then
               begin
                    CDSRelTMPMES1.asFloat := Arredonda(CDSRelTMPMES1.asFloat + CDSRelTMPSALDOANTERIOR.asFloat,2);
                    for i := 2 to 12 do
                         //if CDSRel.FieldByName('TMPMES' + IntToStr(i)).asFloat <> 0 then
                              CDSRel.FieldByName('TMPMES' + IntToStr(i)).asFloat := Arredonda(CDSRel.FieldByName('TMPMES' + IntToStr(i)).asFloat + CDSRel.FieldByName('TMPMES' + IntToStr(i - 1)).asFloat, 2);

                    CDSRelTMPTOTALMES.asFloat := 0;
                    for i := 1 to 12 do
                    begin
                         //if CDSRel.FieldByName('TMPMES' + IntToStr(i)).asFloat <> 0 then
                               CDSRelTMPTOTALMES.asFloat := Arredonda(CDSRel.FieldByName('TMPMES' + IntToStr(i)).asFloat,2);
                    end;

                    if Copy(CDSRelTMPCODANA.asString,1,1) = '2' then
                    begin
                         for i := 1 to 12 do
                              CDSRel.FieldByName('TMPMES' + IntToStr(i)).asFloat := Arredonda(CDSRel.FieldByName('TMPMES' + IntToStr(i)).asFloat * (-1), 2);
                         CDSRelTMPTOTALMES.asFloat := Arredonda(CDSRelTMPTOTALMES.asFloat * (-1), 2);
                    end;
                    {for i := 1 to 12 do
                    begin
                         //if ((CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat < 0) and (CDSRelPLADC.asString = 'DEVEDORA' ) and (Copy(CDSRelTMPCODANA.asString,1,1) = '1')) then
                         //      CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat := CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat * (-1);

                         if ((CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat < 0) and (CDSRelPLADC.asString = 'CREDORA') and (Copy(CDSRelTMPCODANA.asString,1,1) = '2')) then
                               CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat := CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat * (-1);
                    end;}
               end
               else
               begin
                    //receita se devedora negativa (-)
                    //despesa se credora ngativa (-)
                    for i := 1 to 12 do
                    begin
                         if ((CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat < 0) and (CDSRelPLADC.asString = 'CREDORA' ) and (Copy(CDSRelTMPCODANA.asString,1,1) = '3')) then
                               CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat := Arredonda(CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat * (-1), 2);
                         {if ((CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat < 0) and (CDSRelPLADC.asString = 'DEVEDORA') and (Copy(CDSRelTMPCODANA.asString,1,1) = '4')) then
                               CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat := CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat * (-1);}
                    end;
                    if Copy(CDSRelTMPCODANA.asString,1,1) = '3' then
                         CDSRelTMPTOTALMES.asfloat := CDSRelTMPTOTALMES.asfloat * (-1);

               end;
               CDSRel.Post;
               CDSRel.Next;
          end;
          CDSRel.first;
          {while not CDSRel.eof do
          begin
               cdsRel.edit;
               for i := 1 to 12 do
                    if ((CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat < 0) and (CDSRelPLADC.asString = 'DEVEDORA') and ((Copy(CDSRelTMPCODANA.asString,1,1) = '1') or (Copy(CDSRelTMPCODANA.asString,1,1) = '3')))
                    or ((CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat < 0) and (CDSRelPLADC.asString =  'CREDORA') and ((Copy(CDSRelTMPCODANA.asString,1,1) = '2') or (Copy(CDSRelTMPCODANA.asString,1,1) = '4'))) then
                        CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat := CDSRel.FieldByName('TMPMES' + IntToStr(i)).asfloat * (-1);
               CDSRel.Post;
               CDSRel.Next;
          end;}
     end;

     if RGDados.ItemIndex = 2 then
     begin
          CDSRel.first;
          while not CDSRel.eof do
          begin
               cdsRel.edit;
               if CDSRelTMPMES1.asfloat < 0 then
                    CDSRelTMPMES1.asfloat := CDSRelTMPMES1.asfloat * (-1);
               if CDSRelTMPMES2.asfloat < 0 then
                    CDSRelTMPMES2.asfloat := CDSRelTMPMES2.asfloat * (-1);
               if CDSRelTMPMES3.asfloat < 0 then
                    CDSRelTMPMES3.asfloat := CDSRelTMPMES3.asfloat * (-1);
               if CDSRelTMPMES4.asfloat < 0 then
                    CDSRelTMPMES4.asfloat := CDSRelTMPMES4.asfloat * (-1);
               if CDSRelTMPMES5.asfloat < 0 then
                    CDSRelTMPMES5.asfloat := CDSRelTMPMES5.asfloat * (-1);
               if CDSRelTMPMES6.asfloat < 0 then
                    CDSRelTMPMES6.asfloat := CDSRelTMPMES6.asfloat * (-1);
               if CDSRelTMPMES7.asfloat < 0 then
                    CDSRelTMPMES7.asfloat := CDSRelTMPMES7.asfloat * (-1);
               if CDSRelTMPMES8.asfloat < 0 then
                    CDSRelTMPMES8.asfloat := CDSRelTMPMES8.asfloat * (-1);
               if CDSRelTMPMES9.asfloat < 0 then
                    CDSRelTMPMES9.asfloat := CDSRelTMPMES9.asfloat * (-1);
               if CDSRelTMPMES10.asfloat < 0 then
                    CDSRelTMPMES10.asfloat := CDSRelTMPMES10.asfloat * (-1);
               if CDSRelTMPMES11.asfloat < 0 then
                    CDSRelTMPMES11.asfloat := CDSRelTMPMES11.asfloat * (-1);
               if CDSRelTMPMES12.asfloat < 0 then
                    CDSRelTMPMES12.asfloat := CDSRelTMPMES12.asfloat * (-1);

               CDSRelTMPDIF1.asFloat := CDSRelTMPMES1ORC.asFloat - CDSRelTMPMES1.asfloat;
               CDSRelTMPDIF2.asFloat := CDSRelTMPMES2ORC.asFloat - CDSRelTMPMES2.asfloat;
               CDSRelTMPDIF3.asFloat := CDSRelTMPMES3ORC.asFloat - CDSRelTMPMES3.asfloat;
               CDSRelTMPDIF4.asFloat := CDSRelTMPMES4ORC.asFloat - CDSRelTMPMES4.asfloat;
               CDSRelTMPDIF5.asFloat := CDSRelTMPMES5ORC.asFloat - CDSRelTMPMES5.asfloat;
               CDSRelTMPDIF6.asFloat := CDSRelTMPMES6ORC.asFloat - CDSRelTMPMES6.asfloat;
               CDSRelTMPDIF7.asFloat := CDSRelTMPMES7ORC.asFloat - CDSRelTMPMES7.asfloat;
               CDSRelTMPDIF8.asFloat := CDSRelTMPMES8ORC.asFloat - CDSRelTMPMES8.asfloat;
               CDSRelTMPDIF9.asFloat := CDSRelTMPMES9ORC.asFloat - CDSRelTMPMES9.asfloat;
               CDSRelTMPDIF10.asFloat := CDSRelTMPMES10ORC.asFloat - CDSRelTMPMES10.asfloat;
               CDSRelTMPDIF11.asFloat := CDSRelTMPMES11ORC.asFloat - CDSRelTMPMES11.asfloat;
               CDSRelTMPDIF12.asFloat := CDSRelTMPMES12ORC.asFloat - CDSRelTMPMES12.asfloat;

               if CDSRelTMPDIF1.asFloat < 0 then
                    CDSRelTMPDIF1.asFloat := CDSRelTMPDIF1.asFloat * (-1);
               if CDSRelTMPDIF2.asFloat < 0 then
                    CDSRelTMPDIF2.asFloat := CDSRelTMPDIF2.asFloat * (-1);
               if CDSRelTMPDIF3.asFloat < 0 then
                    CDSRelTMPDIF3.asFloat := CDSRelTMPDIF3.asFloat * (-1);
               if CDSRelTMPDIF4.asFloat < 0 then
                    CDSRelTMPDIF4.asFloat := CDSRelTMPDIF4.asFloat * (-1);
               if CDSRelTMPDIF5.asFloat < 0 then
                    CDSRelTMPDIF5.asFloat := CDSRelTMPDIF5.asFloat * (-1);
               if CDSRelTMPDIF6.asFloat < 0 then
                    CDSRelTMPDIF6.asFloat := CDSRelTMPDIF6.asFloat * (-1);
               if CDSRelTMPDIF7.asFloat < 0 then
                    CDSRelTMPDIF7.asFloat := CDSRelTMPDIF7.asFloat * (-1);
               if CDSRelTMPDIF8.asFloat < 0 then
                    CDSRelTMPDIF8.asFloat := CDSRelTMPDIF8.asFloat * (-1);
               if CDSRelTMPDIF9.asFloat < 0 then
                    CDSRelTMPDIF9.asFloat := CDSRelTMPDIF9.asFloat * (-1);
               if CDSRelTMPDIF10.asFloat < 0 then
                    CDSRelTMPDIF10.asFloat := CDSRelTMPDIF10.asFloat * (-1);
               if CDSRelTMPDIF1.asFloat < 0 then
                    CDSRelTMPDIF11.asFloat := CDSRelTMPDIF11.asFloat * (-1);
               if CDSRelTMPDIF1.asFloat < 0 then
                    CDSRelTMPDIF12.asFloat := CDSRelTMPDIF12.asFloat * (-1);

               if (CDSRelTMPMES1.asfloat > 0) and (CDSRelTMPMES1ORC.asFloat > 0) then
                    if CDSRelTMPMES1ORC.asFloat < CDSRelTMPMES1.asfloat then
                         CDSRelTMPP1.asFloat := (CDSRelTMPMES1ORC.asFloat / CDSRelTMPMES1.asfloat) * 100
                    else
                         CDSRelTMPP1.asFloat := (CDSRelTMPMES1.asfloat / CDSRelTMPMES1ORC.asFloat) * 100;
               if (CDSRelTMPMES2.asfloat > 0) and (CDSRelTMPMES2ORC.asFloat > 0) then
                    if CDSRelTMPMES2ORC.asFloat < CDSRelTMPMES2.asfloat then
                         CDSRelTMPP2.asFloat := (CDSRelTMPMES2ORC.asFloat / CDSRelTMPMES2.asfloat) * 100
                    else
                         CDSRelTMPP2.asFloat := (CDSRelTMPMES2.asfloat / CDSRelTMPMES2ORC.asFloat) * 100;
               if (CDSRelTMPMES3.asfloat > 0) and (CDSRelTMPMES2ORC.asFloat > 0) then
                    if CDSRelTMPMES3ORC.asFloat < CDSRelTMPMES3.asfloat then
                         CDSRelTMPP3.asFloat := (CDSRelTMPMES3ORC.asFloat / CDSRelTMPMES3.asfloat) * 100
                    else
                         CDSRelTMPP3.asFloat := (CDSRelTMPMES3.asfloat / CDSRelTMPMES3ORC.asFloat) * 100;
               if (CDSRelTMPMES4.asfloat > 0) and (CDSRelTMPMES2ORC.asFloat > 0) then
                    if CDSRelTMPMES4ORC.asFloat < CDSRelTMPMES4.asfloat then
                         CDSRelTMPP4.asFloat := (CDSRelTMPMES4ORC.asFloat / CDSRelTMPMES4.asfloat) * 100
                    else
                         CDSRelTMPP4.asFloat := (CDSRelTMPMES4.asfloat / CDSRelTMPMES4ORC.asFloat) * 100;
               if (CDSRelTMPMES5.asfloat > 0) and (CDSRelTMPMES5ORC.asFloat > 0) then
                    if CDSRelTMPMES5ORC.asFloat < CDSRelTMPMES5.asfloat then
                         CDSRelTMPP5.asFloat := (CDSRelTMPMES5ORC.asFloat / CDSRelTMPMES5.asfloat) * 100
                    else
                         CDSRelTMPP5.asFloat := (CDSRelTMPMES5.asfloat / CDSRelTMPMES5ORC.asFloat) * 100;
               if (CDSRelTMPMES6.asfloat > 0) and (CDSRelTMPMES6ORC.asFloat > 0) then
                    if CDSRelTMPMES6ORC.asFloat < CDSRelTMPMES6.asfloat then
                         CDSRelTMPP6.asFloat := (CDSRelTMPMES6ORC.asFloat / CDSRelTMPMES6.asfloat) * 100
                    else
                         CDSRelTMPP6.asFloat := (CDSRelTMPMES6.asfloat / CDSRelTMPMES6ORC.asFloat) * 100;
               if (CDSRelTMPMES7.asfloat > 0) and (CDSRelTMPMES7ORC.asFloat > 0) then
                    if CDSRelTMPMES7ORC.asFloat < CDSRelTMPMES7.asfloat then
                         CDSRelTMPP7.asFloat := (CDSRelTMPMES7ORC.asFloat / CDSRelTMPMES7.asfloat) * 100
                    else
                         CDSRelTMPP7.asFloat := (CDSRelTMPMES7.asfloat / CDSRelTMPMES7ORC.asFloat) * 100;
               if (CDSRelTMPMES8.asfloat > 0) and (CDSRelTMPMES8ORC.asFloat > 0) then
                    if CDSRelTMPMES8ORC.asFloat < CDSRelTMPMES8.asfloat then
                         CDSRelTMPP8.asFloat := (CDSRelTMPMES8ORC.asFloat / CDSRelTMPMES8.asfloat) * 100
                    else
                         CDSRelTMPP8.asFloat := (CDSRelTMPMES8.asfloat / CDSRelTMPMES8ORC.asFloat) * 100;
               if (CDSRelTMPMES9.asfloat > 0) and (CDSRelTMPMES9ORC.asFloat > 0) then
                    if CDSRelTMPMES9ORC.asFloat < CDSRelTMPMES9.asfloat then
                         CDSRelTMPP9.asFloat := (CDSRelTMPMES9ORC.asFloat / CDSRelTMPMES9.asfloat) * 100
                    else
                         CDSRelTMPP9.asFloat := (CDSRelTMPMES9.asfloat / CDSRelTMPMES9ORC.asFloat) * 100;
               if (CDSRelTMPMES10.asfloat > 0) and (CDSRelTMPMES10ORC.asFloat > 0) then
                    if CDSRelTMPMES10ORC.asFloat < CDSRelTMPMES10.asfloat then
                         CDSRelTMPP10.asFloat := (CDSRelTMPMES10ORC.asFloat / CDSRelTMPMES10.asfloat) * 100
                    else
                         CDSRelTMPP10.asFloat := (CDSRelTMPMES10.asfloat / CDSRelTMPMES10ORC.asFloat) * 100;
               if (CDSRelTMPMES11.asfloat > 0) and (CDSRelTMPMES11ORC.asFloat > 0) then
                    if CDSRelTMPMES11ORC.asFloat < CDSRelTMPMES11.asfloat then
                         CDSRelTMPP11.asFloat := (CDSRelTMPMES11ORC.asFloat / CDSRelTMPMES11.asfloat) * 100
                    else
                         CDSRelTMPP11.asFloat := (CDSRelTMPMES11.asfloat / CDSRelTMPMES11ORC.asFloat) * 100;
               if (CDSRelTMPMES12.asfloat > 0) and (CDSRelTMPMES12ORC.asFloat > 0) then
                    if CDSRelTMPMES12ORC.asFloat < CDSRelTMPMES12.asfloat then
                         CDSRelTMPP12.asFloat := (CDSRelTMPMES12ORC.asFloat / CDSRelTMPMES12.asfloat) * 100
                    else
                         CDSRelTMPP12.asFloat := (CDSRelTMPMES12.asfloat / CDSRelTMPMES12ORC.asFloat) * 100;

               CDSRelTMPTOTALMES.asFloat := CDSRelTMPMES1.asFloat;
               CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPMES1ORC.asFloat;

               if strtoint(txtmes.text) >= 2 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES2.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES2ORC.asFloat;
               end;
               if strtoint(txtmes.text) >= 3 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES3.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES3ORC.asFloat;
               end;
               if strtoint(txtmes.text) >= 4 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES4.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES4ORC.asFloat;
               end;
               if strtoint(txtmes.text) >= 5 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES5.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES5ORC.asFloat;
               end;
               if strtoint(txtmes.text) >= 6 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES6.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES6ORC.asFloat;
               end;
               if strtoint(txtmes.text) >= 7 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES7.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES7ORC.asFloat;
               end;
               if strtoint(txtmes.text) >= 8 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES8.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES8ORC.asFloat;
               end;
               if strtoint(txtmes.text) >= 9 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES9.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES9ORC.asFloat;
               end;
               if strtoint(txtmes.text) >= 10 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES10.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES10ORC.asFloat;
               end;
               if strtoint(txtmes.text) >= 11 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES11.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES11ORC.asFloat;
               end;
               if strtoint(txtmes.text) >= 12 then
               begin
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPTOTALMES.asFloat + CDSRelTMPMES12.asFloat;
                    CDSRelTMPTOTALMESORC.asFloat := CDSRelTMPTOTALMESORC.asFloat + CDSRelTMPMES12ORC.asFloat;
               end;

               CDSRelTMPTOTALDIF.asFloat := CDSRelTMPTOTALMESORC.asFloat - CDSRelTMPTOTALMES.asFloat;
               if CDSRelTMPTOTALDIF.asFloat < 0 then
                    CDSRelTMPTOTALDIF.asFloat := CDSRelTMPTOTALDIF.asFloat * (-1);

               CDSRelTMPTOTALP.asFloat := 0;
               if (CDSRelTMPTOTALMES.asfloat > 0) and (CDSRelTMPTOTALMESORC.asfloat > 0) then
                    if CDSRelTMPTOTALMES.asfloat > CDSRelTMPTOTALMESORC.asfloat then
                         CDSRelTMPTOTALP.asFloat := (CDSRelTMPTOTALMESORC.asFloat / CDSRelTMPTOTALMES.asFloat) * 100
                    else
                         CDSRelTMPTOTALP.asFloat := (CDSRelTMPTOTALMES.asFloat / CDSRelTMPTOTALMESORC.asFloat) * 100;

               if (Copy(CDSRelTMPCODANA.asString,1,1) = '1') or (Copy(CDSRelTMPCODANA.asString,1,1) = '2') then
                    CDSRelTMPTOTALMES.asFloat := CDSRelTMPMES12.asFloat;

               CDSRel.post;
               CDSRel.Next;
          end;
          CDSRel.first;
          RLReportAcu.PreviewModal;
     end
     else
     begin

          m1 := 0;
          m2 := 0;
          m3 := 0;
          m4 := 0;
          m5 := 0;
          m6 := 0;
          m7 := 0;
          m8 := 0;
          m9 := 0;
          m10 := 0;
          m11 := 0;
          m12 := 0;
          saldo := 0;

          case RGRel.ItemIndex of
               0: RLReportDiario.PreviewModal;
               1: RLReportAnual.PreviewModal;
               2: RLReportDiario.PreviewModal;               
          end;
     end;
     CDSRel.close;
end;

procedure TFBalanceteRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFBalanceteRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     salva_propriedades_tela((sender as tform).name, sender as TForm);
     action := cafree;
end;

procedure TFBalanceteRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFBalanceteRel.txtcodKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFBalanceteRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
     //txtdataini.Text := datetostr(startofthemonth(date));
     txtdatafin.Text := datetostr(endofthemonth(date));
end;

procedure TFBalanceteRel.RLBand8BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     //     RLTitulo.caption := RGModelo.Items.Strings[RGModelo.itemindex];
     lblperiodo.caption := 'Período: ' + txtdataini.Text + ' a ' + txtdatafin.Text;
end;

procedure TFBalanceteRel.btncontainiClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          FPlanoConta := tFPlanoConta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', FPlanoConta.wsinformacao.programa);
          FPlanoConta.showmodal;
          txtcontaini.text := dm.CDSPlanoContaPLACODANA.asstring;
          txtcodredini.text := dm.CDSPlanoContaPLACODRED.asstring;
          txtnomeini.text := dm.CDSPlanoContaPLADESCRICAO.asstring;
     finally
          FPlanoConta.release;
          FPlanoConta := nil;
          FPlanoConta.free;
     end;
end;

procedure TFBalanceteRel.btncontafinClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          FPlanoConta := tFPlanoConta.create(self);
          FplanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', FPlanoConta.wsinformacao.programa);
          FPlanoConta.showmodal;
          txtcontafin.text := dm.CDSPlanoContaPLACODANA.asstring;
          txtcodredfin.text := dm.CDSPlanoContaPLACODRED.asstring;
          txtnomefin.text := dm.CDSPlanoContaPLADESCRICAO.asstring;          
     finally
          FPlanoConta.release;
          FPlanoConta := nil;
          FPlanoConta.free;
     end;
end;

procedure TFBalanceteRel.txtcontafinKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
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

procedure TFBalanceteRel.RGRelClick(Sender: TObject);
begin
     panano.visible := RGRel.itemindex = 1;
     if RGRel.itemindex = 1 then
          RGContasZeradas.Itemindex := 0;
     RGContasZeradas.Enabled := RGRel.itemindex <> 1;
end;

procedure TFBalanceteRel.RLBand1BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
var total: double;
begin
     total := sqltotal(' select sum(tmpdebito) as debito' +
          ' from ttmpbalancete inner join tplanoconta on tmpconta = placodred' +
          ' where planivel = (select max(planivel) from TPLANOCONTA)');
     lbltotaldebito.Caption := formatfloat('#,###,###0.00', total);

     total := sqltotal(' select sum(tmpcredito) as credito' +
          ' from ttmpbalancete inner join tplanoconta on tmpconta = placodred' +
          ' where planivel = (select max(planivel) from TPLANOCONTA)');
     lbltotalcredito.Caption := formatfloat('#,###,###0.00', total);
end;

procedure TFBalanceteRel.txtcodrediniExit(Sender: TObject);
begin
     txtcontaini.text := '1';
     txtnomeini.clear;
     if trim(txtcodredini.Text) <> '' then
     begin
          txtcontaini.text := executasqlretorno('SELECT PLACODANA FROM TPLANOCONTA WHERE PLACODRED = ' + txtcodredini.text);
          txtnomeini.text := executasqlretorno('SELECT PLADESCRICAO FROM TPLANOCONTA WHERE PLACODRED = ' + txtcodredini.text);
     end;
end;

procedure TFBalanceteRel.txtcodredfinExit(Sender: TObject);
begin
     txtcontafin.text := '1';
     txtnomefin.clear;
     if trim(txtcodredfin.Text) <> '' then
     begin
          txtcontafin.text := executasqlretorno('SELECT PLACODANA FROM TPLANOCONTA WHERE PLACODRED = ' + txtcodredfin.text);
          txtnomefin.text := executasqlretorno('SELECT PLADESCRICAO FROM TPLANOCONTA WHERE PLACODRED = ' + txtcodredfin.text);
     end;
end;

procedure TFBalanceteRel.btnplanonegClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoNegocios') <> nil then
          FPlanoNegocios.Close;

     try
          FPlanoNegocios := tFPlanoNegocios.create(self);
          FPlanoNegocios.FormStyle := fsNormal;
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

procedure TFBalanceteRel.txtplanonegKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFBalanceteRel.txtplanonegExit(Sender: TObject);
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

procedure TFBalanceteRel.txtdescBeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     if (CDSRelPLANIVEL.AsInteger = 1) and (Copy(CDSRelTMPCODANA.AsString, 1, 1) = '3') then
     begin
          m1 := CDSRelTMPMES1.asFloat;
          m2 := CDSRelTMPMES2.asFloat;
          m3 := CDSRelTMPMES3.asFloat;
          m4 := CDSRelTMPMES4.asFloat;
          m5 := CDSRelTMPMES5.asFloat;
          m6 := CDSRelTMPMES6.asFloat;
          m7 := CDSRelTMPMES7.asFloat;
          m8 := CDSRelTMPMES8.asFloat;
          m9 := CDSRelTMPMES9.asFloat;
          m10 := CDSRelTMPMES10.asFloat;
          m11 := CDSRelTMPMES11.asFloat;
          m12 := CDSRelTMPMES12.asFloat;
     end;
     if (CDSRelPLANIVEL.AsInteger = 1) and (copy(CDSRelTMPCODANA.ASString, 1, 1) = '4') then
     begin
          m1 := m1 + CDSRelTMPMES1.asFloat;
          m2 := m2 + CDSRelTMPMES2.asFloat;
          m3 := m3 + CDSRelTMPMES3.asFloat;
          m4 := m4 + CDSRelTMPMES4.asFloat;
          m5 := m5 + CDSRelTMPMES5.asFloat;
          m6 := m6 + CDSRelTMPMES6.asFloat;
          m7 := m7 + CDSRelTMPMES7.asFloat;
          m8 := m8 + CDSRelTMPMES8.asFloat;
          m9 := m9 + CDSRelTMPMES9.asFloat;
          m10 := m10 + CDSRelTMPMES10.asFloat;
          m11 := m11 + CDSRelTMPMES11.asFloat;
          m12 := m12 + CDSRelTMPMES12.asFloat;
     end;

     if CDSRelPLASA.asString = 'SINTETICA' then
         txtdesc.Font.Style := txtdesc.Font.Style + [fsbold]
     else
         txtdesc.Font.Style := txtdesc.Font.Style - [fsbold];

     txtmes1.Font.Style := txtdesc.Font.Style;
     txtmes2.Font.Style := txtdesc.Font.Style;
     txtmes3.Font.Style := txtdesc.Font.Style;
     txtmes4.Font.Style := txtdesc.Font.Style;
     txtmes5.Font.Style := txtdesc.Font.Style;
     txtmes6.Font.Style := txtdesc.Font.Style;
     txtmes7.Font.Style := txtdesc.Font.Style;
     txtmes8.Font.Style := txtdesc.Font.Style;
     txtmes9.Font.Style := txtdesc.Font.Style;
     txtmes10.Font.Style := txtdesc.Font.Style;
     txtmes11.Font.Style := txtdesc.Font.Style;
     txtmes12.Font.Style := txtdesc.Font.Style;
     txttotal.Font.Style := txtdesc.Font.Style;
     
end;

procedure TFBalanceteRel.RLLabel19BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     lblm1.caption := FormatFloat('#,###,###0.00', m1);
     lblm2.caption := FormatFloat('#,###,###0.00', m2);
     lblm3.caption := FormatFloat('#,###,###0.00', m3);
     lblm4.caption := FormatFloat('#,###,###0.00', m4);
     lblm5.caption := FormatFloat('#,###,###0.00', m5);
     lblm6.caption := FormatFloat('#,###,###0.00', m6);
     lblm7.caption := FormatFloat('#,###,###0.00', m7);
     lblm8.caption := FormatFloat('#,###,###0.00', m8);
     lblm9.caption := FormatFloat('#,###,###0.00', m9);
     lblm10.caption := FormatFloat('#,###,###0.00', m10);
     lblm11.caption := FormatFloat('#,###,###0.00', m11);
     lblm12.caption := FormatFloat('#,###,###0.00', m12);
     lbltotal.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + m11 + m12);

     lbla1.caption := FormatFloat('#,###,###0.00', m1);
     lbla2.caption := FormatFloat('#,###,###0.00', m1 + m2);
     lbla3.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3);
     lbla4.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4);
     lbla5.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4 + m5);
     lbla6.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4 + m5 + m6);
     lbla7.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4 + m5 + m6 + m7);
     lbla8.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8);
     lbla9.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9);
     lbla10.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10);
     lbla11.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + m11);
     lbla12.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + m11 + m12);
     lblatotal.caption := FormatFloat('#,###,###0.00', m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + m11 + m12);
end;

procedure TFBalanceteRel.TxtNivelABeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin

     if CDSRelPLASA.asString = 'SINTETICA' then
         TxtNivelA.Font.Style := txtdesc.Font.Style + [fsbold]
     else
         TxtNivelA.Font.Style := txtdesc.Font.Style - [fsbold];
end;

procedure TFBalanceteRel.RLDBText41BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
var Smes: string;
begin
     Smes := inttostr(strtoint(txtmes.text));
     rltxtorc.DataField := 'TMPMES' + Smes + 'ORC';
     rltxtmes.DataField := 'TMPMES' + Smes;
     rltxtdif.DataField := 'TMPDIF' + Smes;
     rltxtp.DataField := 'TMPP' + Smes;

     if copy(CDSRelNIVEL_DESC.ASString, 1, 2) = '3 ' then
     begin
          m1 := CDSRelTMPMES1.asFloat;
          m2 := CDSRelTMPMES2.asFloat;
          m3 := CDSRelTMPMES3.asFloat;
          m4 := CDSRelTMPMES4.asFloat;
          m5 := CDSRelTMPMES5.asFloat;
          m6 := CDSRelTMPMES6.asFloat;
          m7 := CDSRelTMPMES7.asFloat;
          m8 := CDSRelTMPMES8.asFloat;
          m9 := CDSRelTMPMES9.asFloat;
          m10 := CDSRelTMPMES10.asFloat;
          m11 := CDSRelTMPMES11.asFloat;
          m12 := CDSRelTMPMES12.asFloat;

          o1 := CDSRelTMPMES1ORC.asFloat;
          o2 := CDSRelTMPMES2ORC.asFloat;
          o3 := CDSRelTMPMES3ORC.asFloat;
          o4 := CDSRelTMPMES4ORC.asFloat;
          o5 := CDSRelTMPMES5ORC.asFloat;
          o6 := CDSRelTMPMES6ORC.asFloat;
          o7 := CDSRelTMPMES7ORC.asFloat;
          o8 := CDSRelTMPMES8ORC.asFloat;
          o9 := CDSRelTMPMES9ORC.asFloat;
          o10 := CDSRelTMPMES10ORC.asFloat;
          o11 := CDSRelTMPMES11ORC.asFloat;
          o12 := CDSRelTMPMES12ORC.asFloat;
     end;
     if copy(CDSRelNIVEL_DESC.ASString, 1, 2) = '4 ' then
     begin
          m1 := m1 + CDSRelTMPMES1.asFloat;
          m2 := m2 + CDSRelTMPMES2.asFloat;
          m3 := m3 + CDSRelTMPMES3.asFloat;
          m4 := m4 + CDSRelTMPMES4.asFloat;
          m5 := m5 + CDSRelTMPMES5.asFloat;
          m6 := m6 + CDSRelTMPMES6.asFloat;
          m7 := m7 + CDSRelTMPMES7.asFloat;
          m8 := m8 + CDSRelTMPMES8.asFloat;
          m9 := m9 + CDSRelTMPMES9.asFloat;
          m10 := m10 + CDSRelTMPMES10.asFloat;
          m11 := m11 + CDSRelTMPMES11.asFloat;
          m12 := m12 + CDSRelTMPMES12.asFloat;

          o1 := o1 + CDSRelTMPMES1ORC.asFloat;
          o2 := o2 + CDSRelTMPMES2ORC.asFloat;
          o3 := o3 + CDSRelTMPMES3ORC.asFloat;
          o4 := o4 + CDSRelTMPMES4ORC.asFloat;
          o5 := o5 + CDSRelTMPMES5ORC.asFloat;
          o6 := o6 + CDSRelTMPMES6ORC.asFloat;
          o7 := o7 + CDSRelTMPMES7ORC.asFloat;
          o8 := o8 + CDSRelTMPMES8ORC.asFloat;
          o9 := o9 + CDSRelTMPMES9ORC.asFloat;
          o10 := o10 + CDSRelTMPMES10ORC.asFloat;
          o11 := o11 + CDSRelTMPMES11ORC.asFloat;
          o12 := o12 + CDSRelTMPMES12ORC.asFloat;
     end;
end;

procedure TFBalanceteRel.RLLabel39BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     lblp.caption := FormatFloat('#,###,###0.00', 0);

     orc := o1;
     mes := m1;

     if txtmes.text = '01' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o1);
          lblmes.caption := FormatFloat('#,###,###0.00', m1);
          if o1 > m1 then
               lbldif.caption := FormatFloat('#,###,###0.00', o1 - m1)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m1 - o1);
          if (m1 > 0) and (o1 > 0) then
               if m1 > o1 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o1 / m1) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m1 / o1) * 100);
     end;

     if txtmes.text = '02' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o2);
          lblmes.caption := FormatFloat('#,###,###0.00', m2);
          if o2 > m2 then
               lbldif.caption := FormatFloat('#,###,###0.00', o2 - m2)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m2 - o2);
          if (m2 > 0) and (o2 > 0) then
               if m2 > o2 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o2 / m2) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m2 / o2) * 100);

          orc := orc + o2;
          mes := mes + m2;
     end;

     if txtmes.text = '03' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o3);
          lblmes.caption := FormatFloat('#,###,###0.00', m3);
          if o3 > m3 then
               lbldif.caption := FormatFloat('#,###,###0.00', o3 - m3)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m3 - o3);
          if (m3 > 0) and (o3 > 0) then
               if m3 > o3 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o3 / m3) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m3 / o3) * 100);

          orc := orc + o3;
          mes := mes + m3;
     end;

     if txtmes.text = '04' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o4);
          lblmes.caption := FormatFloat('#,###,###0.00', m4);
          if o4 > m4 then
               lbldif.caption := FormatFloat('#,###,###0.00', o4 - m4)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m4 - o4);
          if (m4 > 0) and (o4 > 0) then
               if m4 > o4 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o4 / m4) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m4 / o4) * 100);

          orc := orc + o4;
          mes := mes + m4;
     end;

     if txtmes.text = '05' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o5);
          lblmes.caption := FormatFloat('#,###,###0.00', m5);
          if o5 > m5 then
               lbldif.caption := FormatFloat('#,###,###0.00', o5 - m5)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m5 - o5);
          if (m5 > 0) and (o5 > 0) then
               if m5 > o5 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o5 / m5) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m5 / o5) * 100);

          orc := orc + o5;
          mes := mes + m5;
     end;

     if txtmes.text = '06' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o6);
          lblmes.caption := FormatFloat('#,###,###0.00', m6);
          if o6 > m6 then
               lbldif.caption := FormatFloat('#,###,###0.00', o6 - m6)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m6 - o6);
          if (m6 > 0) and (o6 > 0) then
               if m6 > o6 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o6 / m6) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m6 / o6) * 100);

          orc := orc + o6;
          mes := mes + m6;
     end;

     if txtmes.text = '07' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o7);
          lblmes.caption := FormatFloat('#,###,###0.00', m7);
          if o7 > m7 then
               lbldif.caption := FormatFloat('#,###,###0.00', o7 - m7)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m7 - o7);
          if (m7 > 0) and (o7 > 0) then
               if m7 > o7 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o7 / m7) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m7 / o7) * 100);

          orc := orc + o7;
          mes := mes + m7;
     end;

     if txtmes.text = '08' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o8);
          lblmes.caption := FormatFloat('#,###,###0.00', m8);
          if o8 > m8 then
               lbldif.caption := FormatFloat('#,###,###0.00', o8 - m8)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m8 - o8);
          if (m8 > 0) and (o8 > 0) then
               if m8 > o8 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o8 / m8) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m8 / o8) * 100);

          orc := orc + o8;
          mes := mes + m8;
     end;

     if txtmes.text = '09' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o9);
          lblmes.caption := FormatFloat('#,###,###0.00', m9);
          if o9 > m9 then
               lbldif.caption := FormatFloat('#,###,###0.00', o9 - m9)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m9 - o9);
          if (m9 > 0) and (o9 > 0) then
               if m9 > o9 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o9 / m9) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m9 / o9) * 100);

          orc := orc + o9;
          mes := mes + m9;
     end;

     if txtmes.text = '10' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o10);
          lblmes.caption := FormatFloat('#,###,###0.00', m10);
          if o10 > m10 then
               lbldif.caption := FormatFloat('#,###,###0.00', o10 - m10)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m10 - o10);
          if (m10 > 0) and (o10 > 0) then
               if m10 > o10 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o10 / m10) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m10 / o10) * 100);

          orc := orc + o10;
          mes := mes + m10;
     end;

     if txtmes.text = '11' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o11);
          lblmes.caption := FormatFloat('#,###,###0.00', m11);
          if o11 > m11 then
               lbldif.caption := FormatFloat('#,###,###0.00', o11 - m11)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m11 - o11);
          if (m11 > 0) and (o11 > 0) then
               if m11 > o11 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o11 / m11) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m11 / o11) * 100);

          orc := orc + o11;
          mes := mes + m11;
     end;

     if txtmes.text = '12' then
     begin
          lblorc.caption := FormatFloat('#,###,###0.00', o12);
          lblmes.caption := FormatFloat('#,###,###0.00', m12);
          if o12 > m12 then
               lbldif.caption := FormatFloat('#,###,###0.00', o12 - m12)
          else
               lbldif.caption := FormatFloat('#,###,###0.00', m12 - o12);
          if (m12 > 0) and (o12 > 0) then
               if m12 > o12 then
                    lblp.caption := FormatFloat('#,###,###0.00', (o12 / m12) * 100)
               else
                    lblp.caption := FormatFloat('#,###,###0.00', (m12 / o12) * 100);

          orc := orc + o12;
          mes := mes + m12;
     end;

     lblorcacu.caption := FormatFloat('#,###,###0.00', orc);
     lblmesacu.caption := FormatFloat('#,###,###0.00', mes);
     if mes < orc then
          lbldifacu.caption := FormatFloat('#,###,###0.00', orc - mes)
     else
          lbldifacu.caption := FormatFloat('#,###,###0.00', mes - orc);

     if (mes > 0) and (orc > 0) then
          if mes > orc then
               lblpacu.caption := FormatFloat('#,###,###0.00', (orc / mes) * 100)
          else
               lblpacu.caption := FormatFloat('#,###,###0.00', (mes / orc) * 100);
end;

procedure TFBalanceteRel.RLSystemInfo5BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     m1 := 0;
     m2 := 0;
     m3 := 0;
     m4 := 0;
     m5 := 0;
     m6 := 0;
     m7 := 0;
     m8 := 0;
     m9 := 0;
     m10 := 0;
     m11 := 0;
     m12 := 0;
     saldo := 0;

     o1 := 0;
     o2 := 0;
     o3 := 0;
     o4 := 0;
     o5 := 0;
     o6 := 0;
     o7 := 0;
     o8 := 0;
     o9 := 0;
     o10 := 0;
     o11 := 0;
     o12 := 0;
     orc := 0;
     mes := 0;

     RLLabelOrcRel.caption := 'Orçado X Realizado - ' + txtmes.text + '/' + txtano.text;
end;

procedure TFBalanceteRel.RGDadosClick(Sender: TObject);
begin
     RGRel.itemindex := 1;
     RGRel.Enabled := not (RGDados.Itemindex = 2);

     chknivel1e2.Checked := false;
     chknivel1e2.Enabled := not (RGDados.Itemindex = 2);
end;

procedure TFBalanceteRel.chkDataIniClick(Sender: TObject);
begin
     if not chkDataIni.Checked then
          txtdataini.text := '01/01/2000'
     else
          txtdataini.text := DateToStr(Date);

     txtdataini.Enabled := chkDataIni.Checked;
     txtdataini.Visible := chkDataIni.Checked;     
     lblDataIni.Enabled := chkDataIni.Checked;
end;

procedure TFBalanceteRel.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

end.
