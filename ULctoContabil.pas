unit ULctoContabil;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSMaskEdit, Buttons, DateUtils, WSDBMemo;

type
     TFLctoContabil = class(TForm)
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
          WSDBEdit1: TWSDBEdit;
          txtdata: TWSDBEdit;
          WSInformacao: TWSInformacao;
          BtnCancelar: TToolButton;
          BtnSalvar: TToolButton;
          ToolButton4: TToolButton;
          PanPesquisa: TPanel;
          Label4: TLabel;
          txtpesquisa: TWSEdit;
          Label11: TLabel;
          txtcoddebito: TWSDBEdit;
          txtdebito: TWSDBEdit;
          btndebito: TSpeedButton;
          txtvalor: TWSDBEdit;
          Label16: TLabel;
          Label17: TLabel;
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
          btncredito: TSpeedButton;
          txtcodcredito: TWSDBEdit;
          txtcredito: TWSDBEdit;
          RLLabel5: TRLLabel;
          RLDBText10: TRLDBText;
          RLBand1: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          btnfiltrocredito: TSpeedButton;
          txtfiltrocredito: TWSEdit;
          Label24: TLabel;
          Label25: TLabel;
          txtfiltrodebito: TWSEdit;
          btnfiltrodebito: TSpeedButton;
          Label3: TLabel;
          btnhistpadrao: TSpeedButton;
          txtcodhistpadrao: TWSDBEdit;
          txthistpadrao: TWSDBEdit;
          Label5: TLabel;
          btnplanoneg: TSpeedButton;
          txtcodplanoneg: TWSDBEdit;
          txtplanoneg: TWSDBEdit;
          RLLabel6: TRLLabel;
          RLDBText11: TRLDBText;
          RLLabel7: TRLLabel;
          RLDBText12: TRLDBText;
          RLBand6: TRLBand;
          RLLabel10: TRLLabel;
          RLDBResult1: TRLDBResult;
          btnimportartxt: TButton;
          RLSystemInfo1: TRLSystemInfo;
          DBGrid: TDBGrid;
          Label6: TLabel;
          btnfiltroplanoneg: TSpeedButton;
          txtfiltroplanoneg: TWSEdit;
          ToolButton2: TToolButton;
          RLDBText6: TRLDBText;
          RLDBText15: TRLDBText;
          btnduplicados: TButton;
          RLDBText16: TRLDBText;
          RLDBText17: TRLDBText;
          Label7: TLabel;
          Label8: TLabel;
          txtdataini: TWSMaskEdit;
          txtdatafin: TWSMaskEdit;
          Label9: TLabel;
          WSDBEdit2: TWSDBEdit;
          RLLabel8: TRLLabel;
          RLDBText13: TRLDBText;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          txtnomecredito: TWSEdit;
          txtnomedebito: TWSEdit;
          txtnomeplanoneg: TWSEdit;
          Label10: TLabel;
          btnidentificador: TSpeedButton;
          txtidentificadorcomplemento: TWSDBEdit;
    RLDBMemo1: TRLDBMemo;
    RLLabel9: TRLLabel;
    Splitter1: TSplitter;
    Label12: TLabel;
    Label13: TLabel;
    txtvalorini: TWSEdit;
    txtvalorfin: TWSEdit;
    txtCompl: TWSEdit;
    Label15: TLabel;
    txtcomplemento: TDBRichEdit;
    DBRichEdit1: TDBRichEdit;
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
          procedure WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnexcelClick(Sender: TObject);
          procedure BtnImprimirClick(Sender: TObject);
          procedure btndebitoClick(Sender: TObject);
          procedure btncreditoClick(Sender: TObject);
          procedure btnfiltrocreditoClick(Sender: TObject);
          procedure btnfiltrodebitoClick(Sender: TObject);
          procedure btnhistpadraoClick(Sender: TObject);
          procedure btnplanonegClick(Sender: TObject);
          procedure DBGridDblClick(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure btnimportartxtClick(Sender: TObject);
          procedure btnfiltroplanonegClick(Sender: TObject);
          procedure btnduplicadosClick(Sender: TObject);
          procedure txtfiltroplanonegExit(Sender: TObject);
          procedure txtfiltrocreditoExit(Sender: TObject);
          procedure txtfiltrodebitoExit(Sender: TObject);
          procedure txtdataExit(Sender: TObject);
          procedure txtcoddebitoExit(Sender: TObject);
          procedure txtcodcreditoExit(Sender: TObject);
          procedure btnidentificadorClick(Sender: TObject);
    procedure txtcomplementoKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure txtvalorfinExit(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FLctoContabil: TFLctoContabil;
     data: string = '';

implementation

uses UDM, UMenu, UCidade, UPlanoConta, UHistPadrao,
     UPlanoNegocios, UIdentificador, UFuncoes;

{$R *.dfm}

procedure TFLctoContabil.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFLctoContabil.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFLctoContabil.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFLctoContabil.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFLctoContabil.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFLctoContabil.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as TForm, true);
     DataSource.DataSet.append;
     if data <> '' then
     begin
          dm.CDSLctoContabilLCTDATA.asdatetime := strtodate(data);
          //txtdata.ReadOnly := true;
          txtcoddebito.setfocus;
     end;
     dm.CDSLctoContabilLCTCREDITO.asstring := '14';
     dm.CDSLctoContabilLCTHISTPADRAO.asstring := '50';
     dm.CDSLctoContabilLCTPLANONEGOCIOS.AsInteger := 9999;
end;

procedure TFLctoContabil.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, true);
     end;
