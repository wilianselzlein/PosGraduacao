unit UMensalidadeRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, shellapi,
     WSMaskEdit, dateutils, Buttons;

type
     TFMensalidadeRel = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
          btnaluno: TSpeedButton;
          txtaluno: TWSEdit;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          RGModelo: TRadioGroup;
          Label2: TLabel;
          txtcurso: TWSEdit;
          btncurso: TSpeedButton;
          QRel: TSQLQuery;
          DSPRel: TDataSetProvider;
          CDSRel: TClientDataSet;
          DSRel: TDataSource;
          RLReportSint: TRLReport;
          RLBand8: TRLBand;
          RLLabel8: TRLLabel;
          RLBand6: TRLBand;
          RLDBText13: TRLDBText;
          RLDBImage3: TRLDBImage;
          RLDBText14: TRLDBText;
          RLDBText15: TRLDBText;
          RLDBText16: TRLDBText;
          RLDBText17: TRLDBText;
          RLDBText18: TRLDBText;
          RLBand5: TRLBand;
          RLBand10: TRLBand;
          RLLabel7: TRLLabel;
          RLDBResult1: TRLDBResult;
          Label1: TLabel;
          btnbanco: TSpeedButton;
          txtbanco: TWSEdit;
          RLReportAluno: TRLReport;
          RLBand14: TRLBand;
          RLLabel12: TRLLabel;
          RLBand16: TRLBand;
          RLDBText24: TRLDBText;
          RLDBImage6: TRLDBImage;
          RLDBText27: TRLDBText;
          RLDBText28: TRLDBText;
          RLDBText29: TRLDBText;
          RLDBText30: TRLDBText;
          RLDBText31: TRLDBText;
          RLBand17: TRLBand;
          RLLabel21: TRLLabel;
          RLGroup3: TRLGroup;
          RLBand18: TRLBand;
          RLDBText33: TRLDBText;
          RLBand19: TRLBand;
          RLLabel24: TRLLabel;
          RLDBText38: TRLDBText;
          RGSituacao: TRadioGroup;
          Label3: TLabel;
          Label4: TLabel;
          txtvctofin: TWSMaskEdit;
          txtvctoini: TWSMaskEdit;
          RLLabel2: TRLLabel;
          RLLabel9: TRLLabel;
          RLLabel28: TRLLabel;
          RLLabel29: TRLLabel;
          RLLabel3: TRLLabel;
          RLDBResult2: TRLDBResult;
          RLBand15: TRLBand;
          RLDBText11: TRLDBText;
          RLDBText10: TRLDBText;
          RLDBText9: TRLDBText;
          RLDBText19: TRLDBText;
          RLDBText42: TRLDBText;
          RLBand9: TRLBand;
          RLLabel10: TRLLabel;
          RLDBResult3: TRLDBResult;
          RLDBResult4: TRLDBResult;
          RLLabel19: TRLLabel;
          RLLabel20: TRLLabel;
          RLLabel22: TRLLabel;
          RLLabel23: TRLLabel;
          RLLabel25: TRLLabel;
          RLLabel26: TRLLabel;
          RLLabel27: TRLLabel;
          RLDBText32: TRLDBText;
          RLDBText34: TRLDBText;
          RLDBText35: TRLDBText;
          RLDBText36: TRLDBText;
          RLDBText37: TRLDBText;
          RLDBText39: TRLDBText;
          RLDBText40: TRLDBText;
          RLDBResult5: TRLDBResult;
          RLDBResult6: TRLDBResult;
          RLDBResult7: TRLDBResult;
          CDSRelMENALUNO: TIntegerField;
          CDSRelMENNUMERO: TIntegerField;
          CDSRelMENVENCIMENTO: TDateField;
          CDSRelMENVALOR: TFloatField;
          CDSRelMENACRESCIMO: TFloatField;
          CDSRelMENDESCONTO: TFloatField;
          CDSRelMENVALORPAGO: TFloatField;
          CDSRelMENDATAPAGAMENTO: TDateField;
          CDSRelMENLIQUIDO: TFloatField;
          CDSRelALUNOME: TStringField;
          CDSRelCURSO: TStringField;
          RLBand1: TRLBand;
          RLLabel1: TRLLabel;
          RLDBResult8: TRLDBResult;
          RLDBResult9: TRLDBResult;
          RLDBResult10: TRLDBResult;
          RLDBResult11: TRLDBResult;
          RLDBResult12: TRLDBResult;
          RLReportCursoAluno: TRLReport;
          RLBand3: TRLBand;
          RLLabel4: TRLLabel;
          RLBand4: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage2: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          RLDBText6: TRLDBText;
          RLBand11: TRLBand;
          RLLabel5: TRLLabel;
          RLLabel6: TRLLabel;
          RLLabel11: TRLLabel;
          RLLabel13: TRLLabel;
          RLLabel14: TRLLabel;
          RLLabel15: TRLLabel;
          RLLabel16: TRLLabel;
          RLLabel17: TRLLabel;
          RLGroup1: TRLGroup;
          RLBand20: TRLBand;
          RLLabel18: TRLLabel;
          RLDBText26: TRLDBText;
          RLBand21: TRLBand;
          RLLabel30: TRLLabel;
          RLDBResult13: TRLDBResult;
          RLDBResult14: TRLDBResult;
          RLDBResult15: TRLDBResult;
          RLDBResult16: TRLDBResult;
          RLDBResult17: TRLDBResult;
          RLBand22: TRLBand;
          RLLabel31: TRLLabel;
          RLDBResult18: TRLDBResult;
          RLDBResult19: TRLDBResult;
          RLDBResult20: TRLDBResult;
          RLDBResult21: TRLDBResult;
          RLDBResult22: TRLDBResult;
          RLReportVcto: TRLReport;
          RLBand24: TRLBand;
          RLLabel32: TRLLabel;
          RLBand25: TRLBand;
          RLDBText41: TRLDBText;
          RLDBImage8: TRLDBImage;
          RLDBText43: TRLDBText;
          RLDBText44: TRLDBText;
          RLDBText45: TRLDBText;
          RLDBText46: TRLDBText;
          RLDBText47: TRLDBText;
          RLBand26: TRLBand;
          RLLabel33: TRLLabel;
          RLLabel34: TRLLabel;
          RLLabel35: TRLLabel;
          RLLabel36: TRLLabel;
          RLLabel37: TRLLabel;
          RLLabel38: TRLLabel;
          RLLabel39: TRLLabel;
          RLLabel40: TRLLabel;
          RLGroup2: TRLGroup;
          RLBand27: TRLBand;
          RLDBText48: TRLDBText;
          RLDBText49: TRLDBText;
          RLDBText50: TRLDBText;
          RLDBText51: TRLDBText;
          RLDBText52: TRLDBText;
          RLDBText53: TRLDBText;
          RLDBText54: TRLDBText;
          RLDBText55: TRLDBText;
          RLBand28: TRLBand;
          RLLabel41: TRLLabel;
          RLDBText56: TRLDBText;
          RLBand29: TRLBand;
          RLLabel42: TRLLabel;
          RLDBResult23: TRLDBResult;
          RLDBResult24: TRLDBResult;
          RLDBResult25: TRLDBResult;
          RLDBResult26: TRLDBResult;
          RLDBResult27: TRLDBResult;
          RLBand30: TRLBand;
          RLLabel43: TRLLabel;
          RLDBResult28: TRLDBResult;
          RLDBResult29: TRLDBResult;
          RLDBResult30: TRLDBResult;
          RLDBResult31: TRLDBResult;
          RLDBResult32: TRLDBResult;
          QRelCURSO: TStringField;
          QRelALUNOME: TStringField;
          QRelMENALUNO: TIntegerField;
          QRelMENNUMERO: TIntegerField;
          QRelMENVENCIMENTO: TDateField;
          QRelMENVALOR: TFloatField;
          QRelMENACRESCIMO: TFloatField;
          QRelMENDESCONTO: TFloatField;
          QRelMENVALORPAGO: TFloatField;
          QRelMENDATAPAGAMENTO: TDateField;
          QRelMENLIQUIDO: TFloatField;
          DSData: TDataSource;
          CDSData: TClientDataSet;
          DSPData: TDataSetProvider;
          QData: TSQLQuery;
          QDataDATA: TDateField;
          QDataVALOR: TFloatField;
          QDataVALORPAGO: TFloatField;
          CDSDataDATA: TDateField;
          CDSDataVALOR: TFloatField;
          CDSDataVALORPAGO: TFloatField;
          RLReportData: TRLReport;
          RLBand32: TRLBand;
          RLLabel44: TRLLabel;
          RLBand33: TRLBand;
          RLDBText57: TRLDBText;
          RLDBImage10: TRLDBImage;
          RLDBText58: TRLDBText;
          RLDBText59: TRLDBText;
          RLDBText60: TRLDBText;
          RLDBText61: TRLDBText;
          RLDBText62: TRLDBText;
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
          CDSDatadiferenca: TFloatField;
          QAluno: TSQLQuery;
          DSPAluno: TDataSetProvider;
          CDSAluno: TClientDataSet;
          DSAluno: TDataSource;
          QAlunoCODIGO: TIntegerField;
          QAlunoNOME: TStringField;
          QAlunoVALOR: TFloatField;
          QAlunoVALORPAGO: TFloatField;
          CDSAlunoCODIGO: TIntegerField;
          CDSAlunoNOME: TStringField;
          CDSAlunoVALOR: TFloatField;
          CDSAlunoVALORPAGO: TFloatField;
          CDSAlunodiferenca: TFloatField;
          RLReportAlunoInadim: TRLReport;
          RLBand37: TRLBand;
          RLLabel46: TRLLabel;
          RLBand39: TRLBand;
          RLDBText64: TRLDBText;
          RLDBImage12: TRLDBImage;
          RLDBText65: TRLDBText;
          RLDBText67: TRLDBText;
          RLDBText69: TRLDBText;
          RLDBText71: TRLDBText;
          RLDBText72: TRLDBText;
          RLBand40: TRLBand;
          RLLabel47: TRLLabel;
          RLLabel49: TRLLabel;
          RLLabel51: TRLLabel;
          RLLabel53: TRLLabel;
          RLBand41: TRLBand;
          RLLabel54: TRLLabel;
          RLDBResult33: TRLDBResult;
          RLDBResult34: TRLDBResult;
          RLDBResult35: TRLDBResult;
          RLBand42: TRLBand;
          RLDBText73: TRLDBText;
          RLDBText74: TRLDBText;
          RLDBText75: TRLDBText;
          RLDBText76: TRLDBText;
          RLDBText77: TRLDBText;
          QRelDIAS: TFMTBCDField;
          CDSRelDIAS: TFMTBCDField;
          RLSystemInfo1: TRLSystemInfo;
          RLSystemInfo2: TRLSystemInfo;
          RLSystemInfo3: TRLSystemInfo;
          RLSystemInfo4: TRLSystemInfo;
          RLSystemInfo5: TRLSystemInfo;
          RLSystemInfo6: TRLSystemInfo;
          QRelMENBOLSA: TFloatField;
          CDSRelMENBOLSA: TFloatField;
          RLLabel56: TRLLabel;
          RLDBText78: TRLDBText;
          RLDBResult36: TRLDBResult;
          RLDBResult37: TRLDBResult;
          RLLabel57: TRLLabel;
          RLDBResult39: TRLDBResult;
          RLDBResult40: TRLDBResult;
          RLLabel58: TRLLabel;
          RLDBText80: TRLDBText;
          RLDBResult43: TRLDBResult;
          RLDBResult44: TRLDBResult;
          QRelCURSO_ALUNO: TStringField;
          CDSRelCURSO_ALUNO: TStringField;
          RLGroup4: TRLGroup;
          RLBand43: TRLBand;
          RLDBText81: TRLDBText;
          RLDBText82: TRLDBText;
          RLDBText83: TRLDBText;
          RLDBText84: TRLDBText;
          RLDBText85: TRLDBText;
          RLDBText86: TRLDBText;
          RLDBText87: TRLDBText;
          RLDBText88: TRLDBText;
          RLDBText89: TRLDBText;
          RLBand44: TRLBand;
          RLBand45: TRLBand;
          RLLabel60: TRLLabel;
          RLDBResult45: TRLDBResult;
          RLDBResult46: TRLDBResult;
          RLDBResult47: TRLDBResult;
          RLDBResult48: TRLDBResult;
          RLDBResult49: TRLDBResult;
          RLDBResult50: TRLDBResult;
          RLReportCurso: TRLReport;
          RLBand13: TRLBand;
          RLDBImage13: TRLDBImage;
          RLDBRichText7: TRLDBRichText;
          RLBand46: TRLBand;
          RLLabel59: TRLLabel;
          RLSystemInfo7: TRLSystemInfo;
          RLBand47: TRLBand;
          RLDBText7: TRLDBText;
          RLDBImage14: TRLDBImage;
          RLDBText8: TRLDBText;
          RLDBText12: TRLDBText;
          RLDBText20: TRLDBText;
          RLDBText21: TRLDBText;
          RLDBText22: TRLDBText;
          RLBand48: TRLBand;
          RLLabel61: TRLLabel;
          RLLabel63: TRLLabel;
          RLLabel64: TRLLabel;
          RLLabel65: TRLLabel;
          RLLabel66: TRLLabel;
          RLLabel67: TRLLabel;
          RLLabel69: TRLLabel;
          RLGroup5: TRLGroup;
          RLBand50: TRLBand;
          RLDBResult51: TRLDBResult;
          RLDBResult52: TRLDBResult;
          RLDBResult53: TRLDBResult;
          RLDBResult54: TRLDBResult;
          RLDBResult55: TRLDBResult;
          RLDBResult56: TRLDBResult;
          RLBand54: TRLBand;
          RLLabel73: TRLLabel;
          RLDBResult63: TRLDBResult;
          RLDBResult64: TRLDBResult;
          RLDBResult65: TRLDBResult;
          RLDBResult66: TRLDBResult;
          RLDBResult67: TRLDBResult;
          RLDBResult68: TRLDBResult;
          lblcurso: TRLLabel;
          RLBand51: TRLBand;
          RGSituacaoAluno: TRadioGroup;
          RGDataFiltrar: TRadioGroup;
          QRelALUEMAIL: TStringField;
          CDSRelALUEMAIL: TStringField;
          RLDBText23: TRLDBText;
          RLLabel62: TRLLabel;
          Label5: TLabel;
          txtforma: TWSEdit;
          btnforma: TSpeedButton;
          RLReportFormaPgto: TRLReport;
          RLBand52: TRLBand;
          RLLabel68: TRLLabel;
          RLSystemInfo22: TRLSystemInfo;
          RLBand53: TRLBand;
          RLDBText25: TRLDBText;
          RLDBImage16: TRLDBImage;
          RLDBText79: TRLDBText;
          RLDBText90: TRLDBText;
          RLDBText91: TRLDBText;
          RLDBText92: TRLDBText;
          RLDBText93: TRLDBText;
          RLBand55: TRLBand;
          RLLabel70: TRLLabel;
          RLLabel71: TRLLabel;
          RLLabel72: TRLLabel;
          RLLabel74: TRLLabel;
          RLBand56: TRLBand;
          RLLabel75: TRLLabel;
          RLDBResult57: TRLDBResult;
          RLDBResult58: TRLDBResult;
          RLDBResult59: TRLDBResult;
          RLBand57: TRLBand;
          RLDBText94: TRLDBText;
          RLDBText95: TRLDBText;
          RLDBText96: TRLDBText;
          RLDBText97: TRLDBText;
          RLDBText98: TRLDBText;
          RLBand49: TRLBand;
          RLDBImage15: TRLDBImage;
          RLDBRichText8: TRLDBRichText;
          RLSystemInfo20: TRLSystemInfo;
          RLSystemInfo21: TRLSystemInfo;
          RLDraw1: TRLDraw;
          RLBand36: TRLBand;
          RLDBImage11: TRLDBImage;
          RLDBRichText6: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw2: TRLDraw;
          RLBand31: TRLBand;
          RLDBImage9: TRLDBImage;
          RLDBRichText5: TRLDBRichText;
          RLSystemInfo10: TRLSystemInfo;
          RLSystemInfo11: TRLSystemInfo;
          RLDraw3: TRLDraw;
          RLBand23: TRLBand;
          RLDBImage7: TRLDBImage;
          RLDBRichText4: TRLDBRichText;
          RLSystemInfo12: TRLSystemInfo;
          RLSystemInfo13: TRLSystemInfo;
          RLDraw4: TRLDraw;
          RLBand2: TRLBand;
          RLDBImage1: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo14: TRLSystemInfo;
          RLSystemInfo15: TRLSystemInfo;
          RLDraw5: TRLDraw;
          RLBand12: TRLBand;
          RLDBImage5: TRLDBImage;
          RLDBRichText3: TRLDBRichText;
          RLSystemInfo16: TRLSystemInfo;
          RLSystemInfo17: TRLSystemInfo;
          RLDraw6: TRLDraw;
          RLBand7: TRLBand;
          RLDBImage4: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLSystemInfo18: TRLSystemInfo;
          RLSystemInfo19: TRLSystemInfo;
          RLDraw7: TRLDraw;
          txtnomealuno: TWSEdit;
          txtnomecurso: TWSEdit;
          txtnomebanco: TWSEdit;
          txtnomeforma: TWSEdit;
          RLSystemInfo23: TRLSystemInfo;
          RLSystemInfo24: TRLSystemInfo;
    RLDBText99: TRLDBText;
    RLLabel76: TRLLabel;
    QRelTELEFONES: TStringField;
    CDSRelTELEFONES: TStringField;
    lblPgto: TRLLabel;
    lblPgtoTotal: TRLLabel;
    RLLabel77: TRLLabel;
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
          procedure btnbancoClick(Sender: TObject);
          procedure RLDBText19BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure RGModeloClick(Sender: TObject);
          procedure CDSDataCalcFields(DataSet: TDataSet);
          procedure CDSAlunoCalcFields(DataSet: TDataSet);
          procedure RLBand51BeforePrint(Sender: TObject; var PrintIt: Boolean);
          procedure btnalunoClick(Sender: TObject);
          procedure btnformaClick(Sender: TObject);
          procedure txtformaKeyPress(Sender: TObject; var Key: Char);
          procedure txtalunoExit(Sender: TObject);
          procedure txtcursoExit(Sender: TObject);
          procedure txtbancoExit(Sender: TObject);
          procedure txtformaExit(Sender: TObject);
          procedure RLBand15BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLLabel61BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure lblcursoBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLLabel73BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);

     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FMensalidadeRel: TFMensalidadeRel;
     memo: Tmemo;
     lPgtos, lPgtosTotal : integer;

