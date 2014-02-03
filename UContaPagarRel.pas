unit UContaPagarRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, shellapi,
     WSMaskEdit, dateutils, Buttons;

type
     TFContaPagarRel = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
          btnaluno: TSpeedButton;
          txtaluno: TWSEdit;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          RGModelo: TRadioGroup;
          QRel: TSQLQuery;
          DSPRel: TDataSetProvider;
          CDSRel: TClientDataSet;
          DSRel: TDataSource;
          RLReportSint: TRLReport;
          RLBand6: TRLBand;
          RLDBText13: TRLDBText;
          RLDBImage3: TRLDBImage;
          RLDBText14: TRLDBText;
          RLDBText15: TRLDBText;
          RLDBText16: TRLDBText;
          RLDBText17: TRLDBText;
          RLDBText18: TRLDBText;
          Label1: TLabel;
          btnbanco: TSpeedButton;
          txtbanco: TWSEdit;
          RLReportAluno: TRLReport;
          RLBand14: TRLBand;
          RLLabel12: TRLLabel;
          RLBand16: TRLBand;
          RLDBText24: TRLDBText;
          RLDBImage6: TRLDBImage;
          RLDBText27: TRLDBText;
          RLDBText28: TRLDBText;
          RLDBText29: TRLDBText;
          RLDBText30: TRLDBText;
          RLDBText31: TRLDBText;
          RLBand17: TRLBand;
          RLGroup3: TRLGroup;
          RLBand18: TRLBand;
          RLBand19: TRLBand;
          RLLabel24: TRLLabel;
          RLDBText38: TRLDBText;
          RGSituacao: TRadioGroup;
          Label3: TLabel;
          Label4: TLabel;
          txtvctofin: TWSMaskEdit;
          txtvctoini: TWSMaskEdit;
          RLBand9: TRLBand;
          RLLabel10: TRLLabel;
          RLDBResult3: TRLDBResult;
          RLDBResult4: TRLDBResult;
          RLLabel19: TRLLabel;
          RLLabel20: TRLLabel;
          RLLabel22: TRLLabel;
          RLLabel23: TRLLabel;
          RLLabel26: TRLLabel;
          RLLabel27: TRLLabel;
          RLDBText32: TRLDBText;
          RLDBText34: TRLDBText;
          RLDBText35: TRLDBText;
          RLDBText36: TRLDBText;
          RLDBText39: TRLDBText;
          RLDBText40: TRLDBText;
          RLDBResult5: TRLDBResult;
          RLDBResult7: TRLDBResult;
          RLBand1: TRLBand;
          RLLabel1: TRLLabel;
          RLDBResult8: TRLDBResult;
          RLDBResult9: TRLDBResult;
          RLDBResult10: TRLDBResult;
          RLDBResult12: TRLDBResult;
          RLReportVcto: TRLReport;
          RLBand24: TRLBand;
          RLLabel32: TRLLabel;
          RLBand25: TRLBand;
          RLDBText41: TRLDBText;
          RLDBImage8: TRLDBImage;
          RLDBText43: TRLDBText;
          RLDBText44: TRLDBText;
          RLDBText45: TRLDBText;
          RLDBText46: TRLDBText;
          RLDBText47: TRLDBText;
          RLBand26: TRLBand;
          RLLabel33: TRLLabel;
          RLGroup2: TRLGroup;
          RLBand27: TRLBand;
          RLBand28: TRLBand;
          RLLabel41: TRLLabel;
          RLBand29: TRLBand;
          RLLabel42: TRLLabel;
          RLBand30: TRLBand;
          RLLabel43: TRLLabel;
          DSData: TDataSource;
          CDSData: TClientDataSet;
          DSPData: TDataSetProvider;
          QData: TSQLQuery;
          RLReportData: TRLReport;
          RLBand32: TRLBand;
          RLLabel44: TRLLabel;
          RLBand33: TRLBand;
          RLDBText57: TRLDBText;
          RLDBImage10: TRLDBImage;
          RLDBText58: TRLDBText;
          RLDBText59: TRLDBText;
          RLDBText60: TRLDBText;
          RLDBText61: TRLDBText;
          RLDBText62: TRLDBText;
          RLBand34: TRLBand;
          RLLabel45: TRLLabel;
          RLLabel48: TRLLabel;
          RLLabel50: TRLLabel;
          RLBand38: TRLBand;
          RLLabel55: TRLLabel;
          RLDBResult38: TRLDBResult;
          RLDBResult41: TRLDBResult;
          RLBand35: TRLBand;
          RLDBText63: TRLDBText;
          RLDBText66: TRLDBText;
          RLDBText68: TRLDBText;
          QAluno: TSQLQuery;
          DSPAluno: TDataSetProvider;
          CDSAluno: TClientDataSet;
          DSAluno: TDataSource;
          RLReportAlunoInadim: TRLReport;
          RLBand37: TRLBand;
          RLLabel46: TRLLabel;
          RLBand39: TRLBand;
          RLDBText64: TRLDBText;
          RLDBImage12: TRLDBImage;
          RLDBText65: TRLDBText;
          RLDBText67: TRLDBText;
          RLDBText69: TRLDBText;
          RLDBText71: TRLDBText;
          RLDBText72: TRLDBText;
          RLBand40: TRLBand;
          RLLabel47: TRLLabel;
          RLLabel49: TRLLabel;
          RLLabel51: TRLLabel;
          RLBand41: TRLBand;
          RLLabel54: TRLLabel;
          RLDBResult33: TRLDBResult;
          RLDBResult34: TRLDBResult;
          RLBand42: TRLBand;
          RLDBText73: TRLDBText;
          RLDBText74: TRLDBText;
          RLDBText75: TRLDBText;
          RLDBText77: TRLDBText;
          RLSystemInfo1: TRLSystemInfo;
          RLSystemInfo2: TRLSystemInfo;
          RLSystemInfo3: TRLSystemInfo;
          RLSystemInfo5: TRLSystemInfo;
          RGDataFiltrar: TRadioGroup;
          Label5: TLabel;
          txtforma: TWSEdit;
          btnforma: TSpeedButton;
          RLBand36: TRLBand;
          RLDBImage11: TRLDBImage;
          RLDBRichText6: TRLDBRichText;
          RLSystemInfo8: TRLSystemInfo;
          RLSystemInfo9: TRLSystemInfo;
          RLDraw2: TRLDraw;
          RLBand31: TRLBand;
          RLDBImage9: TRLDBImage;
          RLDBRichText5: TRLDBRichText;
          RLSystemInfo10: TRLSystemInfo;
          RLSystemInfo11: TRLSystemInfo;
          RLDraw3: TRLDraw;
          RLBand23: TRLBand;
          RLDBImage7: TRLDBImage;
          RLDBRichText4: TRLDBRichText;
          RLSystemInfo12: TRLSystemInfo;
          RLSystemInfo13: TRLSystemInfo;
          RLDraw4: TRLDraw;
          RLBand12: TRLBand;
          RLDBImage5: TRLDBImage;
          RLDBRichText3: TRLDBRichText;
          RLSystemInfo16: TRLSystemInfo;
          RLSystemInfo17: TRLSystemInfo;
          RLDraw6: TRLDraw;
          RLBand7: TRLBand;
          RLDBImage4: TRLDBImage;
          RLDBRichText2: TRLDBRichText;
          RLSystemInfo18: TRLSystemInfo;
          RLSystemInfo19: TRLSystemInfo;
          RLDraw7: TRLDraw;
          txtnomealuno: TWSEdit;
          txtnomebanco: TWSEdit;
          txtnomeforma: TWSEdit;
    QDataDATA: TDateField;
    QDataVALOR: TFloatField;
    QDataSALDO: TFloatField;
    CDSDataDATA: TDateField;
    CDSDataVALOR: TFloatField;
    CDSDataSALDO: TFloatField;
    CDSDatadiferenca: TFloatField;
    QAlunoNETCOD: TIntegerField;
    QAlunoNETNOME: TStringField;
    QAlunoVALOR: TFloatField;
    QAlunoSALDO: TFloatField;
    CDSAlunoNETCOD: TIntegerField;
    CDSAlunoNETNOME: TStringField;
    CDSAlunoVALOR: TFloatField;
    CDSAlunoSALDO: TFloatField;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult13: TRLDBResult;
    RLDBResult14: TRLDBResult;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand4: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel28: TRLLabel;
    RLBand3: TRLBand;
    RLLabel29: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    QRelNETNOME: TStringField;
    QRelNETCOD: TIntegerField;
    QRelNETEMAIL: TStringField;
    QRelCTPCOD: TIntegerField;
    QRelCTPFORNECEDOR: TIntegerField;
    QRelCTPTIPOCONTA: TStringField;
    QRelCTPCADASTRO: TDateField;
    QRelCTPEMISSAO: TDateField;
    QRelCTPVENCIMENTO: TDateField;
    QRelCTPLIQUIDACAO: TDateField;
    QRelCTPDOCUMENTO: TIntegerField;
    QRelCTPSERIE: TStringField;
    QRelCTPBANCO: TIntegerField;
    QRelCTPVALOR: TFloatField;
    QRelCTPSALDO: TFloatField;
    QRelCTPJURO: TFloatField;
    QRelCTPMULTA: TFloatField;
    QRelCTPCONTA: TStringField;
    QRelCTPSITUACAO: TStringField;
    QRelCTPOBSERVACAO: TStringField;
    QRelCTPUSUARIO: TStringField;
    QRelCTPCHEQUE: TStringField;
    QRelCTPPORTADOR: TStringField;
    QRelCTPBANCODEPTO: TStringField;
    QRelCTPAGENCIA: TStringField;
    QRelCTPCONTACORRENTE: TStringField;
    QRelCTPLIBERADO: TStringField;
    CDSRelNETNOME: TStringField;
    CDSRelNETCOD: TIntegerField;
    CDSRelNETEMAIL: TStringField;
    CDSRelCTPCOD: TIntegerField;
    CDSRelCTPFORNECEDOR: TIntegerField;
    CDSRelCTPTIPOCONTA: TStringField;
    CDSRelCTPCADASTRO: TDateField;
    CDSRelCTPEMISSAO: TDateField;
    CDSRelCTPVENCIMENTO: TDateField;
    CDSRelCTPLIQUIDACAO: TDateField;
    CDSRelCTPDOCUMENTO: TIntegerField;
    CDSRelCTPSERIE: TStringField;
    CDSRelCTPBANCO: TIntegerField;
    CDSRelCTPVALOR: TFloatField;
    CDSRelCTPSALDO: TFloatField;
    CDSRelCTPJURO: TFloatField;
    CDSRelCTPMULTA: TFloatField;
    CDSRelCTPCONTA: TStringField;
    CDSRelCTPSITUACAO: TStringField;
    CDSRelCTPOBSERVACAO: TStringField;
    CDSRelCTPUSUARIO: TStringField;
    CDSRelCTPCHEQUE: TStringField;
    CDSRelCTPPORTADOR: TStringField;
    CDSRelCTPBANCODEPTO: TStringField;
    CDSRelCTPAGENCIA: TStringField;
    CDSRelCTPCONTACORRENTE: TStringField;
    CDSRelCTPLIBERADO: TStringField;
    RLLabel8: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText33: TRLDBText;
    RLLabel31: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText42: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult15: TRLDBResult;
    RLDBResult16: TRLDBResult;
    RLDBResult17: TRLDBResult;
    RLDBResult18: TRLDBResult;
    RLDBResult19: TRLDBResult;
    RLDBResult20: TRLDBResult;
    RLDBText56: TRLDBText;
    RLDBText37: TRLDBText;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtcodKeyPress(Sender: TObject; var Key: Char);
          procedure FormShow(Sender: TObject);
          procedure txtcursoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btnbancoClick(Sender: TObject);
          procedure RLDBText19BeforePrint(Sender: TObject; var Text: string;
               var PrintIt: Boolean);
          procedure RGModeloClick(Sender: TObject);
          procedure btnalunoClick(Sender: TObject);
          procedure btnformaClick(Sender: TObject);
          procedure txtformaKeyPress(Sender: TObject; var Key: Char);
          procedure txtalunoExit(Sender: TObject);
          procedure txtbancoExit(Sender: TObject);
          procedure txtformaExit(Sender: TObject);
          procedure RLBand15BeforePrint(Sender: TObject; var PrintIt: Boolean);

     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FContaPagarRel: TFContaPagarRel;
     memo: Tmemo;

