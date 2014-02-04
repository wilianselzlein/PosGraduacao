unit UContaPagar;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSMaskEdit, Buttons,DateUtils, WSDBComboBox;

type
     TFContaPagar = class(TForm)
          lbltitulo: TLabel;
          ToolBarNavegacao: TToolBar;
          BtnPrimeiro: TToolButton;
          BtnAnterior: TToolButton;
          BtnProximo: TToolButton;
          BtnUltimo: TToolButton;
          ToolButton10: TToolButton;
          BtnIncluir: TToolButton;
          btnnovopadrao: TToolButton;
          BtnAlterar: TToolButton;
          BtnExcluir: TToolButton;
          ToolButton14: TToolButton;
          BtnImprimir: TToolButton;
          btnhtml: TToolButton;
          btnexcel: TToolButton;
          ToolButton19: TToolButton;
          btndesconectar: TToolButton;
          BtnFiltro: TToolButton;
          ToolButton22: TToolButton;
          btnexportar: TToolButton;
          btnimportar: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          PageControl: TPageControl;
          TabConsulta: TTabSheet;
          TabCadastro: TTabSheet;
          Label1: TLabel;
          Label2: TLabel;
          DataSource: TDataSource;
    txtcod: TWSDBEdit;
          txtdata: TWSDBEdit;
          WSInformacao: TWSInformacao;
          BtnCancelar: TToolButton;
          BtnSalvar: TToolButton;
          ToolButton4: TToolButton;
          PanPesquisa: TPanel;
          Label4: TLabel;
          txtpesquisa: TWSEdit;
          Label11: TLabel;
    txtcodfornecedor: TWSDBEdit;
    txtfornecedor: TWSDBEdit;
    btnfornecedor: TSpeedButton;
    txtusuario: TWSDBEdit;
          Label16: TLabel;
          RLReport: TRLReport;
          RLBand3: TRLBand;
          RLLabel1: TRLLabel;
          RLBand4: TRLBand;
          RLLabel2: TRLLabel;
          RLLabel3: TRLLabel;
          RLLabel4: TRLLabel;
          RLBand5: TRLBand;
          RLDBText7: TRLDBText;
          RLDBText8: TRLDBText;
          RLDBText9: TRLDBText;
          Label14: TLabel;
    btnbanco: TSpeedButton;
    txtcodbanco: TWSDBEdit;
    txtbanco: TWSDBEdit;
          RLLabel5: TRLLabel;
          RLBand1: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
    btnfiltrobanco: TSpeedButton;
    txtfiltrobanco: TWSEdit;
          Label24: TLabel;
          Label25: TLabel;
    txtfiltrofornecedor: TWSEdit;
    btnfiltrofornecedor: TSpeedButton;
          RLLabel7: TRLLabel;
          RLDBText12: TRLDBText;
          RLLabel9: TRLLabel;
          RLDBText14: TRLDBText;
          RLBand6: TRLBand;
          RLLabel10: TRLLabel;
          RLDBResult1: TRLDBResult;
          RLSystemInfo1: TRLSystemInfo;
          DBGrid: TDBGrid;
          ToolButton2: TToolButton;
          RLDBText6: TRLDBText;
          RLDBText15: TRLDBText;
          Label7: TLabel;
          Label8: TLabel;
          txtdataini: TWSMaskEdit;
          txtdatafin: TWSMaskEdit;
          RLLabel8: TRLLabel;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
    txtnomebanco: TWSEdit;
    txtnomefornecedor: TWSEdit;
          Label10: TLabel;
    txtobs: TWSDBEdit;
    Label6: TLabel;
    WSDBEdit3: TWSDBEdit;
    Label12: TLabel;
    WSDBEdit4: TWSDBEdit;
    Label3: TLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText10: TRLDBText;
    txtliberado: TWSDBComboBox;
    Label5: TLabel;
    WSDBComboBox1: TWSDBComboBox;
    Label9: TLabel;
    WSDBEdit2: TWSDBEdit;
    WSDBEdit5: TWSDBEdit;
    Label13: TLabel;
    WSDBEdit6: TWSDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    WSDBEdit7: TWSDBEdit;
    WSDBEdit8: TWSDBEdit;
    Label19: TLabel;
    txtsaldo: TWSDBEdit;
    WSDBEdit10: TWSDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    btnconta: TSpeedButton;
    txtcodconta: TWSDBEdit;
    txtconta: TWSDBEdit;
    Label22: TLabel;
    txtsituacao: TWSDBEdit;
    RLLabel6: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    btnbaixarmensalidade: TSpeedButton;
    Label15: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    btnapagar: TSpeedButton;
    btnapagarvcto: TSpeedButton;
    btnapagarliquid: TSpeedButton;
    btnapagaremissao: TSpeedButton;
          procedure BtnPrimeiroClick(Sender: TObject);
          procedure BtnAnteriorClick(Sender: TObject);
          procedure BtnProximoClick(Sender: TObject);
          procedure BtnUltimoClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure BtnIncluirClick(Sender: TObject);
          procedure btnnovopadraoClick(Sender: TObject);
          procedure BtnAlterarClick(Sender: TObject);
          procedure BtnExcluirClick(Sender: TObject);
          procedure BtnSalvarClick(Sender: TObject);
          procedure BtnCancelarClick(Sender: TObject);
          procedure btndesconectarClick(Sender: TObject);
          procedure BtnFiltroClick(Sender: TObject);
          procedure btnexportarClick(Sender: TObject);
          procedure btnimportarClick(Sender: TObject);
          procedure btnhtmlClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure txtcodKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnexcelClick(Sender: TObject);
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnfornecedorClick(Sender: TObject);
          procedure btnbancoClick(Sender: TObject);
          procedure btnfiltrobancoClick(Sender: TObject);
          procedure btnfiltrofornecedorClick(Sender: TObject);
          procedure DBGridDblClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure txtdatafinExit(Sender: TObject);
          procedure txtfiltrobancoExit(Sender: TObject);
          procedure txtfiltrofornecedorExit(Sender: TObject);
    procedure btncontaClick(Sender: TObject);
    procedure btnbaixarmensalidadeClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure btnapagarvctoClick(Sender: TObject);
    procedure btnapagaremissaoClick(Sender: TObject);
    procedure btnapagarliquidClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FContaPagar: TFContaPagar;