end;

procedure TFLctoContabil.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if DataSource.DataSet.Active then
     begin
          if (dm.CDSLctoContabilLCTDATA.asdatetime < strtodate(valor_parametro(7))) then
          begin
               showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
               if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
          end;
          if (dm.CDSLctoContabilLCTDATA.asdatetime > strtodate(valor_parametro(8))) then
          begin
               showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
               if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
          end;

          if dm.CDSLctoContabilLCTDATA.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime then
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
     end;
end;

procedure TFLctoContabil.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    if (dm.CDSLctoContabilLCTDATA.asdatetime < strtodate(valor_parametro(7))) then
                    begin
                         showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
                         if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
                    end;
                    if (dm.CDSLctoContabilLCTDATA.asdatetime > strtodate(valor_parametro(8))) then
                    begin
                         showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
                         if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
                    end;

                    if dm.CDSLctoContabilLCTDATA.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime then
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

procedure TFLctoContabil.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;

     if dm.CDSLctoContabilLCTVALOR.asfloat <= 0 then
     begin
          showmessage('Digite um valor maior que zero!');
          txtvalor.SetFocus;
          exit;
     end;
     testa_data(dm.CDSLctoContabilLCTDATA.asdatetime);

     if executasqlretorno('select planivel from tplanoconta where placodred = ' + dm.cdslctocontabillctdebito.asstring) <>
          executasqlretorno('select max(PLANIVEL) from TPlanoConta') then
     begin
          Showmessage('A conta débito não é uma conta de último nível!');
          txtcoddebito.setfocus;
          exit;
     end;

     if executasqlretorno('select planivel from tplanoconta where placodred = ' + dm.cdslctocontabillctcredito.asstring) <>
          executasqlretorno('select max(PLANIVEL) from TPlanoConta') then
     begin
          Showmessage('A conta crédito não é uma conta de último nível!');
          txtcodcredito.setfocus;
          exit;
     end;

     if (dm.CDSLctoContabilLCTDATA.asdatetime < strtodate(valor_parametro(7))) then
     begin
          showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;
     if (dm.CDSLctoContabilLCTDATA.asdatetime > strtodate(valor_parametro(8))) then
     begin
          showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;

     if DataSource.state = dsinsert then
          data := dm.CDSLctoContabilLCTDATA.AsString;

     while testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource) do
         DM.CDSLctoContabilLCTNUMERO.AsFloat := DM.CDSLctoContabilLCTNUMERO.AsFloat + 1;

     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(lbltitulo.parent as TForm);
end;

procedure TFLctoContabil.BtnCancelarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.Cancel;
     Navegar(lbltitulo.parent as TForm);
end;

