unit UEncerramentoContabil;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, shellapi, Mask,
     WSMaskEdit, Buttons;

type
     TFEncerramentoContabil = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
          btnconta: TSpeedButton;
          txtconta: TWSEdit;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          txtcomplemento: TWSEdit;
          Label1: TLabel;
          Label2: TLabel;
          txtcontra: TWSEdit;
          btncontra: TSpeedButton;
          QContas: TSQLQuery;
          DSPContas: TDataSetProvider;
          CDSContas: TClientDataSet;
          btnhistpadrao: TSpeedButton;
          txthistpadrao: TWSEdit;
          Label3: TLabel;
          txtdata: TWSMaskEdit;
          Label4: TLabel;
          QContasPLACODRED: TStringField;
          QContasPLACODANA: TStringField;
          CDSDeb: TClientDataSet;
          DSPDeb: TDataSetProvider;
          QDeb: TSQLQuery;
          CDSCre: TClientDataSet;
          DSPCre: TDataSetProvider;
          QCre: TSQLQuery;
          QDebTOTAL: TFloatField;
          CDSDebTOTAL: TFloatField;
          QCreTOTAL: TFloatField;
          CDSCreTOTAL: TFloatField;
          CDSContasPLACODRED: TStringField;
          CDSContasPLACODANA: TStringField;
          txtnomehistpadrao: TWSEdit;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btncontaClick(Sender: TObject);
          procedure btncontraClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure txtcontraKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnhistpadraoClick(Sender: TObject);
          procedure txtcomplementoKeyPress(Sender: TObject; var Key: Char);
          procedure txthistpadraoExit(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FEncerramentoContabil: TFEncerramentoContabil;

implementation

uses UDM, UMenu, UPlanoConta, UHistPadrao, UFuncoes;

{$R *.dfm}

procedure TFEncerramentoContabil.BtnImprimirClick(Sender: TObject);
begin
     if not DM.CDSLctoContabil.active then
          DM.CDSLctoContabil.open;

     with qcontas.sql do
     begin
          clear;
          add('select PLACODRED, PLACODANA');
          add('from TPLANOCONTA');
          add('where PLANIVEL = (SELECT MAX(PLANIVEL) FROM TPLANOCONTA)');
          add('and PLACODANA like (' + quotedstr(txtconta.text + '%') + ')');
          add('order by PLACODRED');
     end;
     CDSContas.open;
     CDScontas.first;
     while not CDScontas.eof do
     begin
          application.processmessages;
          QDeb.parambyname('data').asdate := strtodate(txtdata.text);
          QDeb.parambyname('conta').asstring := CDSContasPLACODRED.asstring;
          CDSDeb.open;

          QCre.parambyname('data').asdate := strtodate(txtdata.text);
          QCre.parambyname('conta').asstring := CDSContasPLACODRED.asstring;
          CDSCre.open;

          if CDSCreTOTAL.asfloat - CDSDebTOTAL.asfloat > 0 then
          begin
               DM.CDSLctoContabil.append;
               DM.CDSLctoContabilLCTDATA.Value := strtodate(txtdata.text);
               DM.CDSLctoContabilLctOrigem.Value := 2; //encerramento contábil
               DM.CDSLctoContabilLctDebito.value := CDSContasPLACODRED.asstring;
               DM.CDSLctoContabilLctCredito.Value := txtcontra.text;
               DM.CDSLctoContabilLctValor.value := CDSCreTOTAL.asfloat - CDSDebTOTAL.asfloat;
               DM.CDSLctoContabilLCTHISTPADRAO.Value := strtoint(txthistpadrao.text);
               DM.CDSLctoContabilLCTCOMPLEMENTO.value := txtcomplemento.text;
               DM.CDSLctoContabil.post;
               DM.CDSLctoContabil.applyupdates(0);
          end;

          if CDSdebtotal.asfloat - CDScretotal.asfloat > 0 then
          begin
               DM.CDSLctoContabil.append;
               DM.CDSLctoContabilLctData.Value := strtodate(txtdata.text);
               DM.CDSLctoContabilLctOrigem.Value := 2; // encerramento contábil
               DM.CDSLctoContabilLctDebito.value := txtcontra.text;
               DM.CDSLctoContabilLctCredito.Value := CDSContasPLACODRED.asstring;
               DM.CDSLctoContabilLctValor.value := CDSdebtotal.asfloat - CDScretotal.asfloat;
               DM.CDSLctoContabilLCTHISTPADRAO.Value := strtoint(txthistpadrao.text);
               DM.CDSLctoContabilLCTCOMPLEMENTO.value := txtcomplemento.text;
               DM.CDSLctoContabil.post;
               DM.CDSLctoContabil.applyupdates(0);
          end;
          CDSDeb.close;
          CDSCre.close;
          CDScontas.next;
     end;
     CDSContas.close;

     DM.CDSInstituto.first;
     DM.CDSInstituto.edit;
     DM.CDSInstitutoINSDATAENCCONTABIL.asdatetime := strtodate(txtdata.text);
     DM.CDSInstituto.post;
     DM.CDSInstituto.applyupdates(0);

     showmessage('Concluído!');
     close;
end;

procedure TFEncerramentoContabil.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFEncerramentoContabil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFEncerramentoContabil.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFEncerramentoContabil.btncontaClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FplanoCONta.Close;

     try
          FPlanoConta := tFPlanoConta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          fplanoconta.Visible := false;
          usuario('btnconsultar', FPlanoConta.wsinformacao.programa);
          FPlanoConta.showmodal;
          txtconta.text := dm.CDSPlanoContaPLACODANA.asstring;
     finally
          FPlanoConta.release;
          FPlanoConta := nil;
          FPlanoConta.free;
     end;
end;

procedure TFEncerramentoContabil.btncontraClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          FPlanoConta := tFPlanoConta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          Fplanoconta.Visible := false;
          usuario('btnconsultar', FPlanoConta.wsinformacao.programa);
          FPlanoConta.showmodal;
          txtcontra.text := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          FPlanoConta.release;
          FPlanoConta := nil;
          FPlanoConta.free;
     end;
end;

procedure TFEncerramentoContabil.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
     txtdata.text := datetostr(date);
end;

procedure TFEncerramentoContabil.txtcontraKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtconta then
               btnconta.click;
          if sender = txtcontra then
               btncontra.click;
          if sender = txthistpadrao then
               btnhistpadrao.click;
     end;
end;

procedure TFEncerramentoContabil.btnhistpadraoClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          FHistPadrao := tFHistPadrao.create(self);
          usuario('btnconsultar', FHistPadrao.wsinformacao.programa);
          FHistPadrao.showmodal;
          txthistpadrao.text := dm.CDSHistPadraoHISCOD.asstring;
     finally
          FHistPadrao.release;
          FHistPadrao := nil;
          FHistPadrao.free;
     end;
end;

procedure TFEncerramentoContabil.txtcomplementoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          BtnImprimir.click;
end;

procedure TFEncerramentoContabil.txthistpadraoExit(Sender: TObject);
begin
     txtnomehistpadrao.clear;
     if trim(txthistpadrao.Text) <> '' then
     begin
          try
               strtoint(txthistpadrao.text);
          except
               txtnomehistpadrao.text := 'Campo Histórico Padrão Inválido!';
               txthistpadrao.setfocus;
               exit;
          end;
          if not dm.CDShistpadrao.active then
               dm.CDShistpadrao.open;
          if dm.CDShistpadrao.Locate('HISCOD', txthistpadrao.text, []) then
          begin
               txtnomehistpadrao.text := dm.CDSHistPadraoHISNOME.AsString;
          end
          else
          begin
               txtnomehistpadrao.text := 'Histórico padrão não Cadastrado!';
               txthistpadrao.setfocus;
               exit;
          end;
     end;

end;

end.