implementation

uses UDM, UMenu, UNetWorking, UBanco, UPlanoConta, USenha,
  UContaPagarBaixa, UFuncoes;

{$R *.dfm}

procedure TFContaPagar.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFContaPagar.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFContaPagar.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFContaPagar.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFContaPagar.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFContaPagar.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as TForm, true);
     DataSource.DataSet.append;
     dm.CDSContaPagarCTPCADASTRO.AsDateTime := Date;
     dm.CDSContaPagarCTPEMISSAO.AsDateTime := Date;
     dm.CDSContaPagarCTPVENCIMENTO.AsDateTime := Date + 30;
     dm.CDSContaPagarCTPLIBERADO.AsString := 'NAO';
     dm.CDSContaPagarCTPUSUARIO.AsString := lUsuario;
     dm.CDSContaPagarCTPSITUACAO.AsString := 'ABERTO';
     dm.CDSContaPagarCTPSALDO.AsFloat := 0;

     txtliberado.readonly := dm.CDSUsuarioUSUCOORDENADOR.asString <> 'S';
end;

procedure TFContaPagar.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, true);
     end;

     dm.CDSContaPagarCTPLIBERADO.AsString := 'NAO';
     dm.CDSContaPagarCTPUSUARIO.AsString := lUsuario;
     dm.CDSContaPagarCTPSITUACAO.AsString := 'ABERTO';
     txtliberado.readonly := dm.CDSUsuarioUSUCOORDENADOR.asString <> 'S';     
end;

