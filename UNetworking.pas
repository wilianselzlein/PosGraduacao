unit UNetworking;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient, Jpeg,
     RLReport, RLRichText, WSDBMemo, Buttons, comobj;

type
     TFNetworking = class(TForm)
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
          txtempresa: TWSDBEdit;
          Label19: TLabel;
          RLReport: TRLReport;
          RLBand3: TRLBand;
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
          txtcod: TWSDBEdit;
          txtsite: TWSDBEdit;
          RLSystemInfo1: TRLSystemInfo;
          DBGrid: TDBGrid;
          Label13: TLabel;
          ToolButton2: TToolButton;
          RLDBText11: TRLDBText;
          RLDBText6: TRLDBText;
          WSDBEdit1: TWSDBEdit;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          txtnomecidade: TWSEdit;
          Label5: TLabel;
          txtcpfcnpj: TWSDBEdit;
          PageControl1: TPageControl;
          TabSheet2: TTabSheet;
          TabSheet3: TTabSheet;
          TabSheet4: TTabSheet;
          WSDBMemo2: TWSDBMemo;
          WSDBMemo1: TWSDBMemo;
          WSDBMemo3: TWSDBMemo;
          WSDBEdit4: TWSDBEdit;
          Label14: TLabel;
          WSDBEdit9: TWSDBEdit;
          WSDBEdit12: TWSDBEdit;
          Label15: TLabel;
          Label16: TLabel;
          Label17: TLabel;
          Label18: TLabel;
          Label20: TLabel;
          Label21: TLabel;
          Label22: TLabel;
          Label23: TLabel;
          Label25: TLabel;
          Label26: TLabel;
          Label27: TLabel;
          Label28: TLabel;
          Label29: TLabel;
          WSDBEdit13: TWSDBEdit;
          WSDBEdit14: TWSDBEdit;
          WSDBEdit15: TWSDBEdit;
          WSDBEdit16: TWSDBEdit;
          WSDBEdit17: TWSDBEdit;
          WSDBEdit18: TWSDBEdit;
          WSDBEdit19: TWSDBEdit;
          WSDBEdit20: TWSDBEdit;
          WSDBEdit21: TWSDBEdit;
          WSDBEdit22: TWSDBEdit;
          WSDBEdit23: TWSDBEdit;
          WSDBEdit24: TWSDBEdit;
          Label30: TLabel;
          txtpessoa: TWSDBEdit;
          Label31: TLabel;
          WSDBEdit2: TWSDBEdit;
          Label32: TLabel;
          WSDBEdit25: TWSDBEdit;
          Label33: TLabel;
          WSDBEdit26: TWSDBEdit;
          Label34: TLabel;
          WSDBEdit27: TWSDBEdit;
          Label35: TLabel;
    btnapagarpgto: TSpeedButton;
    TabSheet_Logo: TTabSheet;
    ImgFoto: TDBImage;
    WSDBEdit28: TWSDBEdit;
    Label36: TLabel;
    BtnExcluiLogo: TBitBtn;
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
          procedure WSDBMemo1KeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure DBGridDblClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure txtfiltrocidadeExit(Sender: TObject);
          procedure txtcpfcnpjEnter(Sender: TObject);
          procedure txtcpfcnpjExit(Sender: TObject);
    procedure btnapagarpgtoClick(Sender: TObject);
    procedure ImgFotoDblClick(Sender: TObject);
    procedure BtnExcluiLogoClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FNetworking: TFNetworking;

implementation

uses UDM, UMenu, UCidade, UGrupoPro, UDisciplina, UFuncoes;

{$R *.dfm}

procedure TFNetworking.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFNetworking.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFNetworking.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFNetworking.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFNetworking.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFNetworking.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as TForm, true);
     DataSource.DataSet.append;
end;

procedure TFNetworking.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, true);
     end;
end;

procedure TFNetworking.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFNetworking.BtnExcluirClick(Sender: TObject);
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

procedure TFNetworking.BtnSalvarClick(Sender: TObject);
begin
     {if not cpf(txtcpf.text) then
     begin
          Showmessage('CPF inválido!');
          txtcpf.setfocus;
          exit;
     end;}
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(lbltitulo.parent as TForm);
end;

procedure TFNetworking.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(lbltitulo.parent as TForm);
end;

procedure TFNetworking.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFNetworking.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     with dm.qnetworking.sql do
     begin
          clear;
          add('select * from TNETWORKING WHERE NETCOD > 0');
          if trim(txtpesquisa.text) <> '' then
               add('AND upper(' + WSInformacao.Campo + ') LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          if trim(txtfiltrocidade.text) <> '' then
               add('AND NETCIDADE = ' + trim(txtfiltrocidade.text));
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFNetworking.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela, '', ''], [Datasource.dataset as TClientDataSet, nil, nil]);
end;

procedure TFNetworking.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;

     importar(Wsinformacao.Tabela, DataSource);
end;

procedure TFNetworking.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFNetworking.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFNetworking.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     BtnFiltro.click;
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFNetworking.txtcodKeyDown(Sender: TObject; var Key: Word;
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

procedure TFNetworking.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFNetworking.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFNetworking.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFNetworking.btncidadeClick(Sender: TObject);
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
          dm.CDSNetworkingNETCIDADE.asinteger := dm.cdscidadecidcod.asinteger;
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFNetworking.btnfiltrocidadeClick(Sender: TObject);
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

procedure TFNetworking.WSDBMemo1KeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 27) and (btncancelar.enabled = true) then
          btncancelar.click;
     if (Key = VK_F12) and (btnSalvar.enabled = true) then
          btnsalvar.Click;
end;

procedure TFNetworking.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFNetworking.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFNetworking.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFNetworking.txtfiltrocidadeExit(Sender: TObject);
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

procedure TFNetworking.txtcpfcnpjEnter(Sender: TObject);
begin
     if txtpessoa.text = 'F' then
          DM.CDSNetworkingNETCPF.EditMask := '999.999.999-99'
     else
          DM.CDSNetworkingNETCPF.EditMask := '99.999.999/9999-99';
end;

procedure TFNetworking.txtcpfcnpjExit(Sender: TObject);
begin
     DM.CDSNetworkingNETCPF.EditMask := '';
end;

procedure TFNetworking.btnapagarpgtoClick(Sender: TObject);
begin
     DM.CDSNetworkingNETDATAFUND.Clear;
end;

procedure TFNetworking.ImgFotoDblClick(Sender: TObject);
var
     Jpg: TJPEGImage;
     Bmp: TBitMap;
begin
     if datasource.dataset.IsEmpty then
          Exit;
     if not (datasource.dataset.State in [dsinsert, dsedit]) then
          datasource.dataset.Edit;

     try
          Jpg := TJPEGImage.Create;
          Bmp := TBitmap.Create;
          if DM.OpenPictureDialog.Execute then
          begin
               JPG.LoadFromFile(DM.OpenPictureDialog.FileName);
               Bmp.Assign(jpg);
               DM.CDSNetworkingNETLOGO.Assign(Bmp);
          end;
     finally
          Jpg.Free;
          Bmp.Free;
     end;
end;

procedure TFNetworking.BtnExcluiLogoClick(Sender: TObject);
begin
     if datasource.dataset.IsEmpty then
          Exit;
     if not (datasource.dataset.State in [dsinsert, dsedit]) then
          datasource.dataset.Edit;

     DM.CDSNetworkingNETLOGO.Clear;
end;

end.
