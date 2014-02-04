unit UAluno;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
     WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
     RLReport, RLRichText, WSDBMemo, ExtDlgs, WSDBComboBox, ActnMan, ActnColorMaps,
     Buttons, WSMaskEdit, dateutils, Jpeg;

type
     TFAluno = class(TForm)
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
          RLLabel2: TRLLabel;
          RLLabel3: TRLLabel;
          RLLabel4: TRLLabel;
          RLBand5: TRLBand;
          RLDBText7: TRLDBText;
          RLDBText8: TRLDBText;
          RLDBText9: TRLDBText;
          RLLabel5: TRLLabel;
          RLDBText10: TRLDBText;
          RLBand1: TRLBand;
          RLDBText1: TRLDBText;
          RLDBImage1: TRLDBImage;
          RLDBText2: TRLDBText;
          RLDBText3: TRLDBText;
          RLDBText4: TRLDBText;
          RLDBText5: TRLDBText;
          RLDBText6: TRLDBText;
          btnimportartxt: TButton;
          RBNome: TRadioButton;
          RBEmail: TRadioButton;
          RLSystemInfo1: TRLSystemInfo;
          DBGrid: TDBGrid;
          panimpressao: TPanel;
          Image1: TImage;
          btnrelalunos: TSpeedButton;
          btnsintetico: TSpeedButton;
          Label61: TLabel;
          btnrelalunocurso: TSpeedButton;
          RBCod: TRadioButton;
          ToolButton2: TToolButton;
          Panel_Cima: TPanel;
          Label1: TLabel;
          Label2: TLabel;
          Label21: TLabel;
          txtcod: TWSDBEdit;
          txtnome: TWSDBEdit;
          WSDBComboBox3: TWSDBComboBox;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          TabSheet2: TTabSheet;
          TabSheet3: TTabSheet;
          PanCurso: TPanel;
          pandisciplinas: TPanel;
          DBGrid1: TDBGrid;
          DBGridDiscData: TDBGrid;
          Panel1: TPanel;
          Label42: TLabel;
          Label43: TLabel;
          btndisciplina: TSpeedButton;
          Label44: TLabel;
          Label49: TLabel;
          btndisprofessor: TSpeedButton;
          Label28: TLabel;
          btnimportardisciplinas: TSpeedButton;
          txtdisciplina: TWSEdit;
          ToolBarItem: TToolBar;
          btnmonografia: TToolButton;
          btndiscdatas: TToolButton;
          btnsalvaritem: TToolButton;
          btnexcluiritem: TToolButton;
          txtfrequencia: TWSEdit;
          txtnota: TWSEdit;
          txtdisprofessor: TWSEdit;
          txtha: TWSEdit;
          PanMonografia: TPanel;
          Label51: TLabel;
          Label52: TLabel;
          Label36: TLabel;
          btnprofessor: TSpeedButton;
          txtmonotitulo: TWSDBEdit;
          WSDBEdit20: TWSDBEdit;
          txtcodprofessor: TWSDBEdit;
          txtprofessor: TWSDBEdit;
          Panel3: TPanel;
          Label48: TLabel;
          Label37: TLabel;
          btncurso: TSpeedButton;
          Label47: TLabel;
          WSDBEdit18: TWSDBEdit;
          WSDBEdit15: TWSDBEdit;
          txtcodcurso: TWSDBEdit;
          txtcurso: TWSDBEdit;
          PanMensalidade: TPanel;
          Label46: TLabel;
          DBGrid2: TDBGrid;
          Label3: TLabel;
          Label6: TLabel;
          Label7: TLabel;
          Label11: TLabel;
          Label9: TLabel;
          Label10: TLabel;
          Label12: TLabel;
          btncidade: TSpeedButton;
          Label18: TLabel;
          Label19: TLabel;
          Label8: TLabel;
          Label22: TLabel;
          Label5: TLabel;
          btnnaturalidade: TSpeedButton;
          Label15: TLabel;
          Label16: TLabel;
          Label17: TLabel;
          Label20: TLabel;
          Label25: TLabel;
          Label26: TLabel;
          Label27: TLabel;
          Label29: TLabel;
          Label54: TLabel;
          Label56: TLabel;
          Label58: TLabel;
          Label23: TLabel;
          txtsenha: TWSDBEdit;
          WSDBEdit21: TWSDBEdit;
          WSDBEdit19: TWSDBEdit;
          WSDBEdit3: TWSDBEdit;
    txtEnd: TWSDBEdit;
    txtBairro: TWSDBEdit;
          txtcodcidade: TWSDBEdit;
          txtcidade: TWSDBEdit;
          WSDBEdit8: TWSDBEdit;
          WSDBEdit10: TWSDBEdit;
          WSDBEdit11: TWSDBEdit;
    txtRG: TWSDBEdit;
          txtcpf: TWSDBEdit;
          WSDBEdit7: TWSDBEdit;
          txtcarteira: TWSDBEdit;
          txtcodnaturalidade: TWSDBEdit;
          txtnaturalidade: TWSDBEdit;
          WSDBEdit1: TWSDBEdit;
          txtnasc: TWSDBEdit;
          txtsituacao: TWSDBComboBox;
          WSDBComboBox2: TWSDBComboBox;
          WSDBEdit4: TWSDBEdit;
          WSDBEdit9: TWSDBEdit;
          WSDBEdit12: TWSDBEdit;
          WSDBEdit13: TWSDBEdit;
          Panel5: TPanel;
          Label13: TLabel;
          DBText1: TDBText;
          DBText2: TDBText;
          Label14: TLabel;
          Label24: TLabel;
          DBText3: TDBText;
          Label31: TLabel;
          DBText4: TDBText;
          DBText5: TDBText;
          Label32: TLabel;
          Label33: TLabel;
          DBText6: TDBText;
          RLDBText11: TRLDBText;
          WSDBEdit2: TWSDBEdit;
          Label34: TLabel;
          Label35: TLabel;
          WSDBEdit17: TWSDBEdit;
          ToolBar1: TToolBar;
          btnbaixartudo: TToolButton;
          RLBand2: TRLBand;
          RLDBImage2: TRLDBImage;
          RLDBRichText1: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw1: TRLDraw;
          TabSheet4: TTabSheet;
          lblsituacao: TDBText;
          TabSheet5: TTabSheet;
          ImgFoto: TDBImage;
          WSDBEdit22: TWSDBEdit;
          Label38: TLabel;
          TabHistFinanceiro: TTabSheet;
          Panel4: TPanel;
          Label39: TLabel;
          btnservicofin: TSpeedButton;
          Label50: TLabel;
          txtServicoFIn: TWSEdit;
          ToolBar2: TToolBar;
          btnIncServicoFin: TToolButton;
          btnexcServicoFIn: TToolButton;
          txtobservacao: TWSEdit;
          DBGrid3: TDBGrid;
          txtdataservicofin: TWSMaskEdit;
          Label45: TLabel;
    TabSheet6: TTabSheet;
    Label40: TLabel;
    WSDBEdit23: TWSDBEdit;
    Label53: TLabel;
    txtcpfresp: TWSDBEdit;
    btnapagar: TSpeedButton;
    btnapagarexpedicao: TSpeedButton;
    btnapagarcursosituacao: TSpeedButton;
    btnapagarcursoinicio: TSpeedButton;
    btnapagarcursofim: TSpeedButton;
    Label55: TLabel;
    btnapagarsol: TSpeedButton;
    WSDBEdit25: TWSDBEdit;
    Label57: TLabel;
    btnapagarent: TSpeedButton;
    WSDBEdit26: TWSDBEdit;
    Label59: TLabel;
    Panel6: TPanel;
    Label60: TLabel;
    btnresppgto: TSpeedButton;
    txtcodresppgto: TWSDBEdit;
    txtresppgto: TWSDBEdit;
    RLDBText12: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText16: TRLDBText;
    btnbloquear: TSpeedButton;
    ToolBar3: TToolBar;
    BtnImprimirTexto: TToolButton;
    RLReportAna1: TRLReport;
    RLBand71: TRLBand;
    RLLabel12: TRLLabel;
    RLBand72: TRLBand;
    RLDBText186: TRLDBText;
    RLDBImage18: TRLDBImage;
    RLDBText187: TRLDBText;
    RLDBText188: TRLDBText;
    RLDBText189: TRLDBText;
    RLDBText190: TRLDBText;
    RLDBText191: TRLDBText;
    RLDBText192: TRLDBText;
    RLBand73: TRLBand;
    RLGroup6: TRLGroup;
    RLBand74: TRLBand;
    RLBand75: TRLBand;
    RLLabel141: TRLLabel;
    RLLabel144: TRLLabel;
    RLDBText199: TRLDBText;
    RLLabel145: TRLLabel;
    RLDBText200: TRLDBText;
    RLLabel146: TRLLabel;
    RLLabel147: TRLLabel;
    RLLabel148: TRLLabel;
    RLLabel149: TRLLabel;
    RLDraw53: TRLDraw;
    RLDBText202: TRLDBText;
    LblAno: TRLLabel;
    RLDBText203: TRLDBText;
    RLBand76: TRLBand;
    RLLabel159: TRLLabel;
    RLLabel160: TRLLabel;
    RLLabel161: TRLLabel;
    RLLabel164: TRLLabel;
    RLLabel165: TRLLabel;
    RLLabel139: TRLLabel;
    RLBand77: TRLBand;
    RLDBImage24: TRLDBImage;
    RLDBRichText13: TRLDBRichText;
    RLSystemInfo39: TRLSystemInfo;
    RLSystemInfo40: TRLSystemInfo;
    RLDraw56: TRLDraw;
    RLLabel10: TRLLabel;
    LblCurNumTurma: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLImage1: TRLImage;
    DBRichEdit1: TDBRichEdit;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    txtRespRG: TWSDBEdit;
    WSDBEdit6: TWSDBEdit;
    WSDBEdit16: TWSDBEdit;
    Bevel2: TBevel;
    txtRespEnd: TWSDBEdit;
    Label30: TLabel;
    Label41: TLabel;
    txtRespBairro: TWSDBEdit;
    WSDBEdit28: TWSDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    BtnRespCid: TSpeedButton;
    txtRespCodCid: TWSDBEdit;
    txtRespCidade: TWSDBEdit;
    Label67: TLabel;
    WSDBEdit31: TWSDBEdit;
    txtalterar: TWSDBEdit;
    lblalterar: TLabel;
    DBRichEdit2: TDBRichEdit;
    DBRichEdit3: TDBRichEdit;
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
          procedure txtcodKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnexcelClick(Sender: TObject);
          procedure BtnImprimirClick(Sender: TObject);
          procedure btncidadeClick(Sender: TObject);
          procedure txtocorrenciasKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure DBGridDblClick(Sender: TObject);
          procedure ImgFotoDblClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure btnnaturalidadeClick(Sender: TObject);
          procedure btnimportartxtClick(Sender: TObject);
          procedure DBGridTitleClick(Column: TColumn);
          procedure btncursoClick(Sender: TObject);
          procedure btnprofessorClick(Sender: TObject);
          procedure btndisciplinaClick(Sender: TObject);
          procedure btnexcluiritemClick(Sender: TObject);
          procedure btnsalvaritemClick(Sender: TObject);
          procedure btndiscdatasClick(Sender: TObject);
          procedure btndisprofessorClick(Sender: TObject);
          procedure btnbloquearClick(Sender: TObject);
          procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
               DataCol: Integer; Column: TColumn; State: TGridDrawState);
          procedure RBEmailClick(Sender: TObject);
          procedure btnsinteticoClick(Sender: TObject);
          procedure btnrelalunosClick(Sender: TObject);
          procedure btnrelalunocursoClick(Sender: TObject);
          procedure btnimportardisciplinasClick(Sender: TObject);
          procedure txtnomeExit(Sender: TObject);
          procedure WSDBEdit15Exit(Sender: TObject);
          procedure btnmonografiaClick(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
          procedure btnbaixartudoClick(Sender: TObject);
          procedure DataSourceDataChange(Sender: TObject; Field: TField);
          procedure btnservicofinClick(Sender: TObject);
          procedure btnexcServicoFInClick(Sender: TObject);
          procedure btnIncServicoFinClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure btnapagarexpedicaoClick(Sender: TObject);
    procedure btnapagarcursosituacaoClick(Sender: TObject);
    procedure btnapagarcursoinicioClick(Sender: TObject);
    procedure btnapagarcursofimClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnapagarsolClick(Sender: TObject);
    procedure btnapagarentClick(Sender: TObject);
    procedure btnresppgtoClick(Sender: TObject);
    procedure txtcodcursoExit(Sender: TObject);
    procedure BtnImprimirTextoClick(Sender: TObject);
    procedure txtcodresppgtoExit(Sender: TObject);
    procedure txtcodprofessorExit(Sender: TObject);
    procedure txtcodnaturalidadeExit(Sender: TObject);
    procedure txtcodcidadeExit(Sender: TObject);
    procedure txtRespCodCidExit(Sender: TObject);
    procedure BtnRespCidClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FAluno: TFAluno;

implementation

uses UDM, UMenu, UCidade, UCabecalho, UCurso,
     UProfessor, UDisciplina, UAlunoRel, UAlunoCursoRel, UServicoFin, USenha,
  UNetworking, UFuncoes;

{$R *.dfm}

procedure TFAluno.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.first;
     PageControl1Change(nil);          
end;

procedure TFAluno.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.prior;
     PageControl1Change(nil);
end;

procedure TFAluno.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.next;
     PageControl1Change(nil);
end;

procedure TFAluno.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
          DataSource.DataSet.last;
     PageControl1Change(nil);
end;

procedure TFAluno.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFAluno.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if dm.CDSUsuarioUSUNAOINCLUI.asstring = 'S' then
     begin
          Showmessage('Acesso negado ao usuário!');
          exit;
     end;

     if not datasource.dataset.active then
          BtnFiltroClick(sender);

     PageControl.ActivePage := TabCadastro;
     Editar(lbltitulo.parent as TForm, true);
     DataSource.DataSet.append;
     DataSource.DataSet.post;
     dm.CDSAlunoDisciplina.ApplyUpdates(0);
     DataSource.DataSet.edit;
end;

procedure TFAluno.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if dm.CDSUsuarioUSUNAOINCLUI.asstring = 'S' then
     begin
          Showmessage('Acesso negado ao usuário!');
          exit;
     end;

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage := TabCadastro;
          Editar(lbltitulo.parent as TForm, true);
     end;
end;

procedure TFAluno.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if dm.CDSUsuarioUSUNAOALTERA.asstring = 'S' then
     begin
          Showmessage('Acesso negado ao usuário!');
          exit;
     end;
     if (dm.CDSAlunoALUALTERAR.asstring = 'N') and (dm.CDSUsuarioUSUCOORDENADOR.asstring = 'N') then
     begin
          Showmessage('Aluno bloqueado pelo coordenador!');
          exit;
     end;

     if dm.CDSAlunoALUCOD.AsInteger <= strtoint(valor_parametro(6)) then
     begin
          showmessage('Aluno Bloqueado!');
          txtpesquisa.SetFocus;
          exit;
     end;
     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage := TabCadastro;

          try
               Editar(lbltitulo.parent as TForm, false);
          except
          end;

          DataSource.DataSet.Edit;
     end;
end;

procedure TFAluno.BtnExcluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if dm.CDSUsuarioUSUNAOEXCLUI.asstring = 'S' then
     begin
          Showmessage('Acesso negado ao usuário!');
          exit;
     end;

     if (dm.CDSAlunoALUALTERAR.asstring = 'N') and (dm.CDSUsuarioUSUCOORDENADOR.asstring = 'N') then
     begin
          Showmessage('Aluno bloqueado pelo coordenador!');
          exit;
     end;

     if dm.CDSAlunoALUCOD.AsInteger <= strtoint(valor_parametro(6)) then
     begin
          showmessage('Aluno Bloqueado!');
          txtpesquisa.SetFocus;
          exit;
     end;

     if (DataSource.DataSet.Active = true) then
          if (DataSource.DataSet.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    integridade('MENALUNO', 'TMENSALIDADE', txtcod.text);
                    try
                         DataSource.DataSet.Delete;
                         (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
                    except
                       on E: Exception do
                         ShowMessage('Impossível Excluir. Violação de Integridade.' + E.Message);
                    end;
               end;
end;

procedure TFAluno.BtnSalvarClick(Sender: TObject);
var
     i: byte;
begin
     ToolBarNavegacao.SetFocus;
     if (txtcarteira.Text <> '') and (txtcarteira.Text <> 'S') and (txtcarteira.Text <> 'N') then
     begin
          Showmessage('Campo emissão da Carteira inválido!');
          txtcarteira.setfocus;
          exit;
     end;
     if (txtcarteira.Text <> '') and (txtcarteira.Text <> 'S') and (txtcarteira.Text <> 'N') then
     begin
          Showmessage('Campo emissão da Carteira inválido!');
          txtcarteira.setfocus;
          exit;
     end;
     if txtcpfresp.Text = '   .   .   -  ' then
     begin
          Showmessage('Campo CPF obrigatório');
          txtcpfresp.setfocus;
          exit;
     end;
     if txtRespEnd.Text = '' then
     begin
          Showmessage('Campo Endereço obrigatório');
          txtRespEnd.setfocus;
          exit;
     end;
     if txtRespBairro.Text = '' then
     begin
          Showmessage('Campo Bairro obrigatório');
          txtRespBairro.setfocus;
          exit;
     end;
     if txtRespCodCid.Text = '' then
     begin
          Showmessage('Campo Cidade obrigatório');
          txtRespCodCid.setfocus;
          exit;
     end;
     if txtRespRG.Text = '' then
     begin
          Showmessage('Campo RG obrigatório');
          txtRespRG.setfocus;
          exit;
     end;

     testa_registro_ja_cadastrado(WSInformacao.Tabela, DataSource);

     DataSource.DataSet.post;
     dm.CDSAlunoDisciplina.ApplyUpdates(0);

     if not dm.CDSAlunoLkp.locate('ALUCOD', dm.CDSAlunoALUCOD.asinteger, [loCaseInsensitive, loPartialKey]) then
          dm.CDSAlunoLkp.append
     else
          dm.CDSAlunoLkp.edit;

     for i := 0 to dm.CDSAlunoLkp.Fields.Count - 1 do
          if dm.CDSAlunoLkp.fields[i].FieldKind = fkData then
               try
                    dm.CDSAlunoLkp.fields[i].value := dm.CDSAluno.FieldByName(dm.CDSAlunoLkp.fields[i].FieldName).Value;
               except
               end;

     dm.CDSAlunoLkp.post;

     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(lbltitulo.parent as TForm);
end;

procedure TFAluno.BtnCancelarClick(Sender: TObject);
begin
     if trim(dm.CDSAlunoALUNOME.asstring) = '' then
          DataSource.DataSet.delete
     else
          DataSource.DataSet.Cancel;
     dm.cdsaluno.ApplyUpdates(0);
     Navegar(lbltitulo.parent as TForm);
end;

procedure TFAluno.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFAluno.BtnFiltroClick(Sender: TObject);
begin
     DataSource.DataSet.close;
     with dm.qaluno.sql do
     begin
          clear;
          add('SELECT TALUNO.*, CID.CIDNOME AS CIDADE, CID.CIDUF AS UF, NAT.CIDNOME AS NATURALIDADE,');
          add('RES.CIDNOME AS RESPCID, CURNOME, CURTURMA, PRONOME, NETNOME');
          add('FROM TALUNO');
          add('LEFT OUTER JOIN TCIDADE CID ON CID.CIDCOD = ALUCIDADE');
          add('LEFT OUTER JOIN TCIDADE NAT ON NAT.CIDCOD = ALUNATURALIDADE');
          add('LEFT OUTER JOIN TCIDADE RES ON RES.CIDCOD = ALURESPCID');
          add('LEFT OUTER JOIN TCURSO ON CURCOD = ALUCURSO');
          add('LEFT OUTER JOIN TPROFESSOR ON PROCOD = ALUORIENTADOR');
          add('LEFT OUTER JOIN TNETWORKING ON NETCOD = ALURESPPGTO');
          if Sender = BtnIncluir then
              add('WHERE ALUCOD = 0')
          else
              add('WHERE ALUCOD > 0');
          if trim(txtpesquisa.text) <> '' then
          begin
               if rbnome.Checked then
                    add('AND UPPER(ALUNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
               if rbemail.Checked then
                    add('AND UPPER(ALUEMAIL) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text + '%') + ')');
               if RBCod.Checked then
                    add('AND ALUCOD = ' + txtpesquisa.text);
          end;
          if WSInformacao.Campo = 'CIDADE' then
              add('ORDER BY CID.CIDNOME')
          else
              add('ORDER BY ' + WSInformacao.Campo);
     end;
     ThreadExecSql(TClientDataSet(DataSource.DataSet));
     DataSource.DataSet.last;
end;

procedure TFAluno.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     exportar([WSInformacao.tabela, 'TALUNODISCIPLINA'], [Datasource.dataset as TClientDataSet, dm.CDSAlunoDisciplina]);
end;

procedure TFAluno.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     importar(Wsinformacao.Tabela, DataSource);
     importar('TALUNODISCIPLINA', dm.DSAlunoDisciplina);
end;

procedure TFAluno.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
          btnfiltro.click;
     html(lbltitulo.caption, dbgrid, DataSource);
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFAluno.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFAluno.txtcodKeyDown(Sender: TObject; var Key: Word;
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
          if (sender = txtcodnaturalidade) or (sender = txtnaturalidade) then
               btnnaturalidade.click;
          if (sender = txtcodcurso) or (sender = txtcurso) then
               btncurso.click;
          if (sender = txtcodprofessor) or (sender = txtprofessor) then
               btnprofessor.click;
          if (sender = txtdisciplina) then
               btndisciplina.click;
          if (sender = txtdisprofessor) then
               btndisprofessor.click;
          if (sender = txtcodresppgto) or (sender = txtresppgto) then
               btnresppgto.click;
     end;
     if (key = 40) and (not (sender is TWSDBComboBox)) then
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
                    if enterclicar then
                    begin
                         if sender = txtpesquisa then
                              btnfiltro.click
                         else if sender = txtobservacao then
                              btnIncServicoFin.Click
                         else
                         begin
                              btnsalvaritem.Click;
                              passar := false;
                         end;
                    end
                    else
                         passar := true;
               end;
          end;
          if sender is TWSMaskEdit then
          begin
               with sender as TWSMaskEdit do
               begin
                    if enterclicar then
                    begin
                         btnsalvaritem.Click;
                         passar := false;
                    end
                    else
                         passar := true;
               end;
          end;
          if passar then
               Perform(WM_nextDlgCtl, 0, 0);
     end;
     if (key = 38) and (not (sender is TWSDBComboBox)) then
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

procedure TFAluno.txtcodnaturalidadeExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSAluno.State in [dsEdit, dsInsert] then
            DM.CDSAlunoNATURALIDADE.AsString := executasqlretorno('SELECT CIDNOME FROM TCIDADE WHERE CIDCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFAluno.txtcodprofessorExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSAluno.State in [dsEdit, dsInsert] then
            DM.CDSAlunoPRONOME.AsString := executasqlretorno('SELECT PRONOME FROM TPROFESSOR WHERE PROCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFAluno.txtcodresppgtoExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSAluno.State in [dsEdit, dsInsert] then
            DM.CDSAlunoNETNOME.AsString := executasqlretorno('SELECT NETNOME FROM TNETWORKING WHERE NETCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFAluno.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAluno.txtRespCodCidExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSAluno.State in [dsEdit, dsInsert] then
            DM.CDSAlunoRESPCID.AsString := executasqlretorno('SELECT CIDNOME FROM TCIDADE WHERE CIDCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFAluno.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFAluno.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     panimpressao.visible := not panimpressao.visible;
end;

procedure TFAluno.btncidadeClick(Sender: TObject);
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
          dm.CDSAlunoAluCidade.asinteger := dm.cdscidadecidcod.asinteger;
          dm.CDSAlunoAluCep.asstring := dm.cdscidadecidcep.asstring;
          txtcodcidade.setfocus;
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFAluno.txtocorrenciasKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 27) and (btncancelar.enabled = true) then
          btncancelar.click;
     if (Key = VK_F12) and (btnSalvar.enabled = true) then
          btnsalvar.Click;
end;

procedure TFAluno.DBGridDblClick(Sender: TObject);
begin
     if btnalterar.Enabled then
          BtnAlterar.Click;
end;

procedure TFAluno.ImgFotoDblClick(Sender: TObject);
var
     Jpg: TJPEGImage;
     Bmp: TBitMap;
begin
//     if not (datasource.dataset.State in [dsinsert, dsedit]) then
//     begin
          try
               Jpg := TJPEGImage.Create;
               Bmp := TBitmap.Create;
               if DM.OpenPictureDialog.Execute then
               begin
                    JPG.LoadFromFile(DM.OpenPictureDialog.FileName);
                    Bmp.Assign(jpg);

                    dm.CDSAlunoFoto.close;
                    dm.QAlunoFoto.params[0].asinteger := dm.CDSAlunoALUCOD.asinteger;
                    dm.CDSAlunoFoto.open;

                    if DM.CDSAlunoFoto.IsEmpty then
                         DM.CDSAlunoFoto.Append
                    else
                         DM.CDSAlunoFoto.Edit;
                    DM.CDSAlunoFotoALUCOD.AsInteger := DM.CDSAlunoALUCOD.AsInteger;
                    DM.CDSAlunoFotoALuFoto.Assign(Bmp);
                    DM.CDSAlunoFoto.Post;
                    DM.CDSAlunoFoto.ApplyUpdates(0);
               end;
          finally
               Jpg.Free;
               Bmp.Free;
          end;
//     end;
end;

procedure TFAluno.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);

     pagecontrol.activepageindex := 0;
     pagecontrol1.activepageindex := 0;

     lblalterar.Visible := dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S';
     txtalterar.Visible := dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S';
     txtcarteira.EnterClicar := dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S';
     btnbaixartudo.Visible := dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S';

     txtsituacao.items.Clear;
     txtsituacao.items.add('Ativo');
     txtsituacao.items.add('Pendente Monografia');
     txtsituacao.items.add('Pendente Matrícula');
     //if dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S' then
     //begin
     txtsituacao.items.add('Desistente');
     txtsituacao.items.add('Suspenso Temporariamente');
     txtsituacao.items.add('Transferido');
     txtsituacao.items.add('Outro');
     txtsituacao.items.add('Extensão');
     txtsituacao.items.add('Término do Curso');
     txtsituacao.items.add('Término de Curso Extensão');
     //end;

     //BtnFiltro.click;
     btndesconectar.click;
end;

procedure TFAluno.btnnaturalidadeClick(Sender: TObject);
begin
     usuario('btnconsultar', 3);
     if Application.FindComponent('FCidade') <> nil then
          FCidade.Close;
     try
          FCidade := tfcidade.create(self);
          fcidade.FormStyle := fsNormal;
          FCidade.Visible := false;
          fcidade.txtpesquisa.text := txtcidade.text;
          fcidade.BtnFiltro.click;
          fcidade.showmodal;
          dm.CDSAlunoALUNATURALIDADE.asinteger := dm.cdscidadecidcod.asinteger;
          txtcodnaturalidade.setFocus;
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFAluno.btnimportartxtClick(Sender: TObject);
var memo: Tmemo;
     i, cod: integer;
     nome: string;
begin
     memo := Tmemo.Create(nil);
     memo.Name := 'MEMOIMPORT';
     memo.Parent := FAluno;
     memo.ScrollBars := ssBoth;
     memo.Lines.LoadFromFile('c:\alunos.txt');
     for i := 0 to memo.lines.Count - 1 do
     begin
          cod := strtoint(trim(copy(memo.Lines.Strings[i], 1, 8)));
          nome := trim(copy(memo.Lines.Strings[i], 9, 50));
          //plano := strtoint(trim(copy(memo.Lines.Strings[i],65,5)));
          if dm.CDSAluno.locate('ALUCOD', cod, []) then
               dm.cdsaluno.Edit
          else
               dm.cdsaluno.append;
          dm.CDSAlunoALUCOD.asinteger := cod;
          dm.CDSAlunoALUNOME.asstring := nome;
          //dm.CDSAlunoALUPLANONEGOCIOS.AsInteger := plano;
          dm.CDSAluno.Post;
          dm.CDSAluno.ApplyUpdates(0);
          application.ProcessMessages;
     end;
     showmessage('ok');
     memo.Free;
end;

procedure TFAluno.DBGridTitleClick(Column: TColumn);
begin
     WSInformacao.Campo := Column.FieldName;
     btnfiltro.click;
     if DBGrid.DataSource.DataSet.Active then DBGrid.DataSource.DataSet.Last;
     txtpesquisa.setfocus;
end;

procedure TFAluno.btncursoClick(Sender: TObject);
begin
     if Application.FindComponent('FCurso') <> nil then
          FCurso.Close;

     try
          fcurso := tfcurso.create(self);
          FCurso.FormStyle := fsNormal;
          FCurso.Visible := false;
          fcurso.txtpesquisa.text := txtcurso.text;
          fcurso.BtnFiltro.click;
          fcurso.showmodal;
          DM.CDSAlunoALUCURSO.asinteger := dm.CDSCursoCURCOD.asinteger;
          txtCodCurso.SetFocus;
     finally
          fcurso.release;
          fcurso := nil;
          fcurso.free;
     end;
end;

procedure TFAluno.btnprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;

     try
          fprofessor := tfprofessor.create(self);
          FProfessor.FormStyle := fsNormal;
          FProfessor.Visible := false;
          fprofessor.txtpesquisa.text := txtprofessor.text;
          fprofessor.BtnFiltro.click;
          fprofessor.showmodal;
          dm.CDSAlunoALUORIENTADOR.asinteger := dm.CDSProfessorPROCOD.asinteger;
     finally
          fprofessor.release;
          fprofessor := nil;
          fprofessor.free;
     end;
end;

procedure TFAluno.btndisciplinaClick(Sender: TObject);
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
          txtdisciplina.SetFocus;
     finally
          fdisciplina.release;
          fdisciplina := nil;
          fdisciplina.free;
     end;
end;

procedure TFAluno.btnexcluiritemClick(Sender: TObject);
begin
     usuario('BtnExcluir', 19); //programa alunos e cursos

     if (DM.CDSAlunoDisciplina.Active = true) then
          if (DM.CDSAlunoDisciplina.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão dessa Disciplina?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         DM.CDSAlunoDisciplina.Delete;
                         DM.CDSAlunoDisciplina.ApplyUpdates(-1);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFAluno.btnsalvaritemClick(Sender: TObject);
begin
     if (trim(txtdisciplina.text) = '') and (trim(txtnota.text) = '') then
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
               strtoint(txtdisprofessor.text);
          except
               showmessage('Campo professor inválido!');
               txtdisprofessor.SetFocus;
               exit;
          end;
          if executasqlretorno('SELECT PROCOD FROM TPROFESSOR WHERE PROCOD = ' + txtdisprofessor.Text) = '' then
          begin
               showmessage('Professor não cadastrado!');
               txtdisprofessor.SetFocus;
               exit;
          end;
          if trim(txtnota.text) <> '' then
          begin
               try
                    strtofloat(txtnota.text);
               except
                    showmessage('Campo nota inválido!');
                    txtnota.SetFocus;
                    exit;
               end;
               if ((strtofloat(txtnota.text) < 7) and (strtofloat(txtnota.text) > 0)) or (strtofloat(txtnota.text) > 10) then
               begin
                    showmessage('Campo nota inválido, digite apenas notas maiores que 7 (sete) e menores que 10 (dez)!');
                    txtnota.SetFocus;
                    exit;
               end;
          end;
          try
               strtofloat(txtha.text);
          except
               showmessage('Campo Horas aula inválido!');
               txtha.SetFocus;
               exit;
          end;
          if trim(txtfrequencia.text) <> '' then
          begin
               try
                    strtofloat(txtfrequencia.text);
               except
                    showmessage('Campo frequência inválido!');
                    txtfrequencia.SetFocus;
                    exit;
               end;
               if strtofloat(txtfrequencia.text) > 100 then
               begin
                    showmessage('Campo frequência inválido, digite apenas frequências menores que 100 (cem)!');
                    txtfrequencia.SetFocus;
                    exit;
               end;
          end;
          if DM.CDSAlunoDisciplina.Locate('ALUDISALUNO;ALUDISDISCIPLINA;ALUDISPROFESSOR', vararrayof([txtcod.text, txtdisciplina.Text, txtdisprofessor.Text]), []) then
          begin
               showmessage('Disciplina já cadastrada!');
               txtdisciplina.SetFocus;
               exit;
          end;

          {if dm.CDSAlunoDisciplinaSomaHa.value + strToFloat(txtha.text) > dm.CDSCursoCURCARGA.asinteger then
          begin
               showmessage('O limite de carga horário do aluno (' + IntToStr(dm.CDSAlunoDisciplinaSomaHa.Value) + ') ultrapassou a pré-configurada no curso que é de ' + dm.CDSCursoCURCARGA.asstring);
               txtdisciplina.SetFocus;
               if DM.CDSUsuarioUSUCOORDENADOR.asString = 'N' then
                    exit;
          end;}

          dm.CDSAluno.post;
          dm.CDSAluno.applyupdates(0);
          dm.CDSAluno.edit;
          dm.CDSAlunoDisciplina.Append;
          dm.CDSAlunoDisciplinaALUDISALUNO.asinteger := dm.CDSAlunoALUCOD.asinteger;
          dm.CDSAlunoDisciplinaALUDISDISCIPLINA.AsInteger := strtoint(txtdisciplina.text);
          dm.CDSAlunoDisciplinaALUDISPROFESSOR.AsInteger := strtoint(txtdisprofessor.text);
          dm.CDSAlunoDisciplinaALUDISHA.AsInteger := strtoint(txtha.text);
          if trim(txtfrequencia.Text) <> '' then
               dm.CDSAlunoDisciplinaALUDISFREQUENCIA.asfloat := strtofloat(txtfrequencia.text);
          if trim(txtnota.Text) <> '' then
               dm.CDSAlunoDisciplinaALUDISNOTA.asfloat := strtofloat(txtnota.text);
          dm.CDSAlunoDisciplinaPRONOME.AsString := executasqlretorno('SELECT PRONOME FROM TPROFESSOR WHERE PROCOD = ' + txtdisprofessor.Text);
          dm.CDSAlunoDisciplinaDISNOME.AsString := executasqlretorno('SELECT DISNOME FROM TDISIPLINA WHERE DISCOD = ' + txtdisciplina.Text);
          dm.CDSAlunoDisciplina.post;
          dm.CDSAlunoDisciplina.applyupdates(0);
          txtdisciplina.Clear;
          txtdisprofessor.Clear;
          txtfrequencia.clear;
          txtnota.clear;
          txtdisciplina.setfocus;
     end;
end;

procedure TFAluno.btndiscdatasClick(Sender: TObject);
begin
     DBGridDiscData.visible := not DBGridDiscData.visible;
     if DBGridDiscData.visible then
          DBGridDiscData.setfocus;
end;

procedure TFAluno.btndisprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;

     try
          fprofessor := tfprofessor.create(self);
          FProfessor.FormStyle := fsNormal;
          FProfessor.Visible := false;
          fprofessor.BtnFiltro.click;
          Faluno.SendToBack;
          fprofessor.showmodal;
          txtdisprofessor.text := dm.CDSProfessorPROCOD.asstring;
          txtdisprofessor.SetFocus;
     finally
          Faluno.BringToFront;
          fprofessor.release;
          fprofessor := nil;
          fprofessor.free;
     end;
end;

procedure TFAluno.btnbloquearClick(Sender: TObject);
begin
     if dm.CDSAlunoALUBLOQ.AsString = 'S' then
     begin
          Showmessage('O Aluno já foi bloqueado dia ' + datetostr(dm.CDSAlunoALUBLOQDATA.asdatetime));
          if application.messagebox('Deseja desbloquear o aluno?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
          begin
               dm.CDSAlunoALUBLOQ.AsString := 'N';
               dm.CDSAlunoALUBLOQDATA.clear;
          end;
     end
     else
     begin
          dm.CDSAlunoALUBLOQ.AsString := 'S';
          dm.CDSAlunoALUBLOQDATA.asdatetime := date;
          dm.CDSAlunoMensalidade.First;
          while not dm.CDSAlunoMensalidade.eof do
          begin
               if (dm.CDSAlunoMensalidadeMENVALORPAGO.AsFloat > 0) then
               begin
                    dm.CDSAlunoMensalidade.next;
                    continue;
               end;
               dm.CDSAlunoMensalidade.delete;
               dm.CDSAlunoMensalidade.applyupdates(0);
          end;
          Showmessage('O Aluno bloqueado!');
     end;
end;

procedure TFAluno.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
     DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if (Column.Field.FieldName = 'MENVALORPAGO') or (Column.Field.FieldName = 'MENDATAPAGAMENTO') then
     begin
          if dm.CDSAlunoMensalidadeMENVALORPAGO.asfloat > 0 then // coloque aqui sua condição
          begin
               DBGrid2.Canvas.Font.Color := clred;
               DBGrid2.Canvas.FillRect(Rect);
               DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end;
     end;
end;

procedure TFAluno.RBEmailClick(Sender: TObject);
begin
     if Faluno.Visible then
          txtpesquisa.setfocus;
end;

procedure TFAluno.btnsinteticoClick(Sender: TObject);
begin
     RLReport.PreviewModal;
end;

procedure TFAluno.btnrelalunosClick(Sender: TObject);
begin
     try
          falunorel := tfalunorel.create(self);
          falunorel.Visible := false;
          falunorel.showmodal;
     finally
          falunorel.release;
          falunorel := nil;
          falunorel.free;
     end;
end;

procedure TFAluno.BtnRespCidClick(Sender: TObject);
begin
     usuario('btnconsultar', 3);
     if Application.FindComponent('FCidade') <> nil then
          FCidade.Close;
     try
          FCidade := tfcidade.create(self);
          fcidade.FormStyle := fsNormal;
          FCidade.Visible := false;
          fcidade.txtpesquisa.text := txtRespCidade.text;
          fcidade.BtnFiltro.click;
          fcidade.showmodal;
          dm.CDSAlunoALURESPCID.asinteger := dm.cdscidadecidcod.asinteger;
          txtRespCodCid.setFocus;
     finally
          fcidade.release;
          fcidade := nil;
          fcidade.free;
     end;
end;

procedure TFAluno.btnrelalunocursoClick(Sender: TObject);
begin
     try
          falunocursorel := tfalunocursorel.create(self);
          FAlunoCursoRel.FormStyle := fsNormal;
          falunocursorel.Visible := false;
          falunocursorel.showmodal;
     finally
          falunocursorel.release;
          falunocursorel := nil;
          falunocursorel.free;
     end;
end;

procedure TFAluno.btnimportardisciplinasClick(Sender: TObject);
begin
     if not dm.CDSCurso.Active then
          dm.CDSCurso.Open;
     if not dm.CDSCurso.Locate('CURCOD', txtcodcurso.text, []) then
     begin
          showmessage('Curso não cadastrado!');
          txtcodcurso.SetFocus;
          exit;
     end;
     if application.messagebox('Confirma importação das disciplinas? Atenção: Todas as notas e '
          + 'frequências já lançadas para essea aluno serão perdidas!', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
     begin
          dm.CDSAluno.post;
          dm.CDSAluno.applyupdates(0);
          dm.CDSAluno.edit;
          while DM.CDSAlunoDisciplina.recordcount > 0 do
               DM.CDSAlunoDisciplina.delete;
          DM.CDSAlunoDisciplina.Applyupdates(0);
          dm.CDSCursoDisciplina.First;
          while not dm.CDSCursoDisciplina.eof do
          begin
               dm.CDSAlunoDisciplina.Append;
               dm.CDSAlunoDisciplinaALUDISALUNO.asinteger := dm.CDSAlunoALUCOD.asinteger;
               dm.CDSAlunoDisciplinaALUDISDISCIPLINA.asinteger := dm.CDSCursoDisciplinaCURDISDISCIPLINA.asinteger;
               dm.CDSAlunoDisciplinaPRONOME.AsString := dm.CDSCursoDisciplinaPRONOME.AsString;
               dm.CDSAlunoDisciplinaDISNOME.AsString := dm.CDSCursoDisciplinaDISNOME.AsString;
               dm.CDSAlunoDisciplinaALUDISPROFESSOR.asinteger := dm.CDSCursoDisciplinaCURDISPROFESSOR.asinteger;
               dm.CDSAlunoDisciplinaALUDISHA.asinteger := dm.CDSCursoDisciplinaCURDISHORASAULA.asinteger;
               dm.CDSAlunoDisciplinaALUDISFREQUENCIA.asinteger := 0;
               dm.CDSAlunoDisciplinaALUDISNOTA.asinteger := 0;
               dm.CDSAlunoDisciplina.post;

               {dm.CDSCursoDisciplinaData.First;
               while not dm.CDSCursoDisciplinaData.eof do
               begin
                    dm.CDSAlunoDisciplinaData.Append;
                    dm.CDSAlunoDisciplinaDataALUDISDATAALUNO.asinteger := dm.CDSAlunoALUCOD.asinteger;
                    dm.CDSAlunoDisciplinaDataALUDISDATADISCIPLINA.asinteger := dm.CDSCursoDisciplinaDataCURDISDATADISCIPLINA.asinteger;
                    dm.CDSAlunoDisciplinaDataALUDISDATAPROFESSOR.asinteger := dm.CDSCursoDisciplinaDataCURDISDATAPROFESSOR.asinteger;
                    dm.CDSAlunoDisciplinaDataALUDISDATADATA.AsDateTime := dm.CDSCursoDisciplinaDataCURDISDATADATA.asdatetime;
                    dm.CDSAlunoDisciplinaDataALUDISDATAINICIO.asstring := dm.CDSCursoDisciplinaDataCURDISDATAINICIO.asstring;
                    dm.CDSAlunoDisciplinaDataALUDISDATAFIM.asstring := dm.CDSCursoDisciplinaDataCURDISDATAFIM.asstring;
                    dm.CDSAlunoDisciplinaData.post;
                    dm.CDSCursoDisciplinaData.next;
               end;}
               dm.CDSCursoDisciplina.next;
          end;
          showmessage('Disciplinas importadas com sucesso!');
     end;
end;

procedure TFAluno.txtnomeExit(Sender: TObject);
var ret: string;
begin
     if dm.CDSAluno.state in [dsinsert, dsedit] then
     begin
          ret := trim(executasqlretorno('select alucod from taluno where alunome = ' + quotedstr(txtnome.text) + 'and alucod <> ' + txtcod.text));
          if ret <> '' then
          begin
               showmessage('Aluno(a) já cadastrado(a) com o código ' + ret + '!');
               txtnome.setfocus;
               exit;
          end;
     end;
end;

procedure TFAluno.WSDBEdit15Exit(Sender: TObject);
begin
{    if valor_parametro(21) = '1' then
         if Dm.cdsalunoALUCURSOFIM.AsString = '' then
              Dm.cdsalunoALUCURSOFIM.AsDateTime := IncMonth(Dm.CDSAlunoALUCURSOINICIO.AsDateTime, 24); }
end;

procedure TFAluno.btnmonografiaClick(Sender: TObject);
begin
     PanMonografia.visible := not PanMonografia.visible;
end;

procedure TFAluno.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 2 then
     begin
          try
               usuario('btnconsultar', 12);
          except
               showmessage('Acesso negado ao usuário!');
               PageControl1.ActivePageIndex := 0;
          end;
     end;
     if PageControl1.ActivePageIndex = 6 then
     begin
          dm.CDSAlunoFoto.close;
          dm.QAlunoFoto.params[0].asinteger := dm.CDSAlunoALUCOD.asinteger;
          dm.CDSAlunoFoto.open;
     end;
end;

procedure TFAluno.btnbaixartudoClick(Sender: TObject);
begin
     if application.messagebox('Tem certeza que deseja baixar todas as mensalidades desse aluno(a)?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
     begin
          DM.CDSAlunoMensalidade.first;
          while not DM.CDSAlunoMensalidade.eof do
          begin
               DM.CDSAlunoMensalidade.edit;
               DM.CDSAlunoMensalidadeMENVALORPAGO.asfloat := DM.CDSAlunoMensalidadeMENLIQUIDO.asFloat;
               DM.CDSAlunoMensalidadeMENDATAPAGAMENTO.AsDateTime := Date;
               DM.CDSAlunoMensalidade.post;
               //applyupdates tá no DM
               DM.CDSAlunoMensalidade.next;
          end;
     end;
     ShowMessage('Mensalidades baixas com sucesso!');
end;

procedure TFAluno.DataSourceDataChange(Sender: TObject; Field: TField);
begin
//     txtsituacao.enabled := dm.CDSUsuarioUSUCOORDENADOR.asstring = 'S';
     {if dm.CDSUsuarioUSUCOORDENADOR.asstring <> 'S' then
     begin
          txtsituacao.visible := ((DM.CDSAlunoALUSITUACAO.asString = 'Ativo') or
                                  (DM.CDSAlunoALUSITUACAO.asString = 'Pendente Monografia') or
                                  (DM.CDSAlunoALUSITUACAO.asString = 'Pendente Matrícula'));

          lblsituacao.visible := not txtsituacao.visible;
     end;}
end;

procedure TFAluno.btnservicofinClick(Sender: TObject);
begin
     if Application.FindComponent('FServicoFin') <> nil then
          FServicoFin.Close;

     try
          FServicoFin := tFServicoFin.create(self);
          FServicoFin.FormStyle := fsNormal;
          FServicoFin.Visible := false;
          usuario('btnconsultar', FServicoFin.wsinformacao.programa);
          FServicoFin.BtnFiltro.click;
          FServicoFin.showmodal;
          txtServicoFIn.text := dm.CDSServicosFinFINCOD.asstring;
     finally
          FServicoFin.release;
          FServicoFin := nil;
          FServicoFin.free;
     end;
end;

procedure TFAluno.btnexcServicoFInClick(Sender: TObject);
begin
     usuario('BtnExcluir', wsinformacao.programa);

     if (DM.CDSAlunoServicoFin.Active = true) then
          if (DM.CDSAlunoServicoFin.RecordCount > 0) then
               if application.messagebox('Confirma Exclusão desse Serviço Financeiro?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
               begin
                    try
                         DM.CDSAlunoServicoFin.Delete;
                         DM.CDSAlunoServicoFin.ApplyUpdates(0);
                    except
                         ShowMessage('Impossível Excluir. Violação de Integridade.');
                    end;
               end;
end;

procedure TFAluno.btnIncServicoFinClick(Sender: TObject);
var cod: integer;
begin
     if (trim(txtServicoFIn.text) = '') and (trim(txtobservacao.text) = '') then
     begin
          btnsalvar.click;
     end
     else
     begin
          try
               strtoint(txtServicoFIn.text);
          except
               showmessage('Campo serviço financeiro inválido!');
               txtServicoFIn.SetFocus;
               exit;
          end;
          if not dm.CDSServicosFin.Locate('FINCOD', txtServicoFIn.text, []) then
          begin
               showmessage('Serviço Financeiro não cadastrad0!');
               txtServicoFIn.SetFocus;
               exit;
          end;
          if trim(txtobservacao.text) = '' then
          begin
               showmessage('Campo observação inválido!');
               txtobservacao.SetFocus;
               exit;
          end;
          try
               StrToDate(txtdataservicofin.text);
          except
               showmessage('Campo data inválido!');
               txtdataservicofin.SetFocus;
               exit;
          end;
          dm.CDSAluno.post;
          dm.CDSAluno.applyupdates(0);
          dm.CDSAluno.edit;
          dm.CDSAlunoServicoFin.Last;
          cod := dm.CDSAlunoServicoFinALUSERFINCODIGO.asinteger + 1;
          dm.CDSAlunoServicoFin.Append;
          dm.CDSAlunoServicoFinALUSERFINALUNO.asinteger := dm.CDSAlunoALUCOD.asinteger;
          dm.CDSAlunoServicoFinALUSERFINSERVICOFIN.AsInteger := StrToInt(txtServicoFIn.text);
          dm.CDSAlunoServicoFinALUSERFINCODIGO.AsInteger := cod;
          dm.CDSAlunoServicoFinALUSERFINDATA.AsDateTime := StrToDate(txtdataservicofin.text);
          dm.CDSAlunoServicoFinALUSERFINHISTORICO.AsString := txtobservacao.text;
          dm.CDSAlunoServicoFinALUSERFINUSUARIO.AsString := lusuario;
          dm.CDSAlunoServicoFin.post;
          dm.CDSAlunoServicoFin.applyupdates(0);
          txtServicoFIn.Clear;
          txtdataservicofin.Clear;
          txtobservacao.clear;
          txtServicoFIn.setfocus;
     end;
end;

procedure TFAluno.btnapagarClick(Sender: TObject);
begin
     DM.CDSAlunoALUNASCIMENTO.clear;
end;

procedure TFAluno.btnapagarexpedicaoClick(Sender: TObject);
begin
     DM.CDSAlunoALUDATAEXPEDICAO.clear;
end;

procedure TFAluno.btnapagarcursosituacaoClick(Sender: TObject);
begin
     DM.CDSAlunoALUDATAPENDMONO.Clear;
end;

procedure TFAluno.btnapagarcursoinicioClick(Sender: TObject);
begin
     DM.CDSAlunoALUCURSOINICIO.Clear;
end;

procedure TFAluno.btnapagarcursofimClick(Sender: TObject);
begin
     DM.CDSAlunoALUCURSOFIM.Clear;
end;

procedure TFAluno.FormShow(Sender: TObject);
var i : byte;
    aTeste : boolean;
begin
     aTeste := valor_parametro(21) = '2';
     for i := 0 to DBGrid1.Columns.Count - 1 do
         if DBGrid1.Columns[i].Color = clinfobk then
             DBGrid1.Columns[i].Visible := aTeste;

     BtnImprimirTexto.Visible := aTeste;

     //TabHistFinanceiro.TabVisible := (TipoSistema = 'EMPRESARIAL');

     if valor_parametro(21) = '1' then
         TabSheet4.Caption := 'Negociação Financeira'
     else
         TabSheet4.Caption := 'Parecer Descritivo';
    carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
    navegar(sender as tform);

end;

procedure TFAluno.btnapagarsolClick(Sender: TObject);
begin
     DM.CDSAlunoALUCERTSOLICITADO.Clear;
end;

procedure TFAluno.btnapagarentClick(Sender: TObject);
begin
     DM.CDSAlunoALUCERTENTREGA.Clear;
end;

procedure TFAluno.btnresppgtoClick(Sender: TObject);
begin
     if Application.FindComponent('FNetworking') <> nil then
          FNetworking.Close;

     try
          FNetworking := tFNetworking.create(self);
          FNetworking.FormStyle := fsNormal;
          FNetworking.Visible := false;
          FNetworking.txtpesquisa.text := txtresppgto.text;
          FNetworking.BtnFiltro.click;
          FNetworking.showmodal;
          dm.CDSAlunoAluREspPgto.asstring := dm.CDSNetworkingNETCOD.asstring;
          txtcodresppgto.SetFocus;
     finally
          FNetworking.release;
          FNetworking := nil;
          FNetworking.free;
     end;
end;

procedure TFAluno.txtcodcidadeExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSAluno.State in [dsEdit, dsInsert] then
            DM.CDSAlunoCIDADE.AsString := executasqlretorno('SELECT CIDNOME FROM TCIDADE WHERE CIDCOD = ' + (Sender as TWSDBEdit).Text);
end;

procedure TFAluno.txtcodcursoExit(Sender: TObject);
begin
    if Trim((Sender as TWSDBEdit).Text) <> '' then
        if DM.CDSAluno.State in [dsEdit, dsInsert] then
            DM.CDSAlunoCURNOME.AsString := executasqlretorno('SELECT CURNOME FROM TCURSO WHERE CURCOD = ' + (Sender as TWSDBEdit).Text);

    //if (valor_parametro(21) = '2') and (dm.CDSCurso.Active) then
        if dm.CDSCurso.Locate('CURCOD', txtcodcurso.text, [loPartialKey, loCaseInsensitive]) then
        begin
            if dm.CDSAlunoALUCURSOINICIO.asDateTime < StrToDate('01/01/2000') then
                dm.CDSAlunoALUCURSOINICIO.asDateTime := dm.CDSCursoCURINICIO.asDateTime;
            if dm.CDSAlunoALUCURSOFIM.asDateTime < StrToDate('01/01/2000') then
                dm.CDSAlunoALUCURSOFIM.asDateTime := dm.CDSCursoCURFIM.asDateTime;
        end;
end;

procedure TFAluno.BtnImprimirTextoClick(Sender: TObject);
begin
    dm.cdsaluno.Filter := 'ALUCOD = ' + dm.CDSAlunoALUCOD.asstring;
    dm.cdsaluno.filtered := true;
    lblAno.Caption := IntToStr(YearOf(Date));
    RLLabel10.Caption := dm.CDSAlunoDisciplinaPRONOME.AsString;
    RLLabel159.caption := dm.CDSParamEmpCIDNOME.asstring + ', ' + formatdatetime('dd" de "mmmm" de "yyyy"', date);
    dm.CDSCurso.Locate('CURCOD', dm.CDSAlunoALUCURSO.AsInteger, [lopartialkey, loCaseInsensitive]);
    dm.CDSProfessor.Locate('PROCOD', dm.CDSCursoCURCOORDENADOR.asstring, [loPartialKey, loCaseInsensitive]);
    RLLabel165.caption := dm.CDSProfessorPRONOME.asstring;
    RLLabel164.caption := dm.CDSCursoCURSECRETARIO.asstring;
    LblCurNumTurma.Caption := dm.CDSCursoCURNUMTURMA.asstring;
    Faluno.SendToBack;
    RLReportAna1.PreviewModal;
    Faluno.BringToFront;
    dm.cdsaluno.Filter := '';
    dm.cdsaluno.filtered := false;
end;

end.