procedure TFLctoContabil.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFLctoContabil.BtnFiltroClick(Sender: TObject);
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

     if trim(txtvalorini.text) <> '' then
     begin
          try
               strtofloat(txtvalorini.text);
          except
               showmessage('Campo valor inicial inválido!');
               txtvalorini.setfocus;
               exit;
          end;
     end;
     if trim(txtValorfin.text) <> '' then
     begin
          try
               strtofloat(txtvalorfin.text);
          except
               showmessage('Campo valor final inválido!');
               txtvalorfin.setfocus;
               exit;
          end;
     end;

     DataSource.DataSet.close;
     with dm.QLctoContabil.sql do
     begin
          clear;
          //CUIDAR NA TELA DE BAIXA DE MENSALIDADE
          add('select LCTNUMERO,LCTDATA,LCTDEBITO,LCTCREDITO,LCTHISTPADRAO,');
          add('LCTPLANONEGOCIOS,LCTVALOR,LCTORIGEM, credito.PLADESCRICAO as CONTACREDITO, debito.PLADESCRICAO as CONTADEBITO,');
          add('LCTDOCUMENTO, LCTEXCLUI, LCTPASSOU, LCTIDENTIFICADOR, IDENOME, LCTIDENTIFICADORCOMPLEMENTO, LCTCOMPLEMENTO, ');
          add('COMCOMPLEMENTO');
          add('from TLCTOCONTABIL');
          add('  left outer join TPLANOCONTA credito on LCTCREDITO = credito.PLACODRED');
          add('  left outer join TPLANOCONTA debito on LCTDEBITO = debito.PLACODRED');
          add('  left outer join TIDENTIFICADOR on LCTIDENTIFICADOR = IDECOD');
          add('  left outer join VCOMPLEMENTO on COMCODIGO = LCTNUMERO');
          add(' WHERE LCTNUMERO > 0');
          if txtdataini.text <> '  /  /    ' then
               add('AND LCTDATA >= :dataini');
          if txtdatafin.text <> '  /  /    ' then
               add('AND LCTDATA <= :datafin');
          if trim(txtvalorini.text) <> '' then
               add('AND LCTVALOR >= :valorini');
          if trim(txtvalorfin.text) <> '' then
               add('AND LCTVALOR <= :valorfin');
          if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(LCTCOMPLEMENTO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          if trim(txtCompl.text) <> '' then
               add('AND UPPER(LCTCOMPLEMENTO) LIKE UPPER(' + quotedstr('%' + txtCompl.text + '%') + ')');
          if ((trim(txtfiltrocredito.text) = trim(txtfiltrodebito.text)) and (trim(txtfiltrocredito.text) <> '')) then
               add('AND (LCTCREDITO = ' + trim(txtfiltrocredito.text) + ' OR LCTDEBITO = ' + trim(txtfiltrocredito.text) + ')')
          else
          begin
               if (trim(txtfiltrocredito.text) <> '') then
                    add('AND LCTCREDITO = ' + trim(txtfiltrocredito.text));
               if trim(txtfiltrodebito.text) <> '' then
                    add('AND LCTDEBITO = ' + trim(txtfiltrodebito.text));
          end;
          if trim(txtfiltroplanoneg.text) <> '' then
               add('AND LCTPLANONEGOCIOS = ' + trim(txtfiltroplanoneg.text));
          if uppercase(WSInformacao.Campo) = 'CONTACREDITO' then
               add('ORDER BY credito.PLADESCRICAO')
          else if uppercase(WSInformacao.Campo) = 'CONTADEBITO' then
               add('ORDER BY debito.PLADESCRICAO')
          else if uppercase(WSInformacao.Campo) = 'COMPLEMENTO' then
               add('ORDER BY LCTCOMPLEMENTO')
          else
               add('ORDER BY ' + WSInformacao.Campo);
     end;
     if txtdataini.text <> '  /  /    ' then
          dm.QLctoContabil.parambyname('dataini').asdate := strtodate(txtdataini.text);
     if txtdatafin.text <> '  /  /    ' then
          dm.QLctoContabil.parambyname('datafin').asdate := strtodate(txtdatafin.text);
     if trim(txtvalorini.text) <> '' then
          dm.QLctoContabil.parambyname('valorini').asFloat := strtofloat(txtvalorini.text);
     if trim(txtvalorfin.text) <> '' then
          dm.QLctoContabil.parambyname('valorfin').asFloat := strtofloat(txtvalorfin.text);

     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     TClientDataSet(DataSource.DataSet).IndexFieldNames := WSInformacao.Campo;
     DataSource.DataSet.last;
end;

procedure TFLctoContabil.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela], [Datasource.dataset as TClientDataSet]);
end;

procedure TFLctoContabil.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
end;

procedure TFLctoContabil.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFLctoContabil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if (datasource.DataSet.State = dsinsert) or
          (datasource.DataSet.State = dsedit) then
     begin
          showmessage('Impossível sair, você esta em modo de edição!');
          action := canone;
          exit;
     end;
     if FLctoCOntabil.txtpesquisa.Text <> '0' then
     begin
          salva_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm));
          salva_propriedades_tela((sender as tform).name, sender as TForm);
     end;
     //(sender as tform).Hide;
     //limpa_edits(sender as tform);
     action := cafree;
