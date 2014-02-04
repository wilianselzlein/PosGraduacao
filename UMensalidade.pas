unit UMensalidade;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSDBMemo, Buttons, WSMaskEdit;

type
     TFMensalidade = class(TForm)
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
          DataSource: TDataSource;
          WSInformacao: TWSInformacao;
          BtnCancelar: TToolButton;
          BtnSalvar: TToolButton;
          ToolButton4: TToolButton;
          PanPesquisa: TPanel;
          Label4: TLabel;
          txtpesquisa: TWSEdit;
          RLReport: TRLReport;
          RLBand3: TRLBand;
          RLLabel1: TRLLabel;
          RLBand4: TRLBand;
          RLLabel3: TRLLabel;
          RLBand5: TRLBand;
          RLDBText8: TRLDBText;
          RLBand1: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          RLLabel6: TRLLabel;
          Label24: TLabel;
          txtcodbanco: TWSDBEdit;
          btnbanco: TSpeedButton;
          txtbanco: TWSDBEdit;
          Label1: TLabel;
          btnaluno: TSpeedButton;
          txtcodaluno: TWSDBEdit;
          txtaluno: TWSDBEdit;
          RLDBText7: TRLDBText;
          btnfriltroaluno: TSpeedButton;
          txtfiltroaluno: TWSEdit;
          Label3: TLabel;
          txtnumero: TWSDBEdit;
          Label5: TLabel;
          Label7: TLabel;
          WSDBEdit2: TWSDBEdit;
          WSDBEdit1: TWSDBEdit;
          Label8: TLabel;
          Label9: TLabel;
          WSDBEdit3: TWSDBEdit;
          Label10: TLabel;
          txtdesconto: TWSDBEdit;
          Label11: TLabel;
          WSDBEdit5: TWSDBEdit;
          Label12: TLabel;
          txtvalorpago: TWSDBEdit;
          Label13: TLabel;
          txtdatapgto: TWSDBEdit;
          txtobs: TWSDBEdit;
          Label14: TLabel;
          RLLabel2: TRLLabel;
          RLDBText9: TRLDBText;
          RLDBText11: TRLDBText;
          RLLabel4: TRLLabel;
          RLDBText12: TRLDBText;
          RLLabel7: TRLLabel;
          RLLabel8: TRLLabel;
          RLDBText13: TRLDBText;
          RLDBText14: TRLDBText;
          RLLabel9: TRLLabel;
          RLLabel10: TRLLabel;
          RLLabel11: TRLLabel;
          RLDBText15: TRLDBText;
          RLDBText16: TRLDBText;
          RLBand6: TRLBand;
          RLDBResult1: TRLDBResult;
          RLDBResult2: TRLDBResult;
          RLDBResult3: TRLDBResult;
          RLDBResult4: TRLDBResult;
          RLDBResult6: TRLDBResult;
          RLLabel12: TRLLabel;
          btngerarmensalidades: TSpeedButton;
          btnbaixarmensalidade: TSpeedButton;
          panimpressao: TPanel;
          Image1: TImage;
          btnsintetico: TSpeedButton;
          Label20: TLabel;
          btnboleto: TSpeedButton;
          btnimportartxt: TButton;
          Label2: TLabel;
          btnforma: TSpeedButton;
          txtcodforma: TWSDBEdit;
          txtforma: TWSDBEdit;
          RLSystemInfo2: TRLSystemInfo;
          DBGrid: TDBGrid;
          Label6: TLabel;
          WSDBEdit6: TWSDBEdit;
    lblbolsa: TLabel;
    txtbolsa: TWSDBEdit;
          RLLabel24: TRLLabel;
          RLDBText25: TRLDBText;
          RLDBResult5: TRLDBResult;
          btncancbaixa: TSpeedButton;
          WSDBEdit8: TWSDBEdit;
          Label16: TLabel;
          Label17: TLabel;
          CDSTemp: TClientDataSet;
          CDSAlunoTemp: TClientDataSet;
          btnbaixas: TSpeedButton;
          ToolButton2: TToolButton;
          RLDBText6: TRLDBText;
          RLDBText33: TRLDBText;
          WSDBEdit9: TWSDBEdit;
          Label18: TLabel;
          btnboletotodos: TSpeedButton;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          txtnomealuno: TWSEdit;
          Label19: TLabel;
          Label21: TLabel;
          txtdataini: TWSMaskEdit;
          txtdatafin: TWSMaskEdit;
          chkimpressora: TCheckBox;
          Label22: TLabel;
          WSDBEdit4: TWSDBEdit;
    lblreneg: TLabel;
    txtreneg: TWSDBEdit;
          btnObsFin: TSpeedButton;
          Label25: TLabel;
          WSDBEdit11: TWSDBEdit;
          Label26: TLabel;
          WSDBEdit12: TWSDBEdit;
          WSDBEdit13: TWSDBEdit;
          Label27: TLabel;
    txtprofessor: TWSDBEdit;
    btnprofessor: TSpeedButton;
    txtcodprofessor: TWSDBEdit;
    lblprofessor: TLabel;
    btndisciplina: TSpeedButton;
    lbldisciplina: TLabel;
    txtdisciplina: TWSDBEdit;
    txtcoddisciplina: TWSDBEdit;
    lblValorPro: TLabel;
    txtvalorpro: TWSDBEdit;
    btnApagar: TSpeedButton;
    btnapagarpgto: TSpeedButton;
    chkRespPgto: TCheckBox;
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
          procedure DBGridDblClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure btnalunoClick(Sender: TObject);
          procedure btnfriltroalunoClick(Sender: TObject);
          procedure btnbancoClick(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure btngerarmensalidadesClick(Sender: TObject);
          procedure btnbaixarmensalidadeClick(Sender: TObject);
          procedure btnsinteticoClick(Sender: TObject);
          procedure btnboletoClick(Sender: TObject);
          procedure btnimportartxtClick(Sender: TObject);
          procedure btnformaClick(Sender: TObject);
          procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
               DataCol: Integer; Column: TColumn; State: TGridDrawState);
          procedure btncancbaixaClick(Sender: TObject);
          procedure txtnumeroEnter(Sender: TObject);
          procedure btnbaixasClick(Sender: TObject);
          procedure txtcodbancoExit(Sender: TObject);
          procedure btnboletotodosClick(Sender: TObject);
          procedure txtfiltroalunoExit(Sender: TObject);
          procedure btnObsFinClick(Sender: TObject);
    procedure btnprofessorClick(Sender: TObject);
    procedure btndisciplinaClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnapagarpgtoClick(Sender: TObject);
    procedure txtcodalunoExit(Sender: TObject);
    procedure txtcodformaExit(Sender: TObject);
    procedure txtcodprofessorExit(Sender: TObject);
    procedure txtcoddisciplinaExit(Sender: TObject);
     private
          { Private declarations }
          //function max_mensalidade(aluno : integer) : integer;
     public
          { Public declarations }
     end;