implementation

uses UDM, UMenu, Ucurso, UAluno, UDisciplina, UProfessor, UBanco,
     UFormaPgto, UFuncoes;

{$R *.dfm}

procedure TFContaPagarRel.BtnImprimirClick(Sender: TObject);
begin
     try
          strtodate(txtvctoini.text);
     except
          showmessage('Campo data inicial inválido!');
          txtvctoini.setfocus;
          exit;
     end;
     try
          strtodate(txtvctofin.text);
     except
          showmessage('Campo data final inválido!');
          txtvctofin.setfocus;
          exit;
     end;

     if RGModelo.itemindex = 3 then
     begin
          with qdata.sql do
          begin
               clear;
               add('select ');
               case RGDataFiltrar.Itemindex of
                 0 : add(' CTPVencimento as data');
                 1 : add(' CTPLiquidacao as data');
               end;
               add(', sum(ctpvalor) as Valor, sum(ctpsaldo) as Saldo');
               add('from TContaPagar');
               add('where CTPvalor > 0');
               case RGDataFiltrar.Itemindex of
                 0 : add(' and CTPVencimento');
                 1 : add(' and CTPLiquidacao ');
               end;
               add('BETWEEN :vctoini AND :vctofin');
               add('GROUP BY 1 ORDER BY 1');
          end;
          qdata.ParamByName('vctoini').asdate := strtodate(txtvctoini.text);
          qdata.ParamByName('vctofin').asdate := strtodate(txtvctofin.text);
          cdsdata.open;

          RLReportData.PreviewModal;
          cdsdata.close;
     end else
     if RGModelo.itemindex = 4 then
     begin
          with qaluno.sql do
          begin
               clear;
               add('select netcod, netnome, sum(ctpvalor) as valor, sum(ctpsaldo) as saldo');
               add('from TContaPagar inner join TNetWorking on netcod = ctpfornecedor');
               add('where ctpvalor > 0');
               if trim(txtaluno.text) <> '' then
                    add('AND netcod = ' + trim(txtaluno.text));
               add('GROUP BY 2, 1 ORDER BY 2, 1');
          end;
          cdsaluno.open;

          RLReportAlunoInadim.PreviewModal;
          cdsaluno.close;
     end 
     else
     begin
          with qrel.sql do
          begin
               clear;
               add('select NETNOME, NETCOD, NETEMAIL, TCONTAPAGAR.*');
               add('from TNETWORKING');
               add('left outer join TCONTAPAGAR on NETCOD = CTPFORNECEDOR');
               add('where CTPCOD > 0');
               if trim(txtaluno.text) <> '' then
                    add('AND NETCOD = ' + trim(txtaluno.text));
               if trim(txtbanco.text) <> '' then
                    add('AND CTPBANCO = ' + trim(txtbanco.text));
               if trim(txtforma.text) <> '' then
                    add('AND CTPFORMAPGTO = ' + trim(txtforma.text));
               case RGSituacao.itemindex of
                    0: add('AND SALDO > 0');
                    1: add('AND SALDO = 0');
               end;
               case RGDataFiltrar.itemindex of
                    0: add('AND CTPVENCIMENTO BETWEEN :ini AND :fin');
                    1: add('AND CTPLIQUIDACAO BETWEEN :ini AND :fin');
               end;
               case rgmodelo.itemindex of
                    0: add('ORDER BY 1, CTPCOD');
                    1: add('ORDER BY 1, CTPVENCIMENTO');
                    2: begin
                              case RGDataFiltrar.itemindex of
                                   0: add('ORDER BY CTPVENCIMENTO, 1');
                                   1: add('ORDER BY CTPLiquidacao, 1');
                              end;
                         end;
               end;
               if RGDataFiltrar.itemindex = 0 then
               begin
                    RLGroup2.DataFields := 'CTPVENCIMENTO';
                    RLDBText56.DataField := 'CTPVENCIMENTO';
                    RLLabel41.caption := 'Vencimento:';
               end
               else
               begin
                    RLGroup2.DataFields := 'CTPLIQUIDACAO';
                    RLDBText56.DataField := 'CTPLIQUIDACAO';
                    RLLabel41.caption := 'Pagamento:';
               end;
          end;
          qrel.ParamByName('ini').asdate := strtodate(txtvctoini.text);
          qrel.ParamByName('fin').asdate := strtodate(txtvctofin.text);
          cdsrel.open;

          case RGModelo.itemindex of
               0:
                    begin
                         memo := Tmemo.Create(nil);
                         memo.Name := 'MEMOIMPORT';
                         memo.Parent := FContaPagarRel;
                         memo.ScrollBars := ssBoth;
                         memo.Lines.clear;
                         RLReportSint.PreviewModal;
                         if memo.lines.Count > 0 then
                         begin                                        
                              memo.Lines.savetofile('c:\posgraduacao\emails.txt');
                              ShellExecute(GetDesktopWindow, 'open', pchar('c:\posgraduacao\emails.txt'), nil, nil, sw_ShowNormal);
                         end;
                         memo.free;
                    end;
               1: RLReportAluno.PreviewModal;
               2: RLReportVcto.PreviewModal;
          end;
          cdsrel.close;
     end;

