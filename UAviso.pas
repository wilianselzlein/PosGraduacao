unit UAviso;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSDBMemo, Buttons, CheckLst;

type
     TFAviso = class(TForm)
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
          Label3: TLabel;
          RLReport: TRLReport;
          RLBand1: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
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
    WSDBEdit4: TWSDBEdit;
    Label5: TLabel;
    RLLabel5: TRLLabel;
    Label6: TLabel;
    WSDBEdit5: TWSDBEdit;
    txtMensagem: TWSDBMemo;
    RLDBMemo1: TRLDBMemo;
    btnarquivo: TSpeedButton;
    RGFiltro: TRadioGroup;
    txtTipo: TDBRadioGroup;
    OpenDialog: TOpenDialog;
    RLLabel6: TRLLabel;
    RLDBText10: TRLDBText;
    btnarquivo1: TSpeedButton;
    WSDBEdit3: TWSDBEdit;
    btnarquivo2: TSpeedButton;
    WSDBEdit6: TWSDBEdit;
    btnarquivo3: TSpeedButton;
    WSDBEdit7: TWSDBEdit;
    Label37: TLabel;
    chkCurso: TCheckListBox;
    Label7: TLabel;
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
          procedure FormActivate(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
    procedure btnarquivoClick(Sender: TObject);
    procedure chkCursoClickCheck(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FAviso: TFAviso;

implementation

uses UDM, UMenu, USenha, UCurso, UFuncoes;

{$R *.dfm}

procedure TFAviso.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFAviso.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFAviso.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFAviso.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFAviso.btnsairClick(Sender: TObject);
begin
     ModalResult := MrOk;
     close;
end;

procedure TFAviso.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(FAviso, true);
     DataSource.DataSet.append;
     dm.CDSAvisoAVIUSUARIO.asString := lusuario;
end;

procedure TFAviso.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(FAviso, true);
     end;
end;

procedure TFAviso.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          Editar(FAviso, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFAviso.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclus�o?', 'Aten��o', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    //integridade('PROCIDADE', 'TPROFESSOR', WSDBEdit1.text);
                    try
                         DataSource.DataSet.Delete;
                         (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
                    except
                         ShowMessage('Imposs�vel Excluir. Viola��o de Integridade.');
                    end;
               end;
end;

procedure TFAviso.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);
     dm.CDSAvisoAVILINHAS.asinteger := txtmensagem.Lines.Count;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(0);
     dm.CDSAvisoCurso.ApplyUpdates(0);
     navegar(FAviso);
end;

procedure TFAviso.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     dm.CDSAvisoCurso.CancelUpdates;
     Navegar(FAviso);
end;

procedure TFAviso.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
     chkCurso.Items.Clear;
end;

procedure TFAviso.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     with dm.qAviso.sql do
     begin
          clear;
          add('SELECT * FROM TAVISO WHERE AVICOD > 0');
          if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(AVIMENSAGEM) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          Case RGFiltro.ItemIndex of
            1 : add('AND AVITIPO = ''A''');
            2 : add('AND AVITIPO = ''M''');
            3 : add('AND AVITIPO = ''N''');
          end;
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFAviso.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela], [Datasource.dataset as TClientDataSet]);
end;

procedure TFAviso.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);

     btndesconectar.click;
     btnfiltro.click;
     showmessage('Importa��o Conclu�da com Sucesso!');
end;

procedure TFAviso.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFAviso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if (datasource.DataSet.State = dsinsert) or
          (datasource.DataSet.State = dsedit) then
     begin
          showmessage('Imposs�vel sair, voc� esta em modo de edi��o!');
          action := canone;
          exit;
     end;
     salva_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm));
     salva_propriedades_tela((sender as tform).name, sender as TForm);
     //(sender as tform).Hide;
     limpa_edits(sender as tform);
     action := cafree;
end;

procedure TFAviso.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     BtnFiltro.click;
end;

procedure TFAviso.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
var
     passar: boolean;
begin
     if (key = 27) and (btncancelar.enabled = true) then
          btncancelar.click;
     if (Key = VK_F12) and (btnSalvar.enabled = true) then
          btnsalvar.Click;

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
          if sender is TWSDBMemo then
               passar := false;
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

procedure TFAviso.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAviso.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFAviso.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFAviso.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFAviso.FormActivate(Sender: TObject);
begin
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFAviso.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFAviso.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFAviso.btnarquivoClick(Sender: TObject);
begin
     if OpenDialog.execute then
         DM.CDSAviso.fieldbyname('AVI' + trim(copy(UpperCase((sender as TSpeedButton).Name),4,8))).asstring := ExtractFileName(opendialog.FileName);
end;

procedure TFAviso.chkCursoClickCheck(Sender: TObject);
begin
     if DM.CDSAvisoCurso.locate('AVICURCURSO',copy(chkCurso.Items.Strings[chkCurso.ItemIndex], 1, 4),[loPartialKey, loCaseInsensitive]) then
          DM.CDSAvisoCurso.Delete
     else
     begin
          DM.CDSAvisoCurso.Append;
          DM.CDSAvisoCursoAVICURAVISO.asinteger := DM.CDSAvisoAVICOD.asInteger;
          DM.CDSAvisoCursoAVICURCURSO.asinteger := StrToInt(copy(chkCurso.Items.Strings[chkCurso.ItemIndex], 1, 4));
          DM.CDSAvisoCurso.post;
     end;
end;

end.
