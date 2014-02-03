unit UTransito;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSMaskEdit, Buttons,
     DateUtils, WSDBComboBox;

type
     TFTransito = class(TForm)
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
    txtcodaluno: TWSDBEdit;
    txtaluno: TWSDBEdit;
    btnaluno: TSpeedButton;
          WSDBEdit15: TWSDBEdit;
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
    btnmaterial: TSpeedButton;
    txtcodmaterial: TWSDBEdit;
    txtmaterial: TWSDBEdit;
          RLLabel5: TRLLabel;
          RLBand1: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
    btnfiltromaterial: TSpeedButton;
    txtfiltromaterial: TWSEdit;
          Label24: TLabel;
          Label25: TLabel;
    txtfiltroaluno: TWSEdit;
    btnfiltroaluno: TSpeedButton;
          RLDBText11: TRLDBText;
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
    txtnomematerial: TWSEdit;
    txtnomealuno: TWSEdit;
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
    txtpago: TWSDBComboBox;
    Label5: TLabel;
    WSDBComboBox1: TWSDBComboBox;
    btnapagarret: TSpeedButton;
    btnapagardev: TSpeedButton;
    btnapagaren: TSpeedButton;
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
          procedure btnalunoClick(Sender: TObject);
          procedure btnmaterialClick(Sender: TObject);
          procedure btnfiltromaterialClick(Sender: TObject);
          procedure btnfiltroalunoClick(Sender: TObject);
          procedure DBGridDblClick(Sender: TObject);
          procedure FormActivate(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure txtdatafinExit(Sender: TObject);
          procedure txtfiltromaterialExit(Sender: TObject);
          procedure txtfiltroalunoExit(Sender: TObject);
    procedure btnapagarretClick(Sender: TObject);
    procedure btnapagardevClick(Sender: TObject);
    procedure btnapagarenClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FTransito: TFTransito;

implementation

uses UDM, UMenu, UAluno, UMaterial, UFuncoes;

{$R *.dfm}

procedure TFTransito.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFTransito.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFTransito.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFTransito.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFTransito.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFTransito.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as TForm, true);
     DataSource.DataSet.append;                 
     dm.CDSTransitoTRARETIRADA.AsDateTime := Date;
     dm.CDSTransitoTRARESERVA.AsString := 'NAO';     
     dm.CDSTransitoTRADEVOLUCAO.AsDateTime := Date + 10;
     dm.CDSTransitoTRAENTREGA.AsDateTime := Date + 10;     
end;

procedure TFTransito.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, true);
     end;
end;

procedure TFTransito.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if DataSource.DataSet.Active then
     begin
          if (dm.CDSTransitoTRARETIRADA.asdatetime < strtodate(valor_parametro(7))) then
          begin
               showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
               if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
          end;
          if (dm.CDSTransitoTRARETIRADA.asdatetime > strtodate(valor_parametro(8))) then
          begin
               showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
               if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
          end;

          if dm.CDSTransitoTRARETIRADA.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime then
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

procedure TFTransito.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    if (dm.CDSTransitoTRARETIRADA.asdatetime < strtodate(valor_parametro(7))) then
                    begin
                         showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
                         if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
                    end;
                    if (dm.CDSTransitoTRARETIRADA.asdatetime > strtodate(valor_parametro(8))) then
                    begin
                         showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
                         if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
                    end;

                    if dm.CDSTransitoTRARETIRADA.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime then
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

procedure TFTransito.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);

     testa_data(dm.CDSTransitoTRARETIRADA.asdatetime);

     if (dm.CDSTransitoTRARETIRADA.asdatetime < strtodate(valor_parametro(7))) then
     begin
          showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;
     if (dm.CDSTransitoTRARETIRADA.asdatetime > strtodate(valor_parametro(8))) then
     begin
          showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
          if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
     end;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(lbltitulo.parent as TForm);
end;

procedure TFTransito.BtnCancelarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.Cancel;
     Navegar(lbltitulo.parent as TForm);
end;

procedure TFTransito.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFTransito.BtnFiltroClick(Sender: TObject);
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
     with dm.QTransito.sql do
     begin
          clear;
          add('SELECT * FROM TTRANSITO');
          add('WHERE TRACOD > 0');
          if txtdataini.text <> '  /  /    ' then
               add('AND TRARETIRADA >= :dataini');
          if txtdatafin.text <> '  /  /    ' then
               add('AND TRARETIRADA <= :datafin');
          if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(TRACOD) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          if trim(txtfiltroaluno.text) <> '' then
               add('AND TRAALUNO = ' + trim(txtfiltroaluno.text));
          if trim(txtfiltromaterial.text) <> '' then
               add('AND TRAMATERIAL = ' + trim(txtfiltromaterial.text));
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     if txtdataini.text <> '  /  /    ' then
          dm.QTransito.parambyname('dataini').asdate := strtodate(txtdataini.text);
     if txtdatafin.text <> '  /  /    ' then
          dm.QTransito.parambyname('datafin').asdate := strtodate(txtdatafin.text);
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFTransito.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela], [Datasource.dataset as TClientDataSet]);
end;

procedure TFTransito.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
end;