end;

procedure TFContaPagarRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFContaPagarRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFContaPagarRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFContaPagarRel.txtcodKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFContaPagarRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
     txtvctoini.Text := datetostr(startofthemonth(date));
     txtvctofin.Text := datetostr(endofthemonth(date));
end;

procedure TFContaPagarRel.txtcursoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtaluno then
               btnaluno.click;
          if sender = txtbanco then
               btnbanco.click;
          if sender = txtforma then
               btnforma.click;
     end;
end;

procedure TFContaPagarRel.btnbancoClick(Sender: TObject);
begin
     if Application.FindComponent('FBanco') <> nil then
          FBanco.Close;

     try
          FBanco := tFBanco.create(self);
          FBanco.FormStyle := fsNormal;
          FBanco.Visible := false;
          usuario('btnconsultar', FBanco.wsinformacao.programa);
          FBanco.showmodal;
          txtbanco.text := dm.CDSBancoBanCOD.asstring;
     finally
          FBanco.release;
          FBanco := nil;
          FBanco.free;
     end;
end;

procedure TFContaPagarRel.RLDBText19BeforePrint(Sender: TObject;
     var Text: string; var PrintIt: Boolean);
begin
     {    if < 0
         lbldias.Caption:= floattostr(dias);

     //pegar a multa
        if dias > 0 then
        begin
           perc:= strtofloat(FFCTRVenc.edit3.text);
           juros:= juros + (((perc/30)* dias)* (valorinicial - valorpago - desccomercial) / 100);
        end;

        desccomercial := desccomercial + Desc_Pgto(QRVencCTRDOC1.asinteger, QRVencCTRDOC2.asstring, QRVencCTRParcela.asinteger);
        juros := juros + Juro_Pgto(QRVencCTRDOC1.asinteger, QRVencCTRDOC2.asstring, QRVencCTRParcela.asinteger);

        lbljuros.caption:=formatfloat(copy(dm2.TBMoedaMOEDNOME.value,1,2) + ' #,###,###0.00',juros);}

