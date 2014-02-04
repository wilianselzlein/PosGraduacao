unit UPlanoConta;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText,    Buttons,
  WSDBComboBox;

type
     TFPlanoConta = class(TForm)
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
          WSDBEdit3: TWSDBEdit;
          Label3: TLabel;
          RLDBText9: TRLDBText;
          RLLabel4: TRLLabel;
          btnniveis: TSpeedButton;
          DBText1: TDBText;
          DBText2: TDBText;
          DBText3: TDBText;
          DBText4: TDBText;
          DBText5: TDBText;
          DBText6: TDBText;
          DBText7: TDBText;
          DBText8: TDBText;
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
    Label5: TLabel;
    txtresponsavel: TWSDBComboBox;
    Label6: TLabel;
    WSDBComboBox1: TWSDBComboBox;
    RLLabel5: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
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
          procedure FormCreate(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure btnniveisClick(Sender: TObject);
     private
          { Private declarations }
          procedure separa_niveis();
     public
          { Public declarations }
     end;

var
     FPlanoConta: TFPlanoConta;

implementation

uses UDM, UMenu, UFuncoes;

{$R *.dfm}

procedure TFPlanoConta.separa_niveis();
var
     Cont, Tam, ContNivel: Integer;
     Dig, CodAna: string;
     Num, Analitico: string;

     function NumNivel(num: string): integer; //Plano de Contas
     var Cont, Tam: ^Integer;
          Soma: Integer;
          Dig, CodAna: ^string;
     begin
          New(Cont);
          New(Tam);
          New(Dig);
          New(Codana);
          Num := Num + '.';
          Tam^ := Length(Num);
          Cont^ := 1;
          Soma := 0;
          Codana^ := '';
          while cont^ <= tam^ do
          begin
               dig^ := copy(num, cont^, 1);
               if dig^ <> '.' then
               begin
                    CodAna^ := CodAna^ + Dig^;
               end
               else
               begin
                    if (StrToInt(CodAna^) / 1) > 0 then
                         Soma := soma + 1;
                    CodAna^ := '';
               end;
               cont^ := cont^ + 1;
          end;
          dispose(Cont);
          dispose(Tam);
          dispose(Dig);
          dispose(Codana);
          result := soma;
     end;

begin
     dm.CDSPlanoContaPLANIVEL.asinteger := NumNivel(dm.CDSPlanoContaPLACODANA.asstring);

     ContNivel := 1;
     Num := Dm.CDSPlanoContaPLACODANA.asstring + '.';
     Tam := Length(Num);
     Cont := 1;
     Codana := '';
     Analitico := '';
     while cont <= tam do
     begin
          dig := copy(num, cont, 1);
          if dig <> '.' then
          begin
               CodAna := CodAna + Dig;
          end
          else
          begin
               if (StrToInt(CodAna) / 1) > 0 then
               begin
                    case ContNivel of
                         1: dm.CDSPlanoContaPLANIVEL1.AsString := CodAna;
                         2: dm.CDSPlanoContaPLANIVEL2.AsString := dm.CDSPlanoContaPLANIVEL1.AsString + '.' + CodAna;
                         3: dm.CDSPlanoContaPLANIVEL3.AsString := dm.CDSPlanoContaPLANIVEL2.AsString + '.' + CodAna;
                         4: dm.CDSPlanoContaPLANIVEL4.AsString := dm.CDSPlanoContaPLANIVEL3.AsString + '.' + CodAna;
                         5: dm.CDSPlanoContaPLANIVEL5.AsString := dm.CDSPlanoContaPLANIVEL4.AsString + '.' + CodAna;
                         6: dm.CDSPlanoContaPLANIVEL6.AsString := dm.CDSPlanoContaPLANIVEL5.AsString + '.' + CodAna;
                         7: dm.CDSPlanoContaPLANIVEL7.AsString := dm.CDSPlanoContaPLANIVEL6.AsString + '.' + CodAna;
                         8: dm.CDSPlanoContaPLANIVEL8.AsString := dm.CDSPlanoContaPLANIVEL7.AsString + '.' + CodAna;
                         9: dm.CDSPlanoContaPLANIVEL9.AsString := dm.CDSPlanoContaPLANIVEL8.AsString + '.' + CodAna;
                         10: dm.CDSPlanoContaPLANIVEL10.AsString := dm.CDSPlanoContaPLANIVEL9.AsString + '.' + CodAna;
                    end;
                    inc(ContNivel);
               end;
               CodAna := '';
          end;
          cont := cont + 1;
     end;
end;

procedure TFPlanoConta.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
end;

procedure TFPlanoConta.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
end;

procedure TFPlanoConta.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
end;

procedure TFPlanoConta.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
end;

procedure TFPlanoConta.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFPlanoConta.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as tform, true);

     DataSource.DataSet.append;
end;

procedure TFPlanoConta.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as tform, true);
     end;
end;

procedure TFPlanoConta.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as tform, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFPlanoConta.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    integridade('LCTDEBITO', 'TLCTOCONTABIL', WSDBEdit1.text);
                    integridade('LCTCREDITO', 'TLCTOCONTABIL', WSDBEdit1.text);
                    try
                         DataSource.DataSet.Delete;
                         (datasource.dataset as TClientDataSet).applyupdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFPlanoConta.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);
     DataSource.DataSet.post;
     (datasource.dataset as TClientDataSet).ApplyUpdates(-1);
     navegar(lbltitulo.parent as tform);
end;

procedure TFPlanoConta.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(lbltitulo.parent as tform);
end;

procedure TFPlanoConta.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFPlanoConta.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     with dm.QPlanoConta.sql do
     begin
          clear;
          add('select PLACODRED,PLACODANA,PLADESCRICAO,PLANIVEL,');
          add('PLANIVEL1,PLANIVEL2,PLANIVEL3,PLANIVEL4,PLANIVEL5,');
          add('PLANIVEL6,PLANIVEL7,PLANIVEL8,PLANIVEL9,PLANIVEL10,PLASA,PLADC');
          add('from TPLANOCONTA');
          if trim(txtpesquisa.text) <> '' then
               add('WHERE upper(' + WSInformacao.Campo + ') LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
          add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFPlanoConta.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela], [Datasource.dataset as TClientDataSet]);

end;

procedure TFPlanoConta.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
end;

procedure TFPlanoConta.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFPlanoConta.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFPlanoConta.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     BtnFiltro.click;
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFPlanoConta.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFPlanoConta.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFPlanoConta.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFPlanoConta.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     WSInformacao.Campo := 'PLACODANA';
     btnfiltro.click;

     rlreport.PreviewModal;
end;

procedure TFPlanoConta.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFPlanoConta.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFPlanoConta.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then
          DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFPlanoConta.btnniveisClick(Sender: TObject);
begin
     if not DataSource.dataset.active then
          DataSource.dataset.open;
     DataSource.dataset.First;
     while not DataSource.dataset.eof do
     begin
          DataSource.dataset.edit;
          separa_niveis();
          DataSource.dataset.post;
          DataSource.dataset.next;
     end;
     TClientDataSet(DataSource.dataset as TClientDataSet).applyupdates(0);
     //Showmessage('Concluído com sucesso!');
end;

end.
