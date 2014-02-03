unit UAlunoNotaFreq;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, DB, Grids, DBGrids, StdCtrls, WSEdit, ExtCtrls,
     ComCtrls, ToolWin, Buttons;

type
     TFAlunoNotaFreq = class(TForm)
          lbltitulo: TLabel;
          DBGrid: TDBGrid;
          DataSource: TDataSource;
          PanPesquisa: TPanel;
          btnprofessor: TSpeedButton;
          Label24: TLabel;
          txtprofessor: TWSEdit;
          ToolBarItem: TToolBar;
          btnok: TToolButton;
          btnsair: TToolButton;
          txtaluno: TWSEdit;
          Label1: TLabel;
          Label2: TLabel;
          txtnomeprofessor: TWSEdit;
    btncurso: TSpeedButton;
    txtcodcurso: TWSEdit;
    LstCurso: TListBox;
    btndisciplina: TSpeedButton;
    Label3: TLabel;
    txtcoddisciplina: TWSEdit;
    LstDisciplina: TListBox;
          procedure btnsairClick(Sender: TObject);
          procedure btnokClick(Sender: TObject);
          procedure FormActivate(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure btnprofessorClick(Sender: TObject);
          procedure txtprofessorKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtalunoChange(Sender: TObject);
          procedure btncursoClick(Sender: TObject);
          procedure txtprofessorExit(Sender: TObject);
    procedure txtcodcursoExit(Sender: TObject);
    procedure txtcoddisciplinaExit(Sender: TObject);
    procedure LstDisciplinaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btndisciplinaClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FAlunoNotaFreq: TFAlunoNotaFreq;

implementation

uses UDM, UProfessor, UDisciplina, Umenu, UCurso, UFuncoes;

{$R *.dfm}

procedure TFAlunoNotaFreq.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.state = dsedit then
          DataSource.DataSet.post;
     close;
end;

procedure TFAlunoNotaFreq.btnokClick(Sender: TObject);

     function Adiciona_Cursos: string;
     begin
          result := 'AND TALUNO.ALUCURSO in (';
          LstCurso.ItemIndex := 0;
          repeat
               result := result + copy(LstCurso.Items.Strings[LstCurso.ItemIndex], 1, 4) + ',';
               LstCurso.ItemIndex := LstCurso.ItemIndex + 1;
          until LstCurso.ItemIndex = LstCurso.Items.Count - 1;
          result := result + copy(LstCurso.Items.Strings[LstCurso.ItemIndex], 1, 4) + ') ';
     end;

     function Adiciona_Disc: string;
     begin
          result := ' AND TALUNODISCIPLINA.ALUDISDISCIPLINA in (';
          LstDisciplina.ItemIndex := 0;
          repeat
               result := result + copy(LstDisciplina.Items.Strings[LstDisciplina.ItemIndex], 1, 4) + ',';
               LstDisciplina.ItemIndex := LstDisciplina.ItemIndex + 1;
          until LstDisciplina.ItemIndex = LstDisciplina.Items.Count - 1;
          result := result + copy(LstDisciplina.Items.Strings[LstDisciplina.ItemIndex], 1, 4) + ') ';
     end;

begin
     if DataSource.DataSet.state = dsedit then
          DataSource.DataSet.post;
     try
          strtoint(txtprofessor.text);
     except
          showmessage('Campo professor inválido!');
          txtprofessor.setfocus;
          exit;
     end;
     if not dm.CDSProfessor.Active then
          dm.CDSProfessor.open;
     if not dm.cdsprofessor.Locate('PROCOD', txtprofessor.text, []) then
     begin
          showmessage('Professor não cadastrado!');
          txtprofessor.setfocus;
          exit;
     end;
     {try
          strtoint(txtdisciplina.text);
     except
          showmessage('Campo disciplina inválido!');
          txtdisciplina.setfocus;
          exit;
     end;
     if not dm.CDSDisciplina.Active then
          dm.CDSDisciplina.open;
     if not dm.CDSDisciplina.Locate('DISCOD', txtdisciplina.text, []) then
     begin
          showmessage('Disciplina não cadastrada!');
          txtdisciplina.setfocus;
          exit;
     end;
     try
          strtoint(txtcurso.text);
     except
          showmessage('Campo curso inválido!');
          txtcurso.setfocus;
          exit;
     end;
     if not dm.CDSCurso.Active then
          dm.CDSCurso.open;
     if not dm.CDSCurso.Locate('CURCOD', txtcurso.text, []) then
     begin
          showmessage('Curso não cadastrado!');
          txtcurso.setfocus;
          exit;
     end;}
     dm.CDSAlunoLanc.close;
     with dm.QAlunoLanc.SQL do
     begin
         Clear;
         Add('SELECT TALUNODISCIPLINA.ALUDISALUNO, TALUNODISCIPLINA.ALUDISDISCIPLINA, TALUNODISCIPLINA.ALUDISPROFESSOR, TALUNODISCIPLINA.ALUDISFREQUENCIA, TALUNODISCIPLINA.ALUDISNOTA, TALUNODISCIPLINA.ALUDISDATA,');
         Add('  ALUDISSITUACAO, ALUDISNOTA1, ALUDISNOTA2, ALUDISNOTA3, ALUDISNOTA4, ALUDISFREQUENCIA1, ALUDISFREQUENCIA2, ALUDISFREQUENCIA3, ALUDISFREQUENCIA4,');
         Add('  TALUNO.ALUNOME');
         Add('FROM TALUNODISCIPLINA inner join TALUNO on ALUCOD = ALUDISALUNO');
         Add('WHERE TALUNO.ALUBLOQ <> ''S''');
         Add('AND TALUNODISCIPLINA.ALUDISPROFESSOR = :PROF');
         if LstCurso.Items.Count > 0 then
              add(Adiciona_Cursos);
         if LstDisciplina.Items.Count > 0 then
              add(Adiciona_Disc);
         Add('ORDER BY ALUNOME');
     end;
     //.Clear params[0].asinteger := strtoint(txtdisciplina.text);
     dm.QAlunoLanc.params[0].asinteger := strtoint(txtprofessor.text);
     //dm.QAlunoLanc.params[2].asinteger := strtoint(txtcurso.text);
     dm.CDSAlunoLanc.open;
     dm.CDSProfessor.IndexFieldNames := 'PRONOME';

     DBGrid.enabled := dm.CDSAlunoLanc.recordcount > 0;
end;

procedure TFAlunoNotaFreq.FormActivate(Sender: TObject);
begin
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFAlunoNotaFreq.FormCreate(Sender: TObject);
var i : byte;
    aTeste : boolean;
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
     aTeste := valor_parametro(21) = '2';
     for i := 0 to DBGrid.Columns.Count - 1 do
         if DBGrid.Columns[i].Color = clinfobk then
             DBGrid.Columns[i].Visible := aTeste;
end;

procedure TFAlunoNotaFreq.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     salva_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm));
     salva_propriedades_tela((sender as tform).name, sender as TForm);
     action := cafree;