end;

procedure TFLctoContabil.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     carrega_propriedades_tela((sender as tform).name, sender as TForm);

     pagecontrol.activepageindex := 0;
     data := '';
     //if (not local) or (TipoSistema <> 'EMPRESARIAL') then
     //begin
          txtdataini.text := valor_parametro(17);
          txtdatafin.text := valor_parametro(18);

     if trim(txtdataini.text) = '/  /' then
          txtdataini.text := formatDateTime('dd/MM/yyyy',date);
     if trim(txtdatafin.text) = '/  /' then
          txtdatafin.text := formatDateTime('dd/MM/yyyy',date);

     //end;
     BtnFiltro.click;
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFLctoContabil.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
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
          if (sender = txtcoddebito) or (sender = txtdebito) then
               btndebito.click;
          if (sender = txtcodcredito) or (sender = txtcredito) then
               btncredito.click;
          if (sender = txtcodhistpadrao) or (sender = txthistpadrao) then
               btnhistpadrao.click;
          if (sender = txtcodplanoneg) or (sender = txtplanoneg) then
               btnplanoneg.click;
          //if (sender = txtcodidentificador) or (sender = txtidentificador) then
          //   btnidentificador.click;
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
          if not (sender is TwsDbmemo) then
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
          if not (sender is TwsDbmemo) then
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
          if not (sender is TwsDbmemo) then
               if passar then
                     Perform(WM_nextDlgCtl, 1, 0);
     end;
end;

procedure TFLctoContabil.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
          if sender = txtfiltrocredito then
               btnfiltrocredito.click;
          if sender = txtfiltrodebito then
               btnfiltrodebito.click;
          if sender = txtfiltroplanoneg then
               btnfiltroplanoneg.click;
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

procedure TFLctoContabil.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFLctoContabil.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFLctoContabil.btndebitoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          //fplanoconta.txtpesquisa.text := txtdebito.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSLctoContabilLctDebito.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFLctoContabil.btncreditoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          //fplanoconta.txtpesquisa.text := txtcredito.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSLctoContabilLctCredito.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFLctoContabil.btnfiltrocreditoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          txtfiltrocredito.text := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFLctoContabil.btnfiltrodebitoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoCOnta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          txtfiltrodebito.Text := dm.CDSPLanoContaPLaCODRed.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFLctoContabil.btnhistpadraoClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          fhistpadrao := tfhistpadrao.create(self);
          FHistPadrao.FormStyle := fsNormal;
          FHistPadrao.Visible := false;
          fhistpadrao.txtpesquisa.text := txthistpadrao.text;
          fhistpadrao.BtnFiltro.click;
          fhistpadrao.showmodal;
          dm.CDSLctoContabilLctHistPadrao.asinteger := dm.CDSHistPadraoHISCOD.asinteger;
     finally
          fhistpadrao.release;
          fhistpadrao := nil;
          fhistpadrao.free;
     end;
end;

procedure TFLctoContabil.btnplanonegClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoNegocios') <> nil then
          FPlanoNegocios.Close;

     try
          FPlanoNegocios := tFPlanoNegocios.create(self);
          FPlanoNegocios.FormStyle := fsNormal;
          FPlanoNegocios.Visible := false;
          FPlanoNegocios.txtpesquisa.text := txtplanoneg.text;
          FPlanoNegocios.BtnFiltro.click;
          FPlanoNegocios.showmodal;
          dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := dm.CDSPlanoNegociosPLANEGCOD.asinteger;
     finally
          FPlanoNegocios.release;
          FPlanoNegocios := nil;
          FPlanoNegocios.free;
     end;
end;

procedure TFLctoContabil.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFLctoContabil.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then
         DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFLctoContabil.btnimportartxtClick(Sender: TObject);
var memo: Tmemo;
     num, i: integer;