procedure TFContaPagar.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if DataSource.DataSet.Active then
     begin
          if (dm.CDSContaPagarCTPEMISSAO.asdatetime < strtodate(valor_parametro(7))) then
          begin
               showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
               if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
          end;
          if (dm.CDSContaPagarCTPEMISSAO.asdatetime > strtodate(valor_parametro(8))) then
          begin
               showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
               if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
          end;

          if dm.CDSContaPagarCTPEMISSAO.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime then
          begin
               if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S' then
               begin
                    if application.messagebox('Data menor que a do encerramento contábil, deseja continuar?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mrno then
                         exit;
               end
               else
               begin
                    showmessage('Data menor que o encerramento contábil! Data: ' + dm.CDSInstitutoINSDATAENCCONTABIL.asstring);
                    exit;
               end;
          end;
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, false);
          DataSource.DataSet.Edit;
          txtliberado.readonly := dm.CDSUsuarioUSUCOORDENADOR.asString <> 'S';
     end;
end;

procedure TFContaPagar.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    if (dm.CDSContaPagarCTPEMISSAO.asdatetime < strtodate(valor_parametro(7))) then
                    begin
                         showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
                         if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
                    end;
                    if (dm.CDSContaPagarCTPEMISSAO.asdatetime > strtodate(valor_parametro(8))) then
                    begin
                         showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
                         if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
                    end;

                    if dm.CDSContaPagarCTPEMISSAO.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime then
                    begin
                         if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S' then
                         begin
                              if application.messagebox('Data menor que a do encerramento contábil, deseja continuar?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mrno then
                                   exit;
                         end
                         else
                         begin
                              showmessage('Data menor que o encerramento contábil! Data: ' + dm.CDSInstitutoINSDATAENCCONTABIL.asstring);
                              exit;
                         end;
                    end;

                    try
                         DataSource.DataSet.Delete;
                         (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFContaPagar.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);

     testa_data(dm.CDSTransitoTRARETIRADA.asdatetime);

     if (dm.CDSContaPagarCTPEMISSAO.asdatetime < strtodate(valor_parametro(7))) then
     begin
          showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;
     if (dm.CDSContaPagarCTPEMISSAO.asdatetime > strtodate(valor_parametro(8))) then
     begin
          showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(lbltitulo.parent as TForm);
end;

procedure TFContaPagar.BtnCancelarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.Cancel;
     Navegar(lbltitulo.parent as TForm);
end;

procedure TFContaPagar.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFContaPagar.BtnFiltroClick(Sender: TObject);
begin
     if txtdataini.text <> '  /  /    ' then
     begin
          try
               strtodate(txtdataini.text);
          except
               showmessage('Campo data inicial inválido!');
               txtdataini.setfocus;
               exit;
          end;
     end;
     if txtdatafin.text <> '  /  /    ' then
     begin
          try
               strtodate(txtdatafin.text);
          except
               showmessage('Campo data final inválido!');
               txtdatafin.setfocus;
               exit;
          end;
     end;

     DataSource.DataSet.close;
     with dm.QContaPagar.sql do
     begin
          clear;
          add('SELECT * FROM TCONTAPAGAR');
          add('WHERE CTPCOD > 0');
          if txtdataini.text <> '  /  /    ' then
               add('AND CTPVENCIMENTO >= :dataini');
          if txtdatafin.text <> '  /  /    ' then
               add('AND CTPVENCIMENTO <= :datafin');
          if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(CTPCOD) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          if trim(txtfiltrofornecedor.text) <> '' then
               add('AND CTPFORNECEDOR = ' + trim(txtfiltrofornecedor.text));
          if trim(txtfiltrobanco.text) <> '' then
               add('AND CTPBANCO = ' + trim(txtfiltrobanco.text));
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     if txtdataini.text <> '  /  /    ' then
          dm.QContaPagar.parambyname('dataini').asdate := strtodate(txtdataini.text);
     if txtdatafin.text <> '  /  /    ' then
          dm.QContaPagar.parambyname('datafin').asdate := strtodate(txtdatafin.text);
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFContaPagar.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela], [Datasource.dataset as TClientDataSet]);
end;

procedure TFContaPagar.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
end;

procedure TFContaPagar.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFContaPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if (datasource.DataSet.State = dsinsert) or
          (datasource.DataSet.State = dsedit) then
     begin
          showmessage('Impossível sair, você esta em modo de edição!');
          action := canone;
          exit;
     end;
     salva_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm));
     salva_propriedades_tela((sender as tform).name, sender as TForm);
     //(sender as tform).Hide;
     //limpa_edits(sender as tform);
     action := cafree;
