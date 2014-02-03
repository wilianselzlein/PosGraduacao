unit UMaterial;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSDBMemo, Buttons, WSDBComboBox;

type
     TFMaterial = class(TForm)
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
          txtnome: TWSDBEdit;
          WSInformacao: TWSInformacao;
          BtnCancelar: TToolButton;
          BtnSalvar: TToolButton;
          ToolButton4: TToolButton;
          PanPesquisa: TPanel;
          Label4: TLabel;
          txtpesquisa: TWSEdit;
    txtlocal: TWSDBEdit;
          Label3: TLabel;
          Label7: TLabel;
          WSDBEdit5: TWSDBEdit;
          Label12: TLabel;
    txtref: TWSDBEdit;
          Label13: TLabel;
    txtcdu: TWSDBEdit;
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
          Label8: TLabel;
          WSDBEdit7: TWSDBEdit;
          RLLabel5: TRLLabel;
          RLDBText10: TRLDBText;
          RLBand1: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          pandisciplinas: TPanel;
          txtcod: TWSDBEdit;
          Label10: TLabel;
    txtano: TWSDBEdit;
          WSDBEdit2: TWSDBEdit;
          Label17: TLabel;
          Label18: TLabel;
          WSDBEdit8: TWSDBEdit;
          Label24: TLabel;
    txtcodeditora: TWSDBEdit;
    BtnEditora: TSpeedButton;
    txteditora: TWSDBEdit;
          Label25: TLabel;
          WSDBEdit9: TWSDBEdit;
          RLSystemInfo1: TRLSystemInfo;
          DBGrid: TDBGrid;
          ToolButton2: TToolButton;
          RLDBText6: TRLDBText;
          RLDBText13: TRLDBText;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          Label15: TLabel;
          WSDBEdit4: TWSDBEdit;
          WSDBEdit10: TWSDBEdit;
          Label16: TLabel;
    Label23: TLabel;
    WSDBEdit11: TWSDBEdit;
    WSDBEdit12: TWSDBEdit;
    WSDBEdit1: TWSDBEdit;
    Label6: TLabel;
    Label9: TLabel;
    WSDBEdit3: TWSDBEdit;
    Label19: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Panel2: TPanel;
    Label20: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    btnautor: TSpeedButton;
    txtautor: TWSEdit;
    ToolBarItem: TToolBar;
    btnsalvarautor: TToolButton;
    btnexcluirAutor: TToolButton;
    JvDBGrid1: TDBGrid;
    Panel3: TPanel;
    Label14: TLabel;
    Panel4: TPanel;
    ToolBar1: TToolBar;
    btnsalvarAssunto: TToolButton;
    btnexcluirAssunto: TToolButton;
    JvDBGrid2: TDBGrid;
    Splitter1: TSplitter;
    btnassuntos: TSpeedButton;
    txtassunto: TWSEdit;
    Label21: TLabel;
    Label11: TLabel;
    btnforn: TSpeedButton;
    Label22: TLabel;
    Label26: TLabel;
    txtcodforn: TWSDBEdit;
    txtforn: TWSDBEdit;
    WSDBEdit14: TWSDBEdit;
    WSDBEdit15: TWSDBEdit;
    Label27: TLabel;
    txtsituacao: TWSDBComboBox;
    Label28: TLabel;
    btnapagar: TSpeedButton;
    btnApagarAtu: TSpeedButton;
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
          procedure btnexcluirAutorClick(Sender: TObject);
          procedure btnautorClick(Sender: TObject);
          procedure btnsalvarautorClick(Sender: TObject);
          procedure btnassuntosClick(Sender: TObject);
          procedure DBGridDblClick(Sender: TObject);
          procedure FormActivate(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure BtnEditoraClick(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
    procedure btnexcluirAssuntoClick(Sender: TObject);
    procedure btnsalvarAssuntoClick(Sender: TObject);
    procedure btnfornClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure btnApagarAtuClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FMaterial: TFMaterial;

implementation

uses UDM, UMenu, UAutor, UAssunto, UEditora, UNetworking, UFuncoes;

{$R *.dfm}

procedure TFMaterial.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFMaterial.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFMaterial.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFMaterial.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFMaterial.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFMaterial.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as TForm, true);
     DataSource.DataSet.append;
end;

procedure TFMaterial.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, true);
     end;
