unit UCurso;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSDBMemo, Buttons, DateUtilS;

type
     TFCurso = class(TForm)
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
          txtvalor: TWSDBEdit;
          Label3: TLabel;
          Label6: TLabel;
          Label7: TLabel;
          WSDBEdit5: TWSDBEdit;
          WSDBEdit6: TWSDBEdit;
          Label12: TLabel;
          txtpercdesc: TWSDBEdit;
          Label13: TLabel;
          txtdesc: TWSDBEdit;
          WSDBEdit17: TWSDBEdit;
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
          pandisciplinas: TPanel;
          Label20: TLabel;
          Panel1: TPanel;
          Label5: TLabel;
          Label21: TLabel;
          btndisciplina: TSpeedButton;
          txtdisciplina: TWSEdit;
          ToolBarItem: TToolBar;
          btnsalvaritem: TToolButton;
          btnexcluiritem: TToolButton;
          txtprofessor: TWSEdit;
          txtcod: TWSDBEdit;
          Label9: TLabel;
          WSDBEdit1: TWSDBEdit;
          btnprofessor: TSpeedButton;
          RLLabel6: TRLLabel;
          RLDBText11: TRLDBText;
          RLDBText12: TRLDBText;
          RLLabel7: TRLLabel;
          Label10: TLabel;
          txtliquido: TWSDBEdit;
          Label11: TLabel;
          txthorasaula: TWSEdit;
          WSDBEdit2: TWSDBEdit;
          Label17: TLabel;
          Label18: TLabel;
          WSDBEdit8: TWSDBEdit;
          Label24: TLabel;
          txtcodcoordenador: TWSDBEdit;
          btncoordenador: TSpeedButton;
          txtcoordenador: TWSDBEdit;
          Label25: TLabel;
          WSDBEdit9: TWSDBEdit;
          RLSystemInfo1: TRLSystemInfo;
          DBGrid: TDBGrid;
          JvDBGrid1: TDBGrid;
          txtplanoneg: TWSDBEdit;
          btnplanoneg: TSpeedButton;
          txtcodplanoneg: TWSDBEdit;
          Label26: TLabel;
          DBGridDiscData: TDBGrid;
          WSDBEdit3: TWSDBEdit;
          Label14: TLabel;
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
    Label22: TLabel;
    Label23: TLabel;
    WSDBEdit11: TWSDBEdit;
    WSDBEdit12: TWSDBEdit;
    WSDBEdit13: TWSDBEdit;
    Label27: TLabel;
    WSDBEdit14: TWSDBEdit;
    Label28: TLabel;
    btnapagar: TSpeedButton;
    btnapagarfim: TSpeedButton;
    BtnGrupo: TSpeedButton;
    Label29: TLabel;
    TxtGrupo: TWSDBEdit;
    txtCodGRupo: TWSDBEdit;
    Label30: TLabel;
    txtTipo: TWSDBEdit;
    WSDBEdit15: TWSDBEdit;
    Label31: TLabel;
    btnFim: TSpeedButton;
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
          procedure btnexcluiritemClick(Sender: TObject);
          procedure btndisciplinaClick(Sender: TObject);
          procedure btnsalvaritemClick(Sender: TObject);
          procedure btnprofessorClick(Sender: TObject);
          procedure txtpercdescExit(Sender: TObject);
          procedure DBGridDblClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure btncoordenadorClick(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure btnplanonegClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure btnapagarfimClick(Sender: TObject);
    procedure BtnGrupoClick(Sender: TObject);
    procedure txtcodcoordenadorExit(Sender: TObject);
    procedure txtcodplanonegExit(Sender: TObject);
    procedure txtCodGRupoExit(Sender: TObject);
    procedure btnFimClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FCurso: TFCurso;

implementation

uses UDM, UMenu, UDisciplina, UProfessor, UPlanoConta, UPlanoNegocios,
  UGrupoCurso, UFuncoes;

{$R *.dfm}

procedure TFCurso.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFCurso.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFCurso.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFCurso.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFCurso.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFCurso.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as TForm, true);
     txtliquido.ReadOnly := False;
     txtvalor.ReadOnly := False;
     txtdesc.ReadOnly := False;
     txtpercdesc.ReadOnly := False;
     DataSource.DataSet.append;