end;

procedure TFContaPagar.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     if not local then
     begin
          txtdataini.text := DateToStr(IncMonth(date, -1));
          txtdatafin.text := DateToStr(date);
     end;
     BtnFiltro.click;
     txtliberado.enabled := dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S';
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFContaPagar.txtcodKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
var
     passar: boolean;
begin
     if (key = 27) and (btncancelar.enabled = true) then
          btncancelar.click;
     if (Key = VK_F12) and (btnSalvar.enabled = true) then
          btnsalvar.Click;
     if key = vk_f3 then
     begin
          if (sender = txtcodfornecedor) or (sender = txtfornecedor) then
               btnfornecedor.click;
          if (sender = txtcodbanco) or (sender = txtbanco) then
               btnbanco.click;
          if (sender = txtcodconta) or (sender = txtconta) then
               btnconta.click;               
     end;
     if (key = 40) and (not (sender is tdblookupcombobox)) then
     begin
          if sender is TWSEDit then
          begin
               with sender as TWSEdit do
               begin
                    if EnterClicar then
                    begin
                         if btnProximo.enabled then
                              btnProximo.Click;
                         passar := false;
                    end
                    else
                    begin
                         passar := true;
                    end;
               end;
          end
          else
               passar := true;
          if passar then
               Perform(WM_nextDlgCtl, 0, 0);
     end;
     if (key = 13) then
     begin
          passar := true;
          if sender is TWSDBEDit then
          begin
               with sender as TWSDBEdit do
               begin
                    if EnterClicar then
                    begin
                         btnsalvar.click;
                         passar := false;
                    end
                    else
                    begin
                         passar := true;
                    end;
               end;
          end;
          if sender is TWSEDit then
          begin
               with sender as TWSEdit do
               begin
                    if EnterClicar then
                    begin
                         btnfiltro.click;
                    end;
                    passar := true;
               end;
          end;
          if passar then
               Perform(WM_nextDlgCtl, 0, 0);
     end;
     if (key = 38) and (not (sender is tdblookupcombobox)) then
     begin
          if sender is TWSEDit then
          begin
               with sender as TWSEdit do
               begin
                    if EnterClicar then
                    begin
                         if BtnAnterior.enabled then
                              BtnAnterior.Click;
                         passar := false;
                    end
                    else
                    begin
                         passar := true;
                    end;
               end;
          end
          else
               passar := true;
          if passar then
               Perform(WM_nextDlgCtl, 1, 0);
     end;
end;

procedure TFContaPagar.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 38) and (btnanterior.enabled = true) then
     begin
          btnanterior.Click;
          key := 0;
     end;
     if (key = 40) and (btnproximo.enabled = true) then
     begin
          btnproximo.Click;
          key := 0;
     end;
     if key = vk_f3 then
     begin
          if sender = txtfiltrobanco then
               btnfiltrobanco.click;
          if sender = txtfiltrofornecedor then
               btnfiltrofornecedor.click;
     end;
     if key = (13) then
     begin
          if sender is twsedit then
          begin
               if (sender as twsedit).enterclicar then
                    btnfiltro.click
               else
                    Perform(WM_nextDlgCtl, 0, 0);
          end;
          if sender is twsmaskedit then
               Perform(WM_nextDlgCtl, 0, 0);
          if sender is tDBGrid then
          begin
               if btnalterar.Enabled then
                    btnalterar.Click;
          end;
     end;
     if (key = vk_insert) and (btnIncluir.Enabled = True) then
          btnIncluir.Click;
     if (key = vk_f11) and (btnnovopadrao.Enabled = True) then
          btnnovopadrao.Click;
     if (key = vk_f10) and (btnAlterar.Enabled = True) then
          btnAlterar.Click;
     if tbKeyIsDown(VK_CONTROL) then
          if (key = vk_delete) and (BtnExcluir.Enabled = True) then
               BtnExcluir.Click;
     if (Key = VK_F12) and (btnSalvar.enabled = true) then
          btnsalvar.Click;
     if (key = 27) and (btnSair.Enabled = True) then
          btnSair.Click;
     if (key = 27) and (btncancelar.enabled = true) then
          btncancelar.click;
     if (key = vk_f8) and (btnImprimir.Enabled = True) then
          btnImprimir.Click;
     if (key = VK_F7) and (btndesconectar.Enabled = True) then
          btndesconectar.Click;
     if (key = VK_F9) and (btnFiltro.Enabled = True) then
          btnFiltro.Click;
     if (key = vk_f4) then
          btnexportar.click;
     if (key = vk_f2) then
          btnimportar.click;
     if (key = vk_f5) then
          PageControl.ActivePage := tabconsulta;
     if (key = vk_f6) then
          PageControl.ActivePage := TabCadastro;