procedure TFTransito.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFTransito.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFTransito.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     if not local then
     begin
          txtdataini.text := DateToStr(IncMonth(date, -1));
          txtdatafin.text := DateToStr(date);
     end;
     BtnFiltro.click;
end;

procedure TFTransito.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
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
          if (sender = txtcodaluno) or (sender = txtaluno) then
               btnaluno.click;
          if (sender = txtcodmaterial) or (sender = txtmaterial) then
               btnmaterial.click;
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

procedure TFTransito.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
          if sender = txtfiltroaluno then
               btnfiltroaluno.click;
          if sender = txtfiltromaterial then
               btnfiltromaterial.click;
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

procedure TFTransito.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFTransito.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFTransito.btnalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          FAluno := tFAluno.create(self);
          FAluno.FormStyle := fsNormal;
          FAluno.Visible := false;
          FAluno.txtpesquisa.text := txtaluno.text;
          FAluno.BtnFiltro.click;
          FAluno.showmodal;
          dm.CDSTransitoTraAluno.asstring := dm.CDSAlunoAluCod.asstring;
     finally
          FAluno.release;
          FAluno := nil;
          FAluno.free;
     end;
end;

procedure TFTransito.btnmaterialClick(Sender: TObject);
begin
     if Application.FindComponent('FMaterial') <> nil then
          FMaterial.Close;

     try
          FMaterial := tFMaterial.create(self);
          FMaterial.FormStyle := fsNormal;
          FMaterial.Visible := false;
          FMaterial.txtpesquisa.text := txtmaterial.text;
          FMaterial.BtnFiltro.click;
          FMaterial.showmodal;
          dm.CDSTransitoTRAMATERIAL.asstring := dm.CDSMaterialMATCOD.asstring;
     finally
          FMaterial.release;
          FMaterial := nil;
          FMaterial.free;
     end;
end;

procedure TFTransito.btnfiltromaterialClick(Sender: TObject);
begin
     if Application.FindComponent('FMaterial') <> nil then
          FMaterial.Close;

     try
          FMaterial := tFMaterial.create(self);
          FMaterial.FormStyle := fsNormal;
          FMaterial.Visible := false;
          usuario('btnconsultar', FMaterial.wsinformacao.programa);
          FMaterial.BtnFiltro.click;
          FMaterial.showmodal;
          txtfiltromaterial.text := dm.CDSMaterialMATCOD.asstring;
     finally
          FMaterial.release;
          FMaterial := nil;
          FMaterial.free;
     end;
end;

procedure TFTransito.btnfiltroalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          FAluno := tFAluno.create(self);
          FAluno.FormStyle := fsNormal;
          FAluno.Visible := false;
          usuario('btnconsultar', FAluno.wsinformacao.programa);
          FAluno.BtnFiltro.click;
          FAluno.showmodal;
          txtfiltroaluno.Text := dm.CDSAlunoALUCOD.asstring;
     finally
          FAluno.release;
          FAluno := nil;
          FAluno.free;
     end;
end;

procedure TFTransito.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFTransito.FormActivate(Sender: TObject);
begin
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFTransito.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFTransito.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFTransito.txtdatafinExit(Sender: TObject);
begin
     try
          txtpesquisa.setfocus;
     except
     end;
end;

procedure TFTransito.txtfiltromaterialExit(Sender: TObject);
begin
     txtnomeMaterial.clear;
     if trim(txtfiltroMaterial.Text) <> '' then
     begin
          try
               strtoint(txtfiltromaterial.Text);
          except
               txtnomematerial.text := 'Campo Material Inválido!';
               txtfiltromaterial.setfocus;
               exit;
          end;
          if not dm.CDSMaterial.active then
               dm.CDSMaterial.open;
          if dm.CDSMaterial.Locate('MATCOD', txtfiltromaterial.text, []) then
          begin
               txtnomematerial.text := dm.CDSMaterialMATCOD.asstring;
          end
          else
          begin
               txtnomematerial.text := 'Material não cadastrado!';
               txtfiltromaterial.setfocus;
               exit;
          end;
     end;
end;

procedure TFTransito.txtfiltroalunoExit(Sender: TObject);
begin
     txtnomeAluno.clear;
     if trim(txtfiltroAluno.Text) <> '' then
     begin
          try
               strtoint(txtfiltroAluno.Text);
          except
               txtnomeAluno.text := 'Campo Aluno Inválido!';
               txtfiltroAluno.setfocus;
               exit;
          end;
          if not dm.CDSAlunoLKP.active then
               dm.CDSAlunoLKP.open;
          if dm.CDSAlunoLKP.Locate('ALUCOD', txtfiltroAluno.text, []) then
          begin
               txtnomealuno.text := dm.CDSAlunoLkpALUCOD.asstring;
          end
          else
          begin
               txtnomeAluno.text := 'Aluno não cadastrado!';
               txtfiltroaluno.setfocus;
               exit;
          end;
     end;

end;

procedure TFTransito.btnapagarretClick(Sender: TObject);
begin
     DM.CDSTransitoTRARETIRADA.clear;
end;

procedure TFTransito.btnapagardevClick(Sender: TObject);
begin
     DM.CDSTransitoTRADEVOLUCAO.clear;
end;

procedure TFTransito.btnapagarenClick(Sender: TObject);
begin
     DM.CDSTransitoTRAENTREGA.clear;
end;

end.