implementation

uses UDM, UMenu, Ucurso, UAluno, UDisciplina, UProfessor, UBanco,
     UFormaPgto, USenha, UFuncoes;

{$R *.dfm}

procedure TFMensalidadeRel.BtnImprimirClick(Sender: TObject);
begin
     try
          strtodate(txtvctoini.text);
     except
          showmessage('Campo data inicial inválido!');
          txtvctoini.setfocus;
          exit;
     end;
     try
          strtodate(txtvctofin.text);
     except
          showmessage('Campo data final inválido!');
          txtvctofin.setfocus;
          exit;
     end;

     if RGModelo.itemindex <= 4 then
     begin
          with qrel.sql do
          begin
               clear;
               add('select CURNOME as curso, (CURNOME||''-''||ALUNOME) as curso_aluno, ALUNOME, MENALUNO,MENNUMERO,');
               add('MENVENCIMENTO,MENVALOR,MENACRESCIMO,MENDESCONTO,MENBOLSA,MENVALORPAGO,MENDATAPAGAMENTO,MENLIQUIDO,ALUEMAIL,');
               add('((MENVENCIMENTO - CURRENT_DATE) * -1) AS DIAS,');
               add('COALESCE(ALUFONE,'' '')||'' ''||COALESCE(ALUFAX,'' '')||'' ''||COALESCE(ALUCELULAR,'' '') AS TELEFONES');
               add('from TALUNO');
               add('left outer join TMENSALIDADE on ALUCOD = MENALUNO');
               add('left outer join TCURSO on CURCOD = ALUCURSO');
               add('where MENNUMERO > 0');
               if trim(txtaluno.text) <> '' then
                    add('AND ALUCOD = ' + trim(txtaluno.text));
               if trim(txtcurso.text) <> '' then
                    add('AND CURCOD = ' + trim(txtcurso.text));
               if trim(txtbanco.text) <> '' then
                    add('AND MENBANCO = ' + trim(txtbanco.text));
               if trim(txtforma.text) <> '' then
                    add('AND MENFORMAPGTO = ' + trim(txtforma.text));
               case RGSituacao.itemindex of
                    0: add('AND MENDATAPAGAMENTO IS NULL');
                    1: add('AND MENDATAPAGAMENTO IS NOT NULL');
               end;
               if RGSituacaoAluno.ItemIndex > 0 then
                    add('AND ALUSITUACAO = ' + quotedstr(RGSituacaoAluno.Items.Strings[RGSituacaoAluno.Itemindex]));
               case RGDataFiltrar.itemindex of
                    0: add('AND MENVENCIMENTO BETWEEN :ini AND :fin');
                    1: add('AND MENDATAPAGAMENTO BETWEEN :ini AND :fin');
               end;
               case rgmodelo.itemindex of
                    0: add('ORDER BY 1, ALUNOME, MENVENCIMENTO');
                    1: add('ORDER BY ALUNOME, 1, MENVENCIMENTO');
                    2: add('ORDER BY 1, ALUNOME, MENVENCIMENTO');
                    3: add('ORDER BY 1');
                    4: begin
                              case RGDataFiltrar.itemindex of
                                   0: add('ORDER BY MENVENCIMENTO, 1, ALUNOME');
                                   1: add('ORDER BY MENDATAPAGAMENTO, 1, ALUNOME');
                              end;
                         end;
               end;
               if RGDataFiltrar.itemindex = 0 then
               begin
                    RLGroup2.DataFields := 'MENVENCIMENTO';
                    RLDBText56.DataField := 'MENVENCIMENTO';
                    RLLabel41.caption := 'Vencimento:';
               end
               else
               begin
                    RLGroup2.DataFields := 'MENDATAPAGAMENTO';
                    RLDBText56.DataField := 'MENDATAPAGAMENTO';
                    RLLabel41.caption := 'Pagamento:';
               end;
          end;
          qrel.ParamByName('ini').asdate := strtodate(txtvctoini.text);
          qrel.ParamByName('fin').asdate := strtodate(txtvctofin.text);
          cdsrel.open;

          case RGModelo.itemindex of
               0:
                    begin
                         memo := Tmemo.Create(nil);
                         memo.Name := 'MEMOIMPORT';
                         memo.Parent := FmensalidadeRel;
                         memo.ScrollBars := ssBoth;
                         memo.Lines.clear;
                         RLReportSint.PreviewModal;
                         memo.Lines.savetofile('c:\posgraduacao\emails.txt');
                         memo.free;
                         ShellExecute(GetDesktopWindow, 'open', pchar('c:\posgraduacao\emails.txt'), nil, nil, sw_ShowNormal);
                    end;
               1: RLReportAluno.PreviewModal;
               2: RLReportCursoAluno.PreviewModal;
               3: RLReportCurso.PreviewModal;
               4: RLReportVcto.PreviewModal;
          end;
          cdsrel.close;
     end;
     if RGModelo.itemindex = 5 then
     begin
          with qdata.sql do
          begin
               clear;
               add('select data, valor, valorpago');
               add('from vmensalidade_data');
               add('where valor > 0 and valorpago > 0');
               add('AND data BETWEEN :vctoini AND :vctofin');
               add('ORDER BY data');
          end;
          qdata.ParamByName('vctoini').asdate := strtodate(txtvctoini.text);
          qdata.ParamByName('vctofin').asdate := strtodate(txtvctofin.text);
          cdsdata.open;

          RLReportData.PreviewModal;
          cdsdata.close;
     end;
     if RGModelo.itemindex = 6 then
     begin
          with qaluno.sql do
          begin
               clear;
               add('select codigo, nome, valor, valorpago');
               add('from VMENSALIDADE_ALUNO');
               add('where valor > 0 and valorpago > 0');
               if trim(txtaluno.text) <> '' then
                    add('AND codigo = ' + trim(txtaluno.text));
               add('ORDER BY nome');
          end;
          cdsaluno.open;

          RLReportAlunoInadim.PreviewModal;
          cdsaluno.close;
     end;
     if RGModelo.itemindex = 8 then
     begin
          with qaluno.sql do
          begin
               clear;
               add('select FORCOD as codigo, FORNOME as nome, SUM(MENVALOR) as valor, SUM(MENVALORPAGO) as valorpago');
               add('from TMENSALIDADE');
               add('left outer join TALUNO on ALUCOD = MENALUNO');
               add('left outer join TFORMAPGTO on FORCOD = MENFORMAPGTO');
               add('where MENNUMERO > 0');
               if trim(txtaluno.text) <> '' then
                    add('AND ALUCOD = ' + trim(txtaluno.text));
               if trim(txtcurso.text) <> '' then
                    add('AND ALUCURSO = ' + trim(txtcurso.text));
               if trim(txtbanco.text) <> '' then
                    add('AND MENBANCO = ' + trim(txtbanco.text));
               if trim(txtforma.text) <> '' then
                    add('AND MENFORMAPGTO = ' + trim(txtforma.text));
               case RGSituacao.itemindex of
                    0: add('AND MENDATAPAGAMENTO IS NULL');
                    1: add('AND MENDATAPAGAMENTO IS NOT NULL');
               end;
               if RGSituacaoAluno.ItemIndex > 0 then
                    add('AND ALUSITUACAO = ' + quotedstr(RGSituacaoAluno.Items.Strings[RGSituacaoAluno.Itemindex]));
               case RGDataFiltrar.itemindex of
                    0: add('AND MENVENCIMENTO BETWEEN :ini AND :fin');
                    1: add('AND MENDATAPAGAMENTO BETWEEN :ini AND :fin');
               end;
               add('GROUP BY FORCOD, FORNOME ORDER BY 2');
          end;
          QAluno.ParamByName('ini').asdate := strtodate(txtvctoini.text);
          QAluno.ParamByName('fin').asdate := strtodate(txtvctofin.text);
          CDSAluno.open;

          RLReportFormaPgto.PreviewModal;
          CDSAluno.close;

     end;
