unit UUsuario;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSDBMemo,
     WSDBComboBox, Buttons;

type
     TFUsuario = class(TForm)
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
          txtlogin: TWSDBEdit;
          WSDBEdit2: TWSDBEdit;
          WSInformacao: TWSInformacao;
          BtnCancelar: TToolButton;
          BtnSalvar: TToolButton;
          ToolButton4: TToolButton;
          PanPesquisa: TPanel;
          Label4: TLabel;
          txtpesquisa: TWSEdit;
          WSDBEdit3: TWSDBEdit;
          Label3: TLabel;
          RLReport: TRLReport;
          RLBand1: TRLBand;
          RLBand3: TRLBand;
          RLLabel1: TRLLabel;
          RLBand4: TRLBand;
          RLLabel2: TRLLabel;
          RLLabel3: TRLLabel;
          RLBand5: TRLBand;
          RLDBText7: TRLDBText;
          RLDBText8: TRLDBText;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          RLSystemInfo1: TRLSystemInfo;
          DBGrid: TDBGrid;
          ToolButton2: TToolButton;
          RLDBText11: TRLDBText;
          RLDBText6: TRLDBText;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          DBGrid1: TDBGrid;
          Panel1: TPanel;
          Label5: TLabel;
          btnprograma: TSpeedButton;
          txtprograma: TWSEdit;
          chkacesso: TCheckBox;
          chkinsercao: TCheckBox;
          chkexclusao: TCheckBox;
          chkalteracao: TCheckBox;
          chkrelatorio: TCheckBox;
          ToolBarItem: TToolBar;
          btnsalvaritem: TToolButton;
          btnexcluiritem: TToolButton;
          DBRadioGroup1: TDBRadioGroup;
          DBRadioGroup2: TDBRadioGroup;
          DBRadioGroup3: TDBRadioGroup;
          DBRadioGroup4: TDBRadioGroup;
          RGCoordenador: TDBRadioGroup;
          TabSheet2: TTabSheet;
          Label6: TLabel;
          Label7: TLabel;
          Label8: TLabel;
          Label11: TLabel;
          Label9: TLabel;
          Label10: TLabel;
          Label12: TLabel;
          btncidade: TSpeedButton;
          Label18: TLabel;
          Label19: TLabel;
          Label13: TLabel;
          Label14: TLabel;
          btnnaturalidade: TSpeedButton;
          Label15: TLabel;
          Label16: TLabel;
          Label17: TLabel;
          Label20: TLabel;
          Label25: TLabel;
          Label26: TLabel;
          Label29: TLabel;
          Label30: TLabel;
          Label23: TLabel;
          WSDBComboBox2: TWSDBComboBox;
          WSDBEdit1: TWSDBEdit;
          WSDBEdit5: TWSDBEdit;
          WSDBEdit6: TWSDBEdit;
          txtcodcidade: TWSDBEdit;
          txtcidade: TWSDBEdit;
          WSDBEdit8: TWSDBEdit;
          WSDBEdit10: TWSDBEdit;
          WSDBEdit11: TWSDBEdit;
          WSDBEdit16: TWSDBEdit;
          txtcpf: TWSDBEdit;
          WSDBEdit7: TWSDBEdit;
          txtcodnaturalidade: TWSDBEdit;
          txtnaturalidade: TWSDBEdit;
          WSDBEdit4: TWSDBEdit;
          txtnasc: TWSDBEdit;
          txtsituacao: TWSDBComboBox;
          WSDBEdit9: TWSDBEdit;
          WSDBEdit12: TWSDBEdit;
          WSDBEdit14: TWSDBEdit;
          WSDBEdit15: TWSDBEdit;
          WSDBMemo1: TWSDBMemo;
          Label21: TLabel;
          btnProfessor: TSpeedButton;
          WSDBEdit13: TWSDBEdit;
          txtprofessor: TWSDBEdit;
          chkTodos: TCheckBox;
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
          procedure txtloginKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnexcelClick(Sender: TObject);
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnexcluiritemClick(Sender: TObject);
          procedure btnsalvaritemClick(Sender: TObject);
          procedure chkrelatorioKeyPress(Sender: TObject; var Key: Char);
          procedure btnprogramaClick(Sender: TObject);
          procedure DBGridDblClick(Sender: TObject);
          procedure DBGrid2DblClick(Sender: TObject);
          procedure FormActivate(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure DBRadioGroup3Change(Sender: TObject);
          procedure btnnaturalidadeClick(Sender: TObject);
          procedure btncidadeClick(Sender: TObject);
          procedure btnProfessorClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FUsuario: TFUsuario;

implementation

uses UDM, UMenu, UPrograma, USenha, UCidade, UProfessor, UFuncoes;

{$R *.dfm}

procedure TFUsuario.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFUsuario.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFUsuario.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFUsuario.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFUsuario.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.active = false then
          DataSource.DataSet.open;
     close;
end;

procedure TFUsuario.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(FUsuario, true);
     DataSource.DataSet.append;
end;

procedure TFUsuario.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(FUsuario, true);
     end;
end;

procedure TFUsuario.BtnAlterarClick(Sender: TObject);
begin
     //   usuario((sender as TToolButton).name, wsinformacao.programa);
     if (lUsuario <> 'Master') and (txtlogin.text = 'Master') then
     begin
          raise exception.create('Impossível alterar o usuário Master!');
     end;
     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          Editar(FUsuario, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFUsuario.BtnExcluirClick(Sender: TObject);
begin
     //    usuario((sender as TToolButton).name, wsinformacao.programa);
     if (lusuario <> 'Master') and (txtlogin.text = 'Master') then
     begin
          raise exception.create('Impossível alterar o usuário Master!');
     end;
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

procedure TFUsuario.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FUsuario);
end;

procedure TFUsuario.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FUsuario);
end;

