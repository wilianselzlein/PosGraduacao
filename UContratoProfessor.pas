unit UContratoProfessor;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, DateUtils,
     Buttons;

type
     TFContratoProfessor = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label4: TLabel;
          txtprofessor: TWSEdit;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          btnprofessor: TSpeedButton;
          txtdata1: TWSEdit;
          Label3: TLabel;
          Label6: TLabel;
          btndisciplina: TSpeedButton;
          txtdisciplina: TWSEdit;
          txtnomeprofessor: TWSEdit;
          txtnomedisciplina: TWSEdit;
          txtha: TWSEdit;
          Label1: TLabel;
          ImgContrato: TImage;
          txtdata2: TWSEdit;
          txtdata3: TWSEdit;
          txtvalor: TWSEdit;
          Label7: TLabel;
          Label2: TLabel;
          Label5: TLabel;
          Label8: TLabel;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure FormShow(Sender: TObject);
          procedure txtcursoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnprofessorClick(Sender: TObject);
          procedure btndisciplinaClick(Sender: TObject);
          procedure txtprofessorExit(Sender: TObject);
          procedure txtdisciplinaExit(Sender: TObject);
          procedure txtdata3KeyPress(Sender: TObject; var Key: Char);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FContratoProfessor: TFContratoProfessor;

implementation

uses UDM, UMenu, UProfessor, UAluno, UCurso, UDisciplina, UContrato, UFuncoes;

{$R *.dfm}

procedure TFContratoProfessor.BtnImprimirClick(Sender: TObject);
var memo: TMemo;
begin
     memo := TMemo.Create(self);
     try
          memo.Parent := lbltitulo.Parent;
          memo.visible := false;
          memo.ScrollBars := ssBoth;

          try
               strtoint(txtprofessor.text);
          except
               showmessage('Campo professor inválido!');
               txtprofessor.setfocus;
               exit;
          end;
          if not dm.cdsprofessor.locate('PROCOD', txtprofessor.text, []) then
          begin
               showmessage('Professor não cadastrado!');
               txtprofessor.setfocus;
               exit;
          end;

          try
               strtoint(txtdisciplina.text);
          except
               showmessage('Campo disciplina inválido!');
               txtdisciplina.setfocus;
               exit;
          end;

          if not dm.CDSDisciplina.locate('DISCOD', txtdisciplina.text, []) then
          begin
               showmessage('Disciplina não cadastrada!');
               txtdisciplina.setfocus;
               exit;
          end;

          try
               memo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Professor.rtf');
          except
               on E: Exception do
               begin
                    showmessage('Impossível carregar o arquivo de contrato, verifique se o(s) seguinte(s) arquivo(s) existe(m):' + #13 + #13 +
                         ExtractFilePath(Application.ExeName) + 'Contrato - Modelo 2009 - Professor.rtf' + #13 +
                         e.Message);
                    txtprofessor.setfocus;
                    exit;
               end;
          end;

          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':professor', dm.CDSProfessorPRONOME.asstring);
          //memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':identidade', dm.CDSProfessorPRORG.asstring);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':cpf', dm.CDSProfessorPROCPF.asstring);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':endereco', dm.CDSProfessorPROENDERECO.asstring);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':bairro', dm.CDSProfessorPROBAIRRO.asstring);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':cep', dm.CDSProfessorPROCEP.asstring);
          dm.CDSCidade.Locate('CIDCOD', dm.CDSProfessorPROCIDADE.asstring, []);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':cidade', dm.CDSCidadeCIDNOME.asString);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':estado', dm.CDSCidadeCIDUF.asString);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':disciplina', dm.CDSDisciplinaDISNOME.asstring);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':ha', txtha.text);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':extensoha', extensoquant(strtoint(txtha.text)));
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':data1', txtdata1.text);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':data2', txtdata2.text);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':data3', txtdata3.text);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':valor', txtvalor.text);
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':extensovalor', extenso(strtofloat(txtvalor.text)));
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':total', formatfloat('0.00', strtofloat(txtvalor.text) * strtofloat(txtha.Text)));
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':extensototal', extenso(strtofloat(txtvalor.text) * strtofloat(txtha.Text)));
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':data', FormatDateTime('dd" de "mmmm" de "yyyy', date));
          memo.Lines.Text := BuscaTroca(memo.Lines.Text, ':institutocidade', dm.CDSInstitutoINSCIDADE.asstring);
          memo.lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'contrato.rtf');

          FContrato := TFContrato.create(self);
          FContrato.RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'contrato.rtf');
          FContrato.ShowModal;

          if FileExists(ExtractFilePath(Application.ExeName) + 'contrato.rtf') then
               DeleteFile(ExtractFilePath(Application.ExeName) + 'contrato.rtf');
     finally
          FContrato.release;
          FContrato := nil;
          FContrato.free;
     end;
end;

procedure TFContratoProfessor.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFContratoProfessor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFContratoProfessor.FormKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 27) and (btnsair.enabled = true) then
          btnsair.click;
     if (Key = VK_F8) and (btnimprimir.enabled = true) then
          btnimprimir.Click;
     if (key = 13) or (key = 40) then
          Perform(WM_nextDlgCtl, 0, 0);
     if (key = 38) then
          Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFContratoProfessor.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
end;

procedure TFContratoProfessor.txtcursoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtprofessor then
               btnprofessor.click;
          if sender = txtdisciplina then
               btndisciplina.click;
     end;
end;

procedure TFContratoProfessor.btnprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          fprofessor.Close;

     try
          fprofessor := tfprofessor.create(self);
          FProfessor.FormStyle := fsNormal;
          fprofessor.Visible := false;
          usuario('btnconsultar', fprofessor.wsinformacao.programa);
          fprofessor.showmodal;
          txtprofessor.text := dm.cdsprofessorprocod.asstring;
     finally
          fprofessor.release;
          fprofessor := nil;
          fprofessor.free;
     end;
end;

procedure TFContratoProfessor.btndisciplinaClick(Sender: TObject);
begin
     if Application.FindComponent('FDisciplina') <> nil then
          fdisciplina.Close;

     try
          fdisciplina := tfdisciplina.create(self);
          FDisciplina.FormStyle := fsNormal;
          FDisciplina.Visible := false;
          usuario('btnconsultar', fdisciplina.wsinformacao.programa);
          fdisciplina.showmodal;
          txtdisciplina.text := dm.CDSDisciplinaDISCOD.asstring;
     finally
          fdisciplina.release;
          fdisciplina := nil;
          fdisciplina.free;
     end;

end;

procedure TFContratoProfessor.txtprofessorExit(Sender: TObject);
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
               txtnomeprofessor.text := dm.CDSProfessorPRONOME.AsString;
          end
          else
          begin
               txtnomeprofessor.text := 'Professor não Cadastrado!';
               txtprofessor.setfocus;
               exit;
          end;
     end;
end;

procedure TFContratoProfessor.txtdisciplinaExit(Sender: TObject);
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
          if not dm.CDSdisciplina.active then
               dm.CDSdisciplina.open;
          if dm.CDSdisciplina.Locate('DISCOD', txtdisciplina.text, []) then
          begin
               txtnomedisciplina.text := dm.CDSDisciplinaDISNOME.AsString;
          end
          else
          begin
               txtnomedisciplina.text := 'Disciplina não Cadastrada!';
               txtdisciplina.setfocus;
               exit;
          end;
     end;
end;

procedure TFContratoProfessor.txtdata3KeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

end.
