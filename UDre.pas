unit UDre;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSComboBox, dateutils, Buttons;

type
     TFDre = class(TForm)
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
          txtdre: TWSDBEdit;
          txtnome: TWSDBEdit;
          WSInformacao: TWSInformacao;
          BtnCancelar: TToolButton;
          BtnSalvar: TToolButton;
          ToolButton4: TToolButton;
          PanPesquisa: TPanel;
          Label4: TLabel;
          txtpesquisa: TWSEdit;
          Panel1: TPanel;
          ToolItem: TToolBar;
          btnitemsalvar: TToolButton;
          btnitemexcluir: TToolButton;
          btnconta: TSpeedButton;
          DBGrid: TDBGrid;
          ScrollBox1: TScrollBox;
          ScrollBox2: TScrollBox;
          JvDBGrid1: TDBGrid;
          JvDBGrid4: TDBGrid;
          txtitem: TWSEdit;
          Label5: TLabel;
          txtcodconta: TWSEdit;
          Label3: TLabel;
          JvDBGrid2: TDBGrid;
          JvDBGrid3: TDBGrid;
          ToolConta: TToolBar;
          btnsalvarconta: TToolButton;
          btnexcluirconta: TToolButton;
          txtitemoperacao: TWSComboBox;
          txtitemdestacar: TWSComboBox;
          Label6: TLabel;
          Label7: TLabel;
          txtcontaoperacao: TWSComboBox;
          Label8: TLabel;
          ToolButton2: TToolButton;
          RLReport: TRLReport;
          RLBand17: TRLBand;
          RLDBText31: TRLDBText;
          RLDBImage5: TRLDBImage;
          RLDBText32: TRLDBText;
          RLDBText33: TRLDBText;
          RLDBText34: TRLDBText;
          RLDBText35: TRLDBText;
          RLBand19: TRLBand;
          RLTitulo: TRLLabel;
          RLSystemInfo1: TRLSystemInfo;
          RLBand20: TRLBand;
          RL1: TRLLabel;
          RL2: TRLLabel;
          RL3: TRLLabel;
          RL4: TRLLabel;
          RL5: TRLLabel;
          RL6: TRLLabel;
          RL7: TRLLabel;
          RL8: TRLLabel;
          RL9: TRLLabel;
          RL10: TRLLabel;
          RL11: TRLLabel;
          RL12: TRLLabel;
          RLLabel18: TRLLabel;
          RLBand21: TRLBand;
          RLtxtNome: TRLDBText;
          RLTxtoperacao: TRLDBText;
          lbl1: TRLLabel;
          lbl2: TRLLabel;
          lbl3: TRLLabel;
          lbl4: TRLLabel;
          lbl5: TRLLabel;
          lbl6: TRLLabel;
          lbl7: TRLLabel;
          lbl8: TRLLabel;
          lbl9: TRLLabel;
          lbl10: TRLLabel;
          lbl11: TRLLabel;
          lbl12: TRLLabel;
          lblsubtotal: TRLLabel;
          RLDBText11: TRLDBText;
          RLDBText6: TRLDBText;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          panimpressao: TPanel;
          btngerar: TSpeedButton;
          Label61: TLabel;
          chk1: TCheckBox;
          chk2: TCheckBox;
          chk4: TCheckBox;
          chk3: TCheckBox;
          chk6: TCheckBox;
          chk5: TCheckBox;
          chk7: TCheckBox;
          chk8: TCheckBox;
          chk10: TCheckBox;
          chk9: TCheckBox;
          chk12: TCheckBox;
          chk11: TCheckBox;
          Label9: TLabel;
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
          procedure txtdreKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnexcelClick(Sender: TObject);
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnitemexcluirClick(Sender: TObject);
          procedure btnitemsalvarClick(Sender: TObject);
          procedure chkrelatorioKeyPress(Sender: TObject; var Key: Char);
          procedure btncontaClick(Sender: TObject);
          procedure DBGridDblClick(Sender: TObject);
          procedure DBGrid2DblClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure btnexcluircontaClick(Sender: TObject);
          procedure btnsalvarcontaClick(Sender: TObject);
          procedure RLtxtNomeBeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure btngerarClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FDre: TFDre;
     s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12: double;
     t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12: double;

implementation

uses UDM, UMenu, UPlanoConta, UFuncoes;

