unit UBanco;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSDBMemo, WSDBComboBox, Buttons;

type
     TFBanco = class(TForm)
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
          WSDBEdit2: TWSDBEdit;
          WSInformacao: TWSInformacao;
          BtnCancelar: TToolButton;
          BtnSalvar: TToolButton;
          ToolButton4: TToolButton;
          PanPesquisa: TPanel;
          Label4: TLabel;
          txtpesquisa: TWSEdit;
          txtagencia: TWSDBEdit;
          Label7: TLabel;
          RLReport: TRLReport;
          RLBand3: TRLBand;
          RLLabel1: TRLLabel;
          RLBand4: TRLBand;
          RLLabel2: TRLLabel;
          RLLabel3: TRLLabel;
          RLLabel4: TRLLabel;
          RLLabel5: TRLLabel;
          RLBand5: TRLBand;
          RLDBText7: TRLDBText;
          RLDBText8: TRLDBText;
          RLDBText9: TRLDBText;
          RLDBText10: TRLDBText;
          Label5: TLabel;
          Label6: TLabel;
          WSDBEdit5: TWSDBEdit;
          Label8: TLabel;
          Label9: TLabel;
          WSDBEdit6: TWSDBEdit;
          WSDBEdit7: TWSDBEdit;
          Label10: TLabel;
          WSDBEdit8: TWSDBEdit;
          RLDBText11: TRLDBText;
          RLLabel6: TRLLabel;
          RLDBText12: TRLDBText;
          RLLabel7: TRLLabel;
          RLLabel8: TRLLabel;
          RLDBText13: TRLDBText;
          RLBand1: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          Label3: TLabel;
          WSDBEdit3: TWSDBEdit;
          WSDBEdit9: TWSDBEdit;
          WSDBEdit4: TWSDBEdit;
          WSDBEdit10: TWSDBEdit;
          Label11: TLabel;
          WSDBEdit11: TWSDBEdit;
          WSDBEdit12: TWSDBEdit;
          WSDBEdit13: TWSDBEdit;
          Label12: TLabel;
          WSDBEdit20: TWSDBEdit;
          Label22: TLabel;
          RLSystemInfo1: TRLSystemInfo;
          DBGrid: TDBGrid;
          ToolButton2: TToolButton;
          RLDBText6: TRLDBText;
          RLDBText14: TRLDBText;
          Label24: TLabel;
          btnforma: TSpeedButton;
          txtcodforma: TWSDBEdit;
          txtforma: TWSDBEdit;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
    Label13: TLabel;
    WSDBEdit14: TWSDBEdit;
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
          procedure DBGridDblClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure btnformaClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FBanco: TFBanco;

implementation

uses UDM, UMenu, UFormaPgto, UFuncoes;

{$R *.dfm}

procedure TFBanco.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFBanco.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFBanco.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFBanco.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFBanco.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFBanco.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(FBanco, true);
     DataSource.DataSet.append;
end;

procedure TFBanco.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(FBanco, true);
     end;
end;

procedure TFBanco.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          DataSource.DataSet.Edit;
          Editar(FBanco, false);
     end;
end;

procedure TFBanco.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    integridade('MENBANCO', 'TMENSALIDADE', WSDBEdit1.text);
                    try
                         DataSource.DataSet.Delete;
                         (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFBanco.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FBanco);
end;

procedure TFBanco.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FBanco);
end;

procedure TFBanco.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFBanco.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     with dm.qbanco.sql do
     begin
          clear;
          add('SELECT BANCOD,BANNOME,BANAGENCIA,BANCONTA,');
          add('BANCONTATO,BANFONE,BANFAX,BANEMAIL,BANCELULAR,');
          add('BANAGENCIADIGITO,BANNOMENOBANCO,BANCONTANUMERO,BANCONTADIGITO,');
          add('BANCEDENTECODIGO,BANCEDENTEDIGITO,BANCARTEIRA,BANULTIMORETORNO,');
          add('BANOPERACAO,BANESPECIE,BANEMISSAO,BANDIAMULTA,BANDIADESCONTO,');
          add('BANMULTACARENCIA,BANACEITE,BANLIMITECREDITO, BANMENSAGEM, BANFORMAPGTO');
          add('FROM TBANCO');
          add('WHERE BANCOD <> 0');
          if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(BANNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFBanco.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela], [Datasource.dataset as TClientDataSet]);
end;

procedure TFBanco.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
end;

procedure TFBanco.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFBanco.FormClose(Sender: TObject; var Action: TCloseAction);
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
     limpa_edits(sender as tform);
     action := cafree;
end;

procedure TFBanco.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     BtnFiltro.click;
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFBanco.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
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
          if (sender = txtcodforma) or (sender = txtforma) then
               btnforma.click;
     end;
     if (key = 40) and (not (sender is TWSDBComboBox)) then
     begin
          passar := true;
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
          end;
          if passar then
               Perform(WM_nextDlgCtl, 0, 0);
     end;
     if (key = 13) then
     begin
          passar := false;
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
          if sender is TWSDBComboBox then
          begin
               with sender as TWSDBComboBox do
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
          if passar then
               Perform(WM_nextDlgCtl, 0, 0);
     end;
     if (key = 38) and (not (sender is TWSDBComboBox)) and (not (sender is twsdbmemo)) then
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

procedure TFBanco.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 38) then
     begin
          if (sender = txtpesquisa) and (btnanterior.enabled = true) and (datasource.dataset.active) then
          begin
               btnanterior.Click;
               key := 0;
          end
          else
               Perform(WM_nextDlgCtl, 1, 0);
     end;
     if (key = 40) then
     begin
          if (sender = txtpesquisa) and (btnproximo.enabled = true) and (datasource.dataset.active) then
          begin
               btnproximo.Click;
               key := 0;
          end
          else
               Perform(WM_nextDlgCtl, 0, 0);
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

procedure TFBanco.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFBanco.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFBanco.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFBanco.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFBanco.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFBanco.btnformaClick(Sender: TObject);
begin
     if Application.FindComponent('FFormaPgto') <> nil then
          FFormaPgto.Close;

     try
          fformapgto := tfformapgto.create(self);
          FFormaPgto.FormStyle := fsNormal;
          FFormaPgto.Visible := false;
          fformapgto.txtpesquisa.text := txtforma.text;
          fformapgto.BtnFiltro.click;
          fformapgto.showmodal;
          dm.CDSBancoBANFORMAPGTO.asinteger := dm.CDSFormaPgtoFORCOD.asinteger;
     finally
          fformapgto.release;
          fformapgto := nil;
          fformapgto.free;
     end;
end;

end.
