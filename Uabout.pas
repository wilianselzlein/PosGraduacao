unit Uabout;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, jpeg, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
     TFSobre = class(TForm)
          Label3: TLabel;
          DBText1: TDBText;
          BitBtn1: TBitBtn;
          procedure ImageClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormCreate(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FSobre: TFSobre;

implementation

uses UDM, UMenu, UFuncoes;

{$R *.dfm}

procedure TFSobre.ImageClick(Sender: TObject);
begin
     close;
end;

procedure TFSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFSobre.FormCreate(Sender: TObject);
begin
     setcaption(sender as tform);
end;

end.