end;

procedure TFContaPagarRel.RGModeloClick(Sender: TObject);
begin
     {txtaluno.enabled := RGModelo.ItemIndex <> 3;
     txtcurso.enabled := (RGModelo.ItemIndex < 3) or (RGModelo.ItemIndex = 8);
     txtbanco.enabled := (RGModelo.ItemIndex < 3) or (RGModelo.ItemIndex = 8);

     btnaluno.enabled := RGModelo.ItemIndex <> 4;
     btncurso.enabled := (RGModelo.ItemIndex < 4) or (RGModelo.ItemIndex = 8);
     btnbanco.enabled := (RGModelo.ItemIndex < 4) or (RGModelo.ItemIndex = 8);

     txtvctoini.enabled := (RGModelo.ItemIndex < 5) or (RGModelo.ItemIndex = 8);
     txtvctofin.enabled := (RGModelo.ItemIndex < 5) or (RGModelo.ItemIndex = 8);

     RGSituacaoAluno.enabled := (RGModelo.ItemIndex < 5) or (RGModelo.ItemIndex = 8);}
end;

procedure TFContaPagarRel.btnalunoClick(Sender: TObject);
begin
     if Application.FindComponent('FAluno') <> nil then
          FAluno.Close;

     try
          FAluno := tFAluno.create(self);
          FAluno.FormStyle := fsNormal;
          FALuno.Visible := false;
          usuario('btnconsultar', FAluno.wsinformacao.programa);
          FAluno.showmodal;
          txtaluno.text := dm.CDSAlunoALUCOD.asstring;
          txtaluno.setfocus;
     finally
          FAluno.release;
          FAluno := nil;
          FAluno.free;
     end;
