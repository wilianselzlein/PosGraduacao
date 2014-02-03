unit UEmail;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, comobj, Shellapi, Mapi,
     WSEdit;

type
     TFEmail = class(TForm)
          ToolBarEnvia: TToolBar;
          btnenviar: TToolButton;
          ToolButton2: TToolButton;
          btncancelar: TToolButton;
          Panel1: TPanel;
          txtde: TWSEdit;
          Label1: TLabel;
          txtpara: TWSEdit;
          Label2: TLabel;
          txtassunto: TWSEdit;
          Label3: TLabel;
          Label4: TLabel;
          txtarquivo: TWSEdit;
          Label5: TLabel;
          chkconfima: TCheckBox;
          lbltitulo: TLabel;
          procedure FormResize(Sender: TObject);
          procedure btncancelarClick(Sender: TObject);
          procedure btnenviarClick(Sender: TObject);
          procedure txtdeKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtarquivoKeyPress(Sender: TObject; var Key: Char);
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FEmail: TFEmail;
     cancel: boolean = false;

implementation

uses UMenu, UFuncoes;

{$R *.dfm}

procedure TFEmail.FormResize(Sender: TObject);
begin
     ToolBarEnvia.Indent := ToolBarEnvia.Width div 3;
end;

procedure TFEmail.btncancelarClick(Sender: TObject);
begin
     cancel := true;
     close;
end;

procedure TFEmail.btnenviarClick(Sender: TObject);
begin
     //EnviaEMail(txtde.text, txtPara.text, txtAssunto.text, txtTexto.lines.text, txtArquivo.text, chkconfima.Checked);
     cancel := false;
     close;
end;

procedure TFEmail.txtdeKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 27) and (btncancelar.enabled = true) then
          btncancelar.click;
     if (Key = VK_F12) and (btnenviar.enabled = true) then
          btnenviar.Click;
     if (key = 40) or (key = 13) then
     begin
          Perform(WM_nextDlgCtl, 0, 0);
     end;
     if (key = 38) then
     begin
          Perform(WM_nextDlgCtl, 1, 0);
     end;
end;

procedure TFEmail.txtarquivoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          btnenviar.click;
end;

procedure TFEmail.FormShow(Sender: TObject);
begin
     setcaption(sender as tform);
end;

procedure TFEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     // action := cafree; comentei senão dava erro no FALUNOREL na função de enviar email
end;

end.
