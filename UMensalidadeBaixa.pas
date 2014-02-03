unit UMensalidadeBaixa;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, ToolWin, StdCtrls, WSEdit, ExtCtrls, Mask,
     WSMaskEdit, dateutils, shellapi, DBCtrls, WSDBLookupComboBox, FMTBcd, DB,
     DBClient, Provider, SqlExpr, WSDBEdit, RLReport, RLRichText, Buttons;

type
     TFMensalidadeBaixa = class(TForm)
          ToolBarNavegacao: TToolBar;
          BtnBaixar: TToolButton;
          btnsair: TToolButton;
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
          btnaluno: TSpeedButton;
          txtaluno: TWSEdit;
          ToolButton1: TToolButton;
          QMens: TSQLQuery;
          DSPMens: TDataSetProvider;
          CDSMens: TClientDataSet;
          DSMens: TDataSource;
          QMensMENALUNO: TIntegerField;
          QMensMENNUMERO: TIntegerField;
          QMensMENVENCIMENTO: TDateField;
          QMensMENVALOR: TFloatField;
          QMensMENACRESCIMO: TFloatField;
          QMensMENDESCONTO: TFloatField;
          QMensMENVALORPAGO: TFloatField;
          QMensMENDATAPAGAMENTO: TDateField;
          QMensMENLIQUIDO: TFloatField;
          CDSMensMENALUNO: TIntegerField;
          CDSMensMENNUMERO: TIntegerField;
          CDSMensMENVENCIMENTO: TDateField;
          CDSMensMENVALOR: TFloatField;
          CDSMensMENACRESCIMO: TFloatField;
          CDSMensMENDESCONTO: TFloatField;
          CDSMensMENVALORPAGO: TFloatField;
          CDSMensMENDATAPAGAMENTO: TDateField;
          CDSMensMENLIQUIDO: TFloatField;
          PanMens: TPanel;
          Label8: TLabel;
          Label10: TLabel;
          WSDBEdit1: TWSDBEdit;
          txtdesconto: TWSDBEdit;
          txtdatapagamento: TWSDBEdit;
          Label1: TLabel;
          S: TWSDBEdit;
          Label2: TLabel;
          Label3: TLabel;
          WSDBEdit5: TWSDBEdit;
          btncancelar: TToolButton;
          CDSMensliquido: TFloatField;
          btnformapgto: TSpeedButton;
          Label6: TLabel;
          txtformapgto: TWSDBEdit;
          QMensMENFORMAPGTO: TIntegerField;
          CDSMensMENFORMAPGTO: TIntegerField;
          QMensMENBANCO: TIntegerField;
          QMensMENOBS: TStringField;
          QMensMENLCTOCONTABILMENSALIDADE: TIntegerField;
          QMensMENLCTOCONTABILDESCONTOS: TIntegerField;
          QMensMENLCTOCONTABILJUROS: TIntegerField;
          CDSMensMENBANCO: TIntegerField;
          CDSMensMENOBS: TStringField;
          CDSMensMENLCTOCONTABILMENSALIDADE: TIntegerField;
          CDSMensMENLCTOCONTABILDESCONTOS: TIntegerField;
          CDSMensMENLCTOCONTABILJUROS: TIntegerField;
          CDSMensaluno: TStringField;
          Label5: TLabel;
          txtreceb: TWSDBEdit;
          QMensMENRECEBEU: TStringField;
          CDSMensMENRECEBEU: TStringField;
    lblbolsa: TLabel;
    txtbolsa: TWSDBEdit;
          QMensMENBOLSA: TFloatField;
          CDSMensMENBOLSA: TFloatField;
          Label4: TLabel;
          txtvcto: TWSMaskEdit;
          Label11: TLabel;
          WSDBEdit3: TWSDBEdit;
          QMensMENTIPO: TStringField;
          CDSMensMENTIPO: TStringField;
          RLReportRecibo: TRLReport;
          RLBand8: TRLBand;
          RLLabel13: TRLLabel;
          RLSystemInfo1: TRLSystemInfo;
          RLBand9: TRLBand;
          RLLabel14: TRLLabel;
          RLLabel17: TRLLabel;
          RLDBText17: TRLDBText;
          lblextenso: TRLLabel;
          RLLabel18: TRLLabel;
          lblreferente: TRLLabel;
          lblcidadedata: TRLLabel;
          RLLabel19: TRLLabel;
          RLLabel20: TRLLabel;
          RLLabel5: TRLLabel;
          RLLabel15: TRLLabel;
          RLLabel16: TRLLabel;
          RLLabel21: TRLLabel;
          RLDBText10: TRLDBText;
          RLLabel22: TRLLabel;
          RLDBText20: TRLDBText;
          RLDBText21: TRLDBText;
          RLDBText22: TRLDBText;
          RLDBText23: TRLDBText;
          RLLabel23: TRLLabel;
          RLDBText24: TRLDBText;
          RLBand11: TRLBand;
          RLDBText27: TRLDBText;
          RLDBImage6: TRLDBImage;
          RLDBText28: TRLDBText;
          RLDBText29: TRLDBText;
          RLDBText30: TRLDBText;
          RLDBText31: TRLDBText;
          RLDBText26: TRLDBText;
          RLDBText32: TRLDBText;
          btnrecibo: TToolButton;
          ToolButton3: TToolButton;
          RLDBText1: TRLDBText;
          QMensMENDOCUMENTO: TStringField;
          CDSMensMENDOCUMENTO: TStringField;
          txtnomealuno: TWSEdit;
          txtnomeformapgto: TWSEdit;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          lblAluno: TRLLabel;
          Label12: TLabel;
          WSDBEdit4: TWSDBEdit;
          DBNavigator1: TDBNavigator;
    lbldisciplina: TLabel;
    txtdisciplina: TWSDBEdit;
    CDSMensdisciplina: TStringField;
    QMensMENDISCIPLINA: TIntegerField;
    CDSMensMENDISCIPLINA: TIntegerField;
    lblMensagem: TLabel;
    lblTestoureiro: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
          procedure btnsairClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnalunoClick(Sender: TObject);
          procedure BtnBaixarClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtalunoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btncancelarClick(Sender: TObject);
          procedure CDSMensCalcFields(DataSet: TDataSet);
          procedure btnformapgtoClick(Sender: TObject);
          procedure SKeyPress(Sender: TObject; var Key: Char);
          procedure txtrecebEnter(Sender: TObject);
          procedure txtvctoExit(Sender: TObject);
          procedure btnreciboClick(Sender: TObject);
          procedure txtalunoExit(Sender: TObject);
          procedure txtformapgtoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FMensalidadeBaixa: TFMensalidadeBaixa;