begin
     memo := Tmemo.Create(nil);
     memo.Name := 'MEMOIMPORT';
     memo.Parent := FLctoContabil;
     memo.ScrollBars := ssBoth;
     memo.Lines.LoadFromFile('c:\lcto.txt');
     dm.CDSLctoContabil.last;
     num := dm.CDSLctoContabillctnumero.asinteger;
     {while dm.CDSLctoContabil.recordcount > 0 do
          dm.CDSLctoContabil.delete;
     dm.CDSLctoContabil.applyupdates(0);}

     for i := 0 to memo.lines.Count - 1 do
     begin
          Application.ProcessMessages;

          {if strtodate(trim(copy(memo.Lines.Strings[i],0,10))) < strtodate('01/04/2007') then
          begin

               //lcto01
               dm.CDSLctoContabil.append;
               inc(num);
               dm.CDSLctoContabilLCTNUMERO.asinteger := num;
               dm.CDSLctoContabilLCTDATA.asdatetime := strtodate(trim(copy(memo.Lines.Strings[i],0,10)));
               dm.CDSLctoContabilLCTDEBITO.asstring := trim(copy(memo.Lines.Strings[i],27,4));
               dm.CDSLctoContabilLCTCREDITO.asstring := trim(copy(memo.Lines.Strings[i],31,4));
               dm.CDSLctoContabilLCTHISTPADRAO.asinteger := strtoint(trim(copy(memo.Lines.Strings[i],35,4)));
               dm.CDSLctoContabilLCTCOMPLEMENTO.asstring := trim(copy(memo.Lines.Strings[i],76,34));
               dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := strtoint(trim(copy(memo.Lines.Strings[i],22,5)));

               if (trim(copy(memo.Lines.Strings[i],122,9)) <> '###') and (trim(copy(memo.Lines.Strings[i],122,9)) <> '') then
                   dm.CDSLctoContabilLCTVALOR.asfloat := strtofloat(trim(buscatroca(copy(memo.Lines.Strings[i],122,9),'.','')));
               if (trim(copy(memo.Lines.Strings[i],131,9)) <> '###') and (trim(copy(memo.Lines.Strings[i],131,9)) <> '') then
                   dm.CDSLctoContabilLCTVALOR.asfloat := strtofloat(trim(buscatroca(copy(memo.Lines.Strings[i],131,9),'.','')));

               if not dm.CDSPlanoConta.Locate('PLACODRED', dm.CDSLctoContabilLCTDEBITO.asstring,[]) then
               begin
                    dm.CDSPlanoConta.append;
                    dm.CDSPlanoContaPLACODRED.asstring := dm.CDSLctoContabilLCTDEBITO.asstring;
                    dm.CDSPlanoContaPLADESCRICAO.asstring := 'IMPORTACAO';
                    dm.CDSPlanoConta.post;
                    dm.CDSPlanoConta.applyupdates(0);
                    //memo1.Lines.Add('Incluído Plano de Contas com código reduzido ' + dm.CDSLctoContabilLCTDEBITO.asstring + 'IMPORTACAO');
               end;
               if not dm.CDSPlanoConta.Locate('PLACODRED', dm.CDSLctoContabilLCTCREDITO.asstring,[]) then
               begin
                    dm.CDSPlanoConta.append;
                    dm.CDSPlanoContaPLACODRED.asstring := dm.CDSLctoContabilLCTCREDITO.asstring;
                    dm.CDSPlanoContaPLADESCRICAO.asstring := 'IMPORTACAO';
                    dm.CDSPlanoConta.post;
                    dm.CDSPlanoConta.applyupdates(0);
                    //memo1.Lines.Add('Incluído Plano de Contas com código reduzido ' + dm.CDSLctoContabilLCTCREDITO.asstring + 'IMPORTACAO');
               end;
               if not dm.CDSHistPadrao.Locate('HISCOD', dm.CDSLctoContabilLCTHISTPADRAO.asinteger,[]) then
               begin
                    dm.CDSHistPadrao.append;
                    dm.CDSHistPadraoHISCOD.asinteger := dm.CDSLctoContabilLCTHISTPADRAO.asinteger;
                    dm.CDSHistPadraoHISNOME.asstring := 'IMPORTACAO';
                    dm.CDSHistPadrao.post;
                    dm.CDSHistPadrao.applyupdates(0);
                    //memo1.Lines.Add('Incluído Hist. Padrão com código ' + dm.CDSLctoContabilLCTHISTPADRAO.asstring + 'IMPORTACAO');
               end;
               if not dm.CDSPlanoNegocios.Locate('PLANEGCOD', dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger,[]) then
               begin
                    dm.CDSPlanoNegocios.append;
                    dm.CDSPlanoNegociosPLANEGCOD.asinteger := dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger;
                    dm.CDSPlanoNegociosPLANEGNOME.asstring := 'IMPORTACAO';
                    dm.CDSPlanoNegocios.post;
                    dm.CDSPlanoNegocios.applyupdates(0);
                    //memo1.Lines.Add('Incluído Plano de Neg. com código ' + dm.CDSLctoContabilLCTPLANONEGOCIOS.asstring + 'IMPORTACAO');
               end;

               dm.CDSLctoContabil.Post;
               dm.CDSLctoContabil.ApplyUpdates(0);  }

               //lcto02
          dm.CDSLctoContabil.append;
          inc(num);
          dm.CDSLctoContabilLCTNUMERO.asinteger := num;
          dm.CDSLctoContabilLCTDATA.asdatetime := strtodate(trim(copy(memo.Lines.Strings[i], 0, 11)));
          dm.CDSLctoContabilLCTDEBITO.asstring := trim(copy(memo.Lines.Strings[i], 36, 6));
          dm.CDSLctoContabilLCTCREDITO.asstring := trim(copy(memo.Lines.Strings[i], 42, 7));
          dm.CDSLctoContabilLCTHISTPADRAO.asinteger := strtoint(trim(copy(memo.Lines.Strings[i], 49, 5)));
          dm.CDSLctoContabilLCTCOMPLEMENTO.asstring := trim(copy(memo.Lines.Strings[i], 94, 39));
          dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger := strtoint(trim(copy(memo.Lines.Strings[i], 32, 5)));

          if (trim(copy(memo.Lines.Strings[i], 141, 10)) <> '###') and (trim(copy(memo.Lines.Strings[i], 141, 10)) <> '') then
               dm.CDSLctoContabilLCTVALOR.asfloat := strtofloat(trim(buscatroca(copy(memo.Lines.Strings[i], 141, 10), '.', '')));
          if (trim(copy(memo.Lines.Strings[i], 151, 9)) <> '###') and (trim(copy(memo.Lines.Strings[i], 151, 9)) <> '') then
               dm.CDSLctoContabilLCTVALOR.asfloat := strtofloat(trim(buscatroca(copy(memo.Lines.Strings[i], 151, 9), '.', '')));

          if not dm.CDSPlanoConta.Locate('PLACODRED', dm.CDSLctoContabilLCTDEBITO.asstring, []) then
          begin
               dm.CDSPlanoConta.append;
               dm.CDSPlanoContaPLACODRED.asstring := dm.CDSLctoContabilLCTDEBITO.asstring;
               dm.CDSPlanoContaPLADESCRICAO.asstring := 'IMPORTACAO';
               dm.CDSPlanoConta.post;
               dm.CDSPlanoConta.applyupdates(0);
               //memo1.Lines.Add('Incluído Plano de Contas com código reduzido ' + dm.CDSLctoContabilLCTDEBITO.asstring + 'IMPORTACAO');
          end;
          if not dm.CDSPlanoConta.Locate('PLACODRED', dm.CDSLctoContabilLCTCREDITO.asstring, []) then
          begin
               dm.CDSPlanoConta.append;
               dm.CDSPlanoContaPLACODRED.asstring := dm.CDSLctoContabilLCTCREDITO.asstring;
               dm.CDSPlanoContaPLADESCRICAO.asstring := 'IMPORTACAO';
               dm.CDSPlanoConta.post;
               dm.CDSPlanoConta.applyupdates(0);
               //memo1.Lines.Add('Incluído Plano de Contas com código reduzido ' + dm.CDSLctoContabilLCTCREDITO.asstring + 'IMPORTACAO');
          end;
          if not dm.CDSHistPadrao.Locate('HISCOD', dm.CDSLctoContabilLCTHISTPADRAO.asinteger, []) then
          begin
               dm.CDSHistPadrao.append;
               dm.CDSHistPadraoHISCOD.asinteger := dm.CDSLctoContabilLCTHISTPADRAO.asinteger;
               dm.CDSHistPadraoHISNOME.asstring := 'IMPORTACAO';
               dm.CDSHistPadrao.post;
               dm.CDSHistPadrao.applyupdates(0);
               //memo1.Lines.Add('Incluído Hist. Padrão com código ' + dm.CDSLctoContabilLCTHISTPADRAO.asstring + 'IMPORTACAO');
          end;
          if not dm.CDSPlanoNegocios.Locate('PLANEGCOD', dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger, []) then
          begin
               dm.CDSPlanoNegocios.append;
               dm.CDSPlanoNegociosPLANEGCOD.asinteger := dm.CDSLctoContabilLCTPLANONEGOCIOS.asinteger;
               dm.CDSPlanoNegociosPLANEGNOME.asstring := 'IMPORTACAO';
               dm.CDSPlanoNegocios.post;
               dm.CDSPlanoNegocios.applyupdates(0);
               //memo1.Lines.Add('Incluído Plano de Neg. com código ' + dm.CDSLctoContabilLCTPLANONEGOCIOS.asstring + 'IMPORTACAO');
          end;

          dm.CDSLctoContabil.Post;
          dm.CDSLctoContabil.ApplyUpdates(0);
          {end;}

          application.ProcessMessages;
     end;
     showmessage('ok');
     memo.Free;
