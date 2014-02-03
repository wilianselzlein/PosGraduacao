unit UAlunoCursoRel;

interface
                                                                                
uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, DateUtils,
     Mask, WSMaskEdit, Buttons;

type
     TFAlunoCursoRel = class(TForm)
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
          txtcodcurso: TWSEdit;
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
          RLBand5: TRLBand;
          RLGroup2: TRLGroup;
          RLBand15: TRLBand;
          RLBand9: TRLBand;
          RLDBText10: TRLDBText;
          RLDBText9: TRLDBText;
          RLDBText19: TRLDBText;
          lblobs: TRLLabel;
          Label1: TLabel;
          btnprofessor: TSpeedButton;
          txtprofessor: TWSEdit;
          btndisciplina: TSpeedButton;
    txtcoddisciplina: TWSEdit;
          Label3: TLabel;
          RLReportAna: TRLReport;
          RLBand14: TRLBand;
          RLBand16: TRLBand;
          RLDBText24: TRLDBText;
          RLDBImage6: TRLDBImage;
          RLDBText27: TRLDBText;
          RLDBText28: TRLDBText;
          RLDBText29: TRLDBText;
          RLDBText30: TRLDBText;
          RLBand17: TRLBand;
          RLGroup3: TRLGroup;
          RLBand18: TRLBand;
          txtfreq: TRLDBText;
          RLDBText33: TRLDBText;
          txtnota: TRLDBText;
          RLDBText36: TRLDBText;
          RLBand19: TRLBand;
          RLLabel23: TRLLabel;
          RLLabel24: TRLLabel;
          RLDBText38: TRLDBText;
          RLLabel25: TRLLabel;
          RLDBText39: TRLDBText;
          RLDBText41: TRLDBText;
          QRelALUNO_CURSO: TStringField;
          QRelCURSO_PROFESSOR_DISCIPLINA: TStringField;
          QRelALUNOME: TStringField;
          QRelCURNOME: TStringField;
          QRelORIENTADOR: TStringField;
          QRelALUCARTEIRINHA: TStringField;
          QRelALUCRACHA: TStringField;
          QRelALUCERTIFICADO: TStringField;
    curti: TStringField;
          QRelPROFESSOR: TStringField;
          QRelALUDISNOTA: TFloatField;
          QRelALUDISFREQUENCIA: TFloatField;
          QRelPRORESUMOTITULACAO: TStringField;
          QRelCURVALOR: TFloatField;
          QRelALUCOD: TIntegerField;
          QRelALUCURSO: TIntegerField;
          CDSRelALUNO_CURSO: TStringField;
          CDSRelCURSO_PROFESSOR_DISCIPLINA: TStringField;
          CDSRelALUNOME: TStringField;
          CDSRelCURNOME: TStringField;
          CDSRelORIENTADOR: TStringField;
          CDSRelALUCARTEIRINHA: TStringField;
          CDSRelALUCRACHA: TStringField;
          CDSRelALUCERTIFICADO: TStringField;
          CDSRelDISNOME: TStringField;
          CDSRelPROFESSOR: TStringField;
          CDSRelALUDISNOTA: TFloatField;
          CDSRelALUDISFREQUENCIA: TFloatField;
          CDSRelPRORESUMOTITULACAO: TStringField;
          CDSRelCURVALOR: TFloatField;
          CDSRelALUCOD: TIntegerField;
          CDSRelALUCURSO: TIntegerField;
          RLReportFreq: TRLReport;
          RLBand3: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage2: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          RLBand11: TRLBand;
          RLBand20: TRLBand;
          RLDBText25: TRLDBText;
          RLLabel16: TRLLabel;
          RLLabel17: TRLLabel;
          RLLabel28: TRLLabel;
          QRelALUMONONOTA: TFloatField;
          QRelALUMONODATA: TDateField;
          CDSRelALUMONONOTA: TFloatField;
          CDSRelALUMONODATA: TDateField;
          QRelMEDIANOTA: TFloatField;
          QRelMEDIAFREQ: TFloatField;
          CDSRelMEDIANOTA: TFloatField;
          CDSRelMEDIAFREQ: TFloatField;
          RLReportAluno: TRLReport;
          RLBand21: TRLBand;
          RLDBText44: TRLDBText;
          RLDBImage10: TRLDBImage;
          RLDBText45: TRLDBText;
          RLDBText46: TRLDBText;
          RLDBText47: TRLDBText;
          RLDBText48: TRLDBText;
          RLBand23: TRLBand;
          RLLabel29: TRLLabel;
          RLBand24: TRLBand;
          RLLabel30: TRLLabel;
          RLLabel31: TRLLabel;
          RLBand25: TRLBand;
          RLDBText50: TRLDBText;
          RLDBText51: TRLDBText;
          RLDBText53: TRLDBText;
          RLDBText52: TRLDBText;
          RLLabel32: TRLLabel;
          RLLabel33: TRLLabel;
          DSMelhores: TDataSource;
          CDSMelhores: TClientDataSet;
          DSPMelhores: TDataSetProvider;
          QMelhores: TSQLQuery;
          QMelhoresALUNONOME: TStringField;
          QMelhoresCURSONOME: TStringField;
          QMelhoresNOTA: TFloatField;
          QMelhoresFREQ: TFloatField;
          CDSMelhoresALUNONOME: TStringField;
          CDSMelhoresCURSONOME: TStringField;
          CDSMelhoresNOTA: TFloatField;
          CDSMelhoresFREQ: TFloatField;
          RLLabel21: TRLLabel;
          RLLabel22: TRLLabel;
          RLLabel27: TRLLabel;
          RLLabel20: TRLLabel;
          RLLabel14: TRLLabel;
          RLLabel19: TRLLabel;
          RLSystemInfo2: TRLSystemInfo;
          RLSystemInfo4: TRLSystemInfo;
          lblnota: TRLLabel;
          lblfreq: TRLLabel;
          RLDBResult2: TRLDBResult;
          RLLabel35: TRLLabel;
          RLDraw1: TRLDraw;
          RLDraw2: TRLDraw;
          lbldeclara: TRLMemo;
          lblcidadedata: TRLLabel;
          RLLabel34: TRLLabel;
          RLLabel36: TRLLabel;
          QRelCIDNOME: TStringField;
          QRelALUNASCIMENTO: TDateField;
          CDSRelCIDNOME: TStringField;
          CDSRelALUNASCIMENTO: TDateField;
          QRelALUNACIONALIDADE: TStringField;
          CDSRelALUNACIONALIDADE: TStringField;
          RLDBText26: TRLDBText;
          RLDBText42: TRLDBText;
          QRelALUCURSOINICIO: TDateField;
          QRelALUCURSOFIM: TDateField;
          CDSRelALUCURSOINICIO: TDateField;
          CDSRelALUCURSOFIM: TDateField;
          lbldatacurso: TRLLabel;
          QRelCURSISTEMAAVALIACAO: TStringField;
          QRelCURCRITERIOSAVALIACAO: TStringField;
          CDSRelCURSISTEMAAVALIACAO: TStringField;
          CDSRelCURCRITERIOSAVALIACAO: TStringField;
          RLDBText43: TRLDBText;
          RLDBText57: TRLDBText;
          QRelCURSECRETARIO: TStringField;
          CDSRelCURSECRETARIO: TStringField;
          QRelCOORDENADOR: TStringField;
          CDSRelCOORDENADOR: TStringField;
          RLLabel26: TRLLabel;
          RLLabel37: TRLLabel;
          lblsecretario: TRLLabel;
          lblcoordenador: TRLLabel;
          lblorientador: TRLLabel;
          lblorientadortitulacao: TRLLabel;
          lblmononota: TRLLabel;
          QRelORIENTADORTITULACAO: TStringField;
          CDSRelORIENTADORTITULACAO: TStringField;
          lblmonografia: TRLMemo;
          RLDraw3: TRLDraw;
          RLDBText11: TRLDBText;
          QRelALUMONOTITULO: TStringField;
          CDSRelALUMONOTITULO: TStringField;
          txtativo: TCheckBox;
          QRelALUDISHA: TIntegerField;
          CDSRelALUDISHA: TIntegerField;
          CDSAluno: TClientDataSet;
          DSPAluno: TDataSetProvider;
          QAluno: TSQLQuery;
          DSAluno: TDataSource;
          QAlunoALUCOD: TIntegerField;
          QAlunoALUNOME: TStringField;
          QAlunoALUENDERECO: TStringField;
          QAlunoALUBAIRRO: TStringField;
          QAlunoALUCIDADE: TIntegerField;
          QAlunoALUCEP: TStringField;
          QAlunoALUFONE: TStringField;
          QAlunoALUFAX: TStringField;
          QAlunoALUCELULAR: TStringField;
          QAlunoALUEMAIL: TStringField;
          QAlunoALUCPF: TStringField;
          QAlunoALUIDENTIDADE: TStringField;
          QAlunoALUORGAOEXPEDIDOR: TStringField;
          QAlunoALUDATAEXPEDICAO: TDateField;
          QAlunoALUCARTEIRA: TStringField;
          QAlunoALUFOTO: TBlobField;
          QAlunoALUOCORRENCIAS: TMemoField;
          QAlunoALUHISTESCOLAR: TMemoField;
          QAlunoALUNACIONALIDADE: TStringField;
          QAlunoALUNASCIMENTO: TDateField;
          QAlunoALUNATURALIDADE: TIntegerField;
          QAlunoALUSITUACAO: TStringField;
          QAlunoALUESTADOCIVIL: TStringField;
          QAlunoALUSEXO: TStringField;
          QAlunoALUNOMEMAE: TStringField;
          QAlunoALUNOMEPAI: TStringField;
          QAlunoALUMIDIA: TStringField;
          QAlunoCIDADE: TStringField;
          QAlunoNATURALIDADE: TStringField;
          RLReportFolhaFicha: TRLReport;
          RLBand26: TRLBand;
          RLDBText20: TRLDBText;
          RLDBImage13: TRLDBImage;
          RLDBText21: TRLDBText;
          RLDBText32: TRLDBText;
          RLDBText34: TRLDBText;
          RLDBText35: TRLDBText;
          RLBand28: TRLBand;
          RLLabel7: TRLLabel;
          RLSystemInfo5: TRLSystemInfo;
          RLBand29: TRLBand;
          RLDBText54: TRLDBText;
          RLLabel38: TRLLabel;
          RLDBText55: TRLDBText;
          RLDBText56: TRLDBText;
          RLLabel39: TRLLabel;
          RLLabel40: TRLLabel;
          RLDBText58: TRLDBText;
          RLDBText59: TRLDBText;
          RLLabel41: TRLLabel;
          RLLabel42: TRLLabel;
          RLDBText60: TRLDBText;
          RLDBText61: TRLDBText;
          RLLabel43: TRLLabel;
          RLLabel44: TRLLabel;
          RLDBText62: TRLDBText;
          RLDBText63: TRLDBText;
          RLLabel45: TRLLabel;
          RLLabel46: TRLLabel;
          RLDBText64: TRLDBText;
          RLLabel47: TRLLabel;
          RLDBText65: TRLDBText;
          RLDBText66: TRLDBText;
          RLDBText67: TRLDBText;
          RLLabel48: TRLLabel;
          RLDBText68: TRLDBText;
          RLLabel49: TRLLabel;
          RLLabel50: TRLLabel;
          RLDBText69: TRLDBText;
          RLLabel51: TRLLabel;
          RLDBText70: TRLDBText;
          RLLabel52: TRLLabel;
          RLDBText71: TRLDBText;
          RLLabel53: TRLLabel;
          RLDBText72: TRLDBText;
          RLDBText73: TRLDBText;
          RLLabel54: TRLLabel;
          RLDBText74: TRLDBText;
          RLLabel55: TRLLabel;
          RLLabel56: TRLLabel;
          RLDBText75: TRLDBText;
          RLLabel57: TRLLabel;
          RLDBText76: TRLDBText;
          RLLabel58: TRLLabel;
          RLDBText77: TRLDBText;
          RLLabel59: TRLLabel;
          RLDBText78: TRLDBText;
          RLLabel60: TRLLabel;
          RLLabel61: TRLLabel;
          RLDBMemo1: TRLDBMemo;
          RLDBMemo2: TRLDBMemo;
          RLDBImage16: TRLDBImage;
          CDSAlunoALUCOD: TIntegerField;
          CDSAlunoALUNOME: TStringField;
          CDSAlunoALUENDERECO: TStringField;
          CDSAlunoALUBAIRRO: TStringField;
          CDSAlunoALUCIDADE: TIntegerField;
          CDSAlunoALUCEP: TStringField;
          CDSAlunoALUFONE: TStringField;
          CDSAlunoALUFAX: TStringField;
          CDSAlunoALUCELULAR: TStringField;
          CDSAlunoALUEMAIL: TStringField;
          CDSAlunoALUCPF: TStringField;
          CDSAlunoALUIDENTIDADE: TStringField;
          CDSAlunoALUORGAOEXPEDIDOR: TStringField;
          CDSAlunoALUDATAEXPEDICAO: TDateField;
          CDSAlunoALUCARTEIRA: TStringField;
          CDSAlunoALUFOTO: TBlobField;
          CDSAlunoALUOCORRENCIAS: TMemoField;
          CDSAlunoALUHISTESCOLAR: TMemoField;
          CDSAlunoALUNACIONALIDADE: TStringField;
          CDSAlunoALUNASCIMENTO: TDateField;
          CDSAlunoALUNATURALIDADE: TIntegerField;
          CDSAlunoALUSITUACAO: TStringField;
          CDSAlunoALUESTADOCIVIL: TStringField;
          CDSAlunoALUSEXO: TStringField;
          CDSAlunoALUNOMEMAE: TStringField;
          CDSAlunoALUNOMEPAI: TStringField;
          CDSAlunoALUMIDIA: TStringField;
          CDSAlunoCIDADE: TStringField;
          CDSAlunoNATURALIDADE: TStringField;
          RLReportFolhaHist: TRLReport;
          RLBand32: TRLBand;
          RLDBText80: TRLDBText;
          RLDBImage19: TRLDBImage;
          RLDBText81: TRLDBText;
          RLDBText82: TRLDBText;
          RLDBText83: TRLDBText;
          RLDBText84: TRLDBText;
          RLBand33: TRLBand;
          RLGroup4: TRLGroup;
          RLBand34: TRLBand;
          RLDBText86: TRLDBText;
          RLDBText87: TRLDBText;
          RLDBText88: TRLDBText;
          RLDBText89: TRLDBText;
          RLDBText90: TRLDBText;
          RLDBText91: TRLDBText;
          RLBand35: TRLBand;
          RLLabel64: TRLLabel;
          RLLabel66: TRLLabel;
          RLDBText93: TRLDBText;
          RLLabel67: TRLLabel;
          RLLabel69: TRLLabel;
          RLLabel70: TRLLabel;
          RLLabel71: TRLLabel;
          RLLabel72: TRLLabel;
          RLLabel73: TRLLabel;
          RLLabel74: TRLLabel;
          RLLabel75: TRLLabel;
          RLDraw5: TRLDraw;
          RLLabel77: TRLLabel;
          RLDBText96: TRLDBText;
          RLDBText97: TRLDBText;
          RLBand36: TRLBand;
          RLLabel78: TRLLabel;
          RLLabel79: TRLLabel;
          RLDBResult1: TRLDBResult;
          RLDraw6: TRLDraw;
          RLLabel83: TRLLabel;
          RLLabel84: TRLLabel;
          RLLabel87: TRLLabel;
          RLLabel88: TRLLabel;
          RLLabel89: TRLLabel;
          RLMemo2: TRLMemo;
          RLDraw7: TRLDraw;
          RLBand31: TRLBand;
          RLLabel62: TRLLabel;
          RLSystemInfo6: TRLSystemInfo;
          RLDBText79: TRLDBText;
          RLDBText98: TRLDBText;
          RLLabel63: TRLLabel;
          RLLabel65: TRLLabel;
          RLDBText92: TRLDBText;
          RLDBText94: TRLDBText;
          lblsituacao: TRLLabel;
          RLLabel76: TRLLabel;
          DSMensalidade: TDataSource;
          CDSMensalidade: TClientDataSet;
          DSPMensalidade: TDataSetProvider;
          QMensalidade: TSQLQuery;
          QMensalidadeCURSO: TStringField;
          QMensalidadeCURSO_ALUNO: TStringField;
          QMensalidadeALUNOME: TStringField;
          QMensalidadeMENALUNO: TIntegerField;
          QMensalidadeMENNUMERO: TIntegerField;
          QMensalidadeMENVENCIMENTO: TDateField;
          QMensalidadeMENVALOR: TFloatField;
          QMensalidadeMENACRESCIMO: TFloatField;
          QMensalidadeMENDESCONTO: TFloatField;
          QMensalidadeMENBOLSA: TFloatField;
          QMensalidadeMENVALORPAGO: TFloatField;
          QMensalidadeMENDATAPAGAMENTO: TDateField;
          QMensalidadeMENLIQUIDO: TFloatField;
          QMensalidadeDIAS: TFMTBCDField;
          CDSMensalidadeCURSO: TStringField;
          CDSMensalidadeCURSO_ALUNO: TStringField;
          CDSMensalidadeALUNOME: TStringField;
          CDSMensalidadeMENALUNO: TIntegerField;
          CDSMensalidadeMENNUMERO: TIntegerField;
          CDSMensalidadeMENVENCIMENTO: TDateField;
          CDSMensalidadeMENVALOR: TFloatField;
          CDSMensalidadeMENACRESCIMO: TFloatField;
          CDSMensalidadeMENDESCONTO: TFloatField;
          CDSMensalidadeMENBOLSA: TFloatField;
          CDSMensalidadeMENVALORPAGO: TFloatField;
          CDSMensalidadeMENDATAPAGAMENTO: TDateField;
          CDSMensalidadeMENLIQUIDO: TFloatField;
          CDSMensalidadeDIAS: TFMTBCDField;
          RLReportMesalidade: TRLReport;
          RLBand38: TRLBand;
          RLLabel68: TRLLabel;
          RLSystemInfo7: TRLSystemInfo;
          RLBand39: TRLBand;
          RLDBText95: TRLDBText;
          RLDBImage21: TRLDBImage;
          RLDBText99: TRLDBText;
          RLDBText100: TRLDBText;
          RLDBText101: TRLDBText;
          RLDBText102: TRLDBText;
          RLBand40: TRLBand;
          RLLabel81: TRLLabel;
          RLLabel82: TRLLabel;
          RLLabel85: TRLLabel;
          RLLabel86: TRLLabel;
          RLLabel90: TRLLabel;
          RLLabel91: TRLLabel;
          RLLabel92: TRLLabel;
          RLLabel93: TRLLabel;
          RLGroup5: TRLGroup;
          RLBand41: TRLBand;
          RLDBText105: TRLDBText;
          RLDBText106: TRLDBText;
          RLDBText107: TRLDBText;
          RLDBText108: TRLDBText;
          RLDBText109: TRLDBText;
          RLDBText110: TRLDBText;
          RLDBText111: TRLDBText;
          RLDBText112: TRLDBText;
          RLBand42: TRLBand;
          RLLabel94: TRLLabel;
          RLDBText113: TRLDBText;
          RLBand43: TRLBand;
          RLLabel95: TRLLabel;
          RLDBResult3: TRLDBResult;
          RLDBResult4: TRLDBResult;
          RLDBResult5: TRLDBResult;
          RLDBResult6: TRLDBResult;
          RLDBResult7: TRLDBResult;
          RLDBResult43: TRLDBResult;
          RLDBText104: TRLDBText;
          RLLabel80: TRLLabel;
          RLLabel96: TRLLabel;
          lblmensituacao: TRLLabel;
          RLReportSemNotaFreq: TRLReport;
          RLBand44: TRLBand;
          RLDBText114: TRLDBText;
          RLDBImage22: TRLDBImage;
          RLDBText115: TRLDBText;
          RLDBText116: TRLDBText;
          RLDBText117: TRLDBText;
          RLDBText118: TRLDBText;
          RLBand46: TRLBand;
          RLLabel97: TRLLabel;
          RLSystemInfo8: TRLSystemInfo;
          RLBand47: TRLBand;
          RLLabel98: TRLLabel;
          RLLabel99: TRLLabel;
          RLLabel100: TRLLabel;
          RLLabel101: TRLLabel;
          RLBand48: TRLBand;
          RLDBText120: TRLDBText;
          RLDBText121: TRLDBText;
          RLDBText122: TRLDBText;
          RLDBText123: TRLDBText;
          RLDBText124: TRLDBText;
          RLDBText125: TRLDBText;
          RLLabel102: TRLLabel;
          RLLabel103: TRLLabel;
          DSCertificado: TDataSource;
          CDSCertificado: TClientDataSet;
          DSPCertificado: TDataSetProvider;
          QCertificado: TSQLQuery;
          QCertificadoCODIGO: TIntegerField;
          QCertificadoNOME: TStringField;
          QCertificadoCURNOME: TStringField;
          CDSCertificadoCODIGO: TIntegerField;
          CDSCertificadoNOME: TStringField;
          CDSCertificadoCURNOME: TStringField;
          RLReportCertificado: TRLReport;
          RLBand50: TRLBand;
          RLLabel104: TRLLabel;
          RLSystemInfo9: TRLSystemInfo;
          RLBand51: TRLBand;
          RLDBText126: TRLDBText;
          RLDBImage27: TRLDBImage;
          RLDBText127: TRLDBText;
          RLDBText128: TRLDBText;
          RLDBText129: TRLDBText;
          RLDBText130: TRLDBText;
          RLBand52: TRLBand;
          RLLabel106: TRLLabel;
          RLLabel107: TRLLabel;
          RLLabel108: TRLLabel;
          RLBand53: TRLBand;
          RLDBText132: TRLDBText;
          RLDBText133: TRLDBText;
          RLDBText134: TRLDBText;
          DSFreq: TDataSource;
          CDSFreq: TClientDataSet;
          DSPFreq: TDataSetProvider;
          QFreq: TSQLQuery;
          Label4: TLabel;
          txtano: TWSEdit;
          RLReportAlunoPorCurso: TRLReport;
          RLBand55: TRLBand;
          RLLabel105: TRLLabel;
          RLSystemInfo10: TRLSystemInfo;
          RLBand56: TRLBand;
          RLDBText8: TRLDBText;
          RLDBImage30: TRLDBImage;
          RLDBText12: TRLDBText;
          RLDBText22: TRLDBText;
          RLDBText135: TRLDBText;
          RLDBText136: TRLDBText;
          RLBand57: TRLBand;
          RLLabel110: TRLLabel;
          lblano1: TRLLabel;
          RLBand58: TRLBand;
          RLDBText138: TRLDBText;
          RLDBText140: TRLDBText;
          QAlunoPorCurso: TSQLQuery;
          DSPAlunoPorCurso: TDataSetProvider;
          CDSAlunoPorCurso: TClientDataSet;
          DSAlunoPorCurso: TDataSource;
          lblano2: TRLLabel;
          RLDBText139: TRLDBText;
          RLDBText141: TRLDBText;
          RLDBText142: TRLDBText;
          RLDBText143: TRLDBText;
          lblano3: TRLLabel;
          lblano4: TRLLabel;
          lblano5: TRLLabel;
          RLLabel109: TRLLabel;
          RLDBText144: TRLDBText;
          RLBand59: TRLBand;
          RLLabel111: TRLLabel;
          RLDBResult8: TRLDBResult;
          RLDBResult9: TRLDBResult;
          RLDBResult10: TRLDBResult;
          RLDBResult11: TRLDBResult;
          RLDBResult12: TRLDBResult;
          QAlunoPorCursoCURSO: TStringField;
          QAlunoPorCursoANO1: TIntegerField;
          QAlunoPorCursoANO2: TIntegerField;
          QAlunoPorCursoANO3: TIntegerField;
          QAlunoPorCursoANO4: TIntegerField;
          QAlunoPorCursoANO5: TIntegerField;
          CDSAlunoPorCursoCURSO: TStringField;
          CDSAlunoPorCursoANO1: TIntegerField;
          CDSAlunoPorCursoANO2: TIntegerField;
          CDSAlunoPorCursoANO3: TIntegerField;
          CDSAlunoPorCursoANO4: TIntegerField;
          CDSAlunoPorCursoANO5: TIntegerField;
          QAlunoPorCursoTOTAL: TFloatField;
          CDSAlunoPorCursoTOTAL: TFloatField;
          RLDBResult13: TRLDBResult;
          RLDBText137: TRLDBText;
          RLDBText145: TRLDBText;
          RLDBText131: TRLDBText;
          RLDBText146: TRLDBText;
          RLDBText119: TRLDBText;
          RLDBText147: TRLDBText;
          RLDBText103: TRLDBText;
          RLDBText148: TRLDBText;
          RLDBText85: TRLDBText;
          RLDBText149: TRLDBText;
          RLDBText40: TRLDBText;
          RLDBText150: TRLDBText;
          RLDBText31: TRLDBText;
          RLDBText151: TRLDBText;
          RLDBText49: TRLDBText;
          RLDBText152: TRLDBText;
          RLDBText6: TRLDBText;
          RLDBText153: TRLDBText;
          RLDBText18: TRLDBText;
          RLDBText154: TRLDBText;
          RLBand54: TRLBand;
          RLDBImage28: TRLDBImage;
          RLDBRichText10: TRLDBRichText;
          RLSystemInfo27: TRLSystemInfo;
          RLSystemInfo28: TRLSystemInfo;
          RLDraw8: TRLDraw;
          RLBand49: TRLBand;
          RLDBImage25: TRLDBImage;
          RLDBRichText9: TRLDBRichText;
          RLSystemInfo25: TRLSystemInfo;
          RLSystemInfo26: TRLSystemInfo;
          RLDraw9: TRLDraw;
          RLBand45: TRLBand;
          RLDBImage23: TRLDBImage;
          RLDBRichText8: TRLDBRichText;
          RLSystemInfo23: TRLSystemInfo;
          RLSystemInfo24: TRLSystemInfo;
          RLDraw10: TRLDraw;
          RLBand37: TRLBand;
          RLDBImage20: TRLDBImage;
          RLDBRichText7: TRLDBRichText;
          RLSystemInfo21: TRLSystemInfo;
          RLSystemInfo22: TRLSystemInfo;
          RLDraw11: TRLDraw;
          RLBand30: TRLBand;
          RLDBImage17: TRLDBImage;
          RLDBRichText6: TRLDBRichText;
          RLSystemInfo19: TRLSystemInfo;
          RLSystemInfo20: TRLSystemInfo;
          RLDraw12: TRLDraw;
          RLBand27: TRLBand;
          RLDBImage14: TRLDBImage;
          RLDBRichText5: TRLDBRichText;
          RLSystemInfo17: TRLSystemInfo;
          RLSystemInfo18: TRLSystemInfo;
          RLDraw13: TRLDraw;
          RLBand12: TRLBand;
          RLDBImage5: TRLDBImage;
          RLDBRichText3: TRLDBRichText;
          RLSystemInfo29: TRLSystemInfo;
          RLSystemInfo30: TRLSystemInfo;
          RLDraw14: TRLDraw;
          RLBand22: TRLBand;
          RLDBImage8: TRLDBImage;
          RLDBRichText4: TRLDBRichText;
          RLSystemInfo15: TRLSystemInfo;
          RLSystemInfo16: TRLSystemInfo;
          RLDraw15: TRLDraw;
          RLBand1: TRLBand;
          RLDBImage1: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo13: TRLSystemInfo;
          RLSystemInfo14: TRLSystemInfo;
          RLDraw16: TRLDraw;
          RLBand7: TRLBand;
          RLDBImage4: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLSystemInfo11: TRLSystemInfo;
          RLSystemInfo12: TRLSystemInfo;
          RLDraw17: TRLDraw;
          txtnomealuno: TWSEdit;
          txtnomeprofessor: TWSEdit;
          RLDBText155: TRLDBText;
          QRelALUIDENTIDADE: TStringField;
          QRelALUORGAOEXPEDIDOR: TStringField;
          QRelALUCPF: TStringField;
          QRelALUFOTO: TBlobField;
          CDSRelALUIDENTIDADE: TStringField;
          CDSRelALUORGAOEXPEDIDOR: TStringField;
          CDSRelALUCPF: TStringField;
          CDSRelALUFOTO: TBlobField;
          RLLabel112: TRLLabel;
          RLLabel9: TRLLabel;
          RLDBText156: TRLDBText;
          RLLabel113: TRLLabel;
          RLLabel10: TRLLabel;
          RLDBText157: TRLDBText;
          RLLabel114: TRLLabel;
          RLLabel115: TRLLabel;
          RLDBText158: TRLDBText;
          RLDBText159: TRLDBText;
          RLLabel117: TRLLabel;
          RLLabel118: TRLLabel;
          RLDBImage7: TRLDBImage;
    lblfiltrovalidade: TLabel;
          txtvalidade: TWSMaskEdit;
          LstCurso: TListBox;
          QFreqALUCOD: TIntegerField;
          QFreqALUNOME: TStringField;
          QFreqCURNOME: TStringField;
          QFreqCURTURMA: TStringField;
          CDSFreqALUCOD: TIntegerField;
          CDSFreqALUNOME: TStringField;
          CDSFreqCURNOME: TStringField;
          CDSFreqCURTURMA: TStringField;
          QFreqCURSIGLA: TStringField;
          CDSFreqCURSIGLA: TStringField;
          RLBand4: TRLBand;
          RLDBText23: TRLDBText;
          RLDraw4: TRLDraw;
          RLDBText160: TRLDBText;
          RLDBText161: TRLDBText;
          RLDBText162: TRLDBText;
          RLDraw18: TRLDraw;
          RLDraw19: TRLDraw;
          RLDraw20: TRLDraw;
          RLLabel3: TRLLabel;
          RLLabel4: TRLLabel;
          RLLabel11: TRLLabel;
          RLLabel13: TRLLabel;
          RLLabel2: TRLLabel;
          RLLabel6: TRLLabel;
          RLLabel15: TRLLabel;
          RLLabel119: TRLLabel;
          RLBand2: TRLBand;
          RLLabel120: TRLLabel;
          MemoCursos: TRLMemo;
          RLSystemInfo3: TRLSystemInfo;
          RLLabel121: TRLLabel;
    RLBand10: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw26: TRLDraw;
    RLLabel5: TRLLabel;
    RLLabel122: TRLLabel;
    RLLabel123: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText163: TRLDBText;
    RLDBText164: TRLDBText;
    Label6: TLabel;
    btnorientador: TSpeedButton;
    txtorientador: TWSEdit;
    txtnomeorientador: TWSEdit;
    RLReportListagem: TRLReport;
    RLBand13: TRLBand;
    RLLabel124: TRLLabel;
    RLSystemInfo31: TRLSystemInfo;
    RLBand60: TRLBand;
    RLDBText165: TRLDBText;
    RLDBImage9: TRLDBImage;
    RLDBText166: TRLDBText;
    RLDBText167: TRLDBText;
    RLDBText168: TRLDBText;
    RLDBText169: TRLDBText;
    RLDBText170: TRLDBText;
    RLDBText171: TRLDBText;
    RLBand64: TRLBand;
    RLDBImage12: TRLDBImage;
    RLDBRichText11: TRLDBRichText;
    RLSystemInfo32: TRLSystemInfo;
    RLSystemInfo33: TRLSystemInfo;
    RLDraw27: TRLDraw;
    RLBand65: TRLBand;
    RLLabel140: TRLLabel;
    RLLabel142: TRLLabel;
    RLLabel143: TRLLabel;
    RLLabel125: TRLLabel;
    RLLabel126: TRLLabel;
    RLLabel127: TRLLabel;
    lbllistagemprofessor: TRLLabel;
    lbllistagemcurso: TRLLabel;
    lbllistagemdisciplina: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand61: TRLBand;
    RLBand63: TRLBand;
    RLDBText173: TRLDBText;
    RLDBText180: TRLDBText;
    RLSystemInfo34: TRLSystemInfo;
    chkSemNotas: TCheckBox;
    chkMensal: TCheckBox;
    RLReportDiarioClasse: TRLReport;
    RLBand62: TRLBand;
    RLDBText172: TRLDBText;
    RLDBImage11: TRLDBImage;
    RLDBText174: TRLDBText;
    RLDBText175: TRLDBText;
    RLDBText176: TRLDBText;
    RLDBText177: TRLDBText;
    RLDBText178: TRLDBText;
    RLDBText179: TRLDBText;
    RLBand66: TRLBand;
    RLLabel116: TRLLabel;
    RLLabel128: TRLLabel;
    RLLabel129: TRLLabel;
    RLLabel130: TRLLabel;
    RLLabel131: TRLLabel;
    LblData1: TRLLabel;
    RLLabel133: TRLLabel;
    RLLabel134: TRLLabel;
    RLBand67: TRLBand;
    RLDBImage15: TRLDBImage;
    RLDBRichText12: TRLDBRichText;
    RLSystemInfo35: TRLSystemInfo;
    RLSystemInfo36: TRLSystemInfo;
    RLDraw28: TRLDraw;
    RLBand68: TRLBand;
    RLDBText181: TRLDBText;
    RLDraw29: TRLDraw;
    RLDBText182: TRLDBText;
    RLDBText183: TRLDBText;
    RLDBText184: TRLDBText;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLBand69: TRLBand;
    RLLabel135: TRLLabel;
    RLMemo1: TRLMemo;
    RLSystemInfo37: TRLSystemInfo;
    RLLabel136: TRLLabel;
    RLBand70: TRLBand;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLLabel137: TRLLabel;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLSystemInfo38: TRLSystemInfo;
    RLDraw38: TRLDraw;
    LblData2: TRLLabel;
    LblData4: TRLLabel;
    LblData3: TRLLabel;
    LblData6: TRLLabel;
    LblData5: TRLLabel;
    LblData: TLabel;
    TxtData1: TWSEdit;
    TxtData2: TWSEdit;
    TxtData3: TWSEdit;
    TxtData6: TWSEdit;
    TxtData4: TWSEdit;
    TxtData5: TWSEdit;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw48: TRLDraw;
    RLLabel132: TRLLabel;
    RLLabel138: TRLLabel;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    chkTCC: TCheckBox;
    RLReportAna1: TRLReport;
    RLGroup6: TRLGroup;
    RLBand74: TRLBand;
    RLDBText194: TRLDBText;
    RLDBText197: TRLDBText;
    RLBand75: TRLBand;
    RLLabel141: TRLLabel;
    RLLabel144: TRLLabel;
    RLDBText199: TRLDBText;
    RLLabel145: TRLLabel;
    RLDBText200: TRLDBText;
    RLLabel146: TRLLabel;
    RLLabel147: TRLLabel;
    RLLabel148: TRLLabel;
    RLLabel149: TRLLabel;
    RLLabel151: TRLLabel;
    RLLabel152: TRLLabel;
    RLLabel153: TRLLabel;
    RLLabel154: TRLLabel;
    RLDraw53: TRLDraw;
    RLDBText202: TRLDBText;
    RLLabel156: TRLLabel;
    RLDBText203: TRLDBText;
    RLBand76: TRLBand;
    RLLabel159: TRLLabel;
    RLLabel160: TRLLabel;
    RLLabel161: TRLLabel;
    RLLabel164: TRLLabel;
    RLLabel165: TRLLabel;
    RLDBText185: TRLDBText;
    RLLabel139: TRLLabel;
    RLLabel150: TRLLabel;
    RLLabel155: TRLLabel;
    RLLabel157: TRLLabel;
    RLLabel158: TRLLabel;
    RLLabel162: TRLLabel;
    RLLabel163: TRLLabel;
    RLLabel166_: TRLLabel;
    RLLabel167: TRLLabel;
    RLLabel168: TRLLabel;
    RLLabel169: TRLLabel;
    RLDBText201: TRLDBText;
    RLDBText204: TRLDBText;
    RLDBText205: TRLDBText;
    RLDBText198: TRLDBText;
    RLDBText206: TRLDBText;
    RLDBText193: TRLDBText;
    RLDBText195: TRLDBText;
    RLDBText207: TRLDBText;
    RLDBText208: TRLDBText;
    QRelALUDISSITUACAO: TStringField;
    QRelALUDISNOTA1: TFloatField;
    QRelALUDISNOTA2: TFloatField;
    QRelALUDISNOTA3: TFloatField;
    QRelALUDISNOTA4: TFloatField;
    QRelALUDISFREQUENCIA1: TFloatField;
    QRelALUDISFREQUENCIA2: TFloatField;
    QRelALUDISFREQUENCIA3: TFloatField;
    QRelCURTURMA: TStringField;
    QRelCURNUMTURMA: TIntegerField;
    CDSRelALUDISSITUACAO: TStringField;
    CDSRelALUDISNOTA1: TFloatField;
    CDSRelALUDISNOTA2: TFloatField;
    CDSRelALUDISNOTA3: TFloatField;
    CDSRelALUDISNOTA4: TFloatField;
    CDSRelALUDISFREQUENCIA1: TFloatField;
    CDSRelALUDISFREQUENCIA2: TFloatField;
    CDSRelALUDISFREQUENCIA3: TFloatField;
    CDSRelCURTURMA: TStringField;
    CDSRelCURNUMTURMA: TIntegerField;
    lblBolProfessor: TRLLabel;
    chkBranco: TCheckBox;
    LstDisciplina: TListBox;
    QRelCURTIPO: TStringField;
    CDSRelCURTIPO: TStringField;
    RLLabel18: TRLLabel;
    RLDBText37: TRLDBText;
    lblTipo: TRLLabel;
    RLDBImage24: TRLDBImage;
    RLDBRichText13: TRLDBRichText;
    RLLabel12: TRLLabel;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtcodKeyPress(Sender: TObject; var Key: Char);
          procedure btncursoClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure txtcodcursoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
          procedure btnprofessorClick(Sender: TObject);
          procedure btndisciplinaClick(Sender: TObject);
          procedure btnalunoClick(Sender: TObject);
          procedure RGModeloClick(Sender: TObject);
          procedure txtcodcursoKeyPress(Sender: TObject; var Key: Char);
          procedure RLBand19BeforePrint(Sender: TObject; var PrintIt: Boolean);
          procedure RLBand20BeforePrint(Sender: TObject; var PrintIt: Boolean);
          procedure RLLabel24BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure lbldeclaraBeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure RLBand18BeforePrint(Sender: TObject; var PrintIt: Boolean);
          procedure RLBand34BeforePrint(Sender: TObject;
               var PrintIt: Boolean);
          procedure RLBand35BeforePrint(Sender: TObject;
               var PrintIt: Boolean);
          procedure RLBand36BeforePrint(Sender: TObject;
               var PrintIt: Boolean);
          procedure RLLabel64BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure RLLabel76BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure RLDBText105BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure txtanoKeyPress(Sender: TObject; var Key: Char);
          procedure txtalunoExit(Sender: TObject);
          procedure txtcodcursoExit(Sender: TObject);
          procedure txtprofessorExit(Sender: TObject);
          procedure txtcoddisciplinaExit(Sender: TObject);
          procedure LstCursoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure RLLabel5BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
    procedure txtorientadorExit(Sender: TObject);
    procedure btnorientadorClick(Sender: TObject);
    procedure RLLabel125BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure TxtData6KeyPress(Sender: TObject; var Key: Char);
    procedure RLLabel18BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLBand74BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
    procedure RLBand75BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
    procedure RLBand76BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
    procedure RLLabel144BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
    procedure RLMemo3BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
    procedure RLDBText182BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FAlunoCursoRel: TFAlunoCursoRel;
     freq: double = 0;
     nota: double = 0;
     situacao: boolean = true;

