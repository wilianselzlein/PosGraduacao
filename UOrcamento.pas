unit UOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RLReport, RLRichText, WSMaskEdit, Buttons;

type
  TFOrcamento = class(TForm)
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
    txtcodconta: TWSDBEdit;
    txtconta: TWSDBEdit;
    btnconta: TSpeedButton;
    txtvalor: TWSDBEdit;
    WSDBEdit15: TWSDBEdit;
    Label16: TLabel;
    Label17: TLabel;
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
    RLDBText10: TRLDBText;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBImage1: TRLDBImage;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    btnfiltroconta: TSpeedButton;
    txtfiltroconta: TWSEdit;
    Label24: TLabel;
    Label3: TLabel;
    btnhistpadrao: TSpeedButton;
    txtcodhistpadrao: TWSDBEdit;
    txthistpadrao: TWSDBEdit;
    RLLabel6: TRLLabel;
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
    RLDBText16: TRLDBText;
    Label7: TLabel;
    Label8: TLabel;
    txtdataini: TWSMaskEdit;
    txtdatafin: TWSMaskEdit;
    RLBand2: TRLBand;
    RLDBImage2: TRLDBImage;
    RLDBRichText1: TRLDBRichText;
    RLSystemInfo8: TRLSystemInfo;
    RLSystemInfo9: TRLSystemInfo;
    RLDraw1: TRLDraw;
    txtnomeconta: TWSEdit;
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
    procedure btncontaClick(Sender: TObject);
    procedure btnfiltrocontaClick(Sender: TObject);
    procedure btnhistpadraoClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure txtvalorKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure txtdatafinExit(Sender: TObject);
    procedure txtfiltrocontaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOrcamento: TFOrcamento;
  data : string = '';

implementation

uses UDM, UMenu, UPlanoConta, UHistPadrao, UFuncoes;

{$R *.dfm}

procedure TFOrcamento.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFOrcamento.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFOrcamento.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFOrcamento.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFOrcamento.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFOrcamento.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(lbltitulo.parent as TForm, true);
     DataSource.DataSet.append;
end;

procedure TFOrcamento.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(lbltitulo.parent as TForm, true);
     end;
end;