end;

procedure TFMensalidadeRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFMensalidadeRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFMensalidadeRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFMensalidadeRel.txtcodKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFMensalidadeRel.btncursoClick(Sender: TObject);
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

procedure TFMensalidadeRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
     txtvctoini.Text := datetostr(startofthemonth(date));
     txtvctofin.Text := datetostr(endofthemonth(date));
end;

procedure TFMensalidadeRel.txtcursoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtcurso then
               btncurso.click;
          if sender = txtaluno then
               btnaluno.click;
          if sender = txtbanco then
               btnbanco.click;
          if sender = txtforma then
               btnforma.click;

     end;
end;

procedure TFMensalidadeRel.btnbancoClick(Sender: TObject);
begin
     if Application.FindComponent('FBanco') <> nil then
          FBanco.Close;

     try
          FBanco := tFBanco.create(self);
          FBanco.FormStyle := fsNormal;
          FBanco.Visible := false;
          usuario('btnconsultar', FBanco.wsinformacao.programa);
          FBanco.showmodal;
          txtbanco.text := dm.CDSBancoBanCOD.asstring;
     finally
          FBanco.release;
          FBanco := nil;
          FBanco.free;
     end;
end;

procedure TFMensalidadeRel.RLDBText19BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     {    if < 0
         lbldias.Caption:= floattostr(dias);

     //pegar a multa
        if dias > 0 then
        begin
           perc:= strtofloat(FFCTRVenc.edit3.text);
           juros:= juros + (((perc/30)* dias)* (valorinicial - valorpago - desccomercial) / 100);
        end;

        desccomercial := desccomercial + Desc_Pgto(QRVencCTRDOC1.asinteger, QRVencCTRDOC2.asstring, QRVencCTRParcela.asinteger);
        juros := juros + Juro_Pgto(QRVencCTRDOC1.asinteger, QRVencCTRDOC2.asstring, QRVencCTRParcela.asinteger);

        lbljuros.caption:=formatfloat(copy(dm2.TBMoedaMOEDNOME.value,1,2) + ' #,###,###0.00',juros);}