implementation

uses UDM, UMenu, Ucurso, UAluno, UDisciplina, UProfessor, USenha, UFuncoes;

{$R *.dfm}

procedure TFAlunoCursoRel.BtnImprimirClick(Sender: TObject);

     function Adiciona_Cursos: string;
     begin
          result := ' and CurCod in (';
          LstCurso.ItemIndex := 0;
          repeat
               result := result + copy(LstCurso.Items.Strings[LstCurso.ItemIndex], 1, 4) + ',';
               LstCurso.ItemIndex := LstCurso.ItemIndex + 1;
          until LstCurso.ItemIndex = LstCurso.Items.Count - 1;
          result := result + copy(LstCurso.Items.Strings[LstCurso.ItemIndex], 1, 4) + ') ';
     end;

     function Adiciona_Disc: string;
     begin
          result := ' and DISCOD in (';
          LstDisciplina.ItemIndex := 0;
          repeat
               result := result + copy(LstDisciplina.Items.Strings[LstDisciplina.ItemIndex], 1, 4) + ',';
               LstDisciplina.ItemIndex := LstDisciplina.ItemIndex + 1;
          until LstDisciplina.ItemIndex = LstDisciplina.Items.Count - 1;
          result := result + copy(LstDisciplina.Items.Strings[LstDisciplina.ItemIndex], 1, 4) + ') ';
     end;