end;

procedure TFContaPagar.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFContaPagar.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFContaPagar.btnfornecedorClick(Sender: TObject);
begin
     if Application.FindComponent('FNetworking') <> nil then
          FNetworking.Close;

     try
          FNetworking := tFNetworking.create(self);
          FNetworking.FormStyle := fsNormal;
          FNetworking.Visible := false;
          FNetworking.txtpesquisa.text := txtfornecedor.text;
          FNetworking.BtnFiltro.click;
          FNetworking.showmodal;
          dm.CDSContaPagarCTPFORNECEDOR.asstring := dm.CDSNetworkingNETCOD.asstring;
     finally
          FNetworking.release;
          FNetworking := nil;
          FNetworking.free;
     end;
end;

procedure TFContaPagar.btnbancoClick(Sender: TObject);
begin
     if Application.FindComponent('FBanco') <> nil then
          FBanco.Close;

     try
          FBanco := tFBanco.create(self);
          FBanco.FormStyle := fsNormal;
          FBanco.Visible := false;
          FBanco.txtpesquisa.text := txtbanco.text;
          FBanco.BtnFiltro.click;
          FBanco.showmodal;
          dm.CDSContaPagarCTPBANCO.asstring := dm.CDSBancoBANCOD.asstring;
     finally
          FBanco.release;
          FBanco := nil;
          FBanco.free;
     end;
end;

procedure TFContaPagar.btnfiltrobancoClick(Sender: TObject);
begin
     if Application.FindComponent('FBanco') <> nil then
          FBanco.Close;

     try
          FBanco := tFBanco.create(self);
          FBanco.FormStyle := fsNormal;
          FBanco.Visible := false;
          usuario('btnconsultar', FBanco.wsinformacao.programa);
          FBanco.BtnFiltro.click;
          FBanco.showmodal;
          txtfiltrobanco.text := dm.CDSBancoBANCOD.asstring;
     finally
          FBanco.release;
          FBanco := nil;
          FBanco.free;
     end;
end;

procedure TFContaPagar.btnfiltrofornecedorClick(Sender: TObject);
begin
     if Application.FindComponent('FNetworking') <> nil then
          FNetworking.Close;

     try
          FNetworking := tFNetworking.create(self);
          FNetworking.FormStyle := fsNormal;
          FNetworking.Visible := false;
          usuario('btnconsultar', FNetworking.wsinformacao.programa);
          FNetworking.BtnFiltro.click;
          FNetworking.showmodal;
          txtfiltrofornecedor.Text := dm.CDSNetworkingNETCOD.asstring;
     finally
          FNetworking.release;
          FNetworking := nil;
          FNetworking.free;
     end;
end;

procedure TFContaPagar.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFContaPagar.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFContaPagar.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFContaPagar.txtdatafinExit(Sender: TObject);
begin
     try
          txtpesquisa.setfocus;
     except
     end;
end;

procedure TFContaPagar.txtfiltrobancoExit(Sender: TObject);
begin
     txtnomebanco.clear;
     if trim(txtfiltrobanco.Text) <> '' then
     begin
          try
               strtoint(txtfiltrobanco.Text);
          except
               txtnomebanco.text := 'Campo banco Inválido!';
               txtfiltrobanco.setfocus;
               exit;
          end;
          if not dm.CDSBanco.active then
               dm.CDSBanco.open;
          if dm.CDSBanco.Locate('BANCOD', txtfiltrobanco.text, []) then
          begin
               txtnomebanco.text := dm.CDSBancoBANNOME.asstring;
          end
          else
          begin
               txtnomebanco.text := 'Banco não cadastrado!';
               txtfiltrobanco.setfocus;
               exit;
          end;
     end;