end;

procedure TFMensalidadeRel.RGModeloClick(Sender: TObject);
begin
     txtaluno.enabled := RGModelo.ItemIndex <> 4;
     txtcurso.enabled := (RGModelo.ItemIndex < 4) or (RGModelo.ItemIndex = 8);
     txtbanco.enabled := (RGModelo.ItemIndex < 4) or (RGModelo.ItemIndex = 8);

     btnaluno.enabled := RGModelo.ItemIndex <> 4;
     btncurso.enabled := (RGModelo.ItemIndex < 4) or (RGModelo.ItemIndex = 8);
     btnbanco.enabled := (RGModelo.ItemIndex < 4) or (RGModelo.ItemIndex = 8);

     txtvctoini.enabled := (RGModelo.ItemIndex < 5) or (RGModelo.ItemIndex = 8);
     txtvctofin.enabled := (RGModelo.ItemIndex < 5) or (RGModelo.ItemIndex = 8);

     RGSituacaoAluno.enabled := (RGModelo.ItemIndex < 5) or (RGModelo.ItemIndex = 8);
end;

procedure TFMensalidadeRel.CDSDataCalcFields(DataSet: TDataSet);
begin
     CDSDataDiferenca.asfloat := CDSDataVALOR.asfloat - CDSDataVALORPAGO.AsFloat;