end;

procedure TFContaPagarRel.btnformaClick(Sender: TObject);
begin
     if Application.FindComponent('FFormaPgto') <> nil then
          FFormaPgto.Close;

     try
          FFormaPgto := tFFormaPgto.create(self);
          FFormaPgto.FormStyle := fsNormal;
          fformapgto.Visible := false;
          usuario('btnconsultar', FFormaPgto.wsinformacao.programa);
          FFormaPgto.showmodal;
          txtforma.text := dm.CDSformaPgtoFORCOD.asstring;
     finally
          FFormaPgto.release;
          FFormaPgto := nil;
          FFormaPgto.free;
     end;
end;

procedure TFContaPagarRel.txtformaKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFContaPagarRel.txtalunoExit(Sender: TObject);
begin
     txtnomealuno.clear;
     if trim(txtaluno.Text) <> '' then
     begin
          try
               strtoint(txtaluno.text);
          except
               txtnomealuno.text := 'Campo Aluno Inválido!';
               txtaluno.setfocus;
               exit;
          end;
          if not dm.CDSAlunoLkp.active then
               dm.CDSAlunoLkp.open;
          if dm.CDSAlunoLkp.Locate('ALUCOD', txtaluno.text, []) then
          begin
               txtnomealuno.text := dm.CDSAlunoLkpALUNOME.asstring;
          end
          else
          begin
               txtnomealuno.text := 'Aluno não cadastrado!';
               txtaluno.setfocus;
               exit;
          end;
     end;