procedure TFOrcamento.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   if DataSource.DataSet.Active then
   begin
        {if (dm.CDSOrcamentoORCDATA.asdatetime < strtodate(valor_parametro(7))) then
        begin
             showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
             if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
        end;
        if (dm.CDSOrcamentoORCDATA.asdatetime > strtodate(valor_parametro(8))) then
        begin
             showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
             if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
        end;

        if dm.CDSOrcamentoORCDATA.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime then
        begin
             if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S' then
             begin
                  if application.messagebox ('Data menor que a do encerramento contábil, deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mrno then
                       exit;
             end
             else
             begin
                  showmessage('Data menor que o encerramento contábil! Data: ' + dm.CDSInstitutoINSDATAENCCONTABIL.asstring);
                  exit;
             end;
        end;}
        PageControl.ActivePage:=TabCadastro;
        Editar(lbltitulo.parent as TForm, false);
        DataSource.DataSet.Edit;
   end;
end;

procedure TFOrcamento.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             {if (dm.CDSOrcamentoORCDATA.asdatetime < strtodate(valor_parametro(7))) then
             begin
                  showmessage('Data menor que a permitida pelo coordenador que é ' + valor_parametro(7));
                  if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
             end;
             if (dm.CDSOrcamentoORCDATA.asdatetime > strtodate(valor_parametro(8))) then
             begin
                  showmessage('Data maior que a permitida pelo coordenador que é ' + valor_parametro(8));
                  if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then exit;
             end;

             if dm.CDSOrcamentoORCDATA.asdatetime < dm.CDSInstitutoINSDATAENCCONTABIL.asdatetime then
             begin
                  if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S' then
                  begin
                       if application.messagebox ('Data menor que a do encerramento contábil, deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mrno then
                            exit;
                  end
                  else
                  begin
                       showmessage('Data menor que o encerramento contábil! Data: ' + dm.CDSInstitutoINSDATAENCCONTABIL.asstring);
                       exit;
                  end;
             end;}

            try
                DataSource.DataSet.Delete;
                (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFOrcamento.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);

     if dm.CDSOrcamentoORCVALOR.asfloat <= 0 then
     begin
          showmessage('Digite um valor maior que zero!');
          txtvalor.SetFocus;
          exit;
     end;
     testa_data(dm.CDSOrcamentoORCDATA.asdatetime);

     if executasqlretorno('select planivel from tplanoconta where placodred = ' + dm.cdsOrcamentoORCConta.asstring) <>
        executasqlretorno('select max(PLANIVEL) from TPlanoConta') then
     begin
          Showmessage('A conta não é uma conta de último nível!');
          txtcodconta.setfocus;
          exit;
     end;

     if DataSource.state = dsinsert then
          data := dm.CDSOrcamentoORCDATA.AsString;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);

     navegar(lbltitulo.parent as TForm);
end;

procedure TFOrcamento.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(lbltitulo.parent as TForm);
end;

procedure TFOrcamento.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFOrcamento.BtnFiltroClick(Sender: TObject);
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
    with dm.QOrcamento.sql do
    begin
         clear;
         add('select ORCNUMERO,ORCDATA,ORCCONTA,ORCHISTPADRAO,');
         add('ORCHISTCOMPLEMENTO,ORCVALOR,conta.PLADESCRICAO as CONTA');
         add(' from TORCAMENTO ');
         add('  left outer join TPLANOCONTA conta on ORCCONTA = conta.PLACODRED');
         add(' WHERE ORCNUMERO > 0');
         if txtdataini.text <> '  /  /    ' then
            add('AND ORCDATA >= :dataini');
         if txtdatafin.text <> '  /  /    ' then
            add('AND ORCDATA <= :datafin');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(ORCNUMERO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltroconta.text) <> '' then
            add('AND ORCCONTA = ' + trim(txtfiltroconta.text));
         if uppercase(WSInformacao.Campo) = 'CONTA' then
            add('ORDER BY conta.PLADESCRICAO')
         else
            add('ORDER BY ' + WSInformacao.Campo);
    end;
    if txtdataini.text <> '  /  /    ' then
       dm.QOrcamento.parambyname('dataini').asdate := strtodate(txtdataini.text);
    if txtdatafin.text <> '  /  /    ' then
       dm.QOrcamento.parambyname('datafin').asdate := strtodate(txtdatafin.text);
    ThreadExecSql(TClientDataSet(DataSource.DataSet));
end;

procedure TFOrcamento.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar([WSInformacao.tabela], [Datasource.dataset as TClientDataSet]); 
end;

procedure TFOrcamento.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(Wsinformacao.Tabela, DataSource);
end;                                                

procedure TFOrcamento.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFOrcamento.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     data := '';
     BtnFiltro.click;
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFOrcamento.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if (key = 27) and (btncancelar.enabled = true) then
        btncancelar.click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;
    if key = vk_f3 then
    begin
         if (sender = txtcodconta) or (sender = txtconta) then
            btnconta.click;
         if (sender = txtcodhistpadrao) or (sender = txthistpadrao) then
            btnhistpadrao.click;
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
            Perform (WM_nextDlgCtl,0,0);
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
           Perform (WM_nextDlgCtl,0,0);
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
            Perform (WM_nextDlgCtl,1,0);
    end;
end;

procedure TFOrcamento.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
         if sender = txtfiltroconta then
             btnfiltroconta.click;
    end;
    if key = (13) then
    begin
         if sender is twsedit then
         begin
              if (sender as twsedit).enterclicar then
                   btnfiltro.click
              else
                   Perform (WM_nextDlgCtl,0,0);
         end;
         if sender is twsmaskedit then
              Perform (WM_nextDlgCtl,0,0);
         if sender is tDBGrid then
         begin
              if btnalterar.Enabled then
                   btnalterar.Click;
         end;
    end;
    if (key=vk_insert) and (btnIncluir.Enabled = True) then
        btnIncluir.Click;
    if (key=vk_f11) and (btnnovopadrao.Enabled = True) then
        btnnovopadrao.Click;
    if (key=vk_f10) and (btnAlterar.Enabled = True) then
        btnAlterar.Click;
    if tbKeyIsDown(VK_CONTROL) then
       if (key=vk_delete) and (BtnExcluir.Enabled = True) then
           BtnExcluir.Click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;
    if (key=27) and (btnSair.Enabled = True) then
        btnSair.Click;
    if (key=27) and (btncancelar.enabled = true) then
        btncancelar.click;
    if (key=vk_f8) and (btnImprimir.Enabled = True) then
        btnImprimir.Click;
    if (key=VK_F7) and (btndesconectar.Enabled = True) then
        btndesconectar.Click;
    if (key=VK_F9) and (btnFiltro.Enabled = True) then
        btnFiltro.Click;
    if (key=vk_f4) then
        btnexportar.click;
    if (key=vk_f2) then
        btnimportar.click;
    if (key=vk_f5) then
        PageControl.ActivePage := tabconsulta;
    if (key=vk_f6) then
        PageControl.ActivePage := TabCadastro;
end;

procedure TFOrcamento.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFOrcamento.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFOrcamento.btncontaClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
         fplanoconta := tfplanoconta.create(self);
         FPlanoConta.FormStyle := fsNormal;
         FplanoConta.Visible := false;
         fplanoconta.txtpesquisa.text := txtconta.text;
         fplanoconta.BtnFiltro.click;
         fplanoconta.showmodal;
         dm.CDSOrcamentoORCConta.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
         fplanoconta.release;
         fplanoconta := nil;
         fplanoconta.free;
     end;
end;

procedure TFOrcamento.btnfiltrocontaClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
         fplanoconta := tfplanoconta.create(self);
         FPlanoConta.FormStyle := fsNormal;
         FPlanoConta.Visible := false;
         usuario('btnconsultar', fplanoconta.wsinformacao.programa);
         fplanoconta.BtnFiltro.click;
         fplanoconta.showmodal;

         txtfiltroconta.text := dm.CDSPlanoContaPLACODRED.asstring;
     finally
         fplanoconta.release;
         fplanoconta := nil;
         fplanoconta.free;
     end;
end;

procedure TFOrcamento.btnhistpadraoClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
         fhistpadrao := tfhistpadrao.create(self);
         FHistPadrao.FormStyle := fsNormal;
         FHistPadrao.Visible := false;
         fhistpadrao.txtpesquisa.text := txthistpadrao.text;
         fhistpadrao.BtnFiltro.click;
         fhistpadrao.showmodal;
         dm.CDSOrcamentoORCHistPadrao.asinteger := dm.CDSHistPadraoHISCOD.asinteger;
     finally
         fhistpadrao.release;
         fhistpadrao := nil;
         fhistpadrao.free;
     end;
end;

procedure TFOrcamento.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFOrcamento.txtvalorKeyPress(Sender: TObject;
var Key: Char);
begin
     if key = #13 then
          if DataSource.DataSet.State = dsinsert then
          begin
               if dm.CDSOrcamentoORCVALOR.AsFloat > 0 then
               begin
                    btnsalvar.Click;
                    BtnIncluir.click;
               end;
          end
          else
               btnsalvar.click;
end;

procedure TFOrcamento.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFOrcamento.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     txtpesquisa.setfocus;
end;

procedure TFOrcamento.txtdatafinExit(Sender: TObject);
begin
     try
          txtpesquisa.setfocus;
     except
     end;
end;

procedure TFOrcamento.txtfiltrocontaExit(Sender: TObject);
begin
     txtnomeConta.clear;
     if trim(txtfiltroConta.Text) <> '' then
     begin
          try
               strtoint(txtfiltroConta.Text);
          except
               txtnomeConta.text := 'Campo inválido!';
               txtfiltroConta.setfocus;
               exit;
          end;
          if not dm.CDSPlanoConta.active then
               dm.CDSPlanoConta.open;
          if dm.CDSPlanoConta.Locate('PLACODRED', txtfiltroConta.text, []) then
          begin
               txtnomeConta.text := dm.CDSPlanoContaPLADESCRICAO.asstring;
          end
          else
          begin
               txtnomeConta.text := 'Conta Contábil não cadastrada!';
               txtfiltroConta.setfocus;
               exit;
          end;
     end;
end;

end.