end;

procedure TFMaterial.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFMaterial.BtnExcluirClick(Sender: TObject);
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

procedure TFMaterial.BtnSalvarClick(Sender: TObject);
begin
     {if (txttcc.Text <> '') and (txttcc.Text <> 'S') and (txttcc.Text <> 'N') then
     begin
          Showmessage('Campo TCC inválido!');
          txttcc.setfocus;
          exit;
     end;

     if trim(dm.CDSCursoCURINICIO.asstring) <> '' then
          testa_data(dm.CDSCursoCURINICIO.asdatetime);
     if trim(dm.CDSCursoCURFIM.asstring) <> '' then
          testa_data(dm.CDSCursoCURFIM.asdatetime);}

     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     dm.CDSCursoDisciplina.ApplyUpdates(0);
     navegar(lbltitulo.parent as TForm);
end;

procedure TFMaterial.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(lbltitulo.parent as TForm);
end;

procedure TFMaterial.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFMaterial.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     with dm.qcurso.sql do
     begin
          clear;
          add('select * from TMATERIAL where MATCOD > 0');
          if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(MATTITULO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFMaterial.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela, 'TMATERIALAUTOR'], [Datasource.dataset as TClientDataSet, dm.CDSMaterialAutor]);
end;

procedure TFMaterial.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
     importar('TMATERIALAUTOR', dm.DSMaterialAutor);
end;

procedure TFMaterial.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
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
     limpa_edits(sender as tform);
     action := cafree;
end;

procedure TFMaterial.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     btndesconectar.click;
end;