end;

procedure TFAlunoNotaFreq.FormShow(Sender: TObject);
begin
     setCaption(Sender as TForm);
end;

procedure TFAlunoNotaFreq.btnprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProessor') <> nil then
          FProfessor.Close;
     try
          FProfessor := tFProfessor.create(self);
          FProfessor.FormStyle := fsNormal;
          fprofessor.Visible := false;
          usuario('btnconsultar', FProfessor.wsinformacao.programa);
          FProfessor.showmodal;
          txtprofessor.text := dm.CDSProfessorProCOD.asstring;
          if txtProfessor.canFOcus then
               txtprofessor.SetFocus;
     finally
          FProfessor.release;
          FProfessor := nil;
          FProfessor.free;
     end;
end;

procedure TFAlunoNotaFreq.txtprofessorKeyDown(Sender: TObject;
     var Key: Word; Shift: TShiftState);
begin
     if (key = 27) and (btnsair.enabled = true) then
          btnsair.click;
     if (key = 13) or (key = 40) then
          Perform(WM_nextDlgCtl, 0, 0);
     if (key = 38) then
          Perform(WM_nextDlgCtl, 1, 0);
     if key = vk_f3 then
     begin
          if sender = txtprofessor then
               btnprofessor.click;
          if sender = txtcoddisciplina then
               btndisciplina.click;
          if sender = txtcodcurso then
               btncurso.click;
     end;
