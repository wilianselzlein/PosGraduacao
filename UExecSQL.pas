unit UExecSQL;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids,
  DBCtrls, Menus, Buttons;

type
     TFExecSQL = class(TForm)
          lbltitulo: TLabel;
          Memo: TMemo;
          ToolBarNavegacao: TToolBar;
          BtnSalvar: TToolButton;
          ToolButton22: TToolButton;
          btnsair: TToolButton;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BtnHtml: TToolButton;
    btnabrir: TToolButton;
    ToolButton2: TToolButton;
    PopupMenu1: TPopupMenu;
    btnComandos: TToolButton;
    odososEmails1: TMenuItem;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure BtnSalvarClick(Sender: TObject);
    procedure BtnHtmlClick(Sender: TObject);
    procedure btnabrirClick(Sender: TObject);
    procedure odososEmails1Click(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FExecSQL: TFExecSQL;

implementation

uses UDM, UMenu, UFuncoes;

{$R *.dfm}

procedure TFExecSQL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.CDSExec.close;
     action := cafree;
     release;
end;

procedure TFExecSQL.FormShow(Sender: TObject);
begin
     setCaption(Sender as TForm);
end;

procedure TFExecSQL.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFExecSQL.BtnSalvarClick(Sender: TObject);
begin
     dm.qExec.close;
     dm.qExec.SQL.Text := memo.Lines.text;
     dm.qExec.execsql;
     showmessage('Executado com sucesso!');
end;

procedure TFExecSQL.BtnHtmlClick(Sender: TObject);
begin
     html('Reinandus', dbgrid1, DM.DSExec);
end;

procedure TFExecSQL.btnabrirClick(Sender: TObject);
begin
     dm.CDSExec.close;
     dm.qExec.Close;
     dm.qExec.SQL.Text := memo.Lines.text;
     dm.CDSExec.Open;
end;

procedure TFExecSQL.odososEmails1Click(Sender: TObject);
begin
     with Memo.Lines do
     begin
          clear;
          add('select ''Aluno'' as Tipo, taluno.alunome as Nome , taluno.aluemail as Email, taluno.aluemailalt as Alternativo');
          add('from taluno');
          add('union all');
          add('select ''Professor'' as Tipo, tprofessor.pronome, tprofessor.proemail, tprofessor.proemail2');
          add('from tprofessor');
          add('union all');
          add('select ''Contato'' as Tipo, tnetworking.netnome, tnetworking.netemail, tnetworking.netemail2');
          add('from tnetworking');
          add('order by 1, 2');
     end;
end;

end.
