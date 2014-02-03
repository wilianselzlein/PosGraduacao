unit USenha;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls,
     ComCtrls, ToolWin, DB, jpeg, WSEdit, WSComboBox;

type
     TFSenha = class(TForm)
          Label1: TLabel;
          Label2: TLabel;
          Image2: TImage;
          DBText1: TDBText;
          DBText2: TDBText;
          DBText4: TDBText;
          txtlogin: TWSComboBox;
          txtpass: TWSEdit;
          ToolBarEntrar: TToolBar;
          BtnSalvar: TToolButton;
          btnsair: TToolButton;
          ToolButton3: TToolButton;
          procedure btnsairClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure BtnSalvarClick(Sender: TObject);
          procedure FormActivate(Sender: TObject);
          procedure txtloginKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FSenha: TFSenha;

implementation

uses UDM, UMenu, UFuncoes;

{$R *.dfm}

procedure TFSenha.btnsairClick(Sender: TObject);
begin
     application.terminate;
end;

procedure TFSenha.FormShow(Sender: TObject);
begin
     if not dm.cdsusuario.locate('USULOGIN', 'Master', [loCaseInsensitive, loPartialKey]) then
     begin
          dm.cdsusuario.Append;
          dm.CDSUsuarioUSULOGIN.asString := 'Master';
          dm.CDSUsuarioUSUNOME.asString := 'Master';
          dm.CDSUsuarioUSUSENHA.asString := 'abcdef';
          dm.cdsusuario.post;
          dm.cdsusuario.ApplyUpdates(0);
     end;

     dm.Cdsusuario.first;
     while not dm.cdsusuario.eof do
     begin
          txtlogin.items.add(dm.CDSUsuarioUSULOGIN.asstring);
          dm.cdsusuario.next;
     end;
     txtlogin.itemindex := 0;
     FSenha.Caption := dm.CDSParamEmpEMPNome.asString + ' - ' + Valor_Parametro(20);
end;

procedure TFSenha.BtnSalvarClick(Sender: TObject);
begin
     if not dm.cdsusuario.Locate('USULOGIN', txtlogin.items.strings[txtlogin.itemindex], []) then
     begin
          showmessage('Selecione o usuário!');
          txtlogin.setfocus;
          exit;
     end
     else
     begin
          if txtpass.text = dm.cdsUsuarioUSUSENHA.asstring then
          begin
               lUsuario := txtlogin.Text;
               fsenha.Close;
               //fmenu.BringToFront;
               //fmenu := tfmenu.create(self);
               {Application.CreateForm(TFMenu, fMenu);
               if dm.cdsusuariousumenu.asstring = '2' then
               begin
                    fmenuReduzido := tfmenuReduzido.create(self);
                    fmenuReduzido.showmodal;
               end
               else
               begin
                    fmenu.showmodal;
               end;}
          end
          else
          begin
               showmessage('Senha inválida!');
               txtlogin.setfocus;
               exit;
          end;
     end;
end;

procedure TFSenha.FormActivate(Sender: TObject);
begin
     {if dm.cdsusuario.RecordCount = 0 then
     begin
          if dm.cdsusuariousumenu.asstring = '2' then
          begin
               fmenuReduzido := tfmenuReduzido.create(self);
               fmenuReduzido.showmodal;
          end
          else
          begin
               fsenha.Hide;
               fmenu.bringtofront;
          end;
     end; |}
end;

procedure TFSenha.txtloginKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
var passar: boolean;
begin
     if (key = 27) and (btnsair.enabled = true) then
          btnsair.click;

     if (key = 40) and (not (sender is twscombobox)) then
     begin
          Perform(WM_nextDlgCtl, 0, 0);
     end;
     if (key = 13) then
     begin
          passar := true;
          if sender is TWSEDit then
          begin
               with sender as TWSEdit do
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
          if passar then
               Perform(WM_nextDlgCtl, 0, 0);
     end;
     if (key = 38) and (not (sender is twscombobox)) then
     begin
          Perform(WM_nextDlgCtl, 1, 0);
     end;
end;

end.