end;

procedure TFLctoContabil.btnfiltroplanonegClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoNegocios') <> nil then
          FPlanoNegocios.Close;

     try
          fplanonegocios := tfplanonegocios.create(self);
          FPlanoNegocios.FormStyle := fsNormal;
          FPlanoNegocios.Visible := false;
          usuario('btnconsultar', fplanonegocios.wsinformacao.programa);
          fplanonegocios.BtnFiltro.click;
          fplanonegocios.showmodal;
          txtfiltroplanoneg.Text := dm.CDSPLanoContaPLaCODRed.asstring;
     finally
          fplanonegocios.release;
          fplanonegocios := nil;
          fplanonegocios.free;
     end;
end;

procedure TFLctoContabil.btnduplicadosClick(Sender: TObject);
begin
     dm.CDSLctoContabil.last;
     while not dm.CDSLctoContabil.bof do
     begin
          Application.ProcessMessages;

          if (trim(dm.CDSLctoContabilLCTDATA.asstring) <> '') and (dm.CDSLctoContabilLCTPASSOU.asstring <> 'S') then
          begin
               execsql(' update tlctocontabil set lctpassou = ''S''' +
                    ' where lctnumero = ' + dm.CDSLctoContabilLCTNUMERO.asstring + ';');

               try
                    execsql(' update tlctocontabil set lctexclui = ''S''' +
                         ' where lctpassou <> ''S'' and lctnumero <> ' + dm.CDSLctoContabilLCTNUMERO.asstring +
                         ' and LCTDATA = ' + quotedstr(buscatroca(dm.CDSLctoContabilLCTDATA.asstring, '/', '.')) +
                         ' and LCTDEBITO = ' + dm.CDSLctoContabilLCTDEBITO.asstring +
                         ' and LCTCREDITO = ' + dm.CDSLctoContabilLCTCREDITO.asstring +
                         ' and LCTHISTPADRAO = ' + dm.CDSLctoContabilLCTHISTPADRAO.asstring +
                         ' and LCTPLANONEGOCIOS = ' + dm.CDSLctoContabilLCTPLANONEGOCIOS.asstring +
                         ' and LCTVALOR = ' + buscatroca(dm.CDSLctoContabilLCTVALOR.asstring, ',', '.') + ';');
               except
               end;
          end;
          dm.CDSLctoContabil.prior;
     end;
     dm.CDSLctoContabil.close;
     application.Terminate;