{$R *.dfm}

procedure TFDre.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFDre.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFDre.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFDre.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFDre.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.active = false then
          DataSource.DataSet.open;
     close;
end;

procedure TFDre.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar((lbltitulo.parent) as TForm, true);
     DataSource.DataSet.append;
end;

procedure TFDre.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar((lbltitulo.parent) as TForm, true);
     end;
end;

procedure TFDre.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          Editar((lbltitulo.parent) as TForm, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFDre.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         DataSource.DataSet.Delete;
                         (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFDre.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar((lbltitulo.parent) as TForm);
end;

procedure TFDre.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar((lbltitulo.parent) as TForm);
end;

procedure TFDre.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFDre.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     with dm.qDRE.sql do
     begin
          clear;
          add('SELECT DRECOD, DRENOME FROM TDRE');
          if trim(txtpesquisa.text) <> '' then
               add('WHERE UPPER(DRENOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFDre.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela, 'TDREITEM', 'TDRECONTA'], [Datasource.dataset as TClientDataSet, dm.CDSDreItem, dm.CDSDreConta]);
end;

procedure TFDre.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
     importar('TDREITEM', DataSource);
     importar('TDRECONTA', DataSource);
end;

procedure TFDre.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFDre.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFDre.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     BtnFiltro.click;
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFDre.txtdreKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
var
     passar: boolean;
begin
     if (key = 27) and (btncancelar.enabled = true) then
          btncancelar.click;
     if (Key = VK_F12) and (btnSalvar.enabled = true) then
          btnsalvar.Click;
     if key = vk_f3 then
          if sender = txtcodconta then
               btnconta.click;
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

procedure TFDre.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFDre.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFDre.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     panimpressao.visible := not panimpressao.visible;
end;

procedure TFDre.btnitemexcluirClick(Sender: TObject);
begin
     if (dm.CDSDreItem.Active = true) then
          if (dm.CDSDreItem.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         dm.CDSDreItem.Delete;
                         dm.CDSDreItem.ApplyUpdates(0);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFDre.btnitemsalvarClick(Sender: TObject);
var cod: integer;
begin
     if trim(txtitem.text) = '' then
     begin
          showmessage('Campo Item Obrigatório!');
          txtitem.setfocus;
          exit;
     end;
     dm.CDSDre.post;
     dm.CDSDre.applyupdates(0);
     dm.CDSDre.edit;
     dm.CDSDreItem.last;
     cod := dm.CDSDreItemDREITECOD.asinteger + 1;
     dm.CDSDreItem.append;
     dm.CDSDreItemDREITEDRE.AsInteger := dm.CDSDreDRECOD.asinteger;
     dm.CDSDreItemDREITECOD.asinteger := cod;
     dm.CDSDreItemDREITENOME.AsString := txtitem.text;
     dm.CDSDreItemDREITEOPERACAO.asstring := txtitemoperacao.Text;
     dm.CDSDreItemDREITEDESTACAR.asstring := txtitemdestacar.Text;
     dm.CDSDreItem.post;
     dm.CDSDreItem.applyupdates(-1);
     txtitem.clear;
     txtitem.setfocus;
end;

procedure TFDre.chkrelatorioKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          btnitemsalvar.click;
end;

procedure TFDre.btncontaClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          FPlanoConta := tFPlanoConta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          FPlanoConta.BtnFiltro.click;
          FPlanoConta.showmodal;
          txtcodconta.text := dm.cdsplanocontaplacodred.asstring;
     finally
          FPlanoConta.release;
          FPlanoConta := nil;
          FPlanoConta.free;
     end;
end;

procedure TFDre.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFDre.DBGrid2DblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFDre.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFDre.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFDre.btnexcluircontaClick(Sender: TObject);
begin
     if (dm.CDSDreConta.Active = true) then
          if (dm.CDSDreConta.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         dm.CDSDreConta.Delete;
                         dm.CDSDreConta.ApplyUpdates(0);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFDre.btnsalvarcontaClick(Sender: TObject);
begin
     if trim(txtcodconta.text) = '' then
     begin
          showmessage('Campo Código da Conta Obrigatório!');
          txtcodconta.setfocus;
          exit;
     end;
     if not dm.cdsplanoconta.Locate('PLACODRED', txtcodconta.text, []) then
     begin
          showmessage('Conta não cadastrada!');
          txtcodconta.setfocus;
          exit;
     end;
     dm.CDSDre.post;
     dm.CDSDre.applyupdates(0);
     dm.CDSDre.edit;
     dm.CDSDreConta.append;
     dm.CDSDreContaDRECONDRE.AsInteger := dm.CDSDreDRECOD.asinteger;
     dm.CDSDreContaDRECONITEM.asinteger := dm.CDSDreItemDREITECOD.asinteger;
     dm.CDSDreContaDRECONCONTA.AsString := txtcodconta.text;
     dm.CDSDreContaDRECONOPERACAO.AsString := txtcontaoperacao.text;
     dm.CDSDreConta.post;
     dm.CDSDreConta.applyupdates(-1);
     txtitem.clear;
     txtitem.setfocus;
end;

procedure TFDre.RLtxtNomeBeforePrint(Sender: TObject; var Text: string;
     var PrintIt: Boolean);
var m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12: double;
begin
     if dm.CDSDreItemDREITEDESTACAR.asstring = 'S' then
     begin
          RLTxtoperacao.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          RLtxtNome.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl1.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl2.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl3.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl4.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl5.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl6.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl7.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl8.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl9.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl10.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl11.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
          lbl12.Font.Style := RLTxtoperacao.Font.Style + [fsBold];
     end
     else
     begin
          RLTxtoperacao.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          RLtxtNome.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl1.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl2.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl3.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl4.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl5.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl6.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl7.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl8.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl9.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl10.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl11.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
          lbl12.Font.Style := RLTxtoperacao.Font.Style - [fsBold];
     end;

     if dm.CDSDreItemDREITEOPERACAO.asstring = 'S' then
     begin
          lbl1.Caption := formatfloat('0.00', s1);
          lbl2.Caption := formatfloat('0.00', s2);
          lbl3.Caption := formatfloat('0.00', s3);
          lbl4.Caption := formatfloat('0.00', s4);
          lbl5.Caption := formatfloat('0.00', s5);
          lbl6.Caption := formatfloat('0.00', s6);
          lbl7.Caption := formatfloat('0.00', s7);
          lbl8.Caption := formatfloat('0.00', s8);
          lbl9.Caption := formatfloat('0.00', s9);
          lbl10.Caption := formatfloat('0.00', s10);
          lbl11.Caption := formatfloat('0.00', s11);
          lbl12.Caption := formatfloat('0.00', s12);
          lblsubtotal.Caption := formatfloat('0.00', s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9 + s10 + s11 + s12);
          s1 := 0; s2 := 0; s3 := 0; s4 := 0; s5 := 0; s6 := 0;
          s7 := 0; s8 := 0; s9 := 0; s10 := 0; s11 := 0; s12 := 0;
          exit;
     end;
     if dm.CDSDreItemDREITEOPERACAO.asstring = 'T' then
     begin
          lbl1.Caption := formatfloat('0.00', t1);
          lbl2.Caption := formatfloat('0.00', t2);
          lbl3.Caption := formatfloat('0.00', t3);
          lbl4.Caption := formatfloat('0.00', t4);
          lbl5.Caption := formatfloat('0.00', t5);
          lbl6.Caption := formatfloat('0.00', t6);
          lbl7.Caption := formatfloat('0.00', t7);
          lbl8.Caption := formatfloat('0.00', t8);
          lbl9.Caption := formatfloat('0.00', t9);
          lbl10.Caption := formatfloat('0.00', t10);
          lbl11.Caption := formatfloat('0.00', t11);
          lbl12.Caption := formatfloat('0.00', t12);
          lblsubtotal.Caption := formatfloat('0.00', t1 + t2 + t3 + t4 + t5 + t6 + t7 + t8 + t9 + t10 + t11 + t12);
          t1 := 0; t2 := 0; t3 := 0; t4 := 0; t5 := 0; t6 := 0;
          t7 := 0; t8 := 0; t9 := 0; t10 := 0; t11 := 0; t12 := 0;

          exit;
     end;

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

     dm.CDSDreConta.first;
     while not dm.CDSDreConta.eof do
     begin
          if dm.CDSDreItemDREITEDESTACAR.asstring = 'S' then
          begin
               if dm.CDSDreContaDRECONOPERACAO.asstring = '+' then
               begin
                    s1 := s1 + executasqlretornodouble('select sum(tmpmes1) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s2 := s2 + executasqlretornodouble('select sum(tmpmes2) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s3 := s3 + executasqlretornodouble('select sum(tmpmes3) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s4 := s4 + executasqlretornodouble('select sum(tmpmes4) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s5 := s5 + executasqlretornodouble('select sum(tmpmes5) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s6 := s6 + executasqlretornodouble('select sum(tmpmes6) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s7 := s7 + executasqlretornodouble('select sum(tmpmes7) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s8 := s8 + executasqlretornodouble('select sum(tmpmes8) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s9 := s9 + executasqlretornodouble('select sum(tmpmes9) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s10 := s10 + executasqlretornodouble('select sum(tmpmes10) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s11 := s11 + executasqlretornodouble('select sum(tmpmes11) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s12 := s12 + executasqlretornodouble('select sum(tmpmes12) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);

                    t1 := t1 + executasqlretornodouble('select sum(tmpmes1) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t2 := t2 + executasqlretornodouble('select sum(tmpmes2) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t3 := t3 + executasqlretornodouble('select sum(tmpmes3) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t4 := t4 + executasqlretornodouble('select sum(tmpmes4) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t5 := t5 + executasqlretornodouble('select sum(tmpmes5) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t6 := t6 + executasqlretornodouble('select sum(tmpmes6) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t7 := t7 + executasqlretornodouble('select sum(tmpmes7) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t8 := t8 + executasqlretornodouble('select sum(tmpmes8) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t9 := t9 + executasqlretornodouble('select sum(tmpmes9) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t10 := t10 + executasqlretornodouble('select sum(tmpmes10) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t11 := t11 + executasqlretornodouble('select sum(tmpmes11) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t12 := t12 + executasqlretornodouble('select sum(tmpmes12) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               end;
               if dm.CDSDreContaDRECONOPERACAO.asstring = '-' then
               begin
                    s1 := s1 - executasqlretornodouble('select sum(tmpmes1) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s2 := s2 - executasqlretornodouble('select sum(tmpmes2) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s3 := s3 - executasqlretornodouble('select sum(tmpmes3) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s4 := s4 - executasqlretornodouble('select sum(tmpmes4) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s5 := s5 - executasqlretornodouble('select sum(tmpmes5) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s6 := s6 - executasqlretornodouble('select sum(tmpmes6) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s7 := s7 - executasqlretornodouble('select sum(tmpmes7) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s8 := s8 - executasqlretornodouble('select sum(tmpmes8) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s9 := s9 - executasqlretornodouble('select sum(tmpmes9) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s10 := s10 - executasqlretornodouble('select sum(tmpmes10) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s11 := s11 - executasqlretornodouble('select sum(tmpmes11) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    s12 := s12 - executasqlretornodouble('select sum(tmpmes12) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);

                    t1 := t1 - executasqlretornodouble('select sum(tmpmes1) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t2 := t2 - executasqlretornodouble('select sum(tmpmes2) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t3 := t3 - executasqlretornodouble('select sum(tmpmes3) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t4 := t4 - executasqlretornodouble('select sum(tmpmes4) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t5 := t5 - executasqlretornodouble('select sum(tmpmes5) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t6 := t6 - executasqlretornodouble('select sum(tmpmes6) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t7 := t7 - executasqlretornodouble('select sum(tmpmes7) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t8 := t8 - executasqlretornodouble('select sum(tmpmes8) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t9 := t9 - executasqlretornodouble('select sum(tmpmes9) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t10 := t10 - executasqlretornodouble('select sum(tmpmes10) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t11 := t11 - executasqlretornodouble('select sum(tmpmes11) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
                    t12 := t12 - executasqlretornodouble('select sum(tmpmes12) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               end;
          end;

          if dm.CDSDreContaDRECONOPERACAO.asstring = '+' then
          begin
               m1 := m1 + executasqlretornodouble('select sum(tmpmes1) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m2 := m2 + executasqlretornodouble('select sum(tmpmes2) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m3 := m3 + executasqlretornodouble('select sum(tmpmes3) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m4 := m4 + executasqlretornodouble('select sum(tmpmes4) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m5 := m5 + executasqlretornodouble('select sum(tmpmes5) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m6 := m6 + executasqlretornodouble('select sum(tmpmes6) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m7 := m7 + executasqlretornodouble('select sum(tmpmes7) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m8 := m8 + executasqlretornodouble('select sum(tmpmes8) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m9 := m9 + executasqlretornodouble('select sum(tmpmes9) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m10 := m10 + executasqlretornodouble('select sum(tmpmes10) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m11 := m11 + executasqlretornodouble('select sum(tmpmes11) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m12 := m12 + executasqlretornodouble('select sum(tmpmes12) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);

          end;
          if dm.CDSDreContaDRECONOPERACAO.asstring = '-' then
          begin
               m1 := m1 - executasqlretornodouble('select sum(tmpmes1) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m2 := m2 - executasqlretornodouble('select sum(tmpmes2) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m3 := m3 - executasqlretornodouble('select sum(tmpmes3) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m4 := m4 - executasqlretornodouble('select sum(tmpmes4) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m5 := m5 - executasqlretornodouble('select sum(tmpmes5) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m6 := m6 - executasqlretornodouble('select sum(tmpmes6) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m7 := m7 - executasqlretornodouble('select sum(tmpmes7) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m8 := m8 - executasqlretornodouble('select sum(tmpmes8) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m9 := m9 - executasqlretornodouble('select sum(tmpmes9) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m10 := m10 - executasqlretornodouble('select sum(tmpmes10) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m11 := m11 - executasqlretornodouble('select sum(tmpmes11) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
               m12 := m12 - executasqlretornodouble('select sum(tmpmes12) from ttmpbalancete where tmpconta = ' + dm.CDSDreContaDRECONCONTA.asstring);
          end;

          dm.CDSDreConta.next;
     end;

     lbl1.caption := '';
     lbl2.caption := '';
     lbl3.caption := '';
     lbl4.caption := '';
     lbl5.caption := '';
     lbl6.caption := '';
     lbl7.caption := '';
     lbl8.caption := '';
     lbl9.caption := '';
     lbl10.caption := '';
     lbl11.caption := '';
     lbl12.caption := '';

     if m1 <> 0 then
          lbl1.Caption := formatfloat('0.00', m1 * (-1));
     if m2 <> 0 then
          lbl2.Caption := formatfloat('0.00', m2 * (-1));
     if m3 <> 0 then
          lbl3.Caption := formatfloat('0.00', m3 * (-1));
     if m4 <> 0 then
          lbl4.Caption := formatfloat('0.00', m4 * (-1));
     if m5 <> 0 then
          lbl5.Caption := formatfloat('0.00', m5 * (-1));
     if m6 <> 0 then
          lbl6.Caption := formatfloat('0.00', m6 * (-1));
     if m7 <> 0 then
          lbl7.Caption := formatfloat('0.00', m7 * (-1));
     if m8 <> 0 then
          lbl8.Caption := formatfloat('0.00', m8 * (-1));
     if m9 <> 0 then
          lbl9.Caption := formatfloat('0.00', m9 * (-1));
     if m10 <> 0 then
          lbl10.Caption := formatfloat('0.00', m10 * (-1));
     if m11 <> 0 then
          lbl11.Caption := formatfloat('0.00', m11 * (-1));
     if m12 <> 0 then
          lbl12.Caption := formatfloat('0.00', m12 * (-1));

     lblsubtotal.caption := formatfloat('0.00', (m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + m11 + m12) * (-1));
end;

procedure TFDre.btngerarClick(Sender: TObject);
var ano: string;
begin
     ano := inputbox('Sistema de Pós-Graduação Reinandus', 'Digite o ano:', inttostr(yearof(date)));
     RLTitulo.caption := dm.CDSDreDRENOME.asstring + ' - ' + Ano;
     execsql('EXECUTE PROCEDURE PBALANCETE_MONTA_PLANO_CONTA;');
     execsql('EXECUTE PROCEDURE PBALANCETE_VALORES(''1'', ''99999'', 0, ' + quotedstr('01.01.' + ano) + ', ' + quotedstr('31.12.' + ano) + ', ''31.12.9999'')');
     execsql('EXECUTE PROCEDURE PBALANCETE_AJUSTA;');
     dm.CDSDreItem.first;
     RLReport.PreviewModal;
end;

end.