procedure TFUsuario.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFUsuario.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     with dm.qusuario.sql do
     begin
          clear;
          add('SELECT TUSUARIO.*, PRONOME, NAT.CIDNOME AS NATURALIDADE, CID.CIDNOME AS CIDADE');
          add('FROM TUSUARIO');
          add('LEFT OUTER JOIN TPROFESSOR ON PROCOD = USUPROFESSOR');
          add('LEFT OUTER JOIN TCIDADE NAT ON NAT.CIDCOD = USUNATURALIDADE');
          add('LEFT OUTER JOIN TCIDADE CID ON CID.CIDCOD = USUCIDADE');
          if trim(txtpesquisa.text) <> '' then
               add('WHERE UPPER(USUNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFUsuario.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela, 'TITEMUSUARIO'], [Datasource.dataset as TClientDataSet, dm.CDSItemUsuario]);
end;

procedure TFUsuario.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
     importar('TUSUARIOITEM', DM.DSItemUsuario);
end;

procedure TFUsuario.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
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
     release;
end;

procedure TFUsuario.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     BtnFiltro.click;
end;

procedure TFUsuario.txtloginKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
var
     passar: boolean;
begin
     if (key = 27) and (btncancelar.enabled = true) then
          btncancelar.click;
     if (Key = VK_F12) and (btnSalvar.enabled = true) then
          btnsalvar.Click;
     if key = vk_f3 then
          if sender = txtprograma then
               btnprograma.click;
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

procedure TFUsuario.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFUsuario.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFUsuario.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFUsuario.btnexcluiritemClick(Sender: TObject);
begin
     if (dm.cdsitemusuario.Active = true) then
          if (dm.cdsitemusuario.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         dm.cdsitemusuario.Delete;
                         dm.cdsitemusuario.ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFUsuario.btnsalvaritemClick(Sender: TObject);
begin
     if not chkTodos.Checked then
     begin
         try
              strtoint(txtprograma.text);
         except
              showmessage('Campo Programa Inválido!');
              txtprograma.setfocus;
              exit;
         end;
         if not dm.cdsprograma.Locate('PROCOD', txtprograma.text, []) then
         begin
              showmessage('Programa não cadastrado!');
              txtprograma.setfocus;
              exit;
         end;
         if dm.CDSItemusuario.Locate('ITEUSUARIO;ITEPROGRAMA', VarArrayOf([txtlogin.text, txtprograma.text]), []) then
         begin
              showmessage('Programa já cadastrado!');
              txtprograma.setfocus;
              exit;
         end;
     end;
     dm.CDSUsuario.post;
     dm.CDSUsuario.applyupdates(-1);
     dm.CDSUsuario.edit;

     if not dm.CDSPrograma.Active then
         dm.CDSPrograma.Active := true;
     dm.CDSPrograma.First;
     while not dm.cdsPrograma.Eof do
     begin
         if not chkTodos.Checked then
         begin
             if StrToInt(txtprograma.text) <> dm.CDSProgramaPROCOD.asinteger then
             begin
                 dm.cdsPrograma.Next;
                 continue;
             end;
         end;
         if dm.cdsitemusuario.Locate('ITEUSUARIO;ITEPROGRAMA', VarArrayOf([txtlogin.text, dm.CDSProgramaPROCOD.asinteger]), [loPartialKey, loCaseInsensitive]) then
             dm.CDSItemusuario.Edit
         else
             dm.CDSItemusuario.append;
         dm.CDSItemUsuarioITEUSUARIO.asstring := txtlogin.text;
         dm.CDSItemUsuarioITEPROGRAMA.asinteger := dm.CDSProgramaPROCOD.asinteger;
         dm.CDSItemUsuarioPRONOME.asinteger := dm.CDSProgramaPRONOME.asinteger;
         if chkacesso.Checked then
              dm.CDSItemUsuarioITEACESSO.asstring := 'S'
         else
              dm.CDSItemUsuarioITEACESSO.asstring := 'N';
         if chkinsercao.Checked then
              dm.CDSItemUsuarioITEINSERCAO.asstring := 'S'
         else
              dm.CDSItemUsuarioITEINSERCAO.asstring := 'N';
         if chkalteracao.Checked then
              dm.CDSItemUsuarioITEALTERACAO.asstring := 'S'
         else
              dm.CDSItemUsuarioITEALTERACAO.asstring := 'N';
         if chkexclusao.Checked then
              dm.CDSItemUsuarioITEEXCLUSAO.asstring := 'S'
         else
              dm.CDSItemUsuarioITEEXCLUSAO.asstring := 'N';
         if chkrelatorio.Checked then
              dm.CDSItemUsuarioITERELATORIO.asstring := 'S'
         else
              dm.CDSItemUsuarioITERELATORIO.asstring := 'N';
         dm.CDSItemusuario.post;
         dm.cdsPrograma.Next;
         application.processmessages;
     end;
     dm.CDSItemusuario.applyupdates(-1);
     chkacesso.checked := false;
     chkinsercao.checked := false;
     chkalteracao.checked := false;
     chkexclusao.checked := false;
     chkrelatorio.checked := false;
     txtprograma.clear;
     txtprograma.setfocus;
end;

procedure TFUsuario.chkrelatorioKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          btnsalvaritem.click;
end;

procedure TFUsuario.btnprogramaClick(Sender: TObject);
begin
     if Application.FindComponent('FPrograma') <> nil then
          FPrograma.Close;

     try
          fprograma := tfprograma.create(self);
          FPrograma.FormStyle := fsNormal;
          FPrograma.Visible := false;
          fprograma.BtnFiltro.click;
          dm.cdsprograma.open;
          fprograma.showmodal;
          txtprograma.text := dm.cdsprogramaprocod.asstring;
     finally
          fprograma.release;
          fprograma := nil;
          fprograma.free;
     end;
end;

procedure TFUsuario.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFUsuario.DBGrid2DblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFUsuario.FormActivate(Sender: TObject);
begin
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFUsuario.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFUsuario.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFUsuario.DBRadioGroup3Change(Sender: TObject);
begin
     {dm.CDSItemUsuario.first;
     while not dm.CDSItemUsuario.eof do
     begin
          dm.CDSItemUsuario.edit;

          if dm.CDSUsuarioUSUNAOINCLUI.asstring = 'N'
          then dm.CDSItemUsuarioITEINSERCAO.asstring := 'S'
          else dm.CDSItemUsuarioITEINSERCAO.asstring := 'N';

          if dm.CDSUsuarioUSUNAOALTERA.asstring = 'N'
          then dm.CDSItemUsuarioITEALTERACAO.asstring := 'S'
          else dm.CDSItemUsuarioITEALTERACAO.asstring := 'N';

          if dm.CDSUsuarioUSUNAOEXCLUI.asstring = 'N'
          then dm.CDSItemUsuarioITEEXCLUSAO.asstring := 'S'
          else dm.CDSItemUsuarioITEEXCLUSAO.asstring := 'N';

          if dm.CDSUsuarioUSUNAOCONSULTA.asstring = 'N'
          then dm.CDSItemUsuarioITEACESSO.asstring := 'S'
          else dm.CDSItemUsuarioITEACESSO.asstring := 'N';

          dm.CDSItemUsuario.post;
          dm.CDSItemUsuario.ApplyUpdates(0);
          dm.CDSItemUsuario.next;
     end;}
end;

procedure TFUsuario.btnnaturalidadeClick(Sender: TObject);
begin
     usuario('btnconsultar', 3);
     if Application.FindComponent('FCidade') <> nil then
          FCidade.Close;
     try
          FCidade := tfcidade.create(self);
          FCidade.FormStyle := fsNormal;
          FCidade.Visible := false;
          fcidade.txtpesquisa.text := txtcidade.text;
          fcidade.BtnFiltro.click;
          fcidade.showmodal;
          dm.CDSUsuarioUSUNATURALIDADE.asinteger := dm.cdscidadecidcod.asinteger;
          dm.CDSUsuarioNATURALIDADE.asinteger := dm.CDSCidadeCIDNOME.asinteger;
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFUsuario.btncidadeClick(Sender: TObject);
begin
     if Application.FindComponent('FCidade') <> nil then
          FCidade.Close;

     try
          fcidade := tfcidade.create(self);
          FCidade.FormStyle := fsNormal;
          FCidade.Visible := false;
          fcidade.txtpesquisa.text := txtcidade.text;
          fcidade.BtnFiltro.click;
          fcidade.showmodal;
          dm.CDSUsuarioUSUCIDADE.asinteger := dm.cdscidadecidcod.asinteger;
          dm.CDSUsuarioCIDADE.asinteger := dm.CDSCidadeCIDNOME.asinteger;
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFUsuario.btnProfessorClick(Sender: TObject);
begin
     usuario('btnconsultar', 3);
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;
     try
          FProfessor := tFProfessor.create(self);
          FCidade.FormStyle := fsNormal;
          FProfessor.Visible := false;
          FProfessor.txtpesquisa.text := txtprofessor.text;
          FProfessor.BtnFiltro.click;
          FProfessor.showmodal;
          dm.CDSUsuarioUSUPROFESSOR.asinteger := dm.CDSProfessorPROCOD.asinteger;
          dm.CDSUsuarioPRONOME.asinteger := dm.CDSProfessorPRONOME.asinteger;
     finally
          fprofessor.release;
          fprofessor := nil;
          fprofessor.free;
     end;
end;

end.