end;

procedure TFCurso.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, true);
          txtliquido.ReadOnly := False;
          txtvalor.ReadOnly := False;
          txtdesc.ReadOnly := False;
          txtpercdesc.ReadOnly := False;
     end;
end;

procedure TFCurso.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, false);
          {txtliquido.ReadOnly := true;
          txtvalor.ReadOnly := true;
          txtdesc.ReadOnly := true;
          txtpercdesc.ReadOnly := true;}
          DataSource.DataSet.Edit;
     end;
end;

procedure TFCurso.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if Dm.CDSCursoDisciplina.Active then
         if Dm.CDSCursoDisciplina.RecordCount > 0 then
         begin
             ShowMessage('Exclua as disiciplinas do curso para continuar!');
             Exit;
         end;

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    integridade('ALUCURSO', 'TALUNO', txtcod.text);
                    try
                         DataSource.DataSet.Delete;
                         (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
                    except
                       on E: Exception do
                         ShowMessage('Impossível Excluir. Violação de Integridade.' + E.Message);
                    end;
               end;
end;

procedure TFCurso.BtnSalvarClick(Sender: TObject);
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
     if DataSource.DataSet.State in [dsInsert, dsEdit] then
         DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     dm.CDSCursoDisciplina.ApplyUpdates(0);
     navegar(lbltitulo.parent as TForm);
end;

procedure TFCurso.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(lbltitulo.parent as TForm);
end;

procedure TFCurso.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFCurso.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     with dm.qcurso.sql do
     begin
          clear;
          add('SELECT CURCOD,CURNOME,CURTURMA,CURCARGA,CURVALOR,CURPERCDESCONTO,CURGRUPO,');
          add('CURDESCONTO,CURVENCIMENTO,CURTCC,CURINICIO,CURFIM,CURLIQUIDO,CURHORARIOFIM, ');
          add('CURCOORDENADOR, CURSISTEMAAVALIACAO, CURCRITERIOSAVALIACAO, CURSECRETARIO, CURPLANONEGOCIOS,');
          add('CURSIGLA, CURSITE, CURSITEMONOGRAFIA, CURSITECALENDARIO, CURSITEAVISO, CURHORARIO, CURNUMTURMA, CURTIPO, ');
          add('PLANEGNOME, PRONOME, GRUNOME');
          add('FROM TCURSO');
          add('LEFT OUTER JOIN TPLANONEGOCIOS ON PLANEGCOD = CURPLANONEGOCIOS');
          add('LEFT OUTER JOIN TPROFESSOR ON PROCOD = CURCOORDENADOR');
          add('LEFT OUTER JOIN TGRUPOCURSO ON GRUCOD = CURGRUPO');
          add('WHERE CURCOD > 0');
          if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(CURNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFCurso.btnFimClick(Sender: TObject);
begin
   dm.CDSCursoCURFIM.AsDateTime := IncWeek(dm.CDSCursoCURINICIO.AsDateTime, dm.CDSCursoCURCARGA.AsInteger div HoursBetween(StrToTimeDef(Dm.CDSCursoCURHORARIO.AsString, now), StrToTimeDef(Dm.CDSCursoCURHORARIOFIM.AsString, now)));
end;

procedure TFCurso.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela, 'TCURSODISCIPLINA'], [Datasource.dataset as TClientDataSet, dm.CDSCursoDisciplina]);
end;

procedure TFCurso.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
     importar('TCURSODISCIPLINA', dm.DSCursoDisciplina);
end;

procedure TFCurso.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFCurso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if (datasource.DataSet.State = dsinsert) or (datasource.DataSet.State = dsedit) then
     begin
          showmessage('Impossível sair, você esta em modo de edição!');
          action := caNone;
          exit;
     end;
     salva_propriedades_tela((sender as tform).name, sender as TForm);
     salva_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm));
     //(sender as tform).Hide;
     limpa_edits(sender as tform);
     action := cafree;
