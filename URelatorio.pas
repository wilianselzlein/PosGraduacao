unit URelatorio;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, RLReport, RLPreview, RLPreviewForm;

type
     TFRelatorio = class(TForm)
          BtnAbrir: TButton;
          procedure BtnAbrirClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FRelatorio: TFRelatorio;

implementation

{$R *.dfm}

procedure TFRelatorio.BtnAbrirClick(Sender: TObject);
var
     Relatorio: TRLPreviewSetup;
begin
     Relatorio.ShowModal := True;
     Relatorio.Caption := 'Relatório';
     PreviewFromFileDialog;
end;

end.