end;

procedure TFAlunoNotaFreq.txtalunoChange(Sender: TObject);
begin
     dm.CDSAlunoLanc.Filter := 'ALUNOME >= ' + quotedstr(trim(txtaluno.text));
     dm.CDSAlunoLanc.FindFirst;
end;

procedure TFAlunoNotaFreq.btncursoClick(Sender: TObject);
begin
     if Application.FindComponent('FCurso') <> nil then
          FCurso.Close;

     try
          FCurso := tFCurso.create(self);
          FCurso.FormStyle := fsNormal;
          fcurso.Visible := false;
          usuario('btnconsultar', FCurso.wsinformacao.programa);
          FCurso.showmodal;
          txtcodcurso.text := dm.CDSCursoCurCOD.asstring;
          txtcodcurso.Setfocus;
     finally
          FCurso.release;
          FCurso := nil;
          FCurso.free;
     end;
end;

procedure TFAlunoNotaFreq.txtprofessorExit(Sender: TObject);
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

procedure TFAlunoNotaFreq.txtcodcursoExit(Sender: TObject);
begin
     if trim(txtcodcurso.Text) <> '' then
     begin
          try
               strtoint(txtcodcurso.text);
          except
               txtcodcurso.clear;
               txtcodcurso.setfocus;
               exit;
          end;
          if not dm.CDSCurso.active then
               dm.CDSCurso.open;
          if dm.CDSCurso.Locate('CURCOD', txtcodcurso.text, []) then
          begin
               LstCurso.items.add(FormatFloat('0000', dm.CDSCursoCURCOD.AsInteger) + ' - ' + dm.CDSCursoCURNOME.AsString);
               txtcodcurso.Clear;
               txtcodcurso.SetFocus;
          end
          else
          begin
               txtcodcurso.Clear;
               txtcodcurso.SetFocus;
               exit;
          end;
     end;

end;

procedure TFAlunoNotaFreq.txtcoddisciplinaExit(Sender: TObject);
begin
     if trim(txtcoddisciplina.Text) <> '' then
     begin
          try
               strtoint(txtcoddisciplina.text);
          except
               txtcoddisciplina.clear;
               txtcoddisciplina.setfocus;
               exit;
          end;
          if not dm.CDSdisciplina.active then
               dm.CDSdisciplina.open;
          if dm.CDSdisciplina.Locate('DISCOD', txtcoddisciplina.text, []) then
          begin
               LstDisciplina.items.add(FormatFloat('0000', dm.CDSDisciplinaDISCOD.AsInteger) + ' - ' + dm.CDSDisciplinaDISNOME.AsString);
               txtcoddisciplina.clear;
               txtcoddisciplina.setfocus;
          end
          else
          begin
               txtcoddisciplina.clear;
               txtcoddisciplina.setfocus;
               exit;
          end;
     end;

end;

procedure TFAlunoNotaFreq.LstDisciplinaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key = vk_Delete then
          if (Sender as TListBox).ItemIndex >= 0 then
               (Sender as TListBox).Items.Delete((Sender as TListBox).ItemIndex);
end;

procedure TFAlunoNotaFreq.btndisciplinaClick(Sender: TObject);
begin
     if Application.FindComponent('FDisciplina') <> nil then
          FDisciplina.Close;

     try
          FDisciplina := tFDisciplina.create(self);
          FDisciplina.FormStyle := fsNormal;
          FDisciplina.Visible := false;
          usuario('btnconsultar', FDisciplina.wsinformacao.programa);
          FDisciplina.showmodal;
          txtcoddisciplina.text := dm.CDSdisciplinaDisCOD.asstring;
          txtcoddisciplina.Setfocus;
     finally
          FDisciplina.release;
          FDisciplina := nil;
          FDisciplina.free;
     end;
end;

end.