implementation

uses UAluno, UDM, UMenu, UFormaPgto, ULctoContabil, UFuncoes;

{$R *.dfm}

procedure TFMensalidadeBaixa.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFMensalidadeBaixa.FormShow(Sender: TObject);
begin
     if not dm.CDSAlunoLkp.Active then
          dm.CDSAlunoLkp.open;
     setCaption(Sender as TForm);
end;

procedure TFMensalidadeBaixa.btnalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          faluno := tfaluno.create(self);
          usuario('btnconsultar', faluno.wsinformacao.programa);
          faluno.showmodal;
          txtaluno.text := dm.cdsalunoalucod.asstring;
     finally
          faluno.release;
          faluno := nil;
          faluno.free;
     end;
end;

procedure TFMensalidadeBaixa.BtnBaixarClick(Sender: TObject);

     procedure Lanca_Contabilidade;
     begin
          if not dm.cdscurso.active then
               dm.cdscurso.open;
          if not dm.CDSPlanoNegocios.active then
               dm.CDSPlanoNegocios.open;

          CDSMens.edit;

          dm.CDSAlunoLkp.Locate('ALUCOD', CDSMensMENALUNO.asinteger, []);
          dm.CDSCurso.Locate('CURCOD', dm.CDSAlunoLkpALUCURSO.asinteger, []);
          dm.CDSFormaPgto.Locate('FORCOD', CDSMensMENFORMAPGTO.asinteger, []);
          dm.CDSPlanoNegocios.First;

          if not dm.CDSLctoContabil.active then
          begin
               with dm.QLctoContabil.sql do
               begin
                    clear;
                    add('select LCTNUMERO,LCTDATA,LCTDEBITO,LCTCREDITO,LCTHISTPADRAO,');
                    add('LCTPLANONEGOCIOS,LCTVALOR,LCTORIGEM, credito.PLADESCRICAO as CONTACREDITO, debito.PLADESCRICAO as CONTADEBITO,');
                    add('LCTDOCUMENTO, LCTEXCLUI, LCTPASSOU, LCTIDENTIFICADOR, IDENOME, LCTIDENTIFICADORCOMPLEMENTO, LCTCOMPLEMENTO, COMCOMPLEMENTO');
                    add('from TLCTOCONTABIL');
                    add('  left outer join TPLANOCONTA credito on LCTCREDITO = credito.PLACODRED');
                    add('  left outer join TPLANOCONTA debito on LCTDEBITO = debito.PLACODRED');
                    add('  left outer join TIDENTIFICADOR on LCTIDENTIFICADOR = IDECOD');
                    add('  left outer join VCOMPLEMENTO on COMCODIGO = LCTNUMERO');
                    add(' WHERE LCTNUMERO = 0');
               end;
               dm.CDSLctoContabil.Open;
               dm.cdscontabil.open;
          end;
          if CDSMensMENLCTOCONTABILMENSALIDADE.asinteger = 0 then
               dm.CDSLctoContabil.append
          else
          begin
               if dm.CDSLctoContabil.locate('LCTNUMERO', CDSMensMENLCTOCONTABILMENSALIDADE.AsInteger, []) then
                    dm.CDSLctoContabil.edit
               else
                    dm.CDSLctoContabil.append;
          end;
          dm.CDSLctoContabilLCTDATA.AsDateTime := CDSMensMENDATAPAGAMENTO.AsDateTime;
          {if Upper(dm.CDSFormaPgtoFORTIPO.asstring) <> 'B' then
          begin}
          dm.CDSLctoContabilLCTDEBITO.asstring := dm.CDSFormaPgtoFORCONTAVALORDEBITO.asstring; //dm.CDSContabilCONMENSDEBITO.asstring;
          dm.CDSLctoContabilLCTCREDITO.asstring := dm.CDSFormaPgtoFORCONTAVALORCREDITO.asstring;
          {end
          else
          begin
               dm.CDSLctoContabilLCTDEBITO.asstring := dm.CDSContabilCONMENSDEBITOBANCO.asstring;
               dm.CDSLctoContabilLCTCREDITO.asstring := dm.CDSContabilCONMENSCREDITOBANCO.asstring;
          end;}
          try
               dm.CDSLctoContabilLCTDOCUMENTO.Asinteger := CDSMensMENDOCUMENTO.asinteger;
          except end;
          dm.CDSLctoContabilLCTHISTPADRAO.asinteger := dm.CDSFormaPgtoFORHISTPADRAOVALOR.asinteger;
          dm.CDSLctoContabilLCTCOMPLEMENTO.asstring := CDSMensaluno.asstring + '-' + CDSMensMENALUNO.DisplayText;
          dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := dm.CDSCursoCURPLANONEGOCIOS.asinteger;
          if dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger = 0 then
               dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := dm.CDSPlanoNegociosPLANEGCOD.asinteger;

          dm.CDSLctoContabilLCTVALOR.asfloat := CDSMensMENVALOR.asfloat;
          dm.CDSLctoContabil.post;
          dm.CDSLctoContabil.applyupdates(0);
          CDSMensMENLCTOCONTABILMENSALIDADE.AsInteger := dm.CDSLctoContabilLCTNUMERO.asinteger;

          if CDSMensMENDESCONTO.asfloat > 0 then
          begin
               if CDSMensMENLCTOCONTABILDESCONTOS.asinteger = 0 then
                    dm.CDSLctoContabil.append
               else
               begin
                    if dm.CDSLctoContabil.locate('LCTNUMERO', CDSMensMENLCTOCONTABILDESCONTOS.AsInteger, []) then
                         dm.CDSLctoContabil.edit
                    else
                         dm.CDSLctoContabil.append;
               end;
               dm.CDSLctoContabilLCTDATA.asdatetime := CDSMensMENDATAPAGAMENTO.asdatetime;
               {if Upper(dm.CDSFormaPgtoFORTIPO.asstring) <> 'B' then
               begin}
               dm.CDSLctoContabilLCTDEBITO.asstring := dm.CDSFormaPgtoFORCONTADESCONTODEBITO.asstring; //dm.CDSContabilCONDESCDEBITO.asstring;
               dm.CDSLctoContabilLCTCREDITO.asstring := dm.CDSFormaPgtoFORCONTADESCONTOCREDITO.asstring;
               {end
               else
               begin
                    dm.CDSLctoContabilLCTDEBITO.asstring := dm.CDSContabilCONDESCDEBITOBANCO.asstring;
                    dm.CDSLctoContabilLCTCREDITO.asstring := dm.CDSContabilCONDESCCREDITOBANCO.asstring;
               end;}
               try
                    dm.CDSLctoContabilLCTDOCUMENTO.Asinteger := CDSMensMENDOCUMENTO.asinteger;
               except end;
               dm.CDSLctoContabilLCTHISTPADRAO.asinteger := dm.CDSFormaPgtoFORHISTPADRAODESCONTO.asinteger;
               dm.CDSLctoContabilLCTCOMPLEMENTO.asstring := CDSMensaluno.asstring + '-' + CDSMensMENALUNO.DisplayText;
               dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := dm.CDSCursoCURPLANONEGOCIOS.asinteger;
               if dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger = 0 then
                    dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := dm.CDSPlanoNegociosPLANEGCOD.asinteger;
               dm.CDSLctoContabilLCTVALOR.asfloat := CDSMensMENDESCONTO.asfloat;
               dm.CDSLctoContabil.post;
               dm.CDSLctoContabil.applyupdates(0);
               CDSMensMENLCTOCONTABILDESCONTOS.AsInteger := dm.CDSLctoContabilLCTNUMERO.asinteger;
          end;

          if CDSMensMENACRESCIMO.asfloat > 0 then
          begin
               if CDSMensMENLCTOCONTABILJUROS.asinteger = 0 then
                    dm.CDSLctoContabil.append
               else
               begin
                    if dm.CDSLctoContabil.locate('LCTNUMERO', CDSMensMENLCTOCONTABILJUROS.AsInteger, []) then
                         dm.CDSLctoContabil.edit
                    else
                         dm.CDSLctoContabil.append;
               end;
               dm.CDSLctoContabilLCTDATA.asdatetime := CDSMensMENDATAPAGAMENTO.asdatetime;
               {if Upper(dm.CDSFormaPgtoFORTIPO.asstring) <> 'B' then
               begin}
               dm.CDSLctoContabilLCTDEBITO.asstring := dm.CDSFormaPgtoFORCONTAJURODEBITO.asstring;
               dm.CDSLctoContabilLCTCREDITO.asstring := dm.CDSFormaPgtoFORCONTAJUROCREDITO.asstring;
               {end
               else
               begin
                    dm.CDSLctoContabilLCTDEBITO.asstring := dm.CDSContabilCONJURODEBITOBANCO.asstring;
                    dm.CDSLctoContabilLCTCREDITO.asstring := dm.CDSContabilCONJUROCREDITOBANCO.asstring;
               end;}
               try
                    dm.CDSLctoContabilLCTDOCUMENTO.Asinteger := CDSMensMENDOCUMENTO.asinteger;
               except end;
               dm.CDSLctoContabilLCTHISTPADRAO.asinteger := dm.CDSFormaPgtoFORHISTPADRAOJURO.asinteger;
               dm.CDSLctoContabilLCTCOMPLEMENTO.asstring := CDSMensaluno.asstring + '-' + CDSMensMENALUNO.DisplayText;
               dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := dm.CDSCursoCURPLANONEGOCIOS.asinteger;
               if dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger = 0 then
                    dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := dm.CDSPlanoNegociosPLANEGCOD.asinteger;
               dm.CDSLctoContabilLCTVALOR.asfloat := CDSMensMENACRESCIMO.asfloat;
               dm.CDSLctoContabil.post;
               dm.CDSLctoContabil.applyupdates(0);
               CDSMensMENLCTOCONTABILJUROS.AsInteger := dm.CDSLctoContabilLCTNUMERO.asinteger;
          end;

          dm.CDSLctoContabil.close;
          dm.cdscontabil.close;

          CDSMens.Post;
          CDSMens.ApplyUpdates(0);
     end;