procedure TFMaterial.txtcodKeyDown(Sender: TObject; var Key: Word;
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
          if (sender = txtautor) then
               btnautor.click;
          if (sender = txtassunto) then
               btnassuntos.click;
          if (sender = txteditora) or (sender = txtcodeditora) then
               btneditora.click;
          if (sender = txtforn) or (sender = txtcodforn) then
               btnforn.click;
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
                    passar := true;
                    if EnterClicar then
                    begin
                         if sender = txtpesquisa then
                              btnfiltro.click
                         else
                         begin
                              //btnsalvaritem.Click;
                              passar := false;
                         end;
                    end;
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

procedure TFMaterial.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFMaterial.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFMaterial.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFMaterial.btnexcluirAutorClick(Sender: TObject);
begin
     usuario('BtnExcluir', wsinformacao.programa);

     if (DM.CDSMaterialAutor.Active = true) then
          if (DM.CDSMaterialAutor.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         DM.CDSMaterialAutor.Delete;
                         DM.CDSMaterialAutor.ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFMaterial.btnautorClick(Sender: TObject);
begin
     if Application.FindComponent('FAutor') <> nil then
          FAutor.Close;

     try
          FAutor := tFAutor.create(self);
          FAutor.FormStyle := fsNormal;
          FAutor.Visible := false;
          usuario('btnconsultar', FAutor.wsinformacao.programa);
          FAutor.BtnFiltro.click;
          FAutor.showmodal;
          txtautor.text := dm.CDSAutorAUTCOD.asstring;
     finally
          FAutor.release;
          FAutor := nil;
          FAutor.free;
     end;
end;

procedure TFMaterial.btnsalvarautorClick(Sender: TObject);
begin
     try
          strtoint(txtautor.text);
     except
          showmessage('Campo autor inválido!');
          txtautor.SetFocus;
          exit;
     end;
     if not dm.CDSAutor.Locate('AUTCOD', txtautor.text, []) then
     begin
          showmessage('Autor não cadastrado!');
          txtautor.SetFocus;
          exit;
     end;
     if dm.CDSMaterialAutor.Locate('MATAUTMATERIAL;MATAUTAUTOR', vararrayof([txtcod.text, txtautor.text]), []) then
     begin
          showmessage('Autor já cadastrado!');
          txtautor.SetFocus;
          exit;
     end;
     dm.CDSMaterial.post;
     dm.CDSMaterial.applyupdates(0);
     dm.CDSMaterial.edit;
     dm.CDSMaterialAutor.Append;
     dm.CDSMaterialAutorMATAUTMATERIAL.asinteger := dm.CDSMaterialMATCOD.asinteger;
     dm.CDSMaterialAutorMATAUTAUTOR.AsInteger := strtoint(txtautor.text);
     dm.CDSMaterialAutor.post;
     dm.CDSMaterialAutor.applyupdates(0);
     txtautor.Clear;
     txtautor.setfocus;
end;

procedure TFMaterial.btnassuntosClick(Sender: TObject);
begin
     if Application.FindComponent('FAssunto') <> nil then
          FAssunto.Close;

     try
          FAssunto := tFAssunto.create(self);
          FAssunto.FormStyle := fsNormal;
          FAssunto.Visible := false;
          usuario('btnconsultar', FAssunto.wsinformacao.programa);
          FAssunto.BtnFiltro.click;
          FAssunto.showmodal;
          txtassunto.text := dm.CDSAssuntoASSCOD.asstring;
     finally
          FAssunto.release;
          FAssunto := nil;
          FAssunto.free;
     end;
end;

procedure TFMaterial.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFMaterial.FormActivate(Sender: TObject);
begin
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFMaterial.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFMaterial.BtnEditoraClick(Sender: TObject);
begin
     if Application.FindComponent('FEditora') <> nil then
         FEditora.Close;

     try
          FEditora := tFEditora.create(self);
          FEditora.FormStyle := fsNormal;
          FEditora.Visible := false;
          FEditora.txtpesquisa.text := txteditora.text;
          FEditora.BtnFiltro.click;
          FEditora.showmodal;
          dm.CDSMaterialMATEDITORA.asinteger := dm.CDSEditoraEDICOD.asinteger;
     finally
          FEditora.release;
          FEditora := nil;
          FEditora.free;
     end;
end;

procedure TFMaterial.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFMaterial.btnexcluirAssuntoClick(Sender: TObject);
begin
     usuario('BtnExcluir', wsinformacao.programa);

     if (DM.CDSMaterialAssunto.Active = true) then
          if (DM.CDSMaterialAssunto.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         DM.CDSMaterialAssunto.Delete;
                         DM.CDSMaterialAssunto.ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFMaterial.btnsalvarAssuntoClick(Sender: TObject);
begin
     try
          strtoint(txtAssunto.text);
     except
          showmessage('Campo Assunto inválido!');
          txtAssunto.SetFocus;
          exit;
     end;
     if not dm.CDSAssunto.Locate('AssCOD', txtAssunto.text, []) then
     begin
          showmessage('Assunto não cadastrado!');
          txtAssunto.SetFocus;
          exit;
     end;
     if dm.CDSMaterialAssunto.Locate('MATAssMATERIAL;MATAssAssunto', vararrayof([txtcod.text, txtAssunto.text]), []) then
     begin
          showmessage('Assunto já cadastrado!');
          txtAssunto.SetFocus;
          exit;
     end;
     dm.CDSMaterial.post;
     dm.CDSMaterial.applyupdates(0);
     dm.CDSMaterial.edit;
     dm.CDSMaterialAssunto.Append;
     dm.CDSMaterialAssuntoMATAssMATERIAL.asinteger := dm.CDSMaterialMATCOD.asinteger;
     dm.CDSMaterialAssuntoMATAssAssunto.AsInteger := strtoint(txtAssunto.text);
     dm.CDSMaterialAssunto.post;
     dm.CDSMaterialAssunto.applyupdates(0);
     txtAssunto.Clear;
end;

procedure TFMaterial.btnfornClick(Sender: TObject);
begin
     if Application.FindComponent('FNetworking') <> nil then
         FNetworking.Close;

     try
          FNetworking := tFNetworking.create(self);
          FNetworking.FormStyle := fsNormal;
          FNetworking.Visible := false;
          FNetworking.txtpesquisa.text := txtforn.text;
          FNetworking.BtnFiltro.click;
          FNetworking.showmodal;
          dm.CDSMaterialMATFORNECEDOR.asinteger := dm.CDSNetworkingNETCOD.asinteger;
     finally
          FNetworking.release;
          FNetworking := nil;
          FNetworking.free;
     end;
end;

procedure TFMaterial.btnapagarClick(Sender: TObject);
begin
     DM.CDSMaterialMATAQUISICAO.Clear; 
end;

procedure TFMaterial.btnApagarAtuClick(Sender: TObject);
begin
     DM.CDSMaterialMATDATAATUALIZACAO.Clear;
end;

end.
