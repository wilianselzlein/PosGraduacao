unit UFormaPgto;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText,    Buttons;

type
     TFFormaPgto = class(TForm)
          lbltitulo: TLabel;
          PageControl: TPageControl;
          TabConsulta: TTabSheet;
          TabCadastro: TTabSheet;
          Label1: TLabel;
          Label2: TLabel;
          DataSource: TDataSource;
          WSDBEdit1: TWSDBEdit;
          WSDBEdit2: TWSDBEdit;
          WSInformacao: TWSInformacao;
          PanPesquisa: TPanel;
          Label4: TLabel;
          txtpesquisa: TWSEdit;
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
          BtnSalvar: TToolButton;
          BtnCancelar: TToolButton;
          ToolButton4: TToolButton;
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
          WSDBEdit3: TWSDBEdit;
          Label3: TLabel;
          Label5: TLabel;
          RLLabel4: TRLLabel;
          RLDBText9: TRLDBText;
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
    Label11: TLabel;
    btncreditodesconto: TSpeedButton;
    Label6: TLabel;
    btndebitodesconto: TSpeedButton;
    Label7: TLabel;
    btncreditojuro: TSpeedButton;
    Label8: TLabel;
    btndebitojuro: TSpeedButton;
    Label9: TLabel;
    btncreditovalor: TSpeedButton;
    Label10: TLabel;
    btndebitovalor: TSpeedButton;
    Label12: TLabel;
    btnhisdesconto: TSpeedButton;
    Label13: TLabel;
    btnhisjuro: TSpeedButton;
    Label14: TLabel;
    btnhisvalor: TSpeedButton;
    txtcodcreditodesconto: TWSDBEdit;
    txtcreditodesconto: TWSDBEdit;
    txtcoddebitodesconto: TWSDBEdit;
    txtdebitodesconto: TWSDBEdit;
    txtcodcreditojuro: TWSDBEdit;
    txtcreditojuro: TWSDBEdit;
    txtcoddebitojuro: TWSDBEdit;
    txtdebitojuro: TWSDBEdit;
    txtcodcreditovalor: TWSDBEdit;
    txtcreditovalor: TWSDBEdit;
    txtcoddebitovalor: TWSDBEdit;
    txtdebitovalor: TWSDBEdit;
    txtcodhisdesconto: TWSDBEdit;
    txthisdesconto: TWSDBEdit;
    txtcodhisjuro: TWSDBEdit;
    txthisjuro: TWSDBEdit;
    txtcodhisvalor: TWSDBEdit;
    txthisvalor: TWSDBEdit;
    TabSheet2: TTabSheet;
    Label15: TLabel;
    btncreditodescontoctp: TSpeedButton;
    Label16: TLabel;
    btndebitodescontoctp: TSpeedButton;
    Label17: TLabel;
    btncreditojuroctp: TSpeedButton;
    Label18: TLabel;
    btndebitojuroctp: TSpeedButton;
    Label19: TLabel;
    btncreditovalorctp: TSpeedButton;
    Label20: TLabel;
    btndebitovalorctp: TSpeedButton;
    Label21: TLabel;
    btnhisdescontoctp: TSpeedButton;
    Label22: TLabel;
    btnhisjuroctp: TSpeedButton;
    Label23: TLabel;
    btnhisvalorctp: TSpeedButton;
    txtcodcreditodescontoctp: TWSDBEdit;
    txtcreditodescontoctp: TWSDBEdit;
    txtcoddebitodescontoctp: TWSDBEdit;
    txtdebitodescontoctp: TWSDBEdit;
    txtcodcreditojuroctp: TWSDBEdit;
    txtcreditojuroctp: TWSDBEdit;
    txtcoddebitojuroctp: TWSDBEdit;
    txtdebitojuroctp: TWSDBEdit;
    txtcodcreditovalorctp: TWSDBEdit;
    txtcreditovalorctp: TWSDBEdit;
    txtcoddebitovalorctp: TWSDBEdit;
    txtdebitovalorctp: TWSDBEdit;
    txtcodhisdescontoctp: TWSDBEdit;
    txthisdescontoctp: TWSDBEdit;
    txtcodhisjuroctp: TWSDBEdit;
    txthisjuroctp: TWSDBEdit;
    txtcodhisvalorctp: TWSDBEdit;
    txthisvalorctp: TWSDBEdit;
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
          procedure btncreditodescontoClick(Sender: TObject);
          procedure btndebitodescontoClick(Sender: TObject);
          procedure btncreditojuroClick(Sender: TObject);
          procedure btndebitojuroClick(Sender: TObject);
          procedure btncreditovalorClick(Sender: TObject);
          procedure btndebitovalorClick(Sender: TObject);
          procedure btnhisdescontoClick(Sender: TObject);
          procedure btnhisjuroClick(Sender: TObject);
          procedure btnhisvalorClick(Sender: TObject);
    procedure btndebitovalorctpClick(Sender: TObject);
    procedure btncreditovalorctpClick(Sender: TObject);
    procedure btnhisvalorctpClick(Sender: TObject);
    procedure btndebitojuroctpClick(Sender: TObject);
    procedure btncreditojuroctpClick(Sender: TObject);
    procedure btnhisjuroctpClick(Sender: TObject);
    procedure btndebitodescontoctpClick(Sender: TObject);
    procedure btncreditodescontoctpClick(Sender: TObject);
    procedure btnhisdescontoctpClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FFormaPgto: TFFormaPgto;