end;

procedure TFCurso.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     btndesconectar.click;
     //BtnFiltro.click;
    carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFCurso.txtcodcoordenadorExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSCurso.State in [dsEdit, dsInsert] then
            DM.CDSCursoPRONOME.AsString := executasqlretorno('SELECT PRONOME FROM TPROFESSOR WHERE PROCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFCurso.txtCodGRupoExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSCurso.State in [dsEdit, dsInsert] then
            DM.CDSCursoGRUNOME.AsString := executasqlretorno('SELECT GRUNOME FROM TGRUPOCURSO WHERE GRUCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFCurso.txtcodKeyDown(Sender: TObject; var Key: Word;
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
          if (sender = txtprofessor) then
               btnprofessor.click;
          if (sender = txtdisciplina) then
               btndisciplina.click;
          if (sender = txtcodcoordenador) or (sender = txtcoordenador) then
               btncoordenador.click;
          if (sender = txtcodplanoneg) or (sender = txtplanoneg) then
               btnplanoneg.click;
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
                              btnsalvaritem.Click;
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

procedure TFCurso.txtcodplanonegExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSCurso.State in [dsEdit, dsInsert] then
            DM.CDSCursoPLANEGNOME.AsString := executasqlretorno('SELECT PLANEGNOME FROM TPLANONEGOCIOS WHERE PLANEGCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFCurso.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFCurso.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFCurso.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFCurso.btnexcluiritemClick(Sender: TObject);
begin
     usuario('BtnExcluir', wsinformacao.programa);

     if (DM.CDSCursoDisciplina.Active = true) then
          if (DM.CDSCursoDisciplina.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         DM.CDSCursoDisciplina.Delete;
                         DM.CDSCursoDisciplina.ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFCurso.btndisciplinaClick(Sender: TObject);
begin
     if Application.FindComponent('FDisciplina') <> nil then
          FDisciplina.Close;

     try
          fdisciplina := tfdisciplina.create(self);
          FDisciplina.FormStyle := fsNormal;
          fdisciplina.Visible := false;
          usuario('btnconsultar', fdisciplina.wsinformacao.programa);
          fdisciplina.BtnFiltro.click;
          fdisciplina.showmodal;
          txtdisciplina.text := dm.CDSDisciplinaDISCOD.asstring;
          txtdisciplina.SetFocus;
     finally
          fdisciplina.release;
          fdisciplina := nil;
          fdisciplina.free;
     end;
end;

procedure TFCurso.btnsalvaritemClick(Sender: TObject);
begin
     if (trim(txtdisciplina.text) = '') and (trim(txtprofessor.text) = '') then
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
          if executasqlretorno('SELECT DISNOME FROM TDISCIPLINA WHERE DISCOD = ' + txtdisciplina.Text) = '' then
          begin
               showmessage('Disciplina não cadastrada!');
               txtdisciplina.SetFocus;
               exit;
          end;
          try
               strtoint(txtprofessor.text);
          except
               showmessage('Campo professor inválido!');
               txtprofessor.SetFocus;
               exit;
          end;
          if executasqlretorno('SELECT PROCOD FROM TPROFESSOR WHERE PROCOD = ' + txtprofessor.Text) = '' then
          begin
               showmessage('Professor não cadastrado!');
               txtprofessor.SetFocus;
               exit;
          end;
          if dm.CDSCursoDisciplina.Locate('CURDISCURSO;CURDISDISCIPLINA;CURDISPROFESSOR', vararrayof([txtcod.text, txtdisciplina.Text, txtprofessor.text]), []) then
          begin
               showmessage('Disciplina já cadastrada!');
               txtdisciplina.SetFocus;
               exit;
          end;
          //dm.CDSCurso.post;
          //dm.CDSCurso.applyupdates(0);
          //dm.CDSCurso.edit;
          dm.CDSCursoDisciplina.Append;
          dm.CDSCursoDisciplinaCURDISCurso.asinteger := dm.CDSCursoCurCOD.asinteger;
          dm.CDSCursoDisciplinaCURDISDISCIPLINA.AsInteger := strtoint(txtdisciplina.text);
          dm.CDSCursoDisciplinaCURDISProfessor.asinteger := strtoint(txtprofessor.text);
          dm.CDSCursoDisciplinaCURDISHORASAULA.asinteger := strtointDef(txthorasaula.text,0);
          dm.CDSCursoDisciplinaPRONOME.AsString := executasqlretorno('SELECT PRONOME FROM TPROFESSOR WHERE PROCOD = ' + txtprofessor.Text);
          dm.CDSCursoDisciplinaDISNOME.AsString := executasqlretorno('SELECT DISNOME FROM TDISCIPLINA WHERE DISCOD = ' + txtdisciplina.Text);
          dm.CDSCursoDisciplina.post;
          dm.CDSCursoDisciplina.applyupdates(0);
          txtdisciplina.Clear;
          txtprofessor.clear;
          txthorasaula.clear;
          txtdisciplina.setfocus;
     end;
end;

procedure TFCurso.btnprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;

     try
          fprofessor := tfprofessor.create(Self);
          FProfessor.FormStyle := fsNormal;
          FProfessor.Visible := false;
          usuario('btnconsultar', fprofessor.wsinformacao.programa);
          fprofessor.BtnFiltro.click;
          fprofessor.showmodal;
          txtprofessor.text := dm.CDSProfessorProCOD.asstring;
          txtprofessor.SetFocus;
     finally
          fprofessor.release;
          fprofessor := nil;
          fprofessor.free;
     end;
end;

procedure TFCurso.txtpercdescExit(Sender: TObject);
begin
     DM.CDSCursoCURDESCONTO.asfloat := (DM.CDSCursoCURPERCDESCONTO.asfloat / 100) * dm.CDSCursoCURVALOR.asfloat;
end;

procedure TFCurso.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFCurso.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFCurso.btncoordenadorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;

     try
          fprofessor := tfprofessor.create(self);
          FProfessor.FormStyle := fsNormal;
          fprofessor.Visible := false;
          fprofessor.txtpesquisa.text := txtcoordenador.text;
          fprofessor.BtnFiltro.click;
          fprofessor.showmodal;
          dm.CDSCursoCURCOORDENADOR.asinteger := dm.CDSProfessorPROCOD.asinteger;
          txtcodcoordenador.SetFOcus;
     finally
          fprofessor.release;
          fprofessor := nil;
          fprofessor.free;
     end;
end;

procedure TFCurso.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFCurso.btnplanonegClick(Sender: TObject);
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
          dm.CDSCursoCURPLANONEGOCIOS.asinteger := dm.CDSPlanoNegociosPLANEGCOD.asinteger;
     finally
          FPlanoNegocios.release;
          FPlanoNegocios := nil;
          FPlanoNegocios.free;
     end;
end;

procedure TFCurso.btnapagarClick(Sender: TObject);
begin
     DM.CDSCursoCURINICIO.Clear;
end;

procedure TFCurso.btnapagarfimClick(Sender: TObject);
begin
     DM.CDSCursoCURFIM.Clear;
end;

procedure TFCurso.BtnGrupoClick(Sender: TObject);
begin
     if Application.FindComponent('FGrupoCurso') <> nil then
          FGrupoCurso.Close;

     try
          FGrupoCurso := tFGrupoCurso.create(self);
          FGrupoCurso.FormStyle := fsNormal;
          FGrupoCurso.Visible := false;
          FGrupoCurso.txtpesquisa.text := TxtGrupo.text;
          FGrupoCurso.BtnFiltro.click;
          FGrupoCurso.showmodal;
          dm.CDSCursoCURGRUPO.asinteger := dm.CDSGrupoCursoGRUCOD.asinteger;
          txtCodGRupo.SetFocus;
     finally
          FGrupoCurso.release;
          FGrupoCurso := nil;
          FGrupoCurso.free;
     end;
end;

end.