var
     FMensalidade: TFMensalidade;

implementation

uses UDM, UMenu, UDisciplina, UProfessor, UAluno, UCurso, UBanco,
     UMensalidadeGera, UFormaPgto, UMensalidadeBaixa, DateUtils, UFuncoes;

{$R *.dfm}

{function TFMensalidade.max_mensalidade(aluno : integer) : integer;
begin
     dm.QExec.SQL.Text := 'SELECT MAX(MENNUMERO) AS MAXX FROM TMENSALIDADE WHERE MENALUNO = ' + inttostr(aluno);
     dm.CDSExec.open;
     result := dm.cdsexec.fieldbyname('MAXX').asinteger + 1;
     dm.CDSExec.close;
end;}

procedure TFMensalidade.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFMensalidade.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFMensalidade.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFMensalidade.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFMensalidade.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFMensalidade.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as TForm, true);

     DataSource.DataSet.append;
end;

procedure TFMensalidade.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, true);
     end;
end;

procedure TFMensalidade.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if (dm.CDSMensalidadeMENVALORPAGO.asfloat > 0) then
     begin
          if (dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime < strtodate(valor_parametro(7))) then
          begin
               showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
               if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
          end;
          if (dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime > strtodate(valor_parametro(8))) then
          begin
               showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
               if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
          end;
     end;

     if (dm.CDSMensalidadeMENVENCIMENTO.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime) and (dm.CDSMensalidadeMENVALORPAGO.asfloat > 0) then
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

     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFMensalidade.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    //if (dm.CDSMensalidadeMENVALORPAGO.asfloat > 0) then
                    //begin
                    if (dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime < strtodate(valor_parametro(7))) then
                    begin
                         showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
                         if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
                    end;
                    if (dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime > strtodate(valor_parametro(8))) then
                    begin
                         showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
                         if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
                    end;
                    //end;

                    if dm.CDSMensalidadeMENVENCIMENTO.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime then
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

procedure TFMensalidade.BtnSalvarClick(Sender: TObject);
begin
     dm.CDSAlunoLKP.Locate('ALUCOD', dm.CDSMensalidadeMENALUNO.AsInteger, []);

     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);

     testa_data(dm.CDSMensalidadeMENVENCIMENTO.asdatetime);
     testa_data(dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime);

     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(0);

     if trim(dm.CDSMensalidadeMENLCTOCONTABILMENSALIDADE.AsString) <> '' then
          execsql('update tlctocontabil set lctdata = ' + quotedstr(FormatDateTime('mm/dd/yyyy', dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime)) + ' where lctnumero = ' + dm.CDSMensalidadeMENLCTOCONTABILMENSALIDADE.AsString);
     if trim(dm.CDSMensalidadeMENLCTOCONTABILDESCONTOS.AsString) <> '' then
          execsql('update tlctocontabil set lctdata = ' + quotedstr(FormatDateTime('mm/dd/yyyy', dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime)) + ' where lctnumero = ' + dm.CDSMensalidadeMENLCTOCONTABILDESCONTOS.AsString);
     if trim(dm.CDSMensalidadeMENLCTOCONTABILJUROS.AsString) <> '' then
          execsql('update tlctocontabil set lctdata = ' + quotedstr(FormatDateTime('mm/dd/yyyy', dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime)) + ' where lctnumero = ' + dm.CDSMensalidadeMENLCTOCONTABILJUROS.AsString);

     navegar(lbltitulo.parent as TForm);
end;

procedure TFMensalidade.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(lbltitulo.parent as TForm);
end;

procedure TFMensalidade.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFMensalidade.BtnFiltroClick(Sender: TObject);
begin
     if txtdataini.text <> '  /  /    ' then
     begin
          try
               strtodate(txtdataini.text);
          except
               showmessage('Campo vencimento inicial inválido!');
               txtdataini.setfocus;
               exit;
          end;
     end;
     if txtdatafin.text <> '  /  /    ' then
     begin
          try
               strtodate(txtdatafin.text);
          except
               showmessage('Campo vencimento final inválido!');
               txtdatafin.setfocus;
               exit;
          end;
     end;

     DataSource.DataSet.close;
     with dm.qmensalidade.sql do
     begin
          clear;
          add('select MENALUNO,MENNUMERO,MENVENCIMENTO,MENBANCO,MENVALOR,MENACRESCIMO,');
          add('MENDESCONTO,MENVALORPAGO,MENDATAPAGAMENTO,MENLIQUIDO,MENOBS,');
          add('MENLCTOCONTABILMENSALIDADE, MENLCTOCONTABILDESCONTOS, MENLCTOCONTABILJUROS,');
          add('MENFORMAPGTO,MENRECEBEU,MENBOLSA,MENTIPO,MENDOCUMENTO,MENBOLETOIMPRESSO,MENRENEGOCIACAO,');
          add('MENPROFESSOR, MENDISCIPLINA, MENVALORPROFESSOR, ALUNOME,BANNOME,ALUSITUACAO, FORNOME, PRONOME, DISNOME');
          add('FROM TMENSALIDADE');
          add('    LEFT OUTER JOIN TALUNO ON ALUCOD = MENALUNO');
          add('    LEFT OUTER JOIN TBANCO ON BANCOD = MENBANCO');
          add('    left outer join TPROFESSOR on PROCOD = MENPROFESSOR');
          add('    left outer join TDISCIPLINA on DISCOD = MENDISCIPLINA');
          add('    left outer join TFORMAPGTO on FORCOD = MENFORMAPGTO');
          add('WHERE MENNUMERO > 0');
          if txtdataini.text <> '  /  /    ' then
               add('AND MENVENCIMENTO >= :dataini');
          if txtdatafin.text <> '  /  /    ' then
               add('AND MENVENCIMENTO <= :datafin');
          if trim(txtfiltroaluno.text) <> '' then
               add('AND MENALUNO = ' + trim(txtfiltroaluno.text));
          if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(ALUNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     if txtdataini.text <> '  /  /    ' then
          dm.QMensalidade.parambyname('dataini').asdate := strtodate(txtdataini.text);
     if txtdatafin.text <> '  /  /    ' then
          dm.QMensalidade.parambyname('datafin').asdate := strtodate(txtdatafin.text);
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFMensalidade.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela], [Datasource.dataset as TClientDataSet]);
end;

procedure TFMensalidade.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
end;

