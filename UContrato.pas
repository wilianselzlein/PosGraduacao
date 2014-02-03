unit UContrato;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, ToolWin, StdCtrls;

type
     TFContrato = class(TForm)
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          RichEdit1: TRichEdit;
          procedure btnsairClick(Sender: TObject);
          procedure BtnImprimirClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FContrato: TFContrato;

implementation

uses UMenu, UFuncoes;

{$R *.dfm}

procedure TFContrato.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFContrato.BtnImprimirClick(Sender: TObject);
begin
     RichEdit1.Print('');
end;

procedure TFContrato.FormShow(Sender: TObject);
begin
     setCaption(Sender as TForm);
end;

procedure TFContrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

end.