begin
     {if rgmodelo.itemindex = 1 then
     begin
          with qcertificado.SQL do
          begin
               clear;
               add('select codigo, nome, curnome from vcertificado');
               add('inner join tcurso on curcod = curso');
               if txtcodcurso.Text <> '' then
                    add('where curso = ' + txtcodcurso.text);
               add('order by nome');
          end;
          cdscertificado.open;
          RLReportCertificado.PreviewModal;
          cdscertificado.close;
     end;}

     if (rgmodelo.itemindex <= 5) or (rgmodelo.itemindex = 11) or (rgmodelo.itemindex = 12) then
     begin
          with qrel.sql do
          begin
               clear;
               //cuidar para mudar em baixo na FOLHA DE ROSTO
               add('select (TALUNO.ALUNOME||''-''||TALUNO.ALUCURSO) as ALUNO_CURSO,');
               add('(CURNOME||DISCOD||TBPROFESSOR.PROCOD) as CURSO_PROFESSOR_DISCIPLINA,');
               add('(SELECT NOTA FROM PALUNO_MEDIAS(TALUNO.ALUCOD)) as MEDIANOTA,');
               add('(SELECT FREQ FROM PALUNO_MEDIAS(TALUNO.ALUCOD)) as MEDIAFREQ,');
               add('ALUNOME, CURNOME, TBORIENTADOR.PRONOME as ORIENTADOR, TBORIENTADOR.PRORESUMOTITULACAO as ORIENTADORTITULACAO, ALUCARTEIRINHA,ALUCRACHA,');
               add('ALUCERTIFICADO, DISNOME, TBPROFESSOR.PRONOME AS PROFESSOR,ALUDISNOTA,');
               add('ALUDISFREQUENCIA, TBPROFESSOR.PRORESUMOTITULACAO, CURVALOR, TALUNO.ALUCOD, ALUCURSO, (CIDNOME||''/''||CIDUF) AS CIDNOME,');
               add('ALUNACIONALIDADE, ALUNASCIMENTO, ALUCURSOINICIO, ALUCURSOFIM, CURSISTEMAAVALIACAO, CURCRITERIOSAVALIACAO,');
               add('CURSECRETARIO, TBCOORDENADOR.PRONOME AS COORDENADOR, ALUDISHA, ALUMONOTITULO, ALUMONONOTA, ALUMONODATA,');
               add('ALUIDENTIDADE, ALUORGAOEXPEDIDOR, ALUCPF, ALUNASCIMENTO, TALUNOFOTO.ALUFOTO, ALUCURSOINICIO, ALUCURSOINICIO, ALUCURSOFIM, ');
               add('ALUDISSITUACAO, ALUDISNOTA1, ALUDISNOTA2, ALUDISNOTA3, ALUDISNOTA4, ALUDISFREQUENCIA1, ALUDISFREQUENCIA2, ALUDISFREQUENCIA3, ALUDISFREQUENCIA4,');
               add('CURTURMA, CURNUMTURMA, CURTIPO');
               add('from');
               add('TALUNO');
               add('   left outer join TPROFESSOR TBORIENTADOR on TBORIENTADOR.PROCOD = ALUORIENTADOR');
               add('   left outer join TCIDADE on CIDCOD = ALUNATURALIDADE');
               add('   left outer join TALUNOFOTO on TALUNO.ALUCOD = TALUNOFOTO.ALUCOD,');
               add('TALUNODISCIPLINA');
               add('   inner join TDISCIPLINA on DISCOD = ALUDISDISCIPLINA');
               add('   inner join TPROFESSOR TBPROFESSOR on TBPROFESSOR.PROCOD = ALUDISPROFESSOR,');
               add('TCURSO');
               add('   inner join TPROFESSOR TBCOORDENADOR on TBCOORDENADOR.PROCOD = CURCOORDENADOR');
               add('where TALUNO.ALUCOD = ALUDISALUNO AND CURCOD = ALUCURSO AND TALUNO.ALUBLOQ <> ''S''');
               if chkMensal.Checked then
                    add('AND TALUNO.ALUCOD NOT IN (SELECT TMENSALIDADE.MENALUNO FROM TMENSALIDADE WHERE TMENSALIDADE.MENALUNO = TALUNO.ALUCOD)');
               if txtativo.Checked then
                    add('and ALUSITUACAO = ''Ativo''');
               case rgmodelo.itemindex of
                    0: add('and ALUCARTEIRA <> ''S''');
                    1: add('and ALUCERTIFICADO <> ''S'' and UPPER(ALUSITUACAO) <> ''EXTENSÃO''');
                    2: add('and ALUCRACHA <> ''S''');
                    6: add('AND (ALUDISNOTA = 0 OR ALUDISFREQUENCIA = 0)');
                    11:
                    begin
                         add('AND TALUNO.ALUCOD NOT IN (SELECT A2.ALUDISALUNO FROM TALUNODISCIPLINA A2 WHERE A2.ALUDISNOTA < 7 AND A2.ALUDISFREQUENCIA < 75) AND UPPER(ALUSITUACAO) IN (''ATIVO'') AND ALUCURSOFIM <= :VALIDADE'); //''PENDENTE MONOGRAFIA'',
                    end;
               end;
               if trim(txtaluno.text) <> '' then
                    add('AND TALUNO.ALUCOD = ' + trim(txtaluno.text));
               if LstCurso.Items.Count > 0 then
                    add(Adiciona_Cursos);
               if trim(txtprofessor.text) <> '' then
                    add('AND TBPROFESSOR.PROCOD = ' + trim(txtprofessor.text));
               if trim(txtorientador.text) <> '' then
                    add('AND TBORIENTADOR.PROCOD = ' + trim(txtorientador.text));
               if LstDisciplina.Items.Count > 0 then
                    add(Adiciona_Disc);
               if rgmodelo.itemindex < 3 then
                    add('ORDER BY CURNOME, ALUNOME');
               if rgmodelo.itemindex = 3 then
                    add('ORDER BY 1');
               if rgmodelo.itemindex = 4 then
                    add('ORDER BY 1, DISNOME');
               if rgmodelo.itemindex = 5 then
                    add('ORDER BY 2, ALUNOME');
               if rgmodelo.itemindex >= 11 then
                    add('ORDER BY 1');
          end;
          try
               if RGModelo.ItemIndex = 11 then
                   qrel.Params.ParamByName('Validade').AsDate := StrToDate(txtvalidade.Text);          
               if lusuario = 'Master' then
                    showmessage(qrel.sql.text);
               cdsrel.open;
          except
               on E: Exception do
               begin
                    showmessage('Problema ao gerar o relatório, envie essa informação ao suporte técnico:' + #13 + E.Message + #13 + #13 + qrel.sql.text);
                    exit;
               end;
          end;

          case RGModelo.itemindex of
               0..3: RLReportSint.PreviewModal;
               4:
               begin
                  if valor_parametro(21) = '1' then
                      RLReportAna.PreviewModal
                  else
                      RLReportAna1.PreviewModal;
               end;
               5: RLReportSemNotaFreq.PreviewModal;
               11: RLReportSint.PreviewModal;
               12: RLReportListagem.PreviewModal;               
          end;
          if cdsrel.RecordCount > 0 then
               if (rgmodelo.ItemIndex >= 0) and (rgmodelo.ItemIndex <= 2) then
                    if application.messagebox('Deseja gravar esses dados no cadastro do aluno para ele não aparecer ' +
                         'mais no próximo relatório?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
                    begin
                         if not dm.CDSAlunoLkp.active then
                              dm.CDSAlunoLkp.open;
                         cdsrel.first;
                         while not cdsrel.eof do
                         begin
                              if dm.CDSAlunoLkp.locate('ALUCOD', vararrayof([CDSRelALUCOD.asinteger]), []) then
                              begin
                                   dm.CDSAlunoLkp.edit;
                                   case rgmodelo.itemindex of
                                        0: dm.CDSAlunoLkpALUCARTEIRINHA.AsString := 'S';
                                        1: dm.CDSAlunoLkpALUCERTIFICADO.AsString := 'S';
                                        2: dm.CDSAlunoLkpALUCRACHA.AsString := 'S';
                                   end;
                                   dm.CDSAlunoLkp.post;
                                   dm.CDSAlunoLkp.applyupdates(0);
                              end;
                              cdsrel.next;
                         end;
                         showmessage('Dados salvos com sucesso!');
                    end;
          cdsrel.close;
     end;
     if (rgmodelo.itemindex = 6) or (rgmodelo.itemindex = 13) then
     begin
          with qFreq.sql do
          begin
               clear;
               //add('select distinct (CURNOME||''-''||DISNOME||''-''||TBPROFESSOR.PRONOME) as CURSO_DISC_PROF, ALUNOME, CURNOME, DISNOME, TBPROFESSOR.PRONOME');
               add('select distinct ALUCOD, ALUNOME, CURNOME, CURSIGLA, CURTURMA');
               add('from');
               add('TALUNO');
               add('   left outer join TPROFESSOR TBORIENTADOR on TBORIENTADOR.PROCOD = ALUORIENTADOR');
               add('   left outer join TCIDADE on CIDCOD = ALUNATURALIDADE,');
               add('TALUNODISCIPLINA');
               add('   inner join TDISCIPLINA on DISCOD = ALUDISDISCIPLINA');
               add('   inner join TPROFESSOR TBPROFESSOR on TBPROFESSOR.PROCOD = ALUDISPROFESSOR,');
               add('TCURSO');
               add('   inner join TPROFESSOR TBCOORDENADOR on TBCOORDENADOR.PROCOD = CURCOORDENADOR');
               add('where ALUCOD = ALUDISALUNO AND CURCOD = ALUCURSO AND TALUNO.ALUBLOQ <> ''S''');
               if chkMensal.Checked then
                    add('AND TALUNO.ALUCOD NOT IN (SELECT TMENSALIDADE.MENALUNO FROM TMENSALIDADE WHERE TMENSALIDADE.MENALUNO = TALUNO.ALUCOD)');
               if chkSemNotas.Checked then
                    add('and ALUDISNOTA < 7');
               if txtativo.Checked then
                    add('and ALUSITUACAO = ''Ativo''');
               if trim(txtaluno.text) <> '' then
                    add('AND ALUCOD = ' + trim(txtaluno.text));
               if LstCurso.Items.Count > 0 then
                    add(Adiciona_Cursos);
               if trim(txtprofessor.text) <> '' then
                    add('AND TBPROFESSOR.PROCOD = ' + trim(txtprofessor.text));
               if LstDisciplina.Items.Count > 0 then
                    add(Adiciona_Disc);
               add('ORDER BY ALUNOME;');
          end;
          try
               cdsFreq.open;
          except
               on E: Exception do
               begin
                    showmessage('Problema ao gerar o relatório, envie essa informação ao suporte técnico:' + #13 + E.Message + #13 + #13 + qrel.sql.text);
                    exit;
               end;
          end;

          if chkBranco.Checked then
          begin
               while cdsFreq.recordcount > 0 do
                   cdsFreq.Delete;
               while cdsFreq.recordcount < 30 do
               begin
                   cdsFreq.Append;
                   CDSFreqALUCOD.asinteger := 0;
                   cdsFreq.Post;
               end;
          end;

          lbldata1.caption := txtdata1.text;
          lbldata2.caption := txtdata2.text;
          lbldata3.caption := txtdata3.text;
          lbldata4.caption := txtdata4.text;
          lbldata5.caption := txtdata5.text;
          lbldata6.caption := txtdata6.text;

          Case rgmodelo.itemindex of
            6 : RLReportFreq.PreviewModal;
            13 : RLReportDiarioClasse.PreviewModal;
          end;
          cdsFreq.close;
     end;

     if (rgmodelo.itemindex = 7) or (rgmodelo.itemindex = 8) then
     begin
          with QMelhores.sql do
          begin
               clear;
               add('SELECT ALUNONOME, CURSONOME, NOTA, FREQ FROM VALUNO_CURSO_MEDIAS');
               add('LEFT OUTER JOIN TCURSO ON CURCOD = CURSOCOD');
               add('where ALUNOCOD <> 0');
               if trim(txtaluno.text) <> '' then
                    add('AND ALUNOCOD = ' + trim(txtaluno.text));
               if LstCurso.Items.Count > 0 then
                    add(Adiciona_Cursos);
               if rgmodelo.itemindex = 6 then
                    add('ORDER BY NOTA DESC');
               if rgmodelo.itemindex = 7 then
                    add('ORDER BY FREQ DESC');
          end;
          cdsMelhores.open;
          RLReportAluno.PreviewModal;
          cdsMelhores.close;
     end;

     if (rgmodelo.itemindex = 9) then
     begin
          if trim(txtaluno.text) = '' then
          begin
               showmessage('Campo código do aluno é obrigatório!');
               txtaluno.setfocus;
               exit;
          end;

          with QAluno.sql do
          begin
               clear;
               add('select TALUNO.ALUCOD,ALUNOME,ALUENDERECO,ALUBAIRRO,ALUCIDADE,ALUCEP,ALUFONE,ALUFAX,ALUCELULAR,');
               add('ALUEMAIL,ALUCPF,ALUIDENTIDADE,ALUORGAOEXPEDIDOR,ALUDATAEXPEDICAO, ');
               add('ALUCARTEIRA,TALUNOFOTO.ALUFOTO,ALUOCORRENCIAS,ALUHISTESCOLAR,');
               add('ALUNACIONALIDADE, ALUNASCIMENTO, ALUNATURALIDADE,');
               add('ALUSITUACAO, ALUESTADOCIVIL,');
               add('ALUSEXO, ALUNOMEMAE, ALUNOMEPAI, ALUMIDIA, TBCIDADE.CIDNOME AS CIDADE,');
               add('TBNATURAL.CIDNOME AS NATURALIDADE');
               add('from TALUNO');
               add('LEFT JOIN TCIDADE TBCIDADE ON ALUCIDADE = TBCIDADE.CIDCOD');
               add('LEFT JOIN TCIDADE TBNATURAL ON ALUNATURALIDADE = TBNATURAL.CIDCOD');
               add('LEFT OUTER JOIN TALUNOFOTO on TALUNO.ALUCOD = TALUNOFOTO.ALUCOD');
               add('WHERE TALUNO.ALUCOD = ' + trim(txtaluno.text));
               add('ORDER BY TALUNO.ALUCOD');
          end;
          cdsAluno.open;
          RLReportFolhaFicha.PreviewModal;
          cdsAluno.close;

          with qrel.sql do
          begin
               clear;
               add('select (TALUNO.ALUNOME||''-''||TALUNO.ALUCURSO) as ALUNO_CURSO,');
               add('(CURNOME||DISCOD||TBPROFESSOR.PROCOD) as CURSO_PROFESSOR_DISCIPLINA,');
               add('(SELECT NOTA FROM PALUNO_MEDIAS(TALUNO.ALUCOD)) as MEDIANOTA,');
               add('(SELECT FREQ FROM PALUNO_MEDIAS(TALUNO.ALUCOD)) as MEDIAFREQ,');
               add('ALUNOME, CURNOME, TBORIENTADOR.PRONOME as ORIENTADOR, TBORIENTADOR.PRORESUMOTITULACAO as ORIENTADORTITULACAO, ALUCARTEIRINHA,ALUCRACHA,');
               add('ALUCERTIFICADO, DISNOME, TBPROFESSOR.PRONOME AS PROFESSOR,ALUDISNOTA,');
               add('ALUDISFREQUENCIA, TBPROFESSOR.PRORESUMOTITULACAO, CURVALOR, TALUNO.ALUCOD, ALUCURSO, (CIDNOME||''/''||CIDUF) AS CIDNOME,');
               add('ALUNACIONALIDADE, ALUNASCIMENTO, ALUCURSOINICIO, ALUCURSOFIM, CURSISTEMAAVALIACAO, CURCRITERIOSAVALIACAO,');
               add('CURSECRETARIO, TBCOORDENADOR.PRONOME AS COORDENADOR, ALUDISHA, ALUMONOTITULO, ALUMONONOTA, ALUMONODATA,');
               add('ALUIDENTIDADE, ALUORGAOEXPEDIDOR, ALUCPF, TALUNOFOTO.ALUFOTO');
               add('from');
               add('TALUNO');
               add('   left outer join TPROFESSOR TBORIENTADOR on TBORIENTADOR.PROCOD = ALUORIENTADOR');
               add('   left outer join TCIDADE on CIDCOD = ALUNATURALIDADE');
               add('   left outer join TALUNOFOTO on TALUNO.ALUCOD = TALUNOFOTO.ALUCOD,');
               add('TALUNODISCIPLINA');
               add('   inner join TDISCIPLINA on DISCOD = ALUDISDISCIPLINA');
               add('   inner join TPROFESSOR TBPROFESSOR on TBPROFESSOR.PROCOD = ALUDISPROFESSOR,');
               add('TCURSO');
               add('   inner join TPROFESSOR TBCOORDENADOR on TBCOORDENADOR.PROCOD = CURCOORDENADOR');
               add('where TALUNO.ALUCOD = ALUDISALUNO AND CURCOD = ALUCURSO AND TALUNO.ALUBLOQ <> ''S''');
               add('AND TALUNO.ALUCOD = ' + trim(txtaluno.text));
               add('ORDER BY TALUNO.ALUCOD');
          end;
          cdsRel.Open;
          RLReportFolhaHist.PreviewModal;
          cdsRel.Close;

          with qMensalidade.sql do
          begin
               clear;
               add('select (CURNOME||''-''||CURTURMA) as curso, (CURNOME||''-''||CURTURMA||''-''||ALUNOME) as curso_aluno, ALUNOME, MENALUNO,MENNUMERO,');
               add('MENVENCIMENTO,MENVALOR,MENACRESCIMO,MENDESCONTO,MENBOLSA,MENVALORPAGO,MENDATAPAGAMENTO,MENLIQUIDO,');
               add('((MENVENCIMENTO - CURRENT_DATE) * -1) AS DIAS');
               add('from TALUNO');
               add('left outer join TMENSALIDADE on ALUCOD = MENALUNO');
               add('left outer join TCURSO on CURCOD = ALUCURSO');
               add('where MENNUMERO > 0');
               add('AND ALUCOD = ' + trim(txtaluno.text));
               add('ORDER BY ALUNOME, 1, MENVENCIMENTO');
          end;
          cdsMensalidade.open;
          RLReportMesalidade.PreviewModal;
          cdsMensalidade.close;
     end;
     if (rgmodelo.itemindex = 10) then
     begin
          try
               strtoint(txtano.Text);
          except
               showmessage('Campo ano inválido!');
               txtano.setfocus;
               exit;
          end;
          {if LstCurso.Items.Count <> 1 then
          begin
               showmessage('Selecione um ou apenas um curso para esse relatório!');
               txtcodcurso.setfocus;
               exit;
          end;}

          with QAlunoPorCurso.sql do
          begin
               clear;
               add('SELECT CURSO, ANO1, ANO2, ANO3, ANO4, ANO5, CAST(TOTAL AS DOUBLE PRECISION) AS TOTAL FROM PALUNOPORCURSO(' + quotedStr('') + ', ' + txtano.text + ')'); //quotedstr(Copy(lstCurso.Items.Strings[0],1,4))
               add('ORDER BY CURSO');
          end;
          cdsAlunoPorCurso.open;

          lblano1.Caption := txtano.text;
          lblano2.Caption := inttostr(strtoint(txtano.text) + 1);
          lblano3.Caption := inttostr(strtoint(txtano.text) + 2);
          lblano4.Caption := inttostr(strtoint(txtano.text) + 3);
          lblano5.Caption := inttostr(strtoint(txtano.text) + 4);

          RLReportAlunoPorCurso.PreviewModal;
          cdsAlunoPorCurso.close;
     end;
end;

procedure TFAlunoCursoRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFAlunoCursoRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFAlunoCursoRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAlunoCursoRel.txtcodKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFAlunoCursoRel.btncursoClick(Sender: TObject);
begin
     if Application.FindComponent('FCurso') <> nil then
          FCurso.Close;

     try
          FCurso := tFCurso.create(self);
          FCurso.FormStyle := fsNormal;
          fcurso.Visible := false;
          usuario('btnconsultar', FCurso.wsinformacao.programa);
          FCurso.showmodal;
          txtcodcurso.text := dm.CDSCursoCurCOD.asstring;
          txtcodcurso.Setfocus;
     finally
          FCurso.release;
          FCurso := nil;
          FCurso.free;
     end;
end;

procedure TFAlunoCursoRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
     txtano.text := inttostr(yearof(date));
end;

procedure TFAlunoCursoRel.txtcodcursoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtcodcurso then
               btncurso.click;
          if sender = txtaluno then
               btnaluno.click;
          if sender = txtprofessor then
               btnprofessor.click;
          if sender = txtorientador then
               btnorientador.click;
          if sender = txtcoddisciplina then
               btndisciplina.click;
     end;
end;

procedure TFAlunoCursoRel.RLBand8BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     case RGModelo.ItemIndex of
          0: lblobs.caption := 'Apenas alunos que não tem a carterinha de estudante.';
          1: lblobs.caption := 'Apenas alunos que não tem o certificado de conclusão do curso.';
          2: lblobs.caption := 'Apenas alunos que não tem o crachá de estudante.';
          11: lblobs.caption := 'Apenas alunos que cursaram todas as disciplinas com frequência > 75%, nota > 7 e a situação é Ativa.';
     else lblobs.Visible := false;
     end;
end;

procedure TFAlunoCursoRel.btnprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;
     try
          FProfessor := tFProfessor.create(self);
          FProfessor.FormStyle := fsNormal;
          fprofessor.Visible := false;
          usuario('btnconsultar', FProfessor.wsinformacao.programa);
          FProfessor.showmodal;
          txtprofessor.text := dm.CDSProfessorProCOD.asstring;
          txtprofessor.Setfocus;
     finally
          FProfessor.release;
          FProfessor := nil;
          FProfessor.free;
     end;
end;

procedure TFAlunoCursoRel.btndisciplinaClick(Sender: TObject);
begin
     if Application.FindComponent('FDisciplina') <> nil then
          FDisciplina.Close;

     try
          FDisciplina := tFDisciplina.create(self);
          FDisciplina.FormStyle := fsNormal;
          FDisciplina.Visible := false;
          usuario('btnconsultar', FDisciplina.wsinformacao.programa);
          FDisciplina.showmodal;
          txtcoddisciplina.text := dm.CDSdisciplinaDisCOD.asstring;
          txtcoddisciplina.Setfocus;
     finally
          FDisciplina.release;
          FDisciplina := nil;
          FDisciplina.free;
     end;
end;

procedure TFAlunoCursoRel.btnalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          FAluno := TFAluno.create(self);
          FAluno.FormStyle := fsNormal;
          Faluno.Visible := false;
          usuario('btnconsultar', FAluno.wsinformacao.programa);
          FAluno.showmodal;
          txtaluno.text := dm.CDSAlunoAluCOD.asstring;
          txtaluno.Setfocus;
     finally
          FAluno.release;
          FAluno := nil;
          FAluno.free;
     end;
end;

procedure TFAlunoCursoRel.RGModeloClick(Sender: TObject);
begin
     txtprofessor.enabled := (rgmodelo.itemindex <= 6) or (rgmodelo.itemindex >= 12);
     btnprofessor.enabled := (rgmodelo.itemindex <= 6) or (rgmodelo.itemindex >= 12);
     txtcoddisciplina.enabled := (rgmodelo.itemindex <= 6) or (rgmodelo.itemindex >= 12);
     btndisciplina.enabled := (rgmodelo.itemindex <= 6) or (rgmodelo.itemindex >= 12);
     txtorientador.enabled := (rgmodelo.itemindex <= 5) or (rgmodelo.itemindex = 12);
     btnorientador.enabled := (rgmodelo.itemindex <= 5) or (rgmodelo.itemindex = 12);
     lblData.Enabled := rgmodelo.itemindex = 13;
     Txtdata1.Enabled := lblData.Enabled;
     Txtdata2.Enabled := lblData.Enabled;
     Txtdata3.Enabled := lblData.Enabled;
     Txtdata4.Enabled := lblData.Enabled;
     Txtdata5.Enabled := lblData.Enabled;
     Txtdata6.Enabled := lblData.Enabled;

     chkSemNotas.enabled := (rgmodelo.itemindex = 6) or (rgmodelo.itemindex = 13);
     chkBranco.enabled := rgmodelo.itemindex = 13;
     chkTCC.enabled :=  (RGModelo.ItemIndex = 4) or (RGModelo.ItemIndex = 9);

     if rgmodelo.itemindex <> 11 then
          lblfiltrovalidade.caption := 'Validade'
     else
     begin
          lblfiltrovalidade.caption := 'Fim do Curso';
          txtvalidade.text := DateToStr(Date);
     end;
end;

procedure TFAlunoCursoRel.txtcodcursoKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) and (not txtprofessor.Enabled) then
          btnimprimir.click;
end;

procedure TFAlunoCursoRel.RLBand19BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     nota := CDSRelMEDIANOTA.asfloat;
     freq := CDSRelMEDIAFREQ.asfloat;
     if freq > 100 then
         freq := 100;
end;

procedure TFAlunoCursoRel.RLBand20BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     lblnota.caption := formatfloat('0.00', nota);
     lblfreq.caption := formatfloat('0.00', freq);
end;

procedure TFAlunoCursoRel.RLLabel24BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     lbldatacurso.caption := '';
     if (trim(CDSRelALUCURSOINICIO.asstring) <> '') and (trim(CDSRelALUCURSOFIM.asstring) <> '') then
          lbldatacurso.caption := formatdatetime('dd" de "mmmm" de "yyyy"', CDSRelALUCURSOINICIO.asdatetime) + ' a ' + formatdatetime('dd" de "mmmm" de "yyyy"', CDSRelALUCURSOFIM.asdatetime);
     lblcoordenador.caption := CDSRelCOORDENADOR.asstring;
     lblsecretario.caption := CDSRelCURSECRETARIO.asstring;

     lblmonografia.Color := clwhite;
     if ChkTCC.Checked then
     begin
         lblmononota.caption := formatfloat('0.0', CDSRelALUMONONOTA.asfloat);
         lblorientador.caption := CDSRelORIENTADOR.asstring;
         lblorientadortitulacao.caption := CDSRelORIENTADORTITULACAO.asstring;
         lblmonografia.lines.text := 'TRABALHO DE CONCLUSÃO DE CURSO: ' + CDSRelALUMONOTITULO.asstring;
         if trim(CDSRelALUMONOTITULO.asstring) = '' then
            lblmonografia.Color := clred;
     end
     else
     begin
         lblmononota.caption := '';
         lblorientador.caption := '';
         lblorientadortitulacao.caption := '';
         lblmonografia.lines.text := '';
     end;


     lbldeclara.Lines.Text := 'Declaramos para os devidos fins que o curso de Pós-Graduação em ' +
          CDSRelCURNOME.asstring + ' cumpriu todas as disposições da Resolução ' +
          'MEC/CES-CNE n.º 1, de 8 de junho de 2007.';
end;

procedure TFAlunoCursoRel.lbldeclaraBeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     lblcidadedata.caption := dm.CDSParamEmpCIDNOME.asstring + ', ' + formatdatetime('dd" de "mmmm" de "yyyy"', date);

     if RLDBResult2.Value < 360 then
         RLDBResult2.Color := clRed
     else
         RLDBResult2.Color := clwhite;
end;

procedure TFAlunoCursoRel.RLBand18BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     if (CDSRelALUDISNOTA.asfloat = 0) or (CDSRelALUDISNOTA.asfloat < 0) or (CDSRelALUDISNOTA.asfloat > 10) or (CDSRelALUDISNOTA.asfloat < 7) then
          txtnota.Color := clred
     else
          txtnota.Color := clwhite;

     if (CDSRelALUDISFREQUENCIA.asfloat = 0) or (CDSRelALUDISFREQUENCIA.asfloat < 0) or (CDSRelALUDISFREQUENCIA.asfloat > 100) then
          txtfreq.Color := clred
     else
          txtfreq.Color := clwhite;
end;

procedure TFAlunoCursoRel.RLBand34BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     if CDSRelALUDISNOTA.asfloat = 0 then
     begin
          RLDBText88.Color := clred;
          situacao := false;
     end
     else
     begin
          RLDBText88.Color := clwhite;
          if CDSRelALUDISNOTA.asfloat < 7 then
          begin
               situacao := false;
               RLDBText88.Color := clred;
          end;
     end;
     if CDSRelALUDISFREQUENCIA.asfloat = 0 then
     begin
          RLDBText86.Color := clred;
          situacao := false;
     end
     else
     begin
          RLDBText86.Color := clwhite;
          if CDSRelALUDISFREQUENCIA.asfloat < 75 then
          begin
               situacao := false;
               RLDBText86.Color := clred;
          end;
     end;
end;

procedure TFAlunoCursoRel.RLBand35BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     nota := CDSRelMEDIANOTA.asfloat;
     freq := CDSRelMEDIAFREQ.asfloat;
end;

procedure TFAlunoCursoRel.RLBand36BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     RLLabel78.caption := formatfloat('0.00', nota);
     RLLabel79.caption := formatfloat('0.00', freq);
end;

procedure TFAlunoCursoRel.RLLabel64BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     RLLabel77.caption := formatdatetime('dd" de "mmmm" de "yyyy"', CDSRelALUCURSOINICIO.asdatetime) + ' a ' + formatdatetime('dd" de "mmmm" de "yyyy"', CDSRelALUCURSOFIM.asdatetime);

     if chkTCC.Checked then
     begin
         RLLabel89.caption := formatfloat('0.0', CDSRelALUMONONOTA.asfloat);
         if CDSRelALUMONONOTA.asfloat < 7 then
         begin
              situacao := false;
              rllabel89.Color := clred;
         end
         else
              rllabel89.Color := clwhite;

         RLLabel87.caption := CDSRelORIENTADOR.asstring;
         RLLabel88.caption := CDSRelORIENTADORTITULACAO.asstring;

         if trim(CDSRelALUMONOTITULO.asstring) = '' then
              RLMemo2.Color := clred
         else
         begin
              RLMemo2.Color := clwhite;
              situacao := false;
         end;
         RLMemo2.lines.text := 'TRABALHO DE CONCLUSÃO DE CURSO: ' + CDSRelALUMONOTITULO.asstring;
     end
     else
     begin
         RLLabel89.Caption := '';
         RLLabel87.Caption := '';
         RLLabel88.caption := '';
         rllabel89.Color := clwhite;
         RLMemo2.Color := clwhite;
         RLMemo2.lines.Clear;
     end;
end;

procedure TFAlunoCursoRel.RLLabel76BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     lblsituacao.caption := 'O(a) Aluno(a)';
     if situacao = false then
          lblsituacao.caption := lblsituacao.caption + ' não ';
     lblsituacao.caption := lblsituacao.caption + ' está apto para a impressão do certificado.';
end;

procedure TFAlunoCursoRel.RLDBText105BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     if trim(CDSMensalidadeMENDATAPAGAMENTO.AsString) <> '' then
     begin
          RLDBText110.Font.Color := clred;
          RLDBText111.Font.Color := clred;
     end
     else
     begin
          RLDBText110.Font.Color := clblack;
          RLDBText111.Font.Color := clblack;
          lblmensituacao.caption := 'O(A) aluno(a) não está apto(a) para a impressão do certificado.';
     end;
end;

procedure TFAlunoCursoRel.txtanoKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) and (not txtdata1.Enabled) then
          btnimprimir.click;
end;

procedure TFAlunoCursoRel.txtalunoExit(Sender: TObject);
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
               txtcodcurso.Text := dm.cdsalunoLkpAlucurso.asstring;
               txtcodcursoexit(nil);
          end
          else
          begin
               txtnomealuno.text := 'Aluno não cadastrado!';
               txtaluno.setfocus;
               exit;
          end;
     end;
end;

procedure TFAlunoCursoRel.txtcodcursoExit(Sender: TObject);
begin
     if trim(txtcodcurso.Text) <> '' then
     begin
          try
               strtoint(txtcodcurso.text);
          except
               txtcodcurso.clear;
               txtcodcurso.setfocus;
               exit;
          end;
          if not dm.CDSCurso.active then
               dm.CDSCurso.open;
          if dm.CDSCurso.Locate('CURCOD', txtcodcurso.text, []) then
          begin
               LstCurso.items.add(FormatFloat('0000', dm.CDSCursoCURCOD.AsInteger) + ' - ' + dm.CDSCursoCURNOME.AsString);
               txtcodcurso.Clear;
               txtcodcurso.SetFocus;
          end
          else
          begin
               txtcodcurso.Clear;
               txtcodcurso.SetFocus;
               exit;
          end;
     end;
end;

procedure TFAlunoCursoRel.txtprofessorExit(Sender: TObject);
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

procedure TFAlunoCursoRel.txtcoddisciplinaExit(Sender: TObject);
begin
     if trim(txtcoddisciplina.Text) <> '' then
     begin
          try
               strtoint(txtcoddisciplina.text);
          except
               txtcoddisciplina.clear;
               txtcoddisciplina.setfocus;
               exit;
          end;
          if not dm.CDSdisciplina.active then
               dm.CDSdisciplina.open;
          if dm.CDSdisciplina.Locate('DISCOD', txtcoddisciplina.text, []) then
          begin
               LstDisciplina.items.add(FormatFloat('0000', dm.CDSDisciplinaDISCOD.AsInteger) + ' - ' + dm.CDSDisciplinaDISNOME.AsString);
               txtcoddisciplina.clear;
               txtcoddisciplina.setfocus;
          end
          else
          begin
               txtcoddisciplina.clear;
               txtcoddisciplina.setfocus;
               exit;
          end;
     end;
end;

procedure TFAlunoCursoRel.LstCursoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_Delete then
          if (Sender as TListBox).ItemIndex >= 0 then
               (Sender as TListBox).Items.Delete((Sender as TListBox).ItemIndex);
end;

procedure TFAlunoCursoRel.RLLabel5BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     MemoCursos.Lines := LstCurso.Items;
end;

procedure TFAlunoCursoRel.txtorientadorExit(Sender: TObject);
begin
     txtnomeorientador.clear;
     if trim(txtorientador.Text) <> '' then
     begin
          try
               strtoint(txtorientador.text);
          except
               txtnomeorientador.text := 'Campo orientador Inválido!';
               txtorientador.setfocus;
               exit;

          end;
          if not dm.CDSProfessor.active then
               dm.CDSProfessor.open;
          if dm.CDSProfessor.Locate('PROCOD', txtorientador.text, []) then
          begin
               txtnomeorientador.text := dm.CDSProfessorPRONOME.AsString;
          end
          else
          begin
               txtnomeorientador.text := 'Orientador não Cadastrado!';
               txtorientador.setfocus;
               exit;
          end;
     end;
end;

procedure TFAlunoCursoRel.btnorientadorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;
     try
          FProfessor := tFProfessor.create(self);
          FProfessor.FormStyle := fsNormal;
          fprofessor.Visible := false;
          usuario('btnconsultar', FProfessor.wsinformacao.programa);
          FProfessor.showmodal;
          txtorientador.text := dm.CDSProfessorProCOD.asstring;
          txtorientador.Setfocus;
     finally
          FProfessor.release;
          FProfessor := nil;
          FProfessor.free;
     end;
end;

procedure TFAlunoCursoRel.RLLabel125BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     lbllistagemprofessor.caption := txtprofessor.text + ' - ' + txtnomeprofessor.text;
     if LstCurso.Items.Count > 0 then
          lbllistagemcurso.caption := LstCurso.Items[0]
     else
          lbllistagemcurso.caption := '';

          
     if LstDisciplina.Items.Count > 0 then
          lbllistagemdisciplina.caption := LstDisciplina.Items[0]
     else
          lbllistagemdisciplina.caption := '';

end;

procedure TFAlunoCursoRel.TxtData6KeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) then
          btnimprimir.click;