end;

procedure TFMensalidadeRel.CDSAlunoCalcFields(DataSet: TDataSet);
begin
     CDSAlunodiferenca.asfloat := CDSAlunoVALOR.asfloat - CDSAlunoVALORPAGO.AsFloat;
end;

procedure TFMensalidadeRel.RLBand51BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     lblcurso.caption := CDSRelCURSO.asstring;
     if CDSRelMENVALORPAGO.AsFloat > 0 then
     begin
         inc(lPgtos);
         inc(lPgtosTotal);
     end;
     RLBand51.Height := 0;     
end;

procedure TFMensalidadeRel.btnalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          FAluno := tFAluno.create(self);
          FAluno.FormStyle := fsNormal;
          FALuno.Visible := false;
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

procedure TFMensalidadeRel.btnformaClick(Sender: TObject);
begin
     if Application.FindComponent('FFormaPgto') <> nil then
          FFormaPgto.Close;

     try
          FFormaPgto := tFFormaPgto.create(self);
          FFormaPgto.FormStyle := fsNormal;
          fformapgto.Visible := false;
          usuario('btnconsultar', FFormaPgto.wsinformacao.programa);
          FFormaPgto.showmodal;
          txtforma.text := dm.CDSformaPgtoFORCOD.asstring;
     finally
          FFormaPgto.release;
          FFormaPgto := nil;
          FFormaPgto.free;
     end;
