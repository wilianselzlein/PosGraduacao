unit UMensalidadeGera;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, ToolWin, StdCtrls, WSEdit, ExtCtrls, Mask,
     WSMaskEdit, dateutils, shellapi, Menus, RLReport, RLRichText,
     Buttons, WordXP, OleServer, Comobj;

type
     TMensalidade = class
     private
          Aluno, Banco, FormaPgto, Professor, Disciplina: Integer;
          Vencimento: TDate;
          Valor, Desconto, Bolsa, ValorProfessor: Double;
          Obs: string;
     public
          procedure add_mensalidade(Quant: integer);
     end;

type
     TFMensalidadeGera = class(TForm)
          ToolBarNavegacao: TToolBar;
          BtnGerar: TToolButton;
          btnsair: TToolButton;
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
          btnaluno: TSpeedButton;
          Label2: TLabel;
          btncurso: TSpeedButton;
          Label1: TLabel;
          btnbanco: TSpeedButton;
          Label3: TLabel;
          txtaluno: TWSEdit;
          txtcurso: TWSEdit;
          txtbanco: TWSEdit;
          txtobs: TWSEdit;
          Label8: TLabel;
          Label10: TLabel;
          Label11: TLabel;
          txtvalor: TWSEdit;
          txtdesconto: TWSEdit;
          txtliquido: TWSEdit;
          Label4: TLabel;
          txtvencimento: TWSMaskEdit;
          Label5: TLabel;
          txtquant: TWSEdit;
          BtnContrato: TToolButton;
          ToolButton1: TToolButton;
          Label6: TLabel;
          btnformapgto: TSpeedButton;
          txtformapgto: TWSEdit;
          Label9: TLabel;
          txtbolsa: TWSEdit;
          PopupContrato: TPopupMenu;
          btncontratoaluno: TMenuItem;
          btnmonografia: TMenuItem;
          btnrenegociacao: TMenuItem;
          txtnomealuno: TWSEdit;
          txtnomecurso: TWSEdit;
          txtnomebanco: TWSEdit;
          txtnomeformapgto: TWSEdit;
          ImgContrato: TImage;
          ImgMensalidade: TImage;
    Label12: TLabel;
    btnprofessor: TSpeedButton;
    txtprofessor: TWSEdit;
    txtnomeprofessor: TWSEdit;
    btnreativacao: TMenuItem;
    Label13: TLabel;
    btndisciplina: TSpeedButton;
    txtdisciplina: TWSEdit;
    txtnomedisciplina: TWSEdit;
    txtvalorprofessor: TWSEdit;
    Label14: TLabel;
    BtnWord: TMenuItem;
    Label15: TLabel;
    txtEntrada: TWSEdit;
          procedure btnsairClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnalunoClick(Sender: TObject);
          procedure btncursoClick(Sender: TObject);
          procedure btnbancoClick(Sender: TObject);
          procedure txtvalorChange(Sender: TObject);
          procedure BtnGerarClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtquantKeyPress(Sender: TObject; var Key: Char);
          procedure txtalunoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure BtnContratoClick(Sender: TObject);
          procedure txtcursoExit(Sender: TObject);
          procedure txtalunoExit(Sender: TObject);
          procedure btnformapgtoClick(Sender: TObject);
          procedure txtbancoExit(Sender: TObject);
          procedure txtformapgtoExit(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnprofessorClick(Sender: TObject);
    procedure txtprofessorExit(Sender: TObject);
    procedure txtdisciplinaExit(Sender: TObject);
    procedure btndisciplinaClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FMensalidadeGera: TFMensalidadeGera;

implementation

uses UAluno, UCurso, UDM, UBanco, UMenu, UFormaPgto, UContrato, UProfessor,
  UDisciplina, UFuncoes;

{$R *.dfm}

procedure TMensalidade.add_mensalidade(Quant: integer);
var i, num: integer;
begin
     dm.CDSMensalidade.close;
     num := strtoint(executasqlretorno('select coalesce(max(MENNUMERO),0) as num FROM TMENSALIDADE where MENALUNO = ' + inttostr(Self.Aluno)));
     dm.CDSMensalidade.open;
     dm.CDSMensalidade.AfterPost := nil;
     i := 0;
     while i < Quant do
     begin
          inc(i);
          inc(num);
          dm.CDSMensalidade.append;
          dm.CDSMensalidadeMENALUNO.AsInteger := Self.Aluno;
          dm.CDSMensalidadeMENNUMERO.AsInteger := num;
          dm.CDSMensalidadeMENVENCIMENTO.AsDateTime := IncMonth(Self.Vencimento, i - 1);
          dm.CDSMensalidadeMENBANCO.AsInteger := Self.Banco;
          dm.CDSMensalidadeMENFORMAPGTO.AsInteger := Self.FormaPgto;
          dm.CDSMensalidadeMENPROFESSOR.AsInteger := Self.Professor;
          dm.CDSMensalidadeMENDISCIPLINA.AsInteger := Self.Disciplina;
          dm.CDSMensalidadeMENVALOR.AsFloat := Self.Valor;
          dm.CDSMensalidadeMENVALORPROFESSOR.AsFloat := Self.ValorProfessor;          
          dm.CDSMensalidadeMENACRESCIMO.AsFloat := 0;
          dm.CDSMensalidadeMENDESCONTO.AsFloat := Self.Desconto;
          dm.CDSMensalidadeMENBOLSA.AsFloat := Self.Bolsa;
          dm.CDSMensalidadeMENOBS.asstring := Self.Obs;
          dm.CDSMensalidade.post;
          dm.CDSMensalidade.ApplyUpdates(0);
     end;
     dm.CDSMensalidade.AfterOpen := dm.CDSMensalidadeAfterPost;
end;

procedure TFMensalidadeGera.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFMensalidadeGera.FormShow(Sender: TObject);
begin
     if not dm.CDSAlunoLkp.Active then
          dm.CDSAlunoLkp.open;
     if not dm.CDSAluno.Active then
          ThreadExecSql(dm.CDSAluno);
     if not dm.CDSCurso.Active then
          dm.CDSCurso.open;
     if not dm.CDSBanco.Active then
          dm.CDSBanco.open;
     if not dm.CDSFormaPgto.Active then
          dm.CDSFormaPgto.open;
     txtvencimento.text := datetostr(date);
     txtbanco.Text := valor_Parametro(13);
     txtbancoExit(nil);
     txtformapgto.Text := valor_Parametro(14);
     txtformapgtoExit(nil);
     setCaption(Sender as TForm);
end;

procedure TFMensalidadeGera.btnalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          faluno := tfaluno.create(self);
          FAluno.FormStyle := fsNormal;
          faluno.Visible := false;
          usuario('btnconsultar', faluno.wsinformacao.programa);
          faluno.showmodal;
          txtaluno.text := dm.cdsalunoalucod.asstring;
     finally
          faluno.release;
          faluno := nil;
          faluno.free;
     end;
end;

procedure TFMensalidadeGera.btncursoClick(Sender: TObject);
begin
     if Application.FindComponent('FCurso') <> nil then
          FCurso.Close;

     try
          FCurso := tFCurso.create(self);
          FCurso.FormStyle := fsNormal;
          FCurso.Visible := false;
          usuario('btnconsultar', FCurso.wsinformacao.programa);
          FCurso.showmodal;
          txtcurso.text := dm.CDSCursoCurCOD.asstring;
     finally
          FCurso.release;
          FCurso := nil;
          FCurso.free;
     end;
end;

procedure TFMensalidadeGera.btnbancoClick(Sender: TObject);
begin
     if Application.FindComponent('FBanco') <> nil then
          FBanco.Close;

     try
          FBanco := tFBanco.create(self);
          FBanco.FormStyle := fsNormal;
          fbanco.Visible := false;
          usuario('btnconsultar', FBanco.wsinformacao.programa);
          FBanco.showmodal;
          txtbanco.text := dm.CDSBancoBanCOD.asstring;
     finally
          FBanco.release;
          FBanco := nil;
          FBanco.free;
     end;
end;

procedure TFMensalidadeGera.txtvalorChange(Sender: TObject);
begin
     try
          txtliquido.Text := floattostr(strtofloat(txtvalor.text) - strtofloat(txtdesconto.text) - strtofloat(txtbolsa.text));
     except
          txtliquido.text := '0';
     end;
end;

procedure TFMensalidadeGera.BtnGerarClick(Sender: TObject);
var Mensalidade: TMensalidade;
begin
     if application.messagebox('Deseja gerar as mensalidades?', 'Atenção', mb_yesno + MB_ICONQUESTION) = mrno then
         Exit;
         
     Mensalidade := TMensalidade.Create;
     try
          Mensalidade.Aluno := strtoint(txtaluno.text);
     except
          showmessage('Campo aluno inválido!');
          txtaluno.setfocus;
          exit;
     end;
     if not dm.cdsalunoLkp.locate('ALUCOD', txtaluno.text, []) then
     begin
          showmessage('Aluno não cadastrado!');
          txtaluno.setfocus;
          exit;
     end;
     if not dm.cdscurso.locate('CURCOD', txtcurso.text, []) then
     begin
          showmessage('Curso não cadastrado!');
          txtcurso.setfocus;
          exit;
     end;
     try
          Mensalidade.Banco := strtoint(txtbanco.text);
     except
          showmessage('Campo banco inválido!');
          txtbanco.setfocus;
          exit;
     end;
     if not dm.cdsbanco.locate('BANCOD', txtbanco.text, []) then
     begin
          showmessage('Banco não cadastrado!');
          txtbanco.setfocus;
          exit;
     end;
     try
          Mensalidade.Banco := strtoint(txtbanco.text);
     except
          showmessage('Campo banco inválido!');
          txtbanco.setfocus;
          exit;
     end;
     try
          Mensalidade.FormaPgto := strtoint(txtformapgto.text);
     except
          showmessage('Campo Forma de Pagamento inválido!');
          txtformapgto.setfocus;
          exit;
     end;
     if not dm.cdsformapgto.locate('FORCOD', txtformapgto.text, []) then
     begin
          showmessage('Forma de Pagamento não cadastrada!');
          txtformapgto.setfocus;
          exit;
     end;
     if Trim(txtprofessor.text) <> '' then
     begin
          try
               Mensalidade.Professor := strtoint(txtprofessor.text);
          except
               showmessage('Campo Professor inválido!');
               txtprofessor.setfocus;
               exit;
          end;
          if not dm.cdsprofessor.locate('PROCOD', txtprofessor.text, []) then
          begin
               showmessage('Professor não cadastrado!');
               txtprofessor.setfocus;
               exit;
          end;
     end;
     if Trim(txtDisciplina.text) <> '' then
     begin
          try
               Mensalidade.Disciplina := strtoint(txtdisciplina.text);
          except
               showmessage('Campo Disciplina inválido!');
               txtdisciplina.setfocus;
               exit;
          end;
          if not dm.cdsDisciplina.locate('DISCOD', txtdisciplina.text, []) then
          begin
               showmessage('Disciplina não cadastrada!');
               txtdisciplina.setfocus;
               exit;
          end;
     end;

     try
          Mensalidade.Vencimento := strtodate(txtvencimento.text);
     except
          showmessage('Campo vencimento inválido!');
          txtvencimento.setfocus;
          exit;
     end;
     try
          Mensalidade.Valor := strtofloat(txtvalor.text);
     except
          showmessage('Campo valor inválido!');
          txtvalor.setfocus;
          exit;
     end;
     try
          Mensalidade.ValorProfessor := strtofloat(txtvalorProfessor.text);
     except
          showmessage('Campo valor professor inválido!');
          txtvalorprofessor.setfocus;
          exit;
     end;
     try
          Mensalidade.Desconto := strtofloat(txtdesconto.text);
     except
          showmessage('Campo desconto inválido!');
          txtdesconto.setfocus;
          exit;
     end;
     try
          Mensalidade.Bolsa := strtofloat(txtbolsa.text);
     except
          showmessage('Campo bolsa inválido!');
          txtbolsa.setfocus;
          exit;
     end;
     Mensalidade.Obs := txtobs.Text;
     try
          Mensalidade.add_mensalidade(strtoint(txtquant.text));
     except
          showmessage('Campo quantidade inválido!');
          txtquant.setfocus;
          exit;
     end;
     Mensalidade.Free;
     Showmessage('Mensalidades Geradas com Sucesso!');
end;

procedure TFMensalidadeGera.FormKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 27) and (btnsair.enabled = true) then
          btnsair.click;
     if (key = 13) or (key = 40) then
          Perform(WM_nextDlgCtl, 0, 0);
     if (key = 38) then
          Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFMensalidadeGera.txtquantKeyPress(Sender: TObject;
     var Key: Char);
