unit UReciboProfessorRel;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
     WSEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, shellapi,
     WSMaskEdit, dateutils, Buttons;

type
     TFReciboProfessorRel = class(TForm)
          lbltitulo: TLabel;
          PanPesquisa: TPanel;
          Label7: TLabel;
    btndisciplina: TSpeedButton;
    txtdisciplina: TWSEdit;
          ToolBarNavegacao: TToolBar;
          BtnImprimir: TToolButton;
          ToolButton1: TToolButton;
          btnsair: TToolButton;
          Label2: TLabel;
          txtcurso: TWSEdit;
          btncurso: TSpeedButton;
          QRel: TSQLQuery;
          DSPRel: TDataSetProvider;
          CDSRel: TClientDataSet;
          DSRel: TDataSource;
          Label3: TLabel;
          Label4: TLabel;
    txtpgtofin: TWSMaskEdit;
    txtpgtoini: TWSMaskEdit;
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
          RLBand38: TRLBand;
          RLLabel55: TRLLabel;
          RLDBResult38: TRLDBResult;
          RLBand35: TRLBand;
          RLDBText63: TRLDBText;
          RLDBText66: TRLDBText;
          RLDBText70: TRLDBText;
          RLSystemInfo2: TRLSystemInfo;
          RLBand31: TRLBand;
          RLDBImage9: TRLDBImage;
          RLDBRichText5: TRLDBRichText;
          RLSystemInfo10: TRLSystemInfo;
          RLSystemInfo11: TRLSystemInfo;
          RLDraw3: TRLDraw;
    txtnomedisciplina: TWSEdit;
          txtnomecurso: TWSEdit;
    Label1: TLabel;
    btnprofessor: TSpeedButton;
    txtprofessor: TWSEdit;
    txtnomeprofessor: TWSEdit;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    QRelPRONOME: TStringField;
    QRelALUNOME: TStringField;
    QRelMENVENCIMENTO: TDateField;
    QRelMENVALOR: TFloatField;
    QRelMENDATAPAGAMENTO: TDateField;
    QRelMENDOCUMENTO: TStringField;
    CDSRelPRONOME: TStringField;
    CDSRelALUNOME: TStringField;
    CDSRelMENVENCIMENTO: TDateField;
    CDSRelMENVALOR: TFloatField;
    CDSRelMENDATAPAGAMENTO: TDateField;
    CDSRelMENDOCUMENTO: TStringField;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    Label5: TLabel;
    Label6: TLabel;
    txtoutrosval1: TWSEdit;
    txtoutrosval2: TWSEdit;
    txtoutros1: TWSEdit;
    txtoutros2: TWSEdit;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLLabel5: TRLLabel;
    Label8: TLabel;
    txtpercentual: TWSEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CDSRelVALORDISCIPLINA: TFloatField;
    RLLabel6: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel7: TRLLabel;
    lbllocacao: TRLLabel;
    lbloutros1: TRLLabel;
    lbloutrosval1: TRLLabel;
    lbloutros2: TRLLabel;
    lbloutrosval2: TRLLabel;
    RLLabel9: TRLLabel;
    lbltotal: TRLLabel;
    RLDraw1: TRLDraw;
    QRelVALORDISCIPLINA: TFloatField;
    CDSRelTotalMensalidade: TAggregateField;
    CDSRelTotal: TAggregateField;
          procedure BtnImprimirClick(Sender: TObject);
          procedure btnsairClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure txtcodKeyPress(Sender: TObject; var Key: Char);
          procedure btncursoClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure txtcursoKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure btndisciplinaClick(Sender: TObject);
          procedure txtdisciplinaExit(Sender: TObject);
          procedure txtcursoExit(Sender: TObject);
    procedure txtprofessorExit(Sender: TObject);
    procedure btnprofessorClick(Sender: TObject);
    procedure txtpercentualExit(Sender: TObject);
    procedure txtoutrosval2KeyPress(Sender: TObject; var Key: Char);

     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FReciboProfessorRel: TFReciboProfessorRel;
     memo: Tmemo;

implementation

uses UDM, UMenu, Ucurso, UAluno, UDisciplina, UProfessor, UBanco,
     UFormaPgto, UFuncoes;

{$R *.dfm}

