unit UContabil;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls, WSDBEdit,
     WSEdit, ExtDlgs, Buttons;

type
     TFContabil = class(TForm)
          lbltitulo: TLabel;
          Label1: TLabel;
          WSDBEdit1: TWSDBEdit;
          WSDBEdit2: TWSDBEdit;
          Label2: TLabel;
          Label3: TLabel;
          WSDBEdit3: TWSDBEdit;
          Bevel1: TBevel;
          WSDBEdit4: TWSDBEdit;
          Label4: TLabel;
          WSDBEdit5: TWSDBEdit;
          Label5: TLabel;
          WSDBEdit7: TWSDBEdit;
          Label7: TLabel;
          Label8: TLabel;
          WSDBEdit8: TWSDBEdit;
          Panel1: TPanel;
          ToolBarNavegacao: TToolBar;
          BtnSalvar: TToolButton;
          btnsair: TToolButton;
          WSDBEdit9: TWSDBEdit;
          Label10: TLabel;
          WSDBEdit6: TWSDBEdit;
          Label6: TLabel;
          btnmensdeb: TSpeedButton;
          btndescdeb: TSpeedButton;
          btnjurodeb: TSpeedButton;
          btnmenscre: TSpeedButton;
          btndesccre: TSpeedButton;
          btnjurocre: TSpeedButton;
          btnmenshis: TSpeedButton;
          btndeschis: TSpeedButton;
          btnjurohis: TSpeedButton;
          Memo1: TMemo;
          Label9: TLabel;
          Label11: TLabel;
          btnjurodebbanco: TSpeedButton;
          btnjurocrebanco: TSpeedButton;
          WSDBEdit10: TWSDBEdit;
          WSDBEdit11: TWSDBEdit;
          Label12: TLabel;
          Label13: TLabel;
          btndescdebbanco: TSpeedButton;
          btndesccrebanco: TSpeedButton;
          WSDBEdit12: TWSDBEdit;
          WSDBEdit13: TWSDBEdit;
          Label14: TLabel;
          Label15: TLabel;
          btnmensdebbanco: TSpeedButton;
          btnmenscrebanco: TSpeedButton;
          WSDBEdit14: TWSDBEdit;
          WSDBEdit15: TWSDBEdit;
          Label16: TLabel;
          Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
          procedure btnsairClick(Sender: TObject);
          procedure BtnSalvarClick(Sender: TObject);
          procedure WSDBEdit2KeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormActivate(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnmensdebClick(Sender: TObject);
          procedure btndescdebClick(Sender: TObject);
          procedure btnjurodebClick(Sender: TObject);
          procedure btnjurocreClick(Sender: TObject);
          procedure btndesccreClick(Sender: TObject);
          procedure btnmenscreClick(Sender: TObject);
          procedure btnmenshisClick(Sender: TObject);
          procedure btndeschisClick(Sender: TObject);
          procedure btnjurohisClick(Sender: TObject);
          procedure btnmensdebbancoClick(Sender: TObject);
          procedure btnmenscrebancoClick(Sender: TObject);
          procedure btndescdebbancoClick(Sender: TObject);
          procedure btndesccrebancoClick(Sender: TObject);
          procedure btnjurodebbancoClick(Sender: TObject);
          procedure btnjurocrebancoClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FContabil: TFContabil;

implementation

uses UDM, UMenu, UPlanoConta, UHistPadrao, UFuncoes;

{$R *.dfm}

procedure TFContabil.btnsairClick(Sender: TObject);
begin
     dm.cdscontabil.cancel;
     close;
end;

procedure TFContabil.BtnSalvarClick(Sender: TObject);
begin
     dm.cdscontabil.post;
     dm.cdscontabil.applyupdates(-1);
     close;
end;

procedure TFContabil.WSDBEdit2KeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (key = 27) and (btnsair.enabled = true) then
          btnsair.click;
     if (Key = VK_F12) and (btnSalvar.enabled = true) then
          btnsalvar.Click;
     if (key = 40) then
          Perform(WM_nextDlgCtl, 0, 0);
     if (key = 13) then
     begin
          if (sender as TWSDBEdit).enterclicar then
               btnsalvar.click
          else
               Perform(WM_nextDlgCtl, 0, 0);
     end;
     if (key = 38) then
          Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFContabil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.CDSContabil.close;
     action := cafree;
end;

procedure TFContabil.FormActivate(Sender: TObject);
begin
     setCaption(sender as tform);
     if dm.CDSContabil.RecordCount = 0
          then dm.cdscontabil.append
     else dm.cdscontabil.edit;
     dm.CDSContabilCONCOD.asinteger := 1;
end;

procedure TFContabil.FormShow(Sender: TObject);
begin
     dm.CDSContabil.open;
end;

procedure TFContabil.btnmensdebClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          fplanoConta.FormStyle := fsNormal;
          fplanoconta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONMENSDEBITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFContabil.btndescdebClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          FPlanoConta := tfplanoconta.create(self);
          fplanoConta.FormStyle := fsNormal;
          FPlanoCOnta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONDESCDEBITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFContabil.btnjurodebClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          fplanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONJURODEBITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFContabil.btnjurocreClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          fplanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONJUROCREDITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFContabil.btndesccreClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          fplanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONDESCCREDITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFContabil.btnmenscreClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          fplanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONMENSCREDITO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFContabil.btnmenshisClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          FHistPadrao := tFHistPadrao.create(self);
          usuario('btnconsultar', FHistPadrao.wsinformacao.programa);
          FHistPadrao.BtnFiltro.click;
          FHistPadrao.showmodal;
          dm.CDSContabilCONMENSHISTPADRAO.asstring := dm.CDSHistPadraoHISCOD.asstring;
     finally
          FHistPadrao.release;
          FHistPadrao := nil;
          FHistPadrao.free;
     end;
end;

procedure TFContabil.btndeschisClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          FHistPadrao := tFHistPadrao.create(self);
          fHistPadrao.FormStyle := fsNormal;
          FHistPadrao.Visible := false;
          usuario('btnconsultar', FHistPadrao.wsinformacao.programa);
          FHistPadrao.BtnFiltro.click;
          FHistPadrao.showmodal;
          dm.CDSContabilCONDESCHISTPADRAO.asstring := dm.CDSHistPadraoHISCOD.asstring;
     finally
          FHistPadrao.release;
          FHistPadrao := nil;
          FHistPadrao.free;
     end;
end;

procedure TFContabil.btnjurohisClick(Sender: TObject);
begin
     if Application.FindComponent('FHistPadrao') <> nil then
          FHistPadrao.Close;

     try
          FHistPadrao := tFHistPadrao.create(self);
          fHistPadrao.FormStyle := fsNormal;
          FHistPadrao.Visible := false;
          usuario('btnconsultar', FHistPadrao.wsinformacao.programa);
          FHistPadrao.BtnFiltro.click;
          FHistPadrao.showmodal;
          dm.CDSContabilCONJUROHISTPADRAO.asstring := dm.CDSHistPadraoHISCOD.asstring;
     finally
          FHistPadrao.release;
          FHistPadrao := nil;
          FHistPadrao.free;
     end;
end;

procedure TFContabil.btnmensdebbancoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := False;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONMENSDEBITOBANCO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;

end;

procedure TFContabil.btnmenscrebancoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FplanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONMENSCREDITOBANCO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFContabil.btndescdebbancoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoCOnta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONDESCDEBITOBANCO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;

end;

procedure TFContabil.btndesccrebancoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONDESCCREDITOBANCO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

procedure TFContabil.btnjurodebbancoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONJURODEBITOBANCO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;

end;

procedure TFContabil.btnjurocrebancoClick(Sender: TObject);
begin
     if Application.FindComponent('FPlanoConta') <> nil then
          FPlanoConta.Close;

     try
          fplanoconta := tfplanoconta.create(self);
          FPlanoConta.FormStyle := fsNormal;
          FPlanoConta.Visible := false;
          usuario('btnconsultar', fplanoconta.wsinformacao.programa);
          fplanoconta.BtnFiltro.click;
          fplanoconta.showmodal;
          dm.CDSContabilCONJUROCREDITOBANCO.asstring := dm.CDSPlanoContaPLACODRED.asstring;
     finally
          fplanoconta.release;
          fplanoconta := nil;
          fplanoconta.free;
     end;
end;

end.