begin
     {if key = #13 then
     begin
          if btngerar.Visible then
                btngerar.Click
          else
                BtnContrato.Click;
     end;}
end;

procedure TFMensalidadeGera.txtalunoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtaluno then
               btnaluno.click;
          if sender = txtcurso then
               btncurso.click;
          if sender = txtbanco then
               btnbanco.click;
          if sender = txtformapgto then
               btnformapgto.click;
          if sender = txtdisciplina then
               btndisciplina.click;
     end;
end;

procedure TFMensalidadeGera.BtnContratoClick(Sender: TObject);
type
    twordreplaceflags = set of (wrfreplaceall, wrfmatchcase, wrfmatchwildcards);
const
    wdfindcontinue     = 1;
    wdreplaceone       = 1;
    wdreplaceall       = 2;
    wddonotsavechanges = 0;
var
    wordapp: olevariant;
    memo: TMemo;
    Chaves : Tstringlist;
    i : integer;
    periodo : byte;
begin
    try
         strtoint(txtaluno.text);
    except
         showmessage('Campo aluno inválido!');
         txtaluno.setfocus;
         exit;
    end;

    if local then
    begin
         dm.cdsalunoLkp.close;
         dm.cdsalunoLkp.open;
    end;

    dm.cdsaluno.locate('ALUCOD', txtaluno.text, []);

    if not dm.cdsalunoLkp.locate('ALUCOD', txtaluno.text, []) then
    begin
         showmessage('Aluno não encontrado, aguarde atualização...' + #13 + 'Caso não consiga gerar o contrato, tente fechando o sistema e abrindo novamente.');
         txtaluno.setfocus;
         exit;
    end;

    try
         strtoint(txtcurso.text);
    except
         showmessage('Campo curso inválido!');
         txtcurso.setfocus;
         exit;
    end;

    if not dm.cdscurso.locate('CURCOD', txtcurso.text, []) then
    begin
         showmessage('Curso não cadastrado!');
         txtcurso.setfocus;
         exit;
    end;

    try
         strtofloat(txtvalor.text);
         strtoint(txtquant.text);
    except
         showmessage('Campo Valor ou Quantidade de Mensalidades inválido!');
         txtvalor.SetFocus;
         exit;
    end;

    try
         strtofloat(txtdesconto.text);
    except
         showmessage('Campo Desconto inválido!');
         txtdesconto.SetFocus;
         exit;
    end;

    if sender <> btnWord then
    begin
         memo := TMemo.Create(self);

         memo.Parent := lbltitulo.Parent;
         memo.visible := false;
         memo.ScrollBars := ssBoth;

         try
              if sender = btncontratoaluno then
              begin
                   if (dm.CDSAlunoLkpALUCURSO.asinteger in [98, 101, 102, 103]) then
                        memo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Extensão.rtf')
                   else if dm.CDSAlunoLkpALUBOLSA.asinteger = 0 then
                        memo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Aluno.rtf')
                   else if dm.CDSAlunoLkpALUBOLSA.asinteger = 100 then
                        memo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Bolsista Integral.rtf')
                   else
                        memo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Bolsista Parcial.rtf');
              end;
              if sender = btnmonografia then
                   memo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Monografia.rtf');
              if sender = btnrenegociacao then
                   memo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Renegociação.rtf');
              if sender = btnreativacao then
                   memo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Reativação.rtf');
         except
              on E: Exception do
              begin
                   showmessage('Impossível carregar o arquivo de contrato, verifique se os seguintes arquivos existem:' + #13 + #13 +
                        ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Aluno.rtf' + #13 +
                        ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Bolsista Parcial.rtf' + #13 +
                        ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Bolsista Integral.rtf' + #13 +
                        ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Monografia.rtf' + #13 +
                        ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Renegociação.rtf' + #13 + #13 +
                        ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Extensão.rtf' + #13 + #13 +
                        ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Reativação.rtf' + #13 + #13 +
                        e.Message);
                   txtaluno.setfocus;
                   exit;
              end;
         end;

         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':nome', dm.CDSAlunoLkpALUNOME.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':codigo', dm.CDSAlunoLkpALUCOD.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':sexo', dm.CDSAlunoLkpALUSEXO.asstring);

         {if trim(dm.CDSAlunoLkpAluResponsavel.AsString) = '' then
         begin
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':assinatura', dm.CDSAlunoLkpALUNOME.asstring);
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':assinacpf', dm.CDSAlunoLkpALUCPF.asstring);
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavel', '');
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavcpf', '');
         end;
         if trim(dm.CDSAlunoLkpAluResponsavel.AsString) = 'Pai' then
         begin
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':assinatura', dm.CDSAlunoLkpALUNOMEPAI.asstring);
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':assinacpf', dm.CDSAlunoLkpALURESPONSAVELCPF.asstring);
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavel', dm.CDSAlunoLkpALUNOMEPAI.asstring);
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavcpf', dm.CDSAlunoLkpALURESPONSAVELCPF.asstring);
         end;
         if trim(dm.CDSAlunoLkpAluResponsavel.AsString) = 'Mãe' then
         begin
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':assinatura', dm.CDSAlunoLkpALUNOMEMAE.asstring);
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':assinacpf', dm.CDSAlunoLkpALURESPONSAVELCPF.asstring);
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavel', dm.CDSAlunoLkpALUNOMEMAE.asstring);
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavcpf', dm.CDSAlunoLkpALURESPONSAVELCPF.asstring);
         end;}
         //if trim(dm.CDSAlunoLkpAluResponsavel.AsString) <> '' then
         //begin
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':assinatura', dm.CDSAlunoLkpALUNOME.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':assinacpf', dm.CDSAlunoLkpALUCPF.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavel', dm.CDSAlunoALUNOMEPAI.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavcpf', dm.CDSAlunoALURESPONSAVELCPF.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavnasc', dm.CDSAlunoALURESPNASC.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavrg', dm.CDSAlunoALURESPRG.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavnomemae', dm.CDSAlunoALURESPNOMEMAE.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavendereco', dm.CDSAlunoALURESPEND.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavbairro', dm.CDSAlunoALURESPBAIRRO.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavcep', dm.CDSAlunoALURESPCEP.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavcidade', dm.CDSAlunoRESPCID.asstring);
             memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':responsavfone', dm.CDSAlunoALURESPFONE.asstring);
         //end;

         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':cpf', dm.CDSAlunoLkpALUCPF.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':identidade', dm.CDSAlunoLkpALUIDENTIDADE.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':expedicao', dm.CDSAlunoLkpALUDATAEXPEDICAO.DisplayText);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':naturalidade', dm.CDSAlunoLkpNATUCIDADE.asString);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':nascimento', dm.CDSAlunoLkpALUNASCIMENTO.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':estadocivil', dm.CDSAlunoLkpALUESTADOCIVIL.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':nacionalidade', dm.CDSAlunoLkpALUNACIONALIDADE.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':endereco', dm.CDSAlunoLkpALUENDERECO.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':bairro', dm.CDSAlunoLkpALUBAIRRO.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':cidade', dm.CDSAlunoLkpCIDNOME.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':uf', dm.CDSAlunoLkpCIDUF.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':cep', dm.CDSAlunoLkpALUCEP.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':fone', dm.CDSAlunoLkpALUFONE.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':fax', dm.CDSAlunoLkpALUFAX.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':celular', dm.CDSAlunoLkpALUCELULAR.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':bolsa', dm.CDSAlunoLkpALUBOLSA.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':email', dm.CDSAlunoLkpALUEMAIL.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':bolsa', dm.CDSAlunoLkpALUBOLSA.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':email', dm.CDSAlunoLkpALUEMAIL.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':egresso', dm.CDSAlunoALUEGRESSO.asstring);

         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':curso', dm.CDSCursoCURNOME.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':diavcto', dm.CDSCursoCURVENCIMENTO.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':extensodia', trim(extensoquant(dm.CDSCursoCURVENCIMENTO.asinteger)));
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':vctoini', txtvencimento.Text);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':iniciocurso', DateToStr(dm.CDSAlunoLkpALUCURSOINICIO.asDateTime));
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':diasemana', DiaSemana(dm.CDSAlunoLkpALUCURSOINICIO.asDateTime));
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':fimcurso', DateToStr(dm.CDSAlunoLkpALUCURSOFIM.AsDateTime));
         periodo := MonthsBetween(dm.CDSAlunoALUCURSOINICIO.asDateTime, dm.CDSAlunoALUCURSOFIM.AsDateTime);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':periodo', IntToStr(Periodo) + '(' + extensoquant(periodo) + ')');

         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':cargahoraria', dm.CDSCursoCURCARGA.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':horario', dm.CDSCursoCURHORARIO.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':horafim', dm.CDSCursoCURHORARIOFIM.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':extensocargahoraria', trim(extensoquant(dm.CDSCursoCURCARGA.asinteger)));

         try
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':total', formatfloat('#,###,###0.00', strtofloat(txtvalor.text) * strtoint(txtquant.text)));
         except
              showmessage('Campo Valor ou Quantidade de Mensalidades inválido!');
              txtvalor.SetFocus;
              exit;
         end;
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':extensototal', trim(extenso(strtofloat(txtvalor.text) * strtoint(txtquant.text))));
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':valor', formatfloat('#,###,###0.00', strtofloat(txtvalor.text)));
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':entrada', formatfloat('#,###,###0.00', strtofloat(txtEntrada.text)));
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':extensovalor', trim(extenso(strtofloat(txtvalor.text))));
         try
              memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':desconto', formatfloat('#,###,###0.00', strtofloat(txtdesconto.text)));
         except
              showmessage('Campo Desconto inválido!');
              txtdesconto.SetFocus;
              exit;
         end;
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':extensodesconto', trim(extenso(strtofloat(txtdesconto.text))));
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':liquido', formatfloat('#,###,###0.00', strtofloat(txtvalor.text) - strtofloat(txtdesconto.text)));
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':extensoliquido', trim(extenso(strtofloat(txtvalor.text) - strtofloat(txtdesconto.text))));

         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':data', FormatDateTime('dd" de "mmmm" de "yyyy', date));
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':cnpjinstituto', dm.CDSInstitutoINSCNPJ.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':site', dm.CDSInstitutoINSSITE.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':institutocidade', dm.CDSInstitutoINSCIDADE.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':diretor', dm.CDSParamEmpEMPDIRETOR.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':faculdade', dm.CDSParamEmpEMPNOME.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':rgdiretor', dm.CDSParamEmpEMPDIRETORIDENTIDADE.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':direcpf', dm.CDSParamEmpEMPDIRETORCPF.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':parcelas', formatfloat('0', strtoint(txtquant.text)));

         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':login', dm.CDSAlunoLkpALUCOD.asstring);
         memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':senha', dm.CDSAlunoLkpALUSENHA.asstring);

         memo.lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'contrato.rtf');
         try
              FContrato := TFContrato.create(self);
              FContrato.RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'contrato.rtf');
              FContrato.Visible := False;
              FContrato.ShowModal;

              if FileExists(ExtractFilePath(Application.ExeName) + 'contrato.rtf') then
                   DeleteFile(ExtractFilePath(Application.ExeName) + 'contrato.rtf');
         finally
              FContrato.release;
              FContrato := nil;
              FContrato.free;
         end;
    end
    else //contrato word
    begin
       if chaves = nil then
           chaves := TStringList.create;
       chaves.Clear;
       chaves.Add(':nome'+'='+dm.CDSAlunoLkpALUNOME.asstring);
       chaves.Add(':codigo'+'='+dm.CDSAlunoLkpALUCOD.asstring);

       if trim(dm.CDSAlunoLkpAluResponsavel.AsString) = '' then
       begin
            chaves.Add(':assinatura'+'='+dm.CDSAlunoLkpALUNOME.asstring);
            chaves.Add(':assinacpf'+'='+dm.CDSAlunoLkpALUCPF.asstring);
            chaves.Add(':responsavel'+'=');
            chaves.Add(':responsavcpf'+'=');
       end;

       if trim(dm.CDSAlunoLkpAluResponsavel.AsString) = 'Pai' then
       begin
            chaves.Add(':assinatura'+'='+dm.CDSAlunoLkpALUNOMEPAI.asstring);
            chaves.Add(':assinacpf'+'='+dm.CDSAlunoLkpALURESPONSAVELCPF.asstring);
            chaves.Add(':responsavel'+'='+dm.CDSAlunoLkpALUNOMEPAI.asstring);
            chaves.Add(':responsavcpf'+'='+dm.CDSAlunoLkpALURESPONSAVELCPF.asstring);
       end;

       if trim(dm.CDSAlunoLkpAluResponsavel.AsString) = 'Mãe' then
       begin
            chaves.Add(':assinatura'+'='+dm.CDSAlunoLkpALUNOMEMAE.asstring);
            chaves.Add(':assinacpf'+'='+dm.CDSAlunoLkpALURESPONSAVELCPF.asstring);
            chaves.Add(':responsavel'+'='+dm.CDSAlunoLkpALUNOMEMAE.asstring);
            chaves.Add(':responsavcpf'+'='+dm.CDSAlunoLkpALURESPONSAVELCPF.asstring);
       end;

       chaves.Add(':cpf'+'='+dm.CDSAlunoLkpALUCPF.asstring);
       chaves.Add(':identidade'+'='+dm.CDSAlunoLkpALUIDENTIDADE.asstring);
       chaves.Add(':expedicao'+'='+dm.CDSAlunoLkpALUDATAEXPEDICAO.DisplayText);
       chaves.Add(':naturalidade'+'='+dm.CDSAlunoLkpNATUCIDADE.asString);
       chaves.Add(':nascimento'+'='+dm.CDSAlunoLkpALUNASCIMENTO.asstring);
       chaves.Add(':estadocivil'+'='+dm.CDSAlunoLkpALUESTADOCIVIL.asstring);
       chaves.Add(':nacionalidade'+'='+dm.CDSAlunoLkpALUNACIONALIDADE.asstring);
       chaves.Add(':endereco'+'='+dm.CDSAlunoLkpALUENDERECO.asstring);
       chaves.Add(':bairro'+'='+dm.CDSAlunoLkpALUBAIRRO.asstring);
       chaves.Add(':cidade'+'='+dm.CDSAlunoLkpCIDNOME.asstring);
       chaves.Add(':uf'+'='+dm.CDSAlunoLkpCIDUF.asstring);
       chaves.Add(':cep'+'='+dm.CDSAlunoLkpALUCEP.asstring);
       chaves.Add(':fone'+'='+dm.CDSAlunoLkpALUFONE.asstring);
       chaves.Add(':fax'+'='+dm.CDSAlunoLkpALUFAX.asstring);
       chaves.Add(':celular'+'='+dm.CDSAlunoLkpALUCELULAR.asstring);
       chaves.Add(':bolsa'+'='+dm.CDSAlunoLkpALUBOLSA.asstring);
       chaves.Add(':email'+'='+dm.CDSAlunoLkpALUEMAIL.asstring);
       chaves.Add(':bolsa'+'='+dm.CDSAlunoLkpALUBOLSA.asstring);
       chaves.Add(':email'+'='+dm.CDSAlunoLkpALUEMAIL.asstring);

       chaves.Add(':curso'+'='+dm.CDSCursoCURNOME.asstring);
       chaves.Add(':diavcto'+'='+dm.CDSCursoCURVENCIMENTO.asstring);
       chaves.Add(':extensodia'+'='+trim(extensoquant(dm.CDSCursoCURVENCIMENTO.asinteger)));
       chaves.Add(':vctoini'+'='+txtvencimento.Text);
       chaves.Add(':iniciocurso'+'='+DateToStr(dm.CDSAlunoALUCURSOINICIO.asDateTime));
       chaves.Add(':fimcurso'+'='+DateToStr(dm.CDSAlunoALUCURSOFIM.AsDateTime));
       chaves.Add(':cargahoraria'+'='+dm.CDSCursoCURCARGA.asstring);
       chaves.Add(':horario'+'='+dm.CDSCursoCURHORARIO.asstring);
       chaves.Add(':extensocargahoraria'+'='+trim(extensoquant(dm.CDSCursoCURCARGA.asinteger)));

       try
            chaves.Add(':total'+'='+formatfloat('#,###,###0.00', strtofloat(txtvalor.text) * strtoint(txtquant.text)));
       except
            showmessage('Campo Valor ou Quantidade de Mensalidades inválido!');
            txtvalor.SetFocus;
            exit;
       end;
       chaves.Add(':extensototal'+'='+trim(extenso(strtofloat(txtvalor.text) * strtoint(txtquant.text))));
       chaves.Add(':valor'+'='+formatfloat('#,###,###0.00', strtofloat(txtvalor.text)));
       chaves.Add(':extensovalor'+'='+trim(extenso(strtofloat(txtvalor.text))));
       try
            chaves.Add(':desconto'+'='+formatfloat('#,###,###0.00', strtofloat(txtdesconto.text)));
       except
            showmessage('Campo Desconto inválido!');
            txtdesconto.SetFocus;
            exit;
       end;
       chaves.Add(':extensodesconto'+'='+trim(extenso(strtofloat(txtdesconto.text))));
       chaves.Add(':liquido'+'='+formatfloat('#,###,###0.00', strtofloat(txtvalor.text) - strtofloat(txtdesconto.text)));
       chaves.Add(':extensoliquido'+'='+trim(extenso(strtofloat(txtvalor.text) - strtofloat(txtdesconto.text))));

       chaves.Add(':data'+'='+FormatDateTime('dd" de "mmmm" de "yyyy', date));
       chaves.Add(':cnpjinstituto'+'='+dm.CDSInstitutoINSCNPJ.asstring);
       chaves.Add(':site'+'='+dm.CDSInstitutoINSSITE.asstring);
       chaves.Add(':institutocidade'+'='+dm.CDSInstitutoINSCIDADE.asstring);
       chaves.Add(':diretor'+'='+dm.CDSParamEmpEMPDIRETOR.asstring);
       chaves.Add(':faculdade'+'='+dm.CDSParamEmpEMPNOME.asstring);
       chaves.Add(':rgdiretor'+'='+dm.CDSParamEmpEMPDIRETORIDENTIDADE.asstring);
       chaves.Add(':direcpf'+'='+dm.CDSParamEmpEMPDIRETORCPF.asstring);
       chaves.Add(':parcelas'+'='+formatfloat('0', strtoint(txtquant.text)));


       if Dm.SaveDialogDoc.execute then
       begin
            if CopyFile(PChar(ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Aluno.doc'),PChar(Dm.SaveDialogDoc.FileName),false) then
            begin
                try
                    try
                        wordapp := createoleobject('word.application');
                    except
                        messagedlg ('Microsoft Word não encontrato.', mterror, [mbok], 0);
                    end;
                    {Será aberto seu documento com o parametro a ser substituido}
                    wordapp.visible := true;
                    wordapp.Application.documents.open(Dm.SaveDialogDoc.FileName);
                    wordapp.Application.selection.find.clearformatting;
                    wordapp.Application.selection.find.forward := true;

                    wordapp.Application.selection.find.format := false;
                    wordapp.Application.selection.find.matchwholeword := false;
                    wordapp.Application.selection.find.matchsoundslike := false;
                    wordapp.Application.selection.find.matchallwordforms := false;

                    //registro do cliente
                    for i:= 0 to chaves.count - 1 do
                    begin
                          wordapp.Application.selection.find.text := chaves.Names[i];
                          if length(Chaves.ValueFromIndex[i]) <  200 then
                          begin
                             wordapp.Application.selection.find.replacement.text := Chaves.ValueFromIndex[i];
                             wordapp.Application.selection.find.execute(replace := wdreplaceall);
                          end
                          else
                          begin
                             wordapp.Application.selection.find.replacement.text := '';
                             wordapp.Application.selection.find.execute;
                          end;
                          if length(Chaves.ValueFromIndex[i])> 200 then
                              if wordapp.Application.Selection.Find.Found then
                                  wordapp.selection.Typetext(Chaves.ValueFromIndex[i]);
                    end;
                finally
                   wordapp.quit;
                   close;
                end;
                Application.processmessages;
                Sleep(100);
                Application.processmessages;
                if application.messagebox('Deseja abrir o contrato? (Certifique-se do Microsoft Word estar fechado e o arquivo não estar aberto).', 'Atenção', mb_yesno + MB_ICONQUESTION) = mryes then
                    ShellExecute(0, nil, PChar(Dm.SaveDialogDoc.FileName), nil, nil, SW_SHOWNORMAL);
            end;
       end;
    end;

end;

procedure TFMensalidadeGera.txtcursoExit(Sender: TObject);
begin
     txtnomecurso.clear;
     if trim(txtcurso.Text) <> '' then
     begin
          try
               strtoint(txtcurso.text);
          except
               txtnomecurso.text := 'Campo Curso Inválido!';
               txtcurso.setfocus;
               exit;
          end;
          if not dm.CDSCurso.active then
               dm.CDSCurso.open;
          if dm.CDSCurso.Locate('CURCOD', txtcurso.text, []) then
          begin
               txtnomecurso.text := dm.CDSCursoCURNOME.AsString;
               txtvalor.Text := formatfloat('0.00', dm.CDSCursoCURVALOR.asfloat);
               txtdesconto.Text := formatfloat('0.00', dm.CDSCursoCURDESCONTO.asfloat);
               txtliquido.Text := formatfloat('0.00', dm.CDSCursoCURLIQUIDO.asfloat);
               txtvencimento.text := formatfloat('00', dm.CDSCursoCURVENCIMENTO.asinteger) + '/' + formatfloat('00', monthof(date)) + '/' + formatfloat('0000', yearof(date));
          end
          else
          begin
               txtnomecurso.text := 'Curso não Cadastrado!';
               txtcurso.setfocus;
               exit;
          end;
     end;
end;

procedure TFMensalidadeGera.txtalunoExit(Sender: TObject);
begin
     txtnomealuno.clear;
     if trim(txtaluno.Text) <> '' then
     begin
          try
               strtoint(txtaluno.text);
          except
               txtnomealuno.text := 'Campo Aluno Inválido!';
               txtaluno.setfocus;
               exit;
          end;
          if not dm.CDSAlunoLkp.active then
               dm.CDSAlunoLkp.open;
          if dm.CDSAlunoLkp.Locate('ALUCOD', txtaluno.text, []) then
          begin
               txtnomealuno.text := dm.CDSAlunoLkpALUNOME.asstring;
               txtcurso.Text := dm.cdsalunoLkpalucurso.asstring;
               txtcursoExit(nil);
          end
          else
          begin
               txtnomealuno.text := 'Aluno não cadastrado!';
               txtaluno.setfocus;
               exit;
          end;
     end;

end;

procedure TFMensalidadeGera.btnformapgtoClick(Sender: TObject);
begin
     if Application.FindComponent('FFormaPgto') <> nil then
          FFormaPgto.Close;

     try
          FFormaPgto := tFFormaPgto.create(self);
          FFormaPgto.FormStyle := fsNormal;
          fformapgto.Visible := false;
          usuario('btnconsultar', FFormaPgto.wsinformacao.programa);
          FFormaPgto.showmodal;
          txtformapgto.text := dm.CDSFormaPgtoForCOD.asstring;
     finally
          FFormaPgto.release;
          FFormaPgto := nil;
          FFormaPgto.free;
     end;
end;

procedure TFMensalidadeGera.txtbancoExit(Sender: TObject);
begin
     txtnomebanco.clear;
     if trim(txtbanco.Text) <> '' then
     begin
          try
               strtoint(txtbanco.text);
          except
               txtnomebanco.text := 'Campo Banco Inválido!';
               txtbanco.setfocus;
               exit;
          end;
          if not dm.CDSBanco.active then
               dm.CDSBanco.open;
          if dm.CDSBanco.Locate('BANCOD', txtbanco.text, []) then
          begin
               txtnomebanco.text := dm.CDSBancoBANNOME.asstring;
          end
          else
          begin
               txtnomebanco.text := 'Banco não cadastrado!';
               txtbanco.setfocus;
               exit;
          end;
     end;
end;

procedure TFMensalidadeGera.txtformapgtoExit(Sender: TObject);
begin
     txtnomeformapgto.clear;
     if trim(txtformapgto.Text) <> '' then
     begin
          try
               strtoint(txtformapgto.text);
          except
               txtnomeformapgto.text := 'Campo Forma de Pagamento Inválido!';
               txtformapgto.setfocus;
               exit;
          end;
          if not dm.CDSFormaPgto.active then
               dm.CDSFormaPgto.open;
          if dm.CDSFormaPgto.Locate('FORCOD', txtformapgto.text, []) then
          begin
               txtnomeformapgto.text := dm.CDSFormaPgtoFORNOME.asstring;
          end
          else
          begin
               txtnomeformapgto.text := 'Forma de Pagamento não cadastrado!';
               txtformapgto.setfocus;
               exit;
          end;
     end;
end;

procedure TFMensalidadeGera.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFMensalidadeGera.btnprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;

     try
          FProfessor := tFProfessor.create(self);
          FProfessor.FormStyle := fsNormal;
          FProfessor.Visible := false;
          usuario('btnconsultar', FProfessor.wsinformacao.programa);
          FProfessor.showmodal;
          txtprofessor.text := dm.CDSProfessorPROCOD.asstring;
     finally
          FProfessor.release;
          FProfessor := nil;
          FProfessor.free;
     end;
end;

procedure TFMensalidadeGera.txtprofessorExit(Sender: TObject);
begin
     txtnomeprofessor.clear;
     if trim(txtprofessor.Text) <> '' then
     begin
          try
               strtoint(txtprofessor.text);
          except
               txtnomeprofessor.text := 'Campo Professor Inválido!';
               txtprofessor.setfocus;
               exit;
          end;
          if not dm.CDSProfessor.active then
               dm.CDSProfessor.open;
          if dm.CDSProfessor.Locate('PROCOD', txtprofessor.text, []) then
          begin
               txtnomeprofessor.text := dm.CDSProfessorProNome.asstring;
          end
          else
          begin
               txtnomeprofessor.text := 'Professor não cadastrado!';
               txtprofessor.setfocus;
               exit;
          end;
     end;
end;

procedure TFMensalidadeGera.txtdisciplinaExit(Sender: TObject);
begin
     txtnomedisciplina.clear;
     if trim(txtdisciplina.Text) <> '' then
     begin
          try
               strtoint(txtdisciplina.text);
          except
               txtnomedisciplina.text := 'Campo Disciplina Inválido!';
               txtdisciplina.setfocus;
               exit;
          end;
          if not dm.CDSDisciplina.active then
               dm.CDSDisciplina.open;
          if dm.CDSDisciplina.Locate('DISCOD', txtDisciplina.text, []) then
          begin
               txtnomeDisciplina.text := dm.CDSDisciplinaDisNome.asstring;
          end
          else
          begin
               txtnomeDisciplina.text := 'Disciplina não cadastrada!';
               txtDisciplina.setfocus;
               exit;
          end;
     end;
end;

procedure TFMensalidadeGera.btndisciplinaClick(Sender: TObject);
begin
     if Application.FindComponent('FDisciplina') <> nil then
          FDisciplina.Close;

     try
          FDisciplina := tFDisciplina.create(self);
          FDisciplina.FormStyle := fsNormal;
          FDisciplina.Visible := false;
          usuario('btnconsultar', FDisciplina.wsinformacao.programa);
          FDisciplina.showmodal;
          txtDisciplina.text := dm.CDSDisciplinaDisCOD.asstring;
     finally
          FDisciplina.release;
          FDisciplina := nil;
          FDisciplina.free;
     end;
end;

end.