end;

procedure TFContaPagar.txtfiltrofornecedorExit(Sender: TObject);
begin
     txtnomefornecedor.clear;
     if trim(txtfiltrofornecedor.Text) <> '' then
     begin
          try
               strtoint(txtfiltrofornecedor.Text);
          except
               txtnomefornecedor.text := 'Campo fornecedor Inválido!';
               txtfiltrofornecedor.setfocus;
               exit;
          end;
          if not dm.CDSNetworking.active then
               dm.CDSNetworking.open;
          if dm.CDSNetworking.Locate('NETCOD', txtfiltrofornecedor.text, []) then
          begin
               txtnomefornecedor.text := dm.CDSNetworkingNETCOD.asstring;
          end
          else
          begin
               txtnomefornecedor.text := 'Fornecedor não cadastrado!';
               txtfiltrofornecedor.setfocus;
               exit;
          end;
     end;
end;

procedure TFContaPagar.btncontaClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          FPlanoConta := tFPlanoConta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          FPlanoConta.txtpesquisa.text := txtconta.text;
          FPlanoConta.BtnFiltro.click;
          FPlanoConta.showmodal;
          dm.CDSContaPagarCTPCONTA.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          FPlanoConta.release;
          FPlanoConta := nil;
          FPlanoConta .free;
     end;
end;

procedure TFContaPagar.btnbaixarmensalidadeClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
     begin
          if (dm.CDSContaPagarCTPLIBERADO.asString <> 'SIM') then
          begin
               if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S' then
               begin
                    if application.messagebox('Documento não liberado para pagamento, deseja continuar?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mrno then
                         exit;
               end
               else
               begin
                    showmessage('Documento não liberado para pagamento pelo coordenador!');
                    exit;
               end;
          end;

          if (dm.CDSContaPagarCTPVENCIMENTO.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime) and (dm.CDSContaPagarCTPSALDO.asfloat > 0) then
          begin
               if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S' then
               begin
                    if application.messagebox('Data menor que a do encerramento contábil, deseja continuar?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mrno then
                         exit;
               end
               else
               begin
                    showmessage('Data menor que o encerramento contábil! Data: ' + dm.CDSInstitutoINSDATAENCCONTABIL.asstring);
                    exit;
               end;
          end;
          if Application.FindComponent('FContaPagarBaixa') <> nil then
               FContaPagarBaixa.Close;

          try
               FContaPagarBaixa := tFContaPagarBaixa.create(self);
               FcontaPagarBaixa.FormStyle := fsNormal;
               FContaPagarBaixa.Visible := false;
               FContaPagarBaixa.txtcodfornecedor.Text := txtfiltrofornecedor.text;
               if trim(FContaPagarBaixa.txtcodfornecedor.Text) = '' then
                    FContaPagarBaixa.txtcodfornecedor.Text := dm.CDSContaPagarCTPFornecedor.asstring;
               FContaPagarBaixa.txtdocumento.Text := dm.CDSContaPagarCTPDOcumento.asstring;
               FContaPagarBaixa.txtserie.Text := dm.CDSContaPagarCTPSerie.asstring;               
               FContaPagarBaixa.showmodal;
          finally
               FContaPagarBaixa.Release;
               FContaPagarBaixa := nil;
               FContaPagarBaixa.free;
          end;
     end;
     btndesconectar.Click;
     BtnFiltro.Click;
end;

procedure TFContaPagar.btnapagarClick(Sender: TObject);
begin
     DM.CDSContaPagarCTPCADASTRO.Clear;
end;

procedure TFContaPagar.btnapagarvctoClick(Sender: TObject);
begin
     DM.CDSContaPagarCTPVENCIMENTO.Clear;
end;

procedure TFContaPagar.btnapagaremissaoClick(Sender: TObject);
begin
     DM.CDSContaPagarCTPEMISSAO.clear;
end;

procedure TFContaPagar.btnapagarliquidClick(Sender: TObject);
begin
     DM.CDSContaPagarCTPLIQUIDACAO.clear;
end;

end.