procedure TFReciboProfessorRel.BtnImprimirClick(Sender: TObject);
begin
     try
          strtodate(txtpgtoini.text);
     except
          showmessage('Campo data inicial inválido!');
          txtpgtoini.setfocus;
          exit;
     end;
     try
          strtodate(txtpgtofin.text);
     except
          showmessage('Campo data final inválido!');
          txtpgtofin.setfocus;
          exit;
     end;

     try
          if txtdisciplina.text <> '' then
          begin
              strtoint(txtdisciplina.text);
              dm.CDSDisciplina.locate('DISCOD',txtdisciplina.text,[loCaseInsensitive, loPartialKey]);
              if dm.CDSDisciplinaDISVALORPROFESSOR.AsFloat = 0 then
              begin
                   showmessage('Digite o valor do pagamento do professor no cadastro da disciplina!');
                   txtdisciplina.setfocus;
                   exit;
              end;
          end;
     except
          showmessage('Campo disciplina obrigatório!');
          txtdisciplina.setfocus;
          exit;
     end;

     {try
          strtoint(txtcurso.text);
          dm.CDSCurso.locate('CURCOD',txtcurso.text,[loCaseInsensitive, loPartialKey]);
     except
          showmessage('Campo curso obrigatório!');
          txtcurso.setfocus;
          exit;
     end;}

     if txtprofessor.text <> '' then
     begin
         try
              strtoint(txtprofessor.text);
         except
              showmessage('Campo professor obrigatório!');
              txtprofessor.setfocus;
              exit;
         end;
     end;

     with qrel.sql do
     begin
          clear;
          add('select pro.pronome, alu.alunome, mens.menvencimento, mens.menvalor, mens.mendatapagamento, mens.mendocumento, menValorProfessor as valorDisciplina'); //cast(' + FloatToStr(dm.CDSDisciplinaDISVALORPROFESSOR.AsFloat) + ' as float)
          add('from tmensalidade mens');
          add(' inner join tprofessor pro on (pro.procod = mens.menprofessor)');
          add(' inner join taluno alu on (mens.menaluno = alu.alucod)');
          add('where MENNUMERO > 0 ');
          if (Trim(txtdisciplina.Text) <> '') and (Trim(txtprofessor.Text) <> '') then
               add('and alu.alucod in (select AluDis.AluDisAluno from TAlunoDisciplina AluDis where AluDis.AluDisDisciplina = ' + Trim(txtdisciplina.Text) + ' and AluDis.AluDisProfessor = ' + Trim(txtprofessor.Text) + ')');

          if trim(txtnomecurso.text) <> '' then
               add('AND ALUCURSO = ' + trim(txtcurso.text));
          if trim(txtnomedisciplina.text) <> '' then
               add('AND MENDISCIPLINA = ' + trim(txtdisciplina.text));
          if trim(txtprofessor.text) <> '' then
               add('AND MENProfessor = ' + trim(txtprofessor.text));

          add('AND MENDATAPAGAMENTO BETWEEN :ini AND :fin');
          add('ORDER BY 2, 3');
     end;
     qrel.ParamByName('ini').asdate := strtodate(txtpgtoini.text);
     qrel.ParamByName('fin').asdate := strtodate(txtpgtofin.text);
     cdsrel.open;
//     if cdsRel.RecordCount = 0 then
//     begin
//          showmessage('Nenhum registro encontrato para esses filtros informados!');
//          txtpgtoini.setfocus;
//          exit;
//     end;
     try
          lblLocacao.Caption := 'R$ ' + FormatFloat('#,###,###0.00', CDSRelTotal.value * (StrToFloat(txtpercentual.Text) / 100));
          lbltotal.Caption := 'R$ ' + FormatFloat('#,###,###0.00', CDSRelTotal.Value - (CDSRelTotal.value * (StrToFloat(txtpercentual.Text) / 100)) - StrToFloat(txtoutrosval1.Text) - StrToFloat(txtoutrosval2.Text));
     except
          lblLocacao.Caption := 'R$ 0,00';
          lbltotal.Caption := 'R$ 0,00';
     end;
     lbloutros1.Caption := txtoutros1.Text;
     lbloutros2.Caption := txtoutros2.Text;
     lbloutrosval1.Caption := 'R$ ' + txtoutrosval1.Text;
     lbloutrosval2.Caption := 'R$ ' + txtoutrosval2.Text;

     RLReportData.PreviewModal;
     cdsrel.close;
end;

procedure TFReciboProfessorRel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFReciboProfessorRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFReciboProfessorRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFReciboProfessorRel.txtcodKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