end;

procedure TFLctoContabil.txtfiltroplanonegExit(Sender: TObject);
begin
     txtnomeplanoneg.clear;
     if trim(txtfiltroplanoneg.Text) <> '' then
     begin
          try
               strtoint(txtfiltroplanoneg.Text);
          except
               txtnomeplanoneg.text := 'Campo Plano de Negócios Inválido!';
               txtfiltroplanoneg.setfocus;
               exit;
          end;
          if not dm.CDSPlanoNegocios.active then
               dm.CDSPlanoNegocios.open;
          if dm.CDSPlanoNegocios.Locate('PLANEGCOD', txtfiltroplanoneg.text, []) then
          begin
               txtnomeplanoneg.text := dm.CDSPlanoNegociosPLANEGNOME.asstring;
          end
          else
          begin
               txtnomeplanoneg.text := 'Plano de Negócios não cadastrado!';
               txtfiltroplanoneg.setfocus;
               exit;
          end;
     end;
end;

procedure TFLctoContabil.txtfiltrocreditoExit(Sender: TObject);
begin
     txtnomeCredito.clear;
     if trim(txtfiltroCredito.Text) <> '' then
     begin
          try
               strtoint(txtfiltroCredito.Text);
          except
               txtnomeCredito.text := 'Campo Crédito Inválido!';
               txtfiltroCredito.setfocus;
               exit;
          end;
          if not dm.CDSPlanoConta.active then
               dm.CDSPlanoConta.open;
          if dm.CDSPlanoConta.Locate('PLACODRED', txtfiltroCredito.text, []) then
          begin
               txtnomeCredito.text := dm.CDSPlanoContaPLADESCRICAO.asstring;
          end
          else
          begin
               txtnomeCredito.text := 'Conta Contábil não cadastrada!';
               txtfiltroCredito.setfocus;
               exit;
          end;
     end;