procedure TFMensalidade.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFMensalidade.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFMensalidade.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     btndesconectar.click;
     txtreneg.visible := TipoSistema <> 'EMPRESARIAL';
     lblreneg.visible := txtreneg.visible;
     txtvalorpro.visible := txtreneg.visible;
     lblvalorpro.visible := txtreneg.visible;
    carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFMensalidade.txtcodKeyDown(Sender: TObject; var Key: Word;
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
          if (sender = txtcodbanco) or (sender = txtbanco) then
               btnbanco.click;
          if (sender = txtcodforma) or (sender = txtforma) then
               btnforma.click;
          if (sender = txtcodprofessor) or (sender = txtprofessor) then
               btnprofessor.click;
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

procedure TFMensalidade.txtcodprofessorExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSMensalidade.State in [dsEdit, dsInsert] then
            DM.CDSMensalidadePRONOME.AsString := executasqlretorno('SELECT PRONOME FROM TPROFESSOR WHERE PROCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFMensalidade.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
          if (sender is twsedit) then
          begin
               if (sender as twsedit).enterclicar then
                    btnfiltro.click
               else
                    Perform(WM_nextDlgCtl, 0, 0);
          end;
          if (sender is TWSMaskEdit) then
          begin
               if (sender as twsmaskedit).enterclicar then
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

procedure TFMensalidade.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFMensalidade.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     panimpressao.visible := not panimpressao.visible;
end;

procedure TFMensalidade.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFMensalidade.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
     
     lblprofessor.Visible := valor_parametro(15) = 'S';
     txtcodprofessor.Visible := lblprofessor.Visible;
     txtprofessor.Visible := lblprofessor.Visible;
     btnprofessor.Visible := lblprofessor.Visible;
     lbldisciplina.Visible := lblprofessor.Visible;
     txtcoddisciplina.Visible := lblprofessor.Visible;
     txtdisciplina.Visible := lblprofessor.Visible;
     btndisciplina.Visible := lblprofessor.Visible;
end;

procedure TFMensalidade.btnalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          faluno := tfaluno.create(self);
          FAluno.FormStyle := fsNormal;
          FAluno.Visible := false;
          faluno.txtpesquisa.text := txtaluno.text;
          faluno.BtnFiltro.click;
          faluno.showmodal;
          DM.CDSMensalidadeMENALUNO.asinteger := dm.CDSAlunoAluCOD.asinteger;
     finally
          faluno.release;
          faluno := nil;
          faluno.free;
     end;
end;

procedure TFMensalidade.btnfriltroalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          faluno := tfaluno.create(self);
          FAluno.FormStyle := fsNormal;
          faluno.Visible := false;
          usuario('btnconsultar', faluno.wsinformacao.programa);
          faluno.BtnFiltro.click;
          faluno.showmodal;
          txtfiltroaluno.text := dm.CDSAlunoAluCOD.asstring;
     finally
          faluno.release;
          faluno := nil;
          faluno.free;
     end;
end;

procedure TFMensalidade.btnbancoClick(Sender: TObject);
begin
     if Application.FindComponent('FBanco') <> nil then
          FBanco.Close;

     try
          fbanco := tfbanco.create(self);
          FBanco.FormStyle := fsNormal;
          fbanco.Visible := false;
          fbanco.txtpesquisa.text := txtbanco.text;
          fbanco.BtnFiltro.click;
          fbanco.showmodal;
          dm.CDSMensalidadeMenbanco.asinteger := dm.CDSbancobanCOD.asinteger;
     finally
          fbanco.release;
          fbanco := nil;
          fbanco.free;
     end;
end;

procedure TFMensalidade.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFMensalidade.btngerarmensalidadesClick(Sender: TObject);
begin
     try
          fmensalidadegera := tfmensalidadegera.create(self);
          FMensalidadeGera.FormStyle := fsNormal;
          FMensalidadeGera.Visible := false;
          fmensalidadegera.showmodal;
     finally
          fmensalidadegera.Release;
          fmensalidadegera := nil;
          fmensalidadegera.free;
     end;
     btndesconectar.Click;
     BtnFiltro.Click;
end;

procedure TFMensalidade.btnbaixarmensalidadeClick(Sender: TObject);
begin

     if DataSource.DataSet.Active then
     begin
          if (dm.CDSMensalidadeMENVENCIMENTO.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime) and (dm.CDSMensalidadeMENVALORPAGO.asfloat > 0) then
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
          if Application.FindComponent('FMensalidadeBaixa') <> nil then
               FMensalidadeBaixa.Close;

          try
               fmensalidadebaixa := tfmensalidadebaixa.create(self);
               FMensalidadeBaixa.FormStyle := fsNormal;
               FMensalidadeBaixa.Visible := false;
               fmensalidadebaixa.txtaluno.Text := txtfiltroaluno.text;
               if trim(fmensalidadebaixa.txtaluno.Text) = '' then
                    fmensalidadebaixa.txtaluno.Text := dm.CDSMensalidadeMENALUNO.asstring;
               fmensalidadebaixa.txtvcto.Text := dm.CDSMensalidadeMENVENCIMENTO.asstring;
               fmensalidadebaixa.showmodal;
          finally
               fmensalidadebaixa.Release;
               fmensalidadebaixa := nil;
               fmensalidadebaixa.free;
          end;
     end;
     btndesconectar.Click;
     BtnFiltro.Click;
end;

procedure TFMensalidade.btnsinteticoClick(Sender: TObject);
begin
     if chkimpressora.Checked
          then RLReport.Print
     else RLReport.PreviewModal;
end;

procedure TFMensalidade.btnboletoClick(Sender: TObject);
begin
     if not dm.CDSCurso.Active then
          dm.CDSCurso.open;

     if not dm.CDSCurso.Active then
     begin
         showmessage('Selecione ao menos uma mensalidade para impressão do boleto!');
         exit;
     end;
     DM.CDSMensalidade.Edit;
     DM.CDSMensalidadeMENBOLETOIMPRESSO.Asstring := 'SIM';
     DM.CDSMensalidade.Post;
     DM.CDSMensalidade.ApplyUpdates(0);
     //Campos para a geração do boleto

     {DM.gbTitulo.Carteira := 'CNR'; //Carteira do título, conforme informado pelo banco. Ex.: 175, SR
     //Cedente
     DM.CDSBanco.Locate('BANCOD', dm.CDSMensalidadeMENBANCO.asinteger, []);
     DM.gbTitulo.Carteira := DM.CDSBancoBANCARTEIRA.asstring;
     DM.gbTitulo.Cedente.ContaBancaria.Banco.Codigo := DM.CDSBancoBANCONTANUMERO.asstring;
     DM.gbTitulo.Cedente.ContaBancaria.CodigoAgencia := DM.CDSBancoBANAGENCIA.AsString;
     DM.gbTitulo.Cedente.ContaBancaria.DigitoAgencia := DM.CDSBancoBANAGENCIADIGITO.AsString;
     DM.gbTitulo.Cedente.ContaBancaria.NomeCliente := DM.CDSBancoBANNOMENOBANCO.AsString;
     DM.gbTitulo.Cedente.ContaBancaria.NumeroConta := DM.CDSBancoBANCONTANUMERO.AsString;
     DM.gbTitulo.Cedente.ContaBancaria.DigitoConta := DM.CDSBancoBANCONTADIGITO.AsString;
     DM.gbTitulo.Cedente.CodigoCedente := DM.CDSBancoBANCEDENTECODIGO.AsString; //Código que identifica o cedente junto ao banco. Em muitos casos, é igual o número da conta, mas nem sempre.
     DM.gbTitulo.Cedente.DigitoCodigoCedente := DM.CDSBancoBANCEDENTEDIGITO.AsString;

     DM.gbTitulo.Cedente.Nome := DM.CDSInstitutoINSNOME.Value + ' ' + DM.CDSInstitutoINSCNPJ.AsString;
     DM.gbTitulo.Cedente.Endereco.Complemento := '';
     DM.gbTitulo.Cedente.Endereco.Bairro := DM.CDSInstitutoINSBAIRRO.Value;
     DM.gbTitulo.Cedente.Endereco.Rua := DM.CDSInstitutoINSENDERECO.Value;
     DM.gbTitulo.Cedente.Endereco.Numero := DM.CDSInstitutoINSNUMERO.asstring;
     DM.gbTitulo.Cedente.Endereco.CEP := DM.CDSInstitutoINSCEP.Value;
     DM.gbTitulo.Cedente.NumeroCPFCGC := DM.CDSInstitutoINSCNPJ.Value;
     //DM.gbTitulo.Cedente.Endereco.EMail:= DM.CDSInstitutoINSEMAIL.value;
     DM.gbTitulo.Cedente.Endereco.Cidade := DM.CDSInstitutoINSCIDADE.Value;
     DM.gbTitulo.Cedente.Endereco.Estado := DM.CDSInstitutoINSUF.Value;
     //Campos para a geração do boleto
     DM.gbTitulo.DataDocumento := DM.CDSMensalidadeMENVENCIMENTO.Value; //Data do documento que originou a cobrança (nota fiscal, etc...
     DM.gbTitulo.DataProcessamento := Date; //Data em que o título foi impresso
     //DM.gbTitulo.DataProtesto:= DM.CDSMensalidadeMENVENCIMENTO.Value + 30;
     DM.gbTitulo.DataVencimento := DM.CDSMensalidadeMENVENCIMENTO.value; //Data do vencimento do título
     DM.gbTitulo.Instrucoes.Clear;
     //DM.gbTitulo.Instrucoes.ADD('Parcela ' + Dm.CDSMensalidadeMENNUMERO.asstring + ' de ' + executasqlretorno('select count(mennumero) from tmensalidade where menaluno = ' + dm.CDSMensalidadeMENALUNO.asstring));
     DM.gbTitulo.Sacado.Endereco.Complemento := DM.CDSInstitutoINSENDERECO.AsString + ' ' + dm.CDSInstitutoINSCEP.asstring + ' ' + dm.CDSInstitutoINSCIDADE.asString + ' - ' + DM.CDSInstitutoINSUF.asString + ' | ' + dm.CDSInstitutoINSSITE.asString;

     DM.gbTitulo.Instrucoes.ADD('CONCEDER DESCONTO ATÉ O VENCIMENTO DE R$ ' + txtdesconto.text + '.');
     DM.gbTitulo.Instrucoes.ADD(DM.CDSMensalidadeMENOBS.AsString);
     DM.gbTitulo.Instrucoes.ADD('Não receber após 60 dias.');
     DM.gbTitulo.Instrucoes.ADD('');

     DM.gbTitulo.LocalPagamento := 'Pagável em qualquer banco até o vencimento'; //Local onde o título deverá ser pago. Ex.: 'Pagável em qualquer banco até o vencimento'
     //DM.gbTitulo.MotivoRejeicaoComando //Caso uma ocorrência não seja aceita pelo bancos, aqui mostra qual foi o motivo
     //DM.gbTitulo.EmissaoBoleto:= ebClienteEmite;

     //DM.gbTitulo.NossoNumero:= DM.CDSMensalidadeMENALUNO.AsString+DM.CDSMensalidadeMENNUMERO.AsString;
     DM.gbTitulo.NossoNumero := DM.CDSMensalidadeMENALUNO.AsString;
     //DM.gbTitulo.SeuNumero
     DM.gbTitulo.NumeroDocumento := FormatFloat('0000000000000', DM.CDSMensalidadeMENALUNO.ASInteger);
     DM.gbTitulo.ValorDocumento := DM.CDSMensalidadeMENVALOR.Value; //Valor do título
     //DM.gbTitulo.ValorDesconto:= DM.CDSMensalidadeMENDESCONTO.Value + DM.CDSMensalidadeMENBOLSA.Value;
     //Sacado
     DM.CDSAlunoLkp.Locate('ALUCOD', DM.CDSMensalidadeMENALUNO.Value, []);
     dm.CDSCurso.Locate('CURCOD', dm.CDSAlunoLkpALUCURSO.AsInteger, []);
     //DM.gbTitulo.Instrucoes.ADD('Curso: ' + DM.CDSCursoCURCOD.AsString + ' - ' + DM.CDSCursoCURNOME.AsString);
     DM.gbTitulo.Cedente.Endereco.EMail := 'CURSO: ' + DM.CDSCursoCURCOD.AsString + ' - ' + DM.CDSCursoCURNOME.AsString;

     //DM.gbTitulo.Sacado.TipoInscricao:= tiPessoaFisica;


     DM.gbTitulo.Sacado.Nome := dm.CDSAlunoLkpALUNOME.AsString;
     DM.gbTitulo.Sacado.Endereco.Complemento := dm.CDSCursoCURNOME.AsString;
     DM.gbTitulo.Sacado.NumeroCPFCGC := BuscaTroca(BuscaTroca(DM.CDSAlunoLkpALUCPF.AsString, '.', ''), '-', '');
     DM.gbTitulo.Sacado.Endereco.Bairro := DM.CDSAlunoLkpALUBAIRRO.Value;
     DM.gbTitulo.Sacado.Endereco.Rua := DM.CDSAlunoLkpALUENDERECO.Value;
     //DM.gbTitulo.Sacado.Endereco.Numero:= DM.TBClienteCLI

     DM.gbTitulo.Sacado.Endereco.CEP := BuscaTroca(DM.CDSAlunoLkpALUCEP.AsString, '-', '');
     DM.gbTitulo.Sacado.Endereco.EMail := DM.CDSAlunoLkpALUEMAIL.Value;
     //DM.TBBanco.FindKey([DM.TBClienteCLIBANCO.Value]);
     //DM.gbTitulo.Sacado.ContaBancaria.Banco.Codigo:= DM.TBBancoBANNUMERO.Value;
     //DM.gbTitulo.Sacado.ContaBancaria.NomeCliente
     //DM.gbTitulo.Sacado.ContaBancaria.CodigoAgencia
     //DM.gbTitulo.Sacado.ContaBancaria.DigitoAgencia
     //DM.gbTitulo.Sacado.ContaBancaria.NumeroConta
     //DM.gbTitulo.Sacado.ContaBancaria.DigitoConta
     DM.CDSCidade.Locate('CIDCOD', DM.CDSAlunoLkpALUCIDADE.Value, []);
     DM.gbTitulo.Sacado.Endereco.Cidade := DM.CDSCidadeCIDCOD.asstring;
     DM.gbTitulo.Sacado.Endereco.Estado := DM.CDSCidadeCIDUF.Value;


     if (chkRespPgto.Checked) then
     begin
          if not dm.CDSAluno.Active then
               dm.CDSAluno.Open;
                
          if (dm.CDSAluno.locate('ALUCOD',dm.CDSMensalidadeMENALUNO.AsInteger,[loCaseInsensitive, loPartialkey])) then
          begin
               if dm.CDSAlunoAluRespPgto.AsInteger > 0 then
               begin
                    if not dm.CDSNetworking.Active then
                         dm.CDSNetworking.Open;
                    if dm.CDSNetworking.Locate('NETCOD', dm.CDSAlunoAluRespPgto.AsInteger, [loPartialKey, loCaseINsensitive]) then
                    begin
                         DM.gbTitulo.Sacado.Nome := dm.CDSNetworkingNETNOME.AsString;
                         DM.gbTitulo.Sacado.Endereco.Complemento := dm.CDSCursoCURNOME.AsString;
                         DM.gbTitulo.Sacado.NumeroCPFCGC := BuscaTroca(BuscaTroca(DM.CDSNetworkingNETCPF.AsString, '.', ''), '-', '');
                         DM.gbTitulo.Sacado.Endereco.Bairro := DM.CDSNetworkingNETBAIRRO.Value;
                         DM.gbTitulo.Sacado.Endereco.Rua := DM.CDSNetworkingNETENDERECO.Value;
                         //DM.gbTitulo.Sacado.Endereco.Numero:= DM.TBClienteCLI

                         DM.gbTitulo.Sacado.Endereco.CEP := BuscaTroca(DM.CDSNetworkingNETCEP.AsString, '-', '');
                         DM.gbTitulo.Sacado.Endereco.EMail := DM.CDSNetworkingNETEMAIL.Value;
                         //DM.TBBanco.FindKey([DM.TBClienteCLIBANCO.Value]);
                         //DM.gbTitulo.Sacado.ContaBancaria.Banco.Codigo:= DM.TBBancoBANNUMERO.Value;
                         //DM.gbTitulo.Sacado.ContaBancaria.NomeCliente
                         //DM.gbTitulo.Sacado.ContaBancaria.CodigoAgencia
                         //DM.gbTitulo.Sacado.ContaBancaria.DigitoAgencia
                         //DM.gbTitulo.Sacado.ContaBancaria.NumeroConta
                         //DM.gbTitulo.Sacado.ContaBancaria.DigitoConta
                         DM.CDSCidade.Locate('CIDCOD', DM.CDSNetworkingNETCIDADE.Value, []);
                         DM.gbTitulo.Sacado.Endereco.Cidade := DM.CDSCidadeCIDCOD.asstring;
                         DM.gbTitulo.Sacado.Endereco.Estado := DM.CDSCidadeCIDUF.Value;
                    end;
               end
               else
               begin
                    if dm.CDSAlunoALURESPONSAVEL.AsString = 'Pai' then
                        DM.gbTitulo.Sacado.Nome := DM.CDSAlunoALUNOMEPAI.asstring
                    else
                        DM.gbTitulo.Sacado.Nome := DM.CDSAlunoALUNOMEMAE.asstring;
                    DM.gbTitulo.Sacado.Endereco.Complemento := dm.CDSCursoCURNOME.AsString;
                    DM.gbTitulo.Sacado.NumeroCPFCGC := BuscaTroca(BuscaTroca(DM.CDSAlunoALURESPONSAVELCPF.AsString, '.', ''), '-', '');
                    DM.gbTitulo.Sacado.Endereco.Bairro := DM.CDSAlunoALUBAIRRO.Value;
                    DM.gbTitulo.Sacado.Endereco.Rua := DM.CDSAlunoALUENDERECO.Value;
                    //DM.gbTitulo.Sacado.Endereco.Numero:= DM.TBClienteCLI

                    DM.gbTitulo.Sacado.Endereco.CEP := BuscaTroca(DM.CDSAlunoALUCEP.AsString, '-', '');
                    DM.gbTitulo.Sacado.Endereco.EMail := DM.CDSAlunoALUEMAIL.Value;
                    //DM.TBBanco.FindKey([DM.TBClienteCLIBANCO.Value]);
                    //DM.gbTitulo.Sacado.ContaBancaria.Banco.Codigo:= DM.TBBancoBANNUMERO.Value;
                    //DM.gbTitulo.Sacado.ContaBancaria.NomeCliente
                    //DM.gbTitulo.Sacado.ContaBancaria.CodigoAgencia
                    //DM.gbTitulo.Sacado.ContaBancaria.DigitoAgencia
                    //DM.gbTitulo.Sacado.ContaBancaria.NumeroConta
                    //DM.gbTitulo.Sacado.ContaBancaria.DigitoConta
                    DM.CDSCidade.Locate('CIDCOD', DM.CDSAlunoALUCIDADE.Value, []);
                    DM.gbTitulo.Sacado.Endereco.Cidade := DM.CDSCidadeCIDCOD.asstring;
                    DM.gbTitulo.Sacado.Endereco.Estado := DM.CDSCidadeCIDUF.Value;

               end;
          end;
     end;
     //Campos para geração do boleto

     //DM.gbTitulo.DataRecebimento //Data em que o título foi pago pelo sacado
     //DM.gbTitulo.ValorDesconto:=DM.CDSMensalidadeMENDESCONTO.AsFloat;
     //DM.gbTitulo.ValorMoraJuros:= 1;
     //DM.gbTitulo.DataMoraJuros:= DM.CDSMensalidadeMENVENCIMENTO.AsDateTime + DM.CDSBancoBANMULTACARENCIA.AsFloat; //Data a partir da qual serão cobrados juros
     //DM.gbTitulo.DataAbatimento //Data máxima para conceder abatimentos ao sacado
     //DM.gbTitulo.DataBaixa //Data em que o título deverá ser baixado(Desativado)
     //DM.gbTitulo.DataCredito //Data em que o banco liberará o dinheiro para o cedente
     //DM.gbTitulo.DataDesconto //Data máxima para  desconto ao sacado
     //DM.gbTitulo.AceiteDocumento:= adNao;

     try
          //if FileExists('c:\boleto.qrp') then
          //     DeleteFile('c:\boleto.qrp');
          //if FileExists('c:\boleto.bmp') then
          //     DeleteFile('c:\boleto.bmp');

          //fmensalidade.FormStyle := fsNormal;
          fmensalidade.SendToBack;
          if chkimpressora.Checked then
              DM.gbTitulo.Imprimir
          else
              DM.gbTitulo.Visualizar;
          fmensalidade.BringToFront;
          //fmensalidade.FormStyle := fsStayOnTop;

          //if DM.SaveDialogBmp.Execute then
          //begin
          //     try
          //         CopyFile('c:\boleto.bmp', pchar(dm.SaveDialogBmp.filename), true);
          //         showmessage('Arquivo salvo com sucesso!');
          //     except
          //         showmessage('Problemas ao salvar o arquivo!');
          //     end;
          //end;
     finally

     end;}
end;

procedure TFMensalidade.btnimportartxtClick(Sender: TObject);
var memo: Tmemo;
     i: integer;
begin
     memo := Tmemo.Create(nil);
     memo.Name := 'MEMOIMPORT';
     memo.Parent := FMensalidade;
     memo.ScrollBars := ssBoth;
     memo.Lines.LoadFromFile('c:\mens1.txt');

     for i := 0 to memo.lines.Count - 1 do
     begin
          Application.ProcessMessages;
          if trim(copy(memo.Lines.Strings[i], 25, 5)) <> '' then
          begin
               DataSource.DataSet.close;
               with dm.qmensalidade.sql do
               begin
                    clear;
                    add('select MENALUNO,MENNUMERO,MENVENCIMENTO,MENBANCO,MENVALOR,MENACRESCIMO,');
                    add('MENDESCONTO,MENVALORPAGO,MENDATAPAGAMENTO,MENLIQUIDO,MENOBS,');
                    add('MENLCTOCONTABILMENSALIDADE, MENLCTOCONTABILDESCONTOS, MENLCTOCONTABILJUROS,');
                    add('MENFORMAPGTO,MENRECEBEU,MENBOLSA,ALUNOME');
                    add('from TMENSALIDADE left outer join TALUNO on ALUCOD = MENALUNO');
                    add('where MENNUMERO > 0');
                    add('AND MENALUNO = ' + trim(copy(memo.Lines.Strings[i], 25, 5)));
                    add('ORDER BY MENVENCIMENTO');
               end;
               DataSource.DataSet.open;

               if DataSource.DataSet.recordcount > 0 then
               begin
                    DataSource.DataSet.first;
                    while not DataSource.DataSet.eof do
                    begin
                         if (trim(copy(memo.Lines.Strings[i], 49, 5)) = '1') or (trim(copy(memo.Lines.Strings[i], 49, 5)) = '2')
                              or (trim(copy(memo.Lines.Strings[i], 49, 5)) = '3') then //mensalidade
                         begin
                              if (dm.CDSMensalidadeMENVALORPAGO.asfloat > 0) then
                              begin
                                   dm.CDSMensalidade.Next;
                                   continue;
                              end;
                         end;
                         if trim(copy(memo.Lines.Strings[i], 49, 5)) = '10' then //juro
                         begin
                              if (dm.CDSMensalidadeMENACRESCIMO.asfloat > 0) then
                              begin
                                   dm.CDSMensalidade.Next;
                                   continue;
                              end;
                         end;

                         dm.CDSMensalidade.edit;
                         if (trim(copy(memo.Lines.Strings[i], 49, 5)) = '1') or (trim(copy(memo.Lines.Strings[i], 49, 5)) = '2')
                              or (trim(copy(memo.Lines.Strings[i], 49, 5)) = '3') then //mensalidade
                         begin
                              dm.CDSMensalidadeMENVALORPAGO.asfloat := dm.CDSMensalidadeliquido.asfloat;
                              dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime := strtodate(trim(copy(memo.Lines.Strings[i], 0, 12)));
                         end;
                         if (trim(copy(memo.Lines.Strings[i], 49, 5)) = '54') or (trim(copy(memo.Lines.Strings[i], 49, 5)) = '50') then //descontos
                         begin
                              //não fazer nada porque já tá lançado o desconto
                         end;
                         if trim(copy(memo.Lines.Strings[i], 49, 5)) = '10' then //juros
                         begin
                              dm.CDSMensalidadeMENDESCONTO.asfloat := 0;
                              dm.CDSMensalidadeMENACRESCIMO.asfloat := strtofloat(trim(buscatroca(copy(memo.Lines.Strings[i], 142, 9), '.', '')));
                              dm.CDSMensalidadeMENVALORPAGO.asfloat := dm.CDSMensalidadeliquido.asfloat;
                              dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime := strtodate(trim(copy(memo.Lines.Strings[i], 0, 12)));
                              dm.CDSMensalidade.edit;
                         end;
                         dm.CDSMensalidade.Post;
                         dm.CDSMensalidade.ApplyUpdates(0);
                         break;

                         DataSource.DataSet.next;
                    end;
               end;
          end;
          application.ProcessMessages;
     end;

     memo.Lines.LoadFromFile('c:\mens2.txt');
     for i := 0 to memo.lines.Count - 1 do
     begin
          Application.ProcessMessages;
          if (trim(copy(memo.Lines.Strings[i], 18, 5)) <> '') and (trim(copy(memo.Lines.Strings[i], 18, 5)) <> '0') and (trim(copy(memo.Lines.Strings[i], 18, 5)) <> '-') then
          begin
               DataSource.DataSet.close;
               with dm.qmensalidade.sql do
               begin
                    clear;
                    add('select MENALUNO,MENNUMERO,MENVENCIMENTO,MENBANCO,MENVALOR,MENACRESCIMO,');
                    add('MENDESCONTO,MENVALORPAGO,MENDATAPAGAMENTO,MENLIQUIDO,MENOBS,');
                    add('MENLCTOCONTABILMENSALIDADE, MENLCTOCONTABILDESCONTOS, MENLCTOCONTABILJUROS,');
                    add('MENFORMAPGTO,MENRECEBEU,MENBOLSA,ALUNOME');
                    add('from TMENSALIDADE left outer join TALUNO on ALUCOD = MENALUNO');
                    add('where MENNUMERO > 0');
                    add('AND MENALUNO = ' + trim(copy(memo.Lines.Strings[i], 18, 5)));
                    add('ORDER BY MENVENCIMENTO');
               end;
               try
                    DataSource.DataSet.open;
               except
                    showmessage(dm.qmensalidade.sql.text);
               end;

               if DataSource.DataSet.recordcount > 0 then
               begin
                    DataSource.DataSet.first;
                    while not DataSource.DataSet.eof do
                    begin
                         if (trim(copy(memo.Lines.Strings[i], 35, 4)) = '1') or (trim(copy(memo.Lines.Strings[i], 35, 4)) = '2')
                              or (trim(copy(memo.Lines.Strings[i], 35, 4)) = '3') then //mensalidade
                         begin
                              if (dm.CDSMensalidadeMENVALORPAGO.asfloat > 0) then
                              begin
                                   dm.CDSMensalidade.Next;
                                   continue;
                              end;
                         end;
                         if (trim(copy(memo.Lines.Strings[i], 35, 4)) = '10') or (trim(copy(memo.Lines.Strings[i], 35, 4)) = '2') then //juros
                         begin
                              if (dm.CDSMensalidadeMENACRESCIMO.asfloat > 0) then
                              begin
                                   dm.CDSMensalidade.Next;
                                   continue;
                              end;
                         end;

                         dm.CDSMensalidade.edit;
                         if (trim(copy(memo.Lines.Strings[i], 35, 4)) = '1') or (trim(copy(memo.Lines.Strings[i], 35, 4)) = '2')
                              or (trim(copy(memo.Lines.Strings[i], 35, 4)) = '3') then //mensalidade
                         begin
                              dm.CDSMensalidadeMENVALORPAGO.asfloat := dm.CDSMensalidadeliquido.asfloat;
                              dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime := strtodate(trim(copy(memo.Lines.Strings[i], 0, 10)));
                         end;
                         if (trim(copy(memo.Lines.Strings[i], 35, 4)) = '54') or (trim(copy(memo.Lines.Strings[i], 35, 4)) = '50')
                              or (trim(copy(memo.Lines.Strings[i], 35, 4)) = '51') or (trim(copy(memo.Lines.Strings[i], 35, 4)) = '53') then //desconto
                         begin
                              //não fazer nada porque já tá lançado o desconto
                         end;
                         if (trim(copy(memo.Lines.Strings[i], 35, 4)) = '10') or (trim(copy(memo.Lines.Strings[i], 35, 4)) = '2') then //juros
                         begin
                              dm.CDSMensalidadeMENDESCONTO.asfloat := 0;
                              dm.CDSMensalidadeMENACRESCIMO.asfloat := strtofloat(trim(buscatroca(copy(memo.Lines.Strings[i], 122, 9), '.', '')));
                              dm.CDSMensalidadeMENVALORPAGO.asfloat := dm.CDSMensalidadeliquido.asfloat;
                              dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime := strtodate(trim(copy(memo.Lines.Strings[i], 0, 10)));
                              dm.CDSMensalidade.edit;
                         end;
                         dm.CDSMensalidade.Post;
                         dm.CDSMensalidade.ApplyUpdates(0);
                         break;

                         DataSource.DataSet.next;
                    end;
               end;

          end;
          application.ProcessMessages;
     end;

     showmessage('ok');
     memo.Free;
end;

procedure TFMensalidade.btnformaClick(Sender: TObject);
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
          dm.CDSMensalidadeMenFormaPgto.asinteger := dm.CDSFormaPgtoFORCOD.asinteger;
     finally
          fformapgto.release;
          fformapgto := nil;
          fformapgto.free;
     end;
end;

procedure TFMensalidade.DBGridDrawColumnCell(Sender: TObject;
     const Rect: TRect; DataCol: Integer; Column: TColumn;
     State: TGridDrawState);
begin
     try
          if (Column.Field.FieldName = 'MENVALORPAGO') or (Column.Field.FieldName = 'MENDATAPAGAMENTO') then
          begin
               if (dm.CDSMensalidadeMENVALORPAGO.asfloat > 0) or (dm.CDSMensalidadeMENDATAPAGAMENTO.asstring <> '') then // coloque aqui sua condição
               begin
                    DBGrid.Canvas.Font.Color := clred;
                    DBGrid.Canvas.FillRect(Rect);
                    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
               end;
          end;
     except
     end;
end;

procedure TFMensalidade.btncancbaixaClick(Sender: TObject);
begin
     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma cancelamento da baixa?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    if (dm.CDSMensalidadeMENVENCIMENTO.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime) and (dm.CDSMensalidadeMENVALORPAGO.asfloat > 0) then
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

                    if dm.CDSMensalidadeMENVALORPAGO.asfloat = 0 then
                    begin
                         showmessage('Mensalidade em aberto!');
                         txtpesquisa.SetFocus;
                         exit;
                    end;

                    execsql('delete from tlctocontabil where LCTNUMERO = ' + dm.CDSMensalidadeMENLCTOCONTABILMENSALIDADE.AsString);
                    execsql('delete from tlctocontabil where LCTNUMERO = ' + dm.CDSMensalidadeMENLCTOCONTABILDESCONTOS.AsString);
                    execsql('delete from tlctocontabil where LCTNUMERO = ' + dm.CDSMensalidadeMENLCTOCONTABILJUROS.AsString);

                    dm.CDSMensalidade.Edit;
                    dm.CDSMensalidadeMENVALORPAGO.asfloat := 0;
                    dm.CDSMensalidadeMENDATAPAGAMENTO.clear;
                    dm.CDSMensalidade.post;
                    dm.CDSMensalidade.applyupdates(0);
                    dm.CDSLctoContabil.close;
               end;
end;

procedure TFMensalidade.txtnumeroEnter(Sender: TObject);
begin
     if dm.CDSMensalidadeMENNUMERO.asinteger = 0 then
     begin
          try
               dm.CDSMensalidadeMENNUMERO.asinteger := strtoint(executasqlretorno('select coalesce(max(MENNUMERO),0) as num FROM TMENSALIDADE where MENALUNO = ' + txtcodaluno.text)) + 1;
          except
          end;
     end;
end;

procedure TFMensalidade.btnbaixasClick(Sender: TObject);
var ini, fim: integer;
begin
     ini := strtoint(inputbox('Atenção', 'Digite o código do aluno inicial:', '0'));
     fim := strtoint(inputbox('Atenção', 'Digite o código do aluno final:', '0'));
     CDSTemp.CloneCursor(DM.CDSMensalidade, false);
     CDSAlunoTemp.CloneCursor(DM.CDSAluno, false);

     CDSAlunoTemp.Filtered := false;
     CDSAlunoTemp.Filter := 'ALUCOD >= ' + inttostr(ini) + ' and ALUCOD <= ' + inttostr(fim);
     CDSAlunoTemp.Filtered := true;
     CDSAlunoTemp.first;
     while not CDSAlunoTemp.eof do
     begin
          CDStemp.Filtered := false;
          CDSTemp.Filter := 'MENDATAPAGAMENTO is not null and menaluno = ' + CDSAlunoTemp.fieldbyname('ALUCOD').asstring;
          CDStemp.Filtered := true;
          CDStemp.IndexFieldNames := 'MENDATAPAGAMENTO';

          txtfiltroaluno.Text := CDSAlunoTemp.fieldbyname('ALUCOD').asstring;
          btnfiltro.Click;
          if CDSAlunoTemp.fieldbyname('ALUCOD').asstring = '153' then
               CDStemp.first;

          CDStemp.first;
          dm.CDSMensalidade.first;
          while not CDStemp.eof do
          begin

               if trim(CDSTemp.fieldbyname('MENDATAPAGAMENTO').asstring) <> '' then
               begin
                    dm.CDSMensalidade.edit;
                    dm.CDSMensalidadeMENDATAPAGAMENTO.asdatetime := CDSTemp.fieldbyname('MENDATAPAGAMENTO').asdatetime;
                    dm.CDSMensalidade.post;
                    dm.CDSMensalidade.applyupdates(0);
               end;
               application.ProcessMessages;

               CDStemp.next;
               dm.CDSMensalidade.next;
          end;

          application.ProcessMessages;
          CDSAlunoTemp.next;
     end;
     btnfiltro.click;
end;

procedure TFMensalidade.txtcodalunoExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSMensalidade.State in [dsEdit, dsInsert] then
            DM.CDSMensalidadeALUNOME.AsString := executasqlretorno('SELECT ALUNOME FROM TALUNO WHERE ALUCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFMensalidade.txtcodbancoExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSMensalidade.State in [dsEdit, dsInsert] then
            DM.CDSMensalidadeBANNOME.AsString := executasqlretorno('SELECT BANNOME FROM TBANCO WHERE BANCOD = ' + (Sender as TWSDBEdit).Text);

    if dm.CDSMensalidadeMENFORMAPGTO.asinteger = 0 then
         dm.CDSMensalidadeMENFORMAPGTO.asinteger := StrToIntDef(executasqlretorno('SELECT BANFORMAPGTO FROM TBANCO WHERE BANCOD = ' + (Sender as TWSDBEdit).Text), 0);
end;

procedure TFMensalidade.txtcoddisciplinaExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSMensalidade.State in [dsEdit, dsInsert] then
            DM.CDSMensalidadeDISNOME.AsString := executasqlretorno('SELECT DISNOME FROM TDISCIPLINA WHERE DISCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFMensalidade.txtcodformaExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSMensalidade.State in [dsEdit, dsInsert] then
            DM.CDSMensalidadeFORNOME.AsString := executasqlretorno('SELECT FORNOME FROM TFORMAPGTO WHERE FORCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFMensalidade.btnboletotodosClick(Sender: TObject);
var
     Marca: TBytes;
begin
     DM.CDSMensalidade.first;
     while not DM.CDSMensalidade.eof do
     begin
          Marca := DM.CDSMensalidade.Bookmark;
          btnboleto.click;
          application.ProcessMessages;
          sleep(1000);
          DM.CDSMensalidade.Open;
          application.ProcessMessages;
          DM.CDSMensalidade.Bookmark := Marca;
          application.ProcessMessages;
          DM.CDSMensalidade.next;
     end;
end;

procedure TFMensalidade.txtfiltroalunoExit(Sender: TObject);
begin
     txtnomealuno.clear;
     if trim(txtfiltroaluno.Text) <> '' then
     begin
          try
               strtoint(txtfiltroaluno.text);
          except
               txtnomealuno.text := 'Campo Aluno Inválido!';
               txtfiltroaluno.setfocus;
               exit;
          end;
          if not dm.CDSAlunoLkp.active then
               dm.CDSAlunoLkp.open;
          if dm.CDSAlunoLkp.Locate('ALUCOD', txtfiltroaluno.text, []) then
          begin
               txtnomealuno.text := dm.CDSAlunoLkpALUNOME.asstring;
          end
          else
          begin
               txtnomealuno.text := 'Aluno não cadastrado!';
               txtfiltroaluno.setfocus;
               exit;
          end;
     end;
end;

procedure TFMensalidade.btnObsFinClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          faluno := tfaluno.create(self);
          FAluno.FormStyle := fsNormal;
          FAluno.Visible := false;
          faluno.txtpesquisa.text := txtcodaluno.text;
          faluno.RBCod.Checked := true;
          faluno.BtnFiltro.click;
          faluno.PageControl1.ActivePageIndex := 3;
          faluno.BtnAlterar.click;
          faluno.Panel_Cima.Enabled := false;
          faluno.showmodal;
          DM.CDSMensalidadeMENALUNO.asinteger := dm.CDSAlunoAluCOD.asinteger;
     finally
          faluno.release;
          faluno := nil;
          faluno.free;
     end;
end;

procedure TFMensalidade.btnprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;

     try
          FProfessor := tFProfessor.create(self);
          FProfessor.FormStyle := fsNormal;
          FProfessor.Visible := false;
          FProfessor.txtpesquisa.text := txtprofessor.text;
          FProfessor.BtnFiltro.click;
          FProfessor.showmodal;
          dm.CDSMensalidadeMenProfessor.asinteger := dm.CDSProfessorProCOD.asinteger;
     finally
          FProfessor.release;
          FProfessor := nil;
          FProfessor.free;
     end;
end;

procedure TFMensalidade.btndisciplinaClick(Sender: TObject);
begin
     if Application.FindComponent('FDisciplina') <> nil then
          FDisciplina.Close;

     try
          FDisciplina := tFDisciplina.create(self);
          FDisciplina.FormStyle := fsNormal;
          FDisciplina.Visible := false;
          FDisciplina.txtpesquisa.text := txtdisciplina.text;
          FDisciplina.BtnFiltro.click;
          FDisciplina.showmodal;
          dm.CDSMensalidadeMenDisciplina.asinteger := dm.CDSDisciplinaDisCOD.asinteger;
     finally
          FDisciplina.release;
          FDisciplina := nil;
          FDisciplina.free;
     end;
end;

procedure TFMensalidade.btnApagarClick(Sender: TObject);
begin
     DM.CDSMensalidadeMENVENCIMENTO.clear;
end;

procedure TFMensalidade.btnapagarpgtoClick(Sender: TObject);
begin
     DM.CDSMensalidadeMENDATAPAGAMENTO.clear;
end;

end.