begin
     try
          strtodate(txtdatapagamento.text);
     except
          showmessage('Campo data de pagamento obrigatório!');
          txtdatapagamento.setfocus;
          exit;
     end;

     testa_data(CDSMensMENDATAPAGAMENTO.asdatetime);
     {if (CDSMensMENDATAPAGAMENTO.asdatetime < strtodate(valor_parametro(7))) then
     begin
          showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;
     if (CDSMensMENDATAPAGAMENTO.asdatetime > strtodate(valor_parametro(8))) then
     begin
          showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;

     {if (CDSMensMENVENCIMENTO.asdatetime < strtodate(valor_parametro(7))) then
     begin
          showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;
     if (CDSMensMENVENCIMENTO.asdatetime > strtodate(valor_parametro(8))) then
     begin
          showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;}

     CDSMensMENVALORPAGO.AsFloat := CDSMensLiquido.AsFloat;
     CDSMens.Post;
     CDSMens.ApplyUpdates(0);

     {if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S' then
     begin
          if application.messagebox('Deseja lançar na contabilidade?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               Lanca_Contabilidade;
     end
     else}
          Lanca_Contabilidade;
     lblMensagem.caption :=  'Mensalidades Baixa com Sucesso!';

     //if application.messagebox('Deseja imprimir o recibo?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
          btnrecibo.click;

     CDSMens.close;

     panmens.Enabled := false;
     BtnBaixar.Enabled := false;
     BtnCancelar.Enabled := false;
     txtvcto.Clear;
     txtaluno.setfocus;
end;

procedure TFMensalidadeBaixa.FormKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 27) and (btncancelar.enabled = true) then
          btncancelar.click
     else
          if (key = 27) and (btnsair.enabled = true) then
               btnsair.click;
     if (key = vk_f12) and (BtnBaixar.enabled = true) then
          BtnBaixar.click;
     if (key = 13) then
          Perform(WM_nextDlgCtl, 0, 0);
     if (key = 40) then
          Perform(WM_nextDlgCtl, 0, 0);
     if (key = 38) then
          Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFMensalidadeBaixa.txtalunoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtaluno then
               btnaluno.click;
     end;
end;

procedure TFMensalidadeBaixa.btncancelarClick(Sender: TObject);
begin
     CDSMens.close;
     PanMens.enabled := false;
     BtnBaixar.Enabled := false;
     BtnCancelar.Enabled := false;
     txtaluno.setfocus;
end;

procedure TFMensalidadeBaixa.CDSMensCalcFields(DataSet: TDataSet);
begin
     CDSMensliquido.asfloat := CDSMensMENVALOR.asfloat + CDSMensMENACRESCIMO.asfloat - CDSMensMENDESCONTO.asfloat - CDSMensMENBOLSA.asfloat;
end;

procedure TFMensalidadeBaixa.btnformapgtoClick(Sender: TObject);
begin
     if Application.FindComponent('FFormaPgto') <> nil then
          FFormaPgto.Close;

     try
          fformapgto := tfformapgto.create(self);
          FFormaPgto.FormStyle := fsNormal;
          fformapgto.Visible := false;
          fformapgto.BtnFiltro.click;
          fformapgto.showmodal;
          CDSMensMENFORMAPGTO.asinteger := dm.CDSFormaPgtoFORCOD.asinteger;
     finally
          fformapgto.release;
          fformapgto := nil;
          fformapgto.free;
     end;
end;

procedure TFMensalidadeBaixa.SKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          BtnBaixar.Click;

end;

procedure TFMensalidadeBaixa.txtrecebEnter(Sender: TObject);
begin
     if trim(txtreceb.Text) = '' then
          CDSMensMENRECEBEU.asstring := valor_parametro(10);
end;

procedure TFMensalidadeBaixa.txtvctoExit(Sender: TObject);
begin
     CDSMens.close;
     try
          QMens.ParamByName('Aluno').asinteger := strtoint(txtaluno.text);
     except
          showmessage('Campo Aluno Inválido!');
          txtaluno.setfocus;
          exit;
     end;

     if not dm.CDSAlunoLkp.active then
          dm.CDSAlunoLkp.open;
     if not dm.CDSAlunoLkp.Locate('ALUCOD', txtaluno.text, []) then
     begin
          showmessage('Aluno não cadastrado!');
          txtaluno.setfocus;
          exit;
     end;

     try
          QMens.ParamByName('Vcto').asdate := strtodate(txtvcto.text);
     except
          showmessage('Campo Vencimento Inválido!');
          txtvcto.setfocus;
          exit;
     end;

     PanMens.Enabled := true;
     BtnBaixar.Enabled := true;
     BtnCancelar.Enabled := true;

     CDSMens.open;
     CDSMens.edit;
     CDSMensMENDATAPAGAMENTO.asDateTime := date;
     if (dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S') and (dayOf(date) > StrToInt(valor_parametro(12))) and ((dayOf(CDSMensMENVENCIMENTO.AsDateTime) < StrToInt(valor_parametro(12)))) then
     begin
          CDSMensMENDESCONTO.AsFloat := 0;
          txtdesconto.enabled := false;
     end
     else
          txtdesconto.enabled := true;

     if trim(valor_parametro(11)) <> '0' then
          CDSMensMENFORMAPGTO.AsInteger := strtoint(valor_parametro(11));
end;

procedure TFMensalidadeBaixa.btnreciboClick(Sender: TObject);
begin
     if cdsmens.State = dsedit then
          CDSMensMENVALORPAGO.AsFloat := CDSMensLiquido.AsFloat;
     lblcidadedata.caption := dm.CDSInstitutoINSCIDADE.asstring + ', ' + formatdatetime('dd "de" mmmm" de "yyyy', date);
     lblreferente.caption := ' pagamento número ' + CDSMensMENNUMERO.asstring + ' do mês de ' + formatdatetime('mmmm" de "yyyy', CDSMensMENVENCIMENTO.asdatetime);
     lblextenso.caption := '(' + trim(extenso(CDSMensMENVALORPAGO.asfloat)) + ')';
     dm.CDSAlunoLkp.locate('ALUCOD', CDSMensMENALUNO.asInteger, [loCaseInsensitive, loPartialKey]);
     lblAluno.Caption := dm.CDSAlunoLkpALUCOD.AsString + ' - ' + dm.CDSAlunoLkpALUNOME.AsString;
     if TipoSistema <> 'EMPRESARIAL' then
         lblAluno.Caption := lblAluno.Caption + '    Curso: ' +  dm.CDSAlunoLkpCURNOME.asString;
     lblTestoureiro.Caption := CDSMensMENRECEBEU.AsString;
     RLReportRecibo.PreviewModal;
end;

procedure TFMensalidadeBaixa.txtalunoExit(Sender: TObject);
begin
     txtnomealuno.clear;
     if trim(txtaluno.Text) <> '' then
     begin
          try
               strtoint(txtaluno.text);
          except
               showmessage('Campo Aluno Inválido!');
               txtaluno.setfocus;
               exit;
          end;
          if not dm.CDSAlunoLkp.active then
               dm.CDSAlunoLkp.open;
          if dm.CDSAlunoLkp.Locate('ALUCOD', txtaluno.text, []) then
          begin
               txtnomealuno.text := dm.CDSAlunoLkpALUNOME.asstring;
          end
          else
          begin
               showmessage('Aluno não cadastrado!');
               txtaluno.setfocus;
               exit;
          end;
     end;
end;

procedure TFMensalidadeBaixa.txtformapgtoExit(Sender: TObject);
begin
     txtnomeformapgto.clear;
     if trim(txtformapgto.Text) <> '' then
     begin
          try
               strtoint(txtformapgto.text);
          except
               showmessage('Campo Forma de Pagamento Inválido!');
               txtformapgto.setfocus;
               exit;
          end;
          if not dm.CDSFormaPgto.active then
               dm.CDSFormaPgto.open;
          if dm.CDSFormaPgto.Locate('FORCOD', txtformapgto.text, []) then
          begin
               txtnomeformapgto.text := dm.CDSFormaPgtoFORNOME.asstring;
          end
          else
          begin
               showmessage('Forma de Pagamento não cadastrado!');
               txtformapgto.setfocus;
               exit;
          end;
     end;
end;

procedure TFMensalidadeBaixa.FormCreate(Sender: TObject);
begin
     lbldisciplina.Visible := valor_parametro(15) = 'S';
     txtdisciplina.Visible := lbldisciplina.Visible;
end;

end.