end;

procedure TFLctoContabil.txtfiltrodebitoExit(Sender: TObject);
begin
     txtnomeDebito.clear;
     if trim(txtfiltroDebito.Text) <> '' then
     begin
          try
               strtoint(txtfiltroDebito.Text);
          except
               txtnomeDebito.text := 'Campo Débito Inválido!';
               txtfiltroDebito.setfocus;
               exit;
          end;
          if not dm.CDSPlanoConta.active then
               dm.CDSPlanoConta.open;
          if dm.CDSPlanoConta.Locate('PLACODRED', txtfiltroDebito.text, []) then
          begin
               txtnomeDebito.text := dm.CDSPlanoContaPLADESCRICAO.asstring;
          end
          else
          begin
               txtnomeDebito.text := 'Conta Contábil não cadastrada!';
               txtfiltroDebito.setfocus;
               exit;
          end;
     end;

end;

procedure TFLctoContabil.txtdataExit(Sender: TObject);
begin
     if (dm.CDSLctoContabilLCTDATA.asString) = '' then
     begin
          showmessage('Digite a data do lançamento!');
          txtdata.setfocus;
          exit;
     end;
     testa_data(dm.CDSLctoContabilLCTDATA.asdatetime);
end;

procedure TFLctoContabil.txtcoddebitoExit(Sender: TObject);
begin
     if trim(dm.cdslctocontabillctdebito.asstring) = '' then
     begin
          Showmessage('Digite a conta débito!');
          txtcoddebito.setfocus;
          exit;
     end;

     if executasqlretorno('select planivel from tplanoconta where placodred = ' + dm.cdslctocontabillctdebito.asstring) <>
          executasqlretorno('select max(PLANIVEL) from TPlanoConta') then
     begin
          Showmessage('A conta débito não é uma conta de último nível!');
          txtcoddebito.setfocus;
          exit;
     end;
end;

procedure TFLctoContabil.txtcodcreditoExit(Sender: TObject);
begin
     if trim(dm.cdslctocontabillctcredito.asstring) = '' then
     begin
          Showmessage('Digite a conta crédito!');
          txtcodcredito.setfocus;
          exit;
     end;

     if executasqlretorno('select planivel from tplanoconta where placodred = ' + dm.cdslctocontabillctcredito.asstring) <>
          executasqlretorno('select max(PLANIVEL) from TPlanoConta') then
     begin
          Showmessage('A conta crédito não é uma conta de último nível!');
          txtcodcredito.setfocus;
          exit;
     end;
end;

procedure TFLctoContabil.btnidentificadorClick(Sender: TObject);
begin
     {if Application.FindComponent('FIdentificador') <> nil then
          FIdentificador.Close;

     try
         FIdentificador := TFIdentificador.create(self);
         FIdentificador.FormStyle := fsNormal;
         FIdentificador.Visible := false;
         FIdentificador.txtpesquisa.text := txtidentificador.text;
         FIdentificador.BtnFiltro.click;
         FIdentificador.showmodal;
         dm.CDSLctoContabilLCTIDENTIFICADOR.asinteger := dm.CDSIdentificadorIDECOD.asinteger;
     finally
         FIdentificador.release;
         FIdentificador := nil;
         FIdentificador.free;
     end;}
end;

procedure TFLctoContabil.txtcomplementoKeyPress(Sender: TObject; var Key: Char);
begin
     {if key = #13 then
          if DataSource.DataSet.State = dsinsert then
          begin
               //if dm.CDSLctoContabilLCTVALOR.AsFloat > 0 then
               //begin
               btnsalvar.Click;
               BtnIncluir.click;
               //end;
          end
          else
               btnsalvar.click;}
end;

procedure TFLctoContabil.FormResize(Sender: TObject);
begin
//     txtcomplemento.Width := FLctoContabil.Width - 100 - 40;
//     txtcomplemento.height := FLctoContabil.Height - 100 - 10;     
end;

procedure TFLctoContabil.txtvalorfinExit(Sender: TObject);
begin
     try
          txtpesquisa.setfocus;
     except
     end;
end;

end.
