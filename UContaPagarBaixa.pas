unit UContaPagarBaixa;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, ToolWin, StdCtrls, WSEdit, ExtCtrls, Mask,
     WSMaskEdit, dateutils, shellapi, DBCtrls, WSDBLookupComboBox, FMTBcd, DB,
     DBClient, Provider, SqlExpr, WSDBEdit, RLReport, RLRichText, Buttons;

type
     TFcontaPagarBaixa = class(TForm)
          ToolBarNavegacao: TToolBar;
          BtnBaixar: TToolButton;
          btnsair: TToolButton;
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
    btnfornecedor: TSpeedButton;
    txtcodfornecedor: TWSEdit;
          ToolButton1: TToolButton;
    QContaPagar: TSQLQuery;
    DSPContaPagar: TDataSetProvider;
    CDSContaPagar: TClientDataSet;
    DSContaPagar: TDataSource;
    PanContaPagar: TPanel;
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
    CDSContaPagarliquido: TFloatField;
          btnformapgto: TSpeedButton;
          Label6: TLabel;
          txtformapgto: TWSDBEdit;
          Label5: TLabel;
          txtreceb: TWSDBEdit;
          Label4: TLabel;
    txtdocumento: TWSMaskEdit;
          Label11: TLabel;
          WSDBEdit3: TWSDBEdit;
    txtnomefornecedor: TWSEdit;
          txtnomeformapgto: TWSEdit;
    Label9: TLabel;
    Label12: TLabel;
    WSDBEdit2: TWSDBEdit;
    WSDBEdit4: TWSDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    WSDBEdit6: TWSDBEdit;
    WSDBEdit7: TWSDBEdit;
    Label15: TLabel;
    WSDBEdit8: TWSDBEdit;
    Label16: TLabel;
    txtserie: TWSMaskEdit;
    QContaPagarCTPCOD: TIntegerField;
    QContaPagarCTPFORNECEDOR: TIntegerField;
    QContaPagarCTPTIPOCONTA: TStringField;
    QContaPagarCTPCADASTRO: TDateField;
    QContaPagarCTPEMISSAO: TDateField;
    QContaPagarCTPVENCIMENTO: TDateField;
    QContaPagarCTPLIQUIDACAO: TDateField;
    QContaPagarCTPDOCUMENTO: TIntegerField;
    QContaPagarCTPSERIE: TStringField;
    QContaPagarCTPBANCO: TIntegerField;
    QContaPagarCTPVALOR: TFloatField;
    QContaPagarCTPSALDO: TFloatField;
    QContaPagarCTPJURO: TFloatField;
    QContaPagarCTPMULTA: TFloatField;
    QContaPagarCTPCONTA: TStringField;
    QContaPagarCTPSITUACAO: TStringField;
    QContaPagarCTPOBSERVACAO: TStringField;
    QContaPagarCTPUSUARIO: TStringField;
    QContaPagarCTPCHEQUE: TStringField;
    QContaPagarCTPPORTADOR: TStringField;
    QContaPagarCTPBANCODEPTO: TStringField;
    QContaPagarCTPAGENCIA: TStringField;
    QContaPagarCTPCONTACORRENTE: TStringField;
    QContaPagarCTPLIBERADO: TStringField;
    CDSContaPagarCTPCOD: TIntegerField;
    CDSContaPagarCTPFORNECEDOR: TIntegerField;
    CDSContaPagarCTPTIPOCONTA: TStringField;
    CDSContaPagarCTPCADASTRO: TDateField;
    CDSContaPagarCTPEMISSAO: TDateField;
    CDSContaPagarCTPVENCIMENTO: TDateField;
    CDSContaPagarCTPLIQUIDACAO: TDateField;
    CDSContaPagarCTPDOCUMENTO: TIntegerField;
    CDSContaPagarCTPSERIE: TStringField;
    CDSContaPagarCTPBANCO: TIntegerField;
    CDSContaPagarCTPVALOR: TFloatField;
    CDSContaPagarCTPSALDO: TFloatField;
    CDSContaPagarCTPJURO: TFloatField;
    CDSContaPagarCTPMULTA: TFloatField;
    CDSContaPagarCTPCONTA: TStringField;
    CDSContaPagarCTPSITUACAO: TStringField;
    CDSContaPagarCTPOBSERVACAO: TStringField;
    CDSContaPagarCTPUSUARIO: TStringField;
    CDSContaPagarCTPCHEQUE: TStringField;
    CDSContaPagarCTPPORTADOR: TStringField;
    CDSContaPagarCTPBANCODEPTO: TStringField;
    CDSContaPagarCTPAGENCIA: TStringField;
    CDSContaPagarCTPCONTACORRENTE: TStringField;
    CDSContaPagarCTPLIBERADO: TStringField;
    WSDBEdit9: TWSDBEdit;
    QContaPagarCTPFORMAPGTO: TIntegerField;
    QContaPagarCTPLCTOCONTABILVALOR: TIntegerField;
    QContaPagarCTPLCTOCONTABILDESCONTO: TIntegerField;
    QContaPagarCTPLCTOCONTABILJUROS: TIntegerField;
    CDSContaPagarCTPFORMAPGTO: TIntegerField;
    CDSContaPagarCTPLCTOCONTABILVALOR: TIntegerField;
    CDSContaPagarCTPLCTOCONTABILDESCONTO: TIntegerField;
    CDSContaPagarCTPLCTOCONTABILJUROS: TIntegerField;
          procedure btnsairClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnfornecedorClick(Sender: TObject);
          procedure BtnBaixarClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtcodfornecedorKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btncancelarClick(Sender: TObject);
          procedure CDSContaPagarCalcFields(DataSet: TDataSet);
          procedure btnformapgtoClick(Sender: TObject);
          procedure SKeyPress(Sender: TObject; var Key: Char);
          procedure txtrecebEnter(Sender: TObject);
          procedure txtcodfornecedorExit(Sender: TObject);
          procedure txtformapgtoExit(Sender: TObject);
    procedure txtserieExit(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FcontaPagarBaixa: TFcontaPagarBaixa;

implementation

uses UAluno, UDM, UMenu, UFormaPgto, UNetworking, UFuncoes;

{$R *.dfm}

procedure TFcontaPagarBaixa.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFcontaPagarBaixa.FormShow(Sender: TObject);
begin
     if not dm.CDSAlunoLkp.Active then
          dm.CDSAlunoLkp.open;
     setCaption(Sender as TForm);
end;

procedure TFcontaPagarBaixa.btnfornecedorClick(Sender: TObject);
begin
     if Application.FindComponent('FNetworking') <> nil then
          FNetworking.Close;

     try
          FNetworking := tFNetworking.create(self);
          usuario('btnconsultar', FNetworking.wsinformacao.programa);
          FNetworking.showmodal;
          txtcodfornecedor.text := dm.cdsnetworkingnetcod.asstring;
     finally
          FNetworking.release;
          FNetworking := nil;
          FNetworking.free;
     end;
end;

procedure TFcontaPagarBaixa.BtnBaixarClick(Sender: TObject);

     procedure Lanca_Contabilidade;
     begin
          if not dm.CDSPlanoNegocios.active then
               dm.CDSPlanoNegocios.open;

          CDSContaPagar.edit;

          dm.CDSFormaPgto.Locate('FORCOD', CDSContaPagarCTPFORMAPGTO.asinteger, []);
          dm.CDSPlanoNegocios.First;

          if not dm.CDSLctoContabil.active then
               dm.CDSLctoContabil.open;
          dm.cdscontabil.open;

          if CDSContaPagarCTPLCTOCONTABILVALOR.asinteger = 0 then
               dm.CDSLctoContabil.append
          else
          begin
               if dm.CDSLctoContabil.locate('LCTNUMERO', CDSContaPagarCTPLCTOCONTABILVALOR.AsInteger, []) then
                    dm.CDSLctoContabil.edit
               else
                    dm.CDSLctoContabil.append;
          end;
          dm.CDSLctoContabilLCTDATA.AsDateTime := CDSContaPagarCTPLIQUIDACAO.AsDateTime;
          dm.CDSLctoContabilLCTDEBITO.asstring := dm.CDSFormaPgtoFORCONTAVALORDEBITO.asstring;
          dm.CDSLctoContabilLCTCREDITO.asstring := dm.CDSFormaPgtoFORCONTAVALORCREDITO.asstring;
          try
               dm.CDSLctoContabilLCTDOCUMENTO.Asinteger := CDSContaPagarCTPDOCUMENTO.asinteger;
          except end;
          dm.CDSLctoContabilLCTHISTPADRAO.asinteger := dm.CDSFormaPgtoFORHISTPADRAOVALOR.asinteger;
          dm.CDSLctoContabilLCTCOMPLEMENTO.asstring := CDSContaPagarCTPFORNECEDOR.asstring; // + '-' + CDSContaPagarCTPFORNECEDOR.DisplayText;
          dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := dm.CDSPlanoNegociosPLANEGCOD.asinteger;
          dm.CDSLctoContabilLCTVALOR.asfloat := CDSContaPagarCTPVALOR.asfloat;
          dm.CDSLctoContabil.post;
          dm.CDSLctoContabil.applyupdates(0);
          CDSContaPagarCTPLCTOCONTABILVALOR.AsInteger := dm.CDSLctoContabilLCTNUMERO.asinteger;

          if CDSContaPagarCTPMulta.asfloat > 0 then
          begin
               if CDSContaPagarCTPLCTOCONTABILDESCONTO.asinteger = 0 then
                    dm.CDSLctoContabil.append
               else
               begin
                    if dm.CDSLctoContabil.locate('LCTNUMERO', CDSContaPagarCTPLCTOCONTABILDESCONTO.AsInteger, []) then
                         dm.CDSLctoContabil.edit
                    else
                         dm.CDSLctoContabil.append;
               end;
               dm.CDSLctoContabilLCTDATA.asdatetime := CDSContaPagarCTPLIQUIDACAO.asdatetime;
               dm.CDSLctoContabilLCTDEBITO.asstring := dm.CDSFormaPgtoFORCONTADESCONTODEBITO.asstring; //dm.CDSContabilCONDESCDEBITO.asstring;
               dm.CDSLctoContabilLCTCREDITO.asstring := dm.CDSFormaPgtoFORCONTADESCONTOCREDITO.asstring;
               try
                    dm.CDSLctoContabilLCTDOCUMENTO.Asinteger := CDSContaPagarCTPDOCUMENTO.asinteger;
               except end;
               dm.CDSLctoContabilLCTHISTPADRAO.asinteger := dm.CDSFormaPgtoFORHISTPADRAODESCONTO.asinteger;
               dm.CDSLctoContabilLCTCOMPLEMENTO.asstring := CDSContaPagarCTPFORNECEDOR.asstring; //+ '-' + CDSMensMENALUNO.DisplayText;
               dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := dm.CDSPlanoNegociosPLANEGCOD.asinteger;
               dm.CDSLctoContabilLCTVALOR.asfloat := CDSContaPagarCTPMulta.asfloat;
               dm.CDSLctoContabil.post;
               dm.CDSLctoContabil.applyupdates(0);
               CDSContaPagarCTPLCTOCONTABILDESCONTO.AsInteger := dm.CDSLctoContabilLCTNUMERO.asinteger;
          end;

          if CDSContaPagarCTPJURO.asfloat > 0 then
          begin
               if CDSContaPagarCTPLCTOCONTABILJUROS.asinteger = 0 then
                    dm.CDSLctoContabil.append
               else
               begin
                    if dm.CDSLctoContabil.locate('LCTNUMERO', CDSContaPagarCTPLCTOCONTABILJUROS.AsInteger, []) then
                         dm.CDSLctoContabil.edit
                    else
                         dm.CDSLctoContabil.append;
               end;
               dm.CDSLctoContabilLCTDATA.asdatetime := CDSContaPagarCTPLIQUIDACAO.asdatetime;
               dm.CDSLctoContabilLCTDEBITO.asstring := dm.CDSFormaPgtoFORCONTAJURODEBITO.asstring;
               dm.CDSLctoContabilLCTCREDITO.asstring := dm.CDSFormaPgtoFORCONTAJUROCREDITO.asstring;
               try
                    dm.CDSLctoContabilLCTDOCUMENTO.Asinteger := CDSContaPagarCTPDOCUMENTO.asinteger;
               except end;
               dm.CDSLctoContabilLCTHISTPADRAO.asinteger := dm.CDSFormaPgtoFORHISTPADRAOJURO.asinteger;
               dm.CDSLctoContabilLCTCOMPLEMENTO.asstring := CDSContaPagarCTPFORNECEDOR.asstring; // + '-' + CDSMensMENALUNO.DisplayText;
               dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := dm.CDSPlanoNegociosPLANEGCOD.asinteger;
               dm.CDSLctoContabilLCTVALOR.asfloat := CDSContaPagarCTPJuro.asfloat;
               dm.CDSLctoContabil.post;
               dm.CDSLctoContabil.applyupdates(0);
               CDSContaPagarCTPLCTOCONTABILJUROS.AsInteger := dm.CDSLctoContabilLCTNUMERO.asinteger;
          end;

          dm.CDSLctoContabil.close;
          dm.cdscontabil.close;

          CDSContaPagar.Post;
          CDSContaPagar.ApplyUpdates(0);
     end;

begin
     try
          strtodate(txtdatapagamento.text);
     except
          showmessage('Campo data de pagamento obrigatório!');
          txtdatapagamento.setfocus;
          exit;
     end;

     testa_data(CDSContaPagarCTPLIQUIDACAO.asdatetime);
     if (CDSContaPagarCTPLIQUIDACAO.asdatetime < strtodate(valor_parametro(7))) then
     begin
          showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;
     if (CDSContaPagarCTPLIQUIDACAO.asdatetime > strtodate(valor_parametro(8))) then
     begin
          showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;

     CDSContaPagarCTPSALDO.AsFloat := CDSContaPagarCTPSALDO.AsFloat - CDSContaPagarliquido.AsFloat;
     if CDSContaPagarCTPSALDO.AsFloat < 0 then
          CDSContaPagarCTPSALDO.AsFloat := 0; 
     CDSContaPagar.Post;
     CDSContaPagar.ApplyUpdates(0);

     if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S' then
     begin
          if application.messagebox('Deseja lançar na contabilidade?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               Lanca_Contabilidade;
     end
     else
          Lanca_Contabilidade;
     Showmessage('Pagamento realizado com Sucesso!');

     CDSContaPagar.close;

     PanContaPagar.Enabled := false;
     BtnBaixar.Enabled := false;
     BtnCancelar.Enabled := false;
     txtdocumento.Clear;
     txtserie.Clear;     
     txtcodfornecedor.setfocus;
end;

procedure TFcontaPagarBaixa.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFcontaPagarBaixa.txtcodfornecedorKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtcodfornecedor then
               btnfornecedor.click;
          if sender = txtformapgto then
               btnformapgto.click;
     end;
end;

procedure TFcontaPagarBaixa.btncancelarClick(Sender: TObject);
begin
     CDSContaPagar.close;
     PanContaPagar.enabled := false;
     BtnBaixar.Enabled := false;
     BtnCancelar.Enabled := false;
     txtcodfornecedor.setfocus;
end;

procedure TFcontaPagarBaixa.CDSContaPagarCalcFields(DataSet: TDataSet);
begin
     CDSContaPagarliquido.asfloat := CDSContaPagarCTPVALOR.asfloat + CDSContaPagarCTPJURO.asfloat - CDSContaPagarCTPMULTA.asfloat;
end;

procedure TFcontaPagarBaixa.btnformapgtoClick(Sender: TObject);
begin
     if Application.FindComponent('FFormaPgto') <> nil then
          FFormaPgto.Close;

     try
          fformapgto := tfformapgto.create(self);
          FFormaPgto.FormStyle := fsNormal;
          fformapgto.Visible := false;
          fformapgto.BtnFiltro.click;
          fformapgto.showmodal;
          CDSContaPagarCTPFORMAPGTO.asinteger := dm.CDSFormaPgtoFORCOD.asinteger;
     finally
          fformapgto.release;
          fformapgto := nil;
          fformapgto.free;
     end;
end;

procedure TFcontaPagarBaixa.SKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          BtnBaixar.Click;

end;

procedure TFcontaPagarBaixa.txtrecebEnter(Sender: TObject);
begin
     if trim(txtreceb.Text) = '' then
          CDSContaPagarCTPUSUARIO.asstring := valor_parametro(10);
end;

procedure TFcontaPagarBaixa.txtcodfornecedorExit(Sender: TObject);
begin
     txtnomefornecedor.clear;
     if trim(txtcodfornecedor.Text) <> '' then
     begin
          try
               strtoint(txtcodfornecedor.text);
          except
               showmessage('Campo fornecedor inválido!');
               txtcodfornecedor.setfocus;
               exit;
          end;
          if not dm.CDSNetworking.active then
               dm.CDSNetworking.open;
          if dm.CDSNetworking.Locate('NETCOD', txtcodfornecedor.text, []) then
          begin
               txtnomefornecedor.text := dm.CDSNetworkingNETNOME.asstring;
          end
          else
          begin
               showmessage('Fornecedor não cadastrado!');
               txtcodfornecedor.setfocus;
               exit;
          end;
     end;
end;

procedure TFcontaPagarBaixa.txtformapgtoExit(Sender: TObject);
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

procedure TFcontaPagarBaixa.txtserieExit(Sender: TObject);
begin
     CDSContaPagar.close;
     try
          QContaPagar.ParamByName('Forn').asinteger := strtoint(txtcodfornecedor.text);
     except
          showmessage('Campo fornecedor inválido!');
          txtcodfornecedor.setfocus;
          exit;
     end;

     if not dm.CDSNetworking.active then
          dm.CDSNetworking.open;
     if not dm.CDSNetworking.Locate('NETCOD', txtcodfornecedor.text, []) then
     begin
          showmessage('Fornecedor não cadastrado!');
          txtcodfornecedor.setfocus;
          exit;
     end;

     try
          QContaPagar.ParamByName('DOCTO').asstring := txtdocumento.text;
          QContaPagar.ParamByName('SERIE').asstring := txtserie.text;
     except
          showmessage('Campo documento inválido!');
          txtdocumento.setfocus;
          exit;
     end;

     CDSContaPagar.open;

     if CDSContaPagar.IsEmpty then
     begin
          showmessage('Nenhum título encontrato para pagamento ou documento já pago!');
          txtcodfornecedor.setfocus;
          exit;
     end;

     CDSContaPagar.edit;

     PanContaPagar.Enabled := true;
     BtnBaixar.Enabled := true;
     BtnCancelar.Enabled := true;

     //if trim(valor_parametro(11)) <> '0' then
     //     CDSMensMENFORMAPGTO.AsInteger := strtoint(valor_parametro(11));
end;

end.