end;

procedure TFMensalidadeRel.txtformaKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFMensalidadeRel.txtalunoExit(Sender: TObject);
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

procedure TFMensalidadeRel.txtcursoExit(Sender: TObject);
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

procedure TFMensalidadeRel.txtbancoExit(Sender: TObject);
begin
     txtnomeBanco.clear;
     if trim(txtBanco.Text) <> '' then
     begin
          try
               strtoint(txtBanco.text);
          except
               txtnomeBanco.text := 'Campo Banco Inválido!';
               txtBanco.setfocus;
               exit;
          end;
          if not dm.CDSBanco.active then
               dm.CDSBanco.open;
          if dm.CDSBanco.Locate('BANCOD', txtBanco.text, []) then
          begin
               txtnomeBanco.text := dm.CDSBancoBANNOME.AsString;
          end
          else
          begin
               txtnomeBanco.text := 'Banco não Cadastrado!';
               txtBanco.setfocus;
               exit;
          end;
     end;
end;

procedure TFMensalidadeRel.txtformaExit(Sender: TObject);
begin
     txtnomeforma.clear;
     if trim(txtforma.Text) <> '' then
     begin
          try
               strtoint(txtforma.text);
          except
               txtnomeforma.text := 'Campo Forma Inválido!';
               txtforma.setfocus;
               exit;
          end;
          if not dm.CDSFormaPgto.active then
               dm.CDSformaPgto.open;
          if dm.CDSformaPgto.Locate('FORCOD', txtforma.text, []) then
          begin
               txtnomeforma.text := dm.CDSFormaPgtoFORNOME.AsString;
          end
          else
          begin
               txtnomeforma.text := 'forma não Cadastrada!';
               txtforma.setfocus;
               exit;
          end;
     end;
end;

procedure TFMensalidadeRel.RLBand15BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     if trim(CDSRelAluemail.asstring) <> '' then
          memo.lines.add(CDSRelAluemail.asstring);
end;

procedure TFMensalidadeRel.RLLabel61BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
    lPgtos := 0;
    lPgtosTotal := 0;
end;

procedure TFMensalidadeRel.lblcursoBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
    lblPgto.Caption := IntToStr(lPgtos);
    lPgtos := 0;
end;

procedure TFMensalidadeRel.RLLabel73BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
    lblPgtoTotal.Caption := IntToStr(lPgtosTotal);
    lPgtosTotal := 0;
end;

end.