end;

procedure TFAlunoCursoRel.RLLabel18BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
    if Trim(CDSRelCURTIPO.AsString) = '' then
        lblTipo.Caption := 'Pós-Graduação' + ' - Lato Sensu'
    else
       lblTipo.Caption := Trim(CDSRelCURTIPO.AsString);
end;

procedure TFAlunoCursoRel.RLBand74BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     if (CDSRelALUDISNOTA.asfloat = 0) or (CDSRelALUDISNOTA.asfloat < 0) or (CDSRelALUDISNOTA.asfloat > 10) or (CDSRelALUDISNOTA.asfloat < 7) then
          RLDBText195.Color := clred
     else
          RLDBText195.Color := clwhite;

     if (CDSRelALUDISFREQUENCIA.asfloat = 0) or (CDSRelALUDISFREQUENCIA.asfloat < 0) or (CDSRelALUDISFREQUENCIA.asfloat > 100) then
          RLDBText193.Color := clred
     else
          RLDBText193.Color := clwhite;
end;

procedure TFAlunoCursoRel.RLBand75BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     nota := CDSRelMEDIANOTA.asfloat;
     freq := CDSRelMEDIAFREQ.asfloat;
     if freq > 100 then
         freq := 100;
end;

procedure TFAlunoCursoRel.RLBand76BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     RLLabel157.caption := formatfloat('0.00', nota);
     RLLabel158.caption := formatfloat('0.00', freq);
end;

procedure TFAlunoCursoRel.RLLabel144BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     RLLabel156.caption := IntToStr(YearOf(Date));
     RLLabel165.caption := CDSRelCOORDENADOR.asstring;
     RLLabel164.caption := CDSRelCURSECRETARIO.asstring;
     lblBolProfessor.caption  := CDSRelPROFESSOR.asstring;
end;

procedure TFAlunoCursoRel.RLMemo3BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     RLLabel159.caption := dm.CDSParamEmpCIDNOME.asstring + ', ' + formatdatetime('dd" de "mmmm" de "yyyy"', date);
end;


procedure TFAlunoCursoRel.RLDBText182BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
    printit := CDSFreqALUCOD.AsINteger > 0;
    RLSystemInfo38.Visible := printIt; 
end;

end.