implementation

uses UDM, UMenu, UPlanoConta, UHistPadrao, UFuncoes;

{$R *.dfm}

procedure TFFormaPgto.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFFormaPgto.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFFormaPgto.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFFormaPgto.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFFormaPgto.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFFormaPgto.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as tform, true);

     DataSource.DataSet.append;
end;

procedure TFFormaPgto.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as tform, true);
     end;
end;

procedure TFFormaPgto.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as tform, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFFormaPgto.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    integridade('MENFORMAPGTO', 'TMENSALIDADE', WSDBEdit1.text);
                    integridade('BANFORMAPGTO', 'TBANCO', WSDBEdit1.text);
                    try
                         DataSource.DataSet.Delete;
                         (datasource.dataset as TClientDataSet).applyupdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFFormaPgto.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);
     DataSource.DataSet.post;
     (datasource.dataset as TClientDataSet).ApplyUpdates(-1);
     navegar(lbltitulo.parent as tform);
end;

procedure TFFormaPgto.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(lbltitulo.parent as tform);
end;

procedure TFFormaPgto.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFFormaPgto.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     with dm.QFormaPgto.sql do
     begin
          clear;
          add('SELECT FORCOD, FORNOME, FORTIPO,');
          add('FORCONTAVALORDEBITO,FORCONTAVALORCREDITO,FORCONTADESCONTODEBITO,');
          add('FORCONTADESCONTOCREDITO,FORCONTAJUROCREDITO,FORCONTAJURODEBITO,');
          add('FORHISTPADRAOVALOR,FORHISTPADRAODESCONTO,FORHISTPADRAOJURO,');
          add('FORCONTAVALORDEBITOCTP,FORCONTAVALORCREDITOCTP,FORCONTADESCONTODEBITOCTP,');
          add('FORCONTADESCONTOCREDITOCTP,FORCONTAJUROCREDITOCTP,FORCONTAJURODEBITOCTP,');
          add('FORHISTPADRAOVALORCTP,FORHISTPADRAODESCONTOCTP,FORHISTPADRAOJUROCTP');
          add('FROM TFORMAPGTO');
          if trim(txtpesquisa.text) <> '' then
               add('WHERE upper(FORNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFFormaPgto.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela], [Datasource.dataset as TClientDataSet]);
end;

procedure TFFormaPgto.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     importar(Wsinformacao.Tabela, DataSource);
end;

procedure TFFormaPgto.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFFormaPgto.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFFormaPgto.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     BtnFiltro.click;
end;

procedure TFFormaPgto.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFFormaPgto.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFFormaPgto.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFFormaPgto.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     rlreport.PreviewModal;
end;

procedure TFFormaPgto.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFFormaPgto.FormActivate(Sender: TObject);
begin
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFFormaPgto.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFFormaPgto.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFFormaPgto.btncreditodescontoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtcreditodesconto.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTADESCONTOCREDITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btndebitodescontoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtdebitodesconto.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTADESCONTODEBITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btncreditojuroClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtcreditojuro.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTAJUROCREDITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btndebitojuroClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtdebitojuro.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTAJURODEBITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btncreditovalorClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtcreditovalor.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTAVALORCREDITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btndebitovalorClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtdebitovalor.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTAVALORDEBITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btnhisdescontoClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          fhistpadrao := tfhistpadrao.create(self);
          FHistPadrao.FormStyle := fsNormal;
          FHistPadrao.Visible := false;
          fhistpadrao.txtpesquisa.text := txthisdesconto.text;
          fhistpadrao.BtnFiltro.click;
          fhistpadrao.showmodal;
          DM.CDSFormaPgtoFORHISTPADRAODESCONTO.asinteger := dm.CDSHistPadraoHISCOD.asinteger;
     finally
          fhistpadrao.release;
          fhistpadrao := nil;
          fhistpadrao.free;
     end;
end;

procedure TFFormaPgto.btnhisjuroClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          fhistpadrao := tfhistpadrao.create(self);
          FHistPadrao.FormStyle := fsNormal;
          FHistPadrao.Visible := false;
          fhistpadrao.txtpesquisa.text := txthisjuro.text;
          fhistpadrao.BtnFiltro.click;
          fhistpadrao.showmodal;
          DM.CDSFormaPgtoFORHISTPADRAOJURO.AsInteger := dm.CDSHistPadraoHISCOD.asinteger;
     finally
          fhistpadrao.release;
          fhistpadrao := nil;
          fhistpadrao.free;
     end;
end;

procedure TFFormaPgto.btnhisvalorClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          fhistpadrao := tfhistpadrao.create(self);
          FHistPadrao.FormStyle := fsNormal;
          FHistPadrao.Visible := false;
          fhistpadrao.txtpesquisa.text := txthisvalor.text;
          fhistpadrao.BtnFiltro.click;
          fhistpadrao.showmodal;
          DM.CDSFormaPgtoFORHISTPADRAOVALOR.AsInteger := dm.CDSHistPadraoHISCOD.asinteger;
     finally
          fhistpadrao.release;
          fhistpadrao := nil;
          fhistpadrao.free;
     end;
end;

procedure TFFormaPgto.btndebitovalorctpClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtdebitovalorctp.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTAVALORDEBITOCTP.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btncreditovalorctpClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtcreditovalorctp.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTAVALORCREDITOCTP.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btnhisvalorctpClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          fhistpadrao := tfhistpadrao.create(self);
          FHistPadrao.FormStyle := fsNormal;
          FHistPadrao.Visible := false;
          fhistpadrao.txtpesquisa.text := txthisvalorctp.text;
          fhistpadrao.BtnFiltro.click;
          fhistpadrao.showmodal;
          DM.CDSFormaPgtoFORHISTPADRAOVALORCTP.AsInteger := dm.CDSHistPadraoHISCOD.asinteger;
     finally
          fhistpadrao.release;
          fhistpadrao := nil;
          fhistpadrao.free;
     end;
end;

procedure TFFormaPgto.btndebitojuroctpClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtdebitojuroctp.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTAJURODEBITOCTP.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btncreditojuroctpClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtcreditojuroctp.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTAJUROCREDITOCTP.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btnhisjuroctpClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          fhistpadrao := tfhistpadrao.create(self);
          FHistPadrao.FormStyle := fsNormal;
          FHistPadrao.Visible := false;
          fhistpadrao.txtpesquisa.text := txthisjuroctp.text;
          fhistpadrao.BtnFiltro.click;
          fhistpadrao.showmodal;
          DM.CDSFormaPgtoFORHISTPADRAOJUROCTP.AsInteger := dm.CDSHistPadraoHISCOD.asinteger;
     finally
          fhistpadrao.release;
          fhistpadrao := nil;
          fhistpadrao.free;
     end;
end;

procedure TFFormaPgto.btndebitodescontoctpClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtdebitodescontoctp.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTADESCONTODEBITOCTP.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btncreditodescontoctpClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          fplanoconta.txtpesquisa.text := txtcreditodescontoctp.text;
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSFormaPgtoFORCONTADESCONTOCREDITOCTP.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFFormaPgto.btnhisdescontoctpClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          fhistpadrao := tfhistpadrao.create(self);
          FHistPadrao.FormStyle := fsNormal;
          FHistPadrao.Visible := false;
          fhistpadrao.txtpesquisa.text := txthisdescontoctp.text;
          fhistpadrao.BtnFiltro.click;
          fhistpadrao.showmodal;
          DM.CDSFormaPgtoFORHISTPADRAODESCONTOCTP.asinteger := dm.CDSHistPadraoHISCOD.asinteger;
     finally
          fhistpadrao.release;
          fhistpadrao := nil;
          fhistpadrao.free;
     end;
end;

end.
