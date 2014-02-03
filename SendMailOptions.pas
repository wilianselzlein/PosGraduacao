unit SendMailOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, ExtCtrls, Mask, Buttons, RLFilters, RLMetaFile;

type
  TFormSendMailOptions = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBoxFormato: TGroupBox;
    BitBtnEnviar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    EditDestinatarios: TEdit;
    EditAssunto: TEdit;
    RadioButtonEXE: TRadioButton;
    RadioButtonPDF: TRadioButton;
    RadioButtonRTF: TRadioButton;
    RadioButtonHTM: TRadioButton;
    CheckBoxAbrir: TCheckBox;
    PanelOpcoes: TPanel;
    PanelSubmit: TPanel;
    procedure BitBtnEnviarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pages:TRLGraphicStorage;
    class procedure CreateShowAndFree(aPages:TRLGraphicStorage);
  end;

var
  FormSendMailOptions: TFormSendMailOptions;

implementation

uses
  SendMail, SelfPrintDefs;

{$R *.DFM}

procedure MakeSelfPrint(const aBaseFileName,aResultFileName:string; aPages:TRLGraphicStorage);
var
  StreamWrite:TFileStream;
  StreamRead :TFileStream;
  Header     :TSelfPrintHeader;
begin
  StreamWrite:=TFileStream.Create(aResultFileName,fmCreate);
  try
    StreamRead:=TFileStream.Create(aBaseFileName,fmOpenRead);
    try
      StreamWrite.CopyFrom(StreamRead,StreamRead.Size);
      Header.Offset:=StreamRead.Size;
    finally
      StreamRead.Free;
    end;
    aPages.SaveToStream(StreamWrite);
    Header.Signature:=SelfSignature;
    Header.Content  :=ContentRaw;
    StreamWrite.Write(Header,SizeOf(Header));
  finally
    StreamWrite.Free;
  end;
end;

{ TFormMailOptions }

class procedure TFormSendMailOptions.CreateShowAndFree(aPages:TRLGraphicStorage);
var
  pdf,rtf,htm,ftr:TRLCustomSaveFilter;
  s,preview,tmpfile,tmpext:string;
  go:boolean;
  i:integer;
begin
  with TFormSendMailOptions.Create(nil) do
    try
      Pages           :=aPages;
      EditAssunto.Text:=Pages.Title;
      // procura no diret�rio corrente
      GetDir(0,s);
      preview:=IncludeTrailingBackslash(s)+SelfFileName;
      // se n�o achar procura no diret�rio do execut�vel
      if not FileExists(preview) then
        preview:=IncludeTrailingBackslash(ExtractFilePath(Application.ExeName))+SelfFileName;
      // valida os filtros
      pdf:=SaveFilterByFileName('.pdf');
      rtf:=SaveFilterByFileName('.rtf');
      htm:=SaveFilterByFileName('.htm');
      // habilita bot�es
      RadioButtonEXE.Enabled:=FileExists(preview);
      RadioButtonPDF.Enabled:=(pdf<>nil);
      RadioButtonRTF.Enabled:=(rtf<>nil);
      RadioButtonHTM.Enabled:=(htm<>nil);
      // seta filtro default
      if not RadioButtonEXE.Enabled then
      begin
        if RadioButtonPDF.Enabled then
          RadioButtonPDF.Checked:=True
        else if RadioButtonRTF.Enabled then
          RadioButtonRTF.Checked:=True
        else if RadioButtonHTM.Enabled then
          RadioButtonHTM.Checked:=True
        else
          RadioButtonEXE.Checked:=False;
      end;
      //
      go:=(ShowModal=mrOk);
      if not go then
        Exit;
      // seleciona filtro
      if RadioButtonPDF.Checked then
        ftr:=pdf
      else if RadioButtonRTF.Checked then
        ftr:=rtf
      else if RadioButtonHTM.Checked then
        ftr:=htm
      else if RadioButtonEXE.Checked then
        ftr:=nil
      else
        Exit;
      if ftr=nil then
        tmpext:='.exe'
      else
        tmpext:=ftr.DefaultExt;
      //
      tmpfile:=ExpandFileName(ChangeFileExt(EditAssunto.Text+'.',tmpext));
      try
        // faz selfprint
        if ftr=nil then
          MakeSelfPrint(preview,tmpfile,Pages)
        else
        begin
          // filtra
          ftr.FileName:=tmpfile;
          FilterPages(Pages,ftr,0,999,'',0);
        end;
        with TSendMail.Create(nil) do
          try
            Subject:=EditAssunto.Text;
            Body   :='';
            s:=EditDestinatarios.Text;
            while s<>'' do
            begin
              i:=Pos(';',s);
              if i=0 then
                i:=Length(s)+1;
              Recipients.Add(Copy(s,1,i-1));
              Delete(s,1,i);
            end;
            Attachments.Add(tmpfile);
            EditDialog:=CheckBoxAbrir.Checked;
            Send;
          finally
            Free;
          end;
      finally
        SysUtils.DeleteFile(tmpfile);
      end;
    finally
      Free;
    end;
end;

procedure TFormSendMailOptions.BitBtnEnviarClick(Sender: TObject);
begin
  Close;
  ModalResult:=mrOk;
end;

procedure TFormSendMailOptions.BitBtnCancelarClick(Sender: TObject);
begin
  Close;
  ModalResult:=mrCancel;
end;

end.

