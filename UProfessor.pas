unit UProfessor;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSDBMemo, Buttons, comobj;

type
     TFProfessor = class(TForm)
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
          WSDBEdit3: TWSDBEdit;
          Label3: TLabel;
          Label6: TLabel;
          Label7: TLabel;
          WSDBEdit5: TWSDBEdit;
          WSDBEdit6: TWSDBEdit;
          Label11: TLabel;
          txtcodcidade: TWSDBEdit;
          txtcidade: TWSDBEdit;
          Label9: TLabel;
          WSDBEdit8: TWSDBEdit;
          Label10: TLabel;
          WSDBEdit10: TWSDBEdit;
          Label12: TLabel;
          WSDBEdit11: TWSDBEdit;
          btncidade: TSpeedButton;
          txtcpf: TWSDBEdit;
          Label19: TLabel;
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
          btnfiltrocidade: TSpeedButton;
          txtfiltrocidade: TWSEdit;
          Label24: TLabel;
          Label17: TLabel;
          WSDBMemo1: TWSDBMemo;
          pandisciplinas: TPanel;
          Label20: TLabel;
          Panel1: TPanel;
          Label5: TLabel;
          Label21: TLabel;
          btndisciplina: TSpeedButton;
          txtdisciplina: TWSEdit;
          ToolBarItemDisciplina: TToolBar;
          btnsalvaritemdisc: TToolButton;
          btnexcluiritemdisc: TToolButton;
          txtobs: TWSEdit;
          txtcod: TWSDBEdit;
          PanGrupos: TPanel;
          Label15: TLabel;
          Panel3: TPanel;
          Grupo: TLabel;
          Label27: TLabel;
          btngrupos: TSpeedButton;
          txtcodgrupos: TWSEdit;
          ToolBarItemGrupo: TToolBar;
          btnsalvaritemgrupo: TToolButton;
          btnexcluiritemgrupo: TToolButton;
          txtobsgrupo: TWSEdit;
          DBGrid2: TDBGrid;
          txtresumo: TWSDBEdit;
          txtcurriculum: TWSDBEdit;
          btncurriculum: TSpeedButton;
          PanBotoes: TPanel;
          btnmostrargrupos: TSpeedButton;
          btndisciplinas: TSpeedButton;
          RLSystemInfo1: TRLSystemInfo;
          DBGrid: TDBGrid;
          Label26: TLabel;
          Label28: TLabel;
          txtvinculo: TWSDBEdit;
          Label13: TLabel;
          Label14: TLabel;
          ToolButton2: TToolButton;
          RLDBText11: TRLDBText;
          RLDBText6: TRLDBText;
          WSDBEdit1: TWSDBEdit;
          WSDBEdit2: TWSDBEdit;
          Label16: TLabel;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          txtnomecidade: TWSEdit;
          WSDBEdit4: TWSDBEdit;
          Label18: TLabel;
          TabSheet1: TTabSheet;
          ImgFoto: TDBImage;
    ToolButton3: TToolButton;
    btnPesquisa: TToolButton;
    Label22: TLabel;
    txtincpesquisa: TWSEdit;
    WSDBMemo2: TWSDBMemo;
    Label23: TLabel;
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
          procedure btncidadeClick(Sender: TObject);
          procedure btnfiltrocidadeClick(Sender: TObject);
          procedure btnexcluiritemdiscClick(Sender: TObject);
          procedure btndisciplinaClick(Sender: TObject);
          procedure btnsalvaritemdiscClick(Sender: TObject);
          procedure btndisciplinasClick(Sender: TObject);
          procedure WSDBMemo1KeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure DBGridDblClick(Sender: TObject);
          procedure FormActivate(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure btngruposClick(Sender: TObject);
          procedure btnexcluiritemgrupoClick(Sender: TObject);
          procedure btnsalvaritemgrupoClick(Sender: TObject);
          procedure btnmostrargruposClick(Sender: TObject);
          procedure btncurriculumClick(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure FormResize(Sender: TObject);
          procedure ImageDblClick(Sender: TObject);
          procedure txtfiltrocidadeExit(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure txtcodcidadeExit(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FProfessor: TFProfessor;

implementation

uses UDM, UMenu, UCidade, UGrupoPro, UDisciplina, UFuncoes;

{$R *.dfm}

procedure TFProfessor.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFProfessor.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFProfessor.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFProfessor.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFProfessor.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFProfessor.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as TForm, true);
     DataSource.DataSet.append;
end;

procedure TFProfessor.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, true);
     end;
end;

procedure TFProfessor.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFProfessor.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    integridade('CURDISPROFESSOR', 'TCURSODISCIPLINA', txtcod.text);
                    integridade('ALUDISPROFESSOR', 'TALUNODISCIPLINA', txtcod.text);
                    try
                         DataSource.DataSet.Delete;
                         (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFProfessor.BtnSalvarClick(Sender: TObject);
begin
     if (txtvinculo.Text <> '') and (txtvinculo.Text <> 'S') and (txtvinculo.Text <> 'N') then
     begin
          Showmessage('Campo Vincúlo inválido!');
          txtvinculo.setfocus;
          exit;
     end;
     if not cpf(txtcpf.text) then
     begin
          Showmessage('CPF inválido!');
          txtcpf.setfocus;
          exit;
     end;
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     if pandisciplinas.visible then
          btndisciplinas.click;
     navegar(lbltitulo.parent as TForm);
end;

procedure TFProfessor.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     if pandisciplinas.visible then
          btndisciplinas.click;
     Navegar(lbltitulo.parent as TForm);
end;

procedure TFProfessor.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFProfessor.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     dm.CDSProfessor.IndexFieldNames := '';
     with dm.qprofessor.sql do
     begin
          clear;
          add('select PROCOD,PRONOME,PROENDERECO,PROBAIRRO,PROCIDADE,PROCEP,');
          add('PROFONE,PROFAX,PROCELULAR,PROEMAIL,PROEMAIL2,PROSITE,PROCPF,');
          add('PRONOTAFISCAL,PROGRUPO,PROOBS,PROCURRICULUM,PROTITULACAO, PRORESUMOTITULACAO, PROCURRICULUMLATTES,');
          add('PROFOTO, PROVINCULO, PROFORMACAO, PROIDENTIDADE, PRODADOSFIN, CIDNOME, GRUPRONOME');
          add('FROM TPROFESSOR');
          add('LEFT OUTER JOIN TCIDADE ON CIDCOD = PROCIDADE');
          add('LEFT OUTER JOIN TGRUPOPRO ON GRUPROCOD = PROGRUPO');
          add('WHERE PROCOD >= 0');
          if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(PRONOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          if trim(txtfiltrocidade.text) <> '' then
               add('AND PROCIDADE = ' + trim(txtfiltrocidade.text));
          {if trim(txtfiltrogrupo.text) <> '' then
          begin
               add('AND PROCOD IN (SELECT PROGRUPROFESSOR FROM TPROFESSORGRUPO WHERE PROGRUGRUPO = ' + trim(txtfiltrogrupo.text) + ')');
               add('OR PROGRUPO = ' + trim(txtfiltrogrupo.text));
          end;}
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFProfessor.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela, 'TPROFESSORDISCIPLINA', 'TPROFESSORGRUPO'], [Datasource.dataset as TClientDataSet, dm.CDSProfessorDisciplina, dm.CDSProfessorGrupo]);
end;

procedure TFProfessor.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     importar(Wsinformacao.Tabela, DataSource);
     importar('TPROFESSORDISCIPLINA', dm.DSProfessorDisciplina);
     importar('TPROFESSORGRUPO', dm.DSProfessorGrupo);
end;

procedure TFProfessor.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFProfessor.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFProfessor.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     //BtnFiltro.click;
     btndesconectar.click;
end;

procedure TFProfessor.txtcodcidadeExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DataSource.DataSet.State in [dsEdit, dsInsert] then
            DM.CDSProfessorCIDNOME.AsString := executasqlretorno('SELECT CIDNOME FROM TCIDADE WHERE CIDCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFProfessor.txtcodKeyDown(Sender: TObject; var Key: Word;
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
          if (sender = txtcodcidade) or (sender = txtcidade) then
               btncidade.click;
          if (sender = txtdisciplina) then
               btndisciplina.click;
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
                              if pandisciplinas.visible then
                                   btnsalvaritemdisc.Click;
                              if PanGrupos.visible then
                                   btnsalvaritemgrupo.Click;
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

procedure TFProfessor.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
          if sender = txtfiltrocidade then
               btnfiltrocidade.click;
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

procedure TFProfessor.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFProfessor.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFProfessor.btncidadeClick(Sender: TObject);
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
          dm.CDSProfessorPROCIDADE.asinteger := dm.cdscidadecidcod.asinteger;
          dm.CDSProfessorPROCEP.asstring := dm.cdscidadecidcep.asstring;          
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFProfessor.btnfiltrocidadeClick(Sender: TObject);
begin
     if Application.FindComponent('FCidade') <> nil then
          FCidade.Close;

     try
          fcidade := tfcidade.create(self);
          FCidade.FormStyle := fsNormal;
          FCidade.Visible := false;
          usuario('btnconsultar', fcidade.wsinformacao.programa);
          fcidade.BtnFiltro.click;
          fcidade.showmodal;
          txtfiltrocidade.text := dm.CDSCidadeCIDCOD.asstring;
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFProfessor.btnexcluiritemdiscClick(Sender: TObject);
begin
     usuario('BtnExcluir', wsinformacao.programa);

     if (DM.CDSProfessorDisciplina.Active = true) then
          if (DM.CDSProfessorDisciplina.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         DM.CDSProfessorDisciplina.Delete;
                         DM.CDSProfessorDisciplina.ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFProfessor.btndisciplinaClick(Sender: TObject);
begin
     if Application.FindComponent('FDisciplina') <> nil then
          FDisciplina.Close;

     try
          fdisciplina := tfdisciplina.create(self);
          FDisciplina.FormStyle := fsNormal;
          FDisciplina.Visible := false;
          usuario('btnconsultar', fdisciplina.wsinformacao.programa);
          fdisciplina.BtnFiltro.click;
          fdisciplina.showmodal;
          txtdisciplina.text := dm.CDSDisciplinaDISCOD.asstring;
     finally
          fdisciplina.release;
          fdisciplina := nil;
          fdisciplina.free;
     end;
end;

procedure TFProfessor.btnsalvaritemdiscClick(Sender: TObject);
begin
     if (trim(txtdisciplina.text) = '') and (trim(txtobs.text) = '') then
     begin
          btnsalvar.click;
     end
     else
     begin
          try
               strtoint(txtdisciplina.text);
          except
               showmessage('Campo disciplina inválido!');
               txtdisciplina.SetFocus;
               exit;
          end;
          if (txtincpesquisa.text <> 'S') and (txtincpesquisa.text <> 'N') then
          begin
               showmessage('Campo pesquisa inválido, digite S ou N!');
               txtincpesquisa.SetFocus;
               exit;
          end;
          if not dm.CDSDisciplina.Locate('DISCOD', txtdisciplina.text, []) then
          begin
               showmessage('Disciplina não cadastrada!');
               txtdisciplina.SetFocus;
               exit;
          end;
          if dm.CDSProfessorDisciplina.Locate('PRODISPROFESSOR;PRODISDISCIPLINA', vararrayof([txtcod.text, txtdisciplina.Text]), []) then
          begin
               showmessage('Disciplina já cadastrada!');
               txtdisciplina.SetFocus;
               exit;
          end;
          dm.CDSProfessor.post;
          dm.CDSProfessor.applyupdates(0);
          dm.CDSProfessor.edit;
          dm.CDSProfessorDisciplina.Append;
          dm.CDSProfessorDisciplinaPRODISPROFESSOR.asinteger := dm.CDSProfessorPROCOD.asinteger;
          dm.CDSProfessorDisciplinaPRODISDISCIPLINA.AsInteger := strtoint(txtdisciplina.text);
          dm.CDSProfessorDisciplinaPRODISOBS.asstring := txtobs.text;
          dm.CDSProfessorDisciplinaPRODISPESQUISA.asstring := txtincpesquisa.text;
          dm.CDSProfessorDisciplina.post;
          dm.CDSProfessorDisciplina.ApplyUpdates(0);
          txtdisciplina.Clear;
          txtobs.clear;
          txtdisciplina.setfocus;
     end;
end;

procedure TFProfessor.btndisciplinasClick(Sender: TObject);
begin
     if PanGrupos.Visible then
          btnmostrargrupos.Click;
     pandisciplinas.visible := not pandisciplinas.visible;
end;

procedure TFProfessor.WSDBMemo1KeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 27) and (btncancelar.enabled = true) then
          btncancelar.click;
     if (Key = VK_F12) and (btnSalvar.enabled = true) then
          btnsalvar.Click;
end;

procedure TFProfessor.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFProfessor.FormActivate(Sender: TObject);
begin
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFProfessor.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFProfessor.btngruposClick(Sender: TObject);
begin
     if Application.FindComponent('FGrupoPro') <> nil then
          FGrupoPro.Close;

     try
          fgrupopro := tfgrupopro.create(self);
          FGrupoPro.FormStyle := fsNormal;
          FGrupoPro.Visible := false;
          usuario('btnconsultar', fgrupopro.wsinformacao.programa);
          fgrupopro.BtnFiltro.click;
          fgrupopro.showmodal;
          txtcodgrupos.text := dm.CDSGrupoProGruProCOD.asstring;
     finally
          fgrupopro.release;
          fgrupopro := nil;
          fgrupopro.free;
     end;
end;

procedure TFProfessor.btnexcluiritemgrupoClick(Sender: TObject);
begin
     usuario('BtnExcluir', wsinformacao.programa);

     if (DM.CDSProfessorGrupo.Active = true) then
          if (DM.CDSProfessorGrupo.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         DM.CDSProfessorGrupo.Delete;
                         DM.CDSProfessorGrupo.ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFProfessor.btnsalvaritemgrupoClick(Sender: TObject);
begin
     if (trim(txtcodgrupos.text) = '') and (trim(txtobsgrupo.text) = '') then
     begin
          btnsalvar.click;
     end
     else
     begin
          try
               strtoint(txtcodgrupos.text);
          except
               showmessage('Campo grupo inválido!');
               txtcodgrupos.SetFocus;
               exit;
          end;
          if not dm.CDSGrupoPro.Locate('GRUPROCOD', txtcodgrupos.text, []) then
          begin
               showmessage('Grupo de Professor não cadastrada!');
               txtcodgrupos.SetFocus;
               exit;
          end;
          if dm.CDSProfessorGrupo.Locate('PROGRUPROFESSOR;PROGRUGRUPO', vararrayof([txtcod.text, txtcodgrupos.Text]), []) then
          begin
               showmessage('Grupo já cadastrada!');
               txtcodgrupos.SetFocus;
               exit;
          end;
          dm.CDSProfessor.post;
          dm.CDSProfessor.applyupdates(0);
          dm.CDSProfessor.edit;
          dm.CDSProfessorGrupo.Append;
          dm.CDSProfessorGrupoPROGRUPROFESSOR.asinteger := dm.CDSProfessorPROCOD.asinteger;
          dm.CDSProfessorGrupoPROGRUGrupo.AsInteger := strtoint(txtcodgrupos.text);
          dm.CDSProfessorGrupoPROGRUOBS.asstring := txtobsgrupo.text;
          dm.CDSProfessorGrupo.post;
          dm.CDSProfessorGrupo.ApplyUpdates(0);
          txtcodgrupos.Clear;
          txtobsgrupo.clear;
          txtcodgrupos.setfocus;
     end;

end;

procedure TFProfessor.btnmostrargruposClick(Sender: TObject);
begin
     if pandisciplinas.Visible then
          btndisciplinas.Click;
     pangrupos.visible := not pangrupos.visible;
end;

procedure TFProfessor.btncurriculumClick(Sender: TObject);
var ie: Variant;
begin
     IE := CreateOleObject('InternetExplorer.Application');
     IE.Visible := true;
     IE.Navigate(dm.CDSProfessorPROCURRICULUMLATTES.asstring);
end;

procedure TFProfessor.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFProfessor.FormResize(Sender: TObject);
begin
     if FProfessor <> nil then
          PanBotoes.Left := FProfessor.Width - PanBotoes.Width - 20;
end;

procedure TFProfessor.ImageDblClick(Sender: TObject);
var BMP: TBitMap;
begin
     if datasource.dataset.State in [dsinsert, dsedit] then
     begin
          BMP := TBitMap.Create;
          if DM.OpenPictureDialog.Execute then
          begin
               BMP.LoadFromFile(DM.OpenPictureDialog.FileName);
               DM.CDSProfessorPROFoto.Assign(BMP);
          end;
     end;
end;

procedure TFProfessor.txtfiltrocidadeExit(Sender: TObject);
begin
     txtnomeCidade.clear;
     if trim(txtFiltroCidade.Text) <> '' then
     begin
          try
               strtoint(txtFiltroCidade.text);
          except
               txtnomeCidade.text := 'Campo Cidade Inválido!';
               txtFiltroCidade.setfocus;
               exit;
          end;
          if not dm.CDSCidade.active then
               dm.CDSCidade.open;
          if dm.CDSCidade.Locate('CIDCOD', txtFiltroCidade.text, []) then
          begin
               txtnomeCidade.text := dm.CDSCidadeCIDNOME.AsString;
          end
          else
          begin
               txtnomeCidade.text := 'Cidade não Cadastrado!';
               txtFiltroCidade.setfocus;
               exit;
          end;
     end;
end;

procedure TFProfessor.btnPesquisaClick(Sender: TObject);
begin
     {if DM.CDSProfessor.state in [dsedit, dsinsert] then
     begin
          showmessage('Confirme as alterações antes de prosseguir!');
          Exit;
     end;}
     if application.messagebox('Deseja zerar todos os professores para a pesquisa?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
     dm.qexiste.close;
     dm.qexiste.SQL.TExt := 'UPDATE TPROFESSORDISCIPLINA SET PRODISPESQUISA = ''N''';
     dm.qexiste.execsql;
     dm.qexiste.close;
     BtnFiltro.click;
     showmessage('Executado com sucesso, o cadastro foi carregado para atualizar os novos valores!');
     
end;

end.