end;

procedure TFContaPagarRel.txtbancoExit(Sender: TObject);
begin
     txtnomeBanco.clear;
     if trim(txtBanco.Text) <> '' then
     begin
          try
               strtoint(txtBanco.text);
          except
               txtnomeBanco.text := 'Campo Banco Inválido!';
               txtBanco.setfocus;
               exit;
          end;
          if not dm.CDSBanco.active then
               dm.CDSBanco.open;
          if dm.CDSBanco.Locate('BANCOD', txtBanco.text, []) then
          begin
               txtnomeBanco.text := dm.CDSBancoBANNOME.AsString;
          end
          else
          begin
               txtnomeBanco.text := 'Banco não Cadastrado!';
               txtBanco.setfocus;
               exit;
          end;
     end;
end;

procedure TFContaPagarRel.txtformaExit(Sender: TObject);
begin
     txtnomeforma.clear;
     if trim(txtforma.Text) <> '' then
     begin
          try
               strtoint(txtforma.text);
          except
               txtnomeforma.text := 'Campo Forma Inválido!';
               txtforma.setfocus;
               exit;
          end;
          if not dm.CDSFormaPgto.active then
               dm.CDSformaPgto.open;
          if dm.CDSformaPgto.Locate('FORCOD', txtforma.text, []) then
          begin
               txtnomeforma.text := dm.CDSFormaPgtoFORNOME.AsString;
          end
          else
          begin
               txtnomeforma.text := 'forma não Cadastrada!';
               txtforma.setfocus;
               exit;
          end;
     end;
end;

procedure TFContaPagarRel.RLBand15BeforePrint(Sender: TObject;
     var PrintIt: Boolean);
begin
     if trim(CDSRelNEtemail.asstring) <> '' then
          memo.lines.add(CDSRelNetEmail.asstring);
end;

end.
