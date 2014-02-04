unit UPendencias;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, DB, Grids, DBGrids, StdCtrls, WSEdit, ExtCtrls,
     ComCtrls, ToolWin, WSComboBox;

type
     TFPendencias = class(TForm)
          lbltitulo: TLabel;
          DataSource: TDataSource;
          PanPesquisa: TPanel;
          ToolBarItem: TToolBar;
          btnok: TToolButton;
          btnsair: TToolButton;
          DBGrid: TDBGrid;
          Label1: TLabel;
          CmbPendencia: TWSComboBox;
          btnexcel: TToolButton;
          procedure btnsairClick(Sender: TObject);
          procedure btnokClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure btnexcelClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FPendencias: TFPendencias;

implementation

uses UDM, UProfessor, UDisciplina, Umenu, UCurso, UFuncoes;

{$R *.dfm}

procedure TFPendencias.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFPendencias.btnokClick(Sender: TObject);
begin
     DBGrid.visible := true;
     btnexcel.Enabled := true;

     dm.CDSExec.close;
     with dm.QExec.sql do
     begin
          clear;
          if CmbPendencia.itemindex = 0 then
          begin
               add('select cast(ALUNOME as varchar(50)) as Aluno, cast(DISNOME as varchar(50)) as Disciplina,');
               add('cast(PRONOME as varchar(50)) as Professor, ALUDISNOTA as Nota from TALUNODISCIPLINA');
               add('inner join TALUNO on ALUCOD = ALUDISALUNO');
               add('inner join tdisciplina on DISCOD = ALUDISDISCIPLINA');
               add('inner join tprofessor on PROCOD = ALUDISPROFESSOR');
               add('Where (ALUDISNOTA > 0 and ALUDISNOTA < 7) or (ALUDISNOTA > 10) order by ALUNOME');
          end;
          if CmbPendencia.itemindex = 1 then
          begin
               add('select cast(ALUNOME as varchar(50)) as Aluno, cast(DISNOME as varchar(50)) as Disciplina, cast(PRONOME as varchar(50)) as Professor, ALUDISFREQUENCIA as Frequencia');
               add('from TALUNODISCIPLINA');
               add('inner join TALUNO on ALUCOD = ALUDISALUNO');
               add('inner join tdisciplina on DISCOD = ALUDISDISCIPLINA');
               add('inner join tprofessor on PROCOD = ALUDISPROFESSOR');
               add('Where ALUDISFREQUENCIA > 100 or ALUDISFREQUENCIA < 0');
               add('order by ALUNOME');
          end;
          if CmbPendencia.itemindex = 2 then
          begin
               add('select cast(ALUNOME as varchar(50)) as Aluno, MENVENCIMENTO as Vencimento, MENVALORPAGO as Valor_Pago, MENDATAPAGAMENTO as Data_Pagamento');
               add('from TALUNO');
               add('inner join TMENSALIDADE on ALUCOD = MENALUNO');
               add('where menvalorpago = 0 and MENDATAPAGAMENTO is not null');
               add('order by ALUNOME');
          end;
          if CmbPendencia.itemindex = 3 then
          begin
               add('select ALUCOD as Codigo, cast(ALUNOME as varchar(50)) as Aluno, cast(ALuEmail as varchar(50)) as Email');
               add('from TALUNO');
               add('Where ALUCOD not in (Select distinct ALUDISALUNO from TALUNODISCIPLINA)');
               add('order by ALUNOME');
          end;
          if CmbPendencia.itemindex = 4 then
          begin
               add('select cast(ALUNOME as varchar(100)) as Aluno, AluSituacao as Situacao, cast(ALuEmail as varchar(50)) as Email, ');
               add('cast(DISNOME as varchar(100)) as Disciplina, ');
               add('cast(PRONOME as varchar(100)) as Professor,');
               add('ALUDISNOTA as Nota, ALUDISFREQUENCIA as Frequencia');
               add('from TALUNODISCIPLINA');
               add('inner join TALUNO on ALUCOD = ALUDISALUNO');
               add('inner join tdisciplina on DISCOD = ALUDISDISCIPLINA');
               add('inner join tprofessor on PROCOD = ALUDISPROFESSOR');
               add('Where ALUDISFREQUENCIA = 0');
               add('and ALUDISNOTA = 0');
               add('and AluSituacao <> ''Ativo''');
               add('order by 1');
          end;
     end;
     dm.CDSExec.open;
     DBGrid.Columns.RebuildColumns;
end;

procedure TFPendencias.FormCreate(Sender: TObject);
begin
     carrega_propriedades_tela((sender as tform).name, sender as TForm);
end;

procedure TFPendencias.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     salva_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm));
     salva_propriedades_tela((sender as tform).name, sender as TForm);
     action := cafree;
end;

procedure TFPendencias.FormShow(Sender: TObject);
begin
     setCaption(Sender as TForm);
     carregar_propriedades_dbgrid((lbltitulo.parent as TForm).name, (lbltitulo.parent as TForm), DBGrid);
end;

procedure TFPendencias.btnexcelClick(Sender: TObject);
begin
     //excel(CmbPendencia.text, dbgrid);
     html('Reinandus', dbgrid, DataSource);
end;

end.