procedure TFReciboProfessorRel.btncursoClick(Sender: TObject);
begin
     if Application.FindComponent('FCurso') <> nil then
          FCurso.Close;

     try
          FCurso := tFCurso.create(self);
          FCurso.FormStyle := fsNormal;
          FCurso.Visible := false;
          usuario('btnconsultar', FCurso.wsinformacao.programa);
          FCurso.showmodal;
          txtcurso.text := dm.CDSCursoCurCOD.asstring;
     finally
          FCurso.release;
          FCurso := nil;
          FCurso.free;
     end;
end;

procedure TFReciboProfessorRel.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
     txtpgtoini.Text := datetostr(startofthemonth(date));
     txtpgtofin.Text := datetostr(endofthemonth(date));
end;

procedure TFReciboProfessorRel.txtcursoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = vk_f3 then
     begin
          if sender = txtcurso then
               btncurso.click;
          if sender = txtdisciplina then
               btndisciplina.click;
          if sender = txtprofessor then
               btnprofessor.click;
     end;
end;

procedure TFReciboProfessorRel.btndisciplinaClick(Sender: TObject);
begin
     if Application.FindComponent('FDisciplina') <> nil then
          FAluno.Close;

     try
          FDisciplina := tFDisciplina.create(self);
          FDisciplina.FormStyle := fsNormal;
          FDisciplina.Visible := false;
          usuario('btnconsultar', FDisciplina.wsinformacao.programa);
          FDisciplina.showmodal;
          txtdisciplina.text := dm.CDSDisciplinaDISCOD.asstring;
          txtdisciplina.setfocus;
     finally
          FDisciplina.release;
          FDisciplina := nil;
          FDisciplina.free;
     end;
end;

procedure TFReciboProfessorRel.txtdisciplinaExit(Sender: TObject);
begin
     txtnomedisciplina.clear;
     if trim(txtdisciplina.Text) <> '' then
     begin
          try
               strtoint(txtdisciplina.text);
          except
               txtnomedisciplina.text := 'Campo Disciplina Inválido!';
               txtdisciplina.setfocus;
               exit;
          end;
          if not dm.CDSDisciplina.active then
               dm.CDSDisciplina.open;
          if dm.CDSDisciplina.Locate('DISCOD', txtdisciplina.text, []) then
          begin
               txtnomedisciplina.text := dm.CDSDisciplinaDISNOME.asstring;
          end
          else
          begin
               txtnomedisciplina.text := 'Disciplina não cadastrada!';
               txtdisciplina.setfocus;
               exit;
          end;
     end;
end;

procedure TFReciboProfessorRel.txtcursoExit(Sender: TObject);
begin
     txtnomecurso.clear;
     if trim(txtcurso.Text) <> '' then
     begin
          try
               strtoint(txtcurso.text);
          except
               txtnomecurso.text := 'Campo Curso Inválido!';
               txtcurso.setfocus;
               exit;
          end;
          if not dm.CDSCurso.active then
               dm.CDSCurso.open;
          if dm.CDSCurso.Locate('CURCOD', txtcurso.text, []) then
          begin
               txtnomecurso.text := dm.CDSCursoCURNOME.AsString;
          end
          else
          begin
               txtnomecurso.text := 'Curso não Cadastrado!';
               txtcurso.setfocus;
               exit;
          end;
     end;
end;

procedure TFReciboProfessorRel.txtprofessorExit(Sender: TObject);
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
               txtnomeprofessor.text := 'Professor não cadastrado!';
               txtprofessor.setfocus;
               exit;
          end;
     end;
end;

procedure TFReciboProfessorRel.btnprofessorClick(Sender: TObject);
begin
     if Application.FindComponent('FProfessor') <> nil then
          FProfessor.Close;

     try
          FProfessor := tFProfessor.create(self);
          FProfessor.FormStyle := fsNormal;
          FProfessor.Visible := false;
          usuario('btnconsultar', FProfessor.wsinformacao.programa);
          FProfessor.showmodal;
          txtprofessor.text := dm.CDSProfessorPROCOD.asstring;
     finally
          FProfessor.release;
          FProfessor := nil;
          FProfessor.free;
     end;
end;

procedure TFReciboProfessorRel.txtpercentualExit(Sender: TObject);
begin
     Try
          StrToFloat((Sender as TWsEdit).Text);
     except
          (Sender as TWsEdit).Text := '0,00';
     end;
end;

procedure TFReciboProfessorRel.txtoutrosval2KeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
          btnimprimir.click;
end;

end.
