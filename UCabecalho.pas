unit UCabecalho;

interface

uses
     SysUtils, Windows, Messages, Classes, Graphics, Controls,
     Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, ComCtrls, ClipBrd,
     ToolWin, bde, DBCtrls, Db, DBTables, ExtDlgs, ImgList;

type
     TFCabecalho = class(TForm)
          Ruler: TPanel;
          FontDialog1: TFontDialog;
          FirstInd: TLabel;
          LeftInd: TLabel;
          RulerLine: TBevel;
          RightInd: TLabel;
          StatusBar: TStatusBar;
          ToolBar: TToolBar;
          SbtnSair: TToolButton;
          ToolButton10: TToolButton;
          FontName: TComboBox;
          FontSize: TEdit;
          ToolButton11: TToolButton;
          UpDown1: TUpDown;
          BoldButton: TToolButton;
          ItalicButton: TToolButton;
          UnderlineButton: TToolButton;
          ToolButton16: TToolButton;
          LeftAlign: TToolButton;
          CenterAlign: TToolButton;
          RightAlign: TToolButton;
          ToolButton20: TToolButton;
          BulletsButton: TToolButton;
          ToolbarImages: TImageList;
          OpenPictureDialog1: TOpenPictureDialog;
          SaveDialog: TSaveDialog;
          OpenDialog: TOpenDialog;
          DataSource: TDataSource;
          btnlimpaimgesq: TToolButton;
          ToolButton2: TToolButton;
          btnlimpaimgdir: TToolButton;
          Page: TPageControl;
          TabSup: TTabSheet;
          TabInf: TTabSheet;
          EditorInf: TDBRichEdit;
          DBImage1: TDBImage;
          Panel1: TPanel;
          Image: TDBImage;
    EditorSup: TDBRichEdit;
          Panel2: TPanel;
          ImageAlt: TDBImage;
          procedure SelectionChange(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure ShowHint(Sender: TObject);
          procedure FileNew(Sender: TObject);
          procedure FileSaveAs(Sender: TObject);
          procedure FileExit(Sender: TObject);
          procedure EditUndo(Sender: TObject);
          procedure EditCut(Sender: TObject);
          procedure EditCopy(Sender: TObject);
          procedure EditPaste(Sender: TObject);
          procedure HelpContents(Sender: TObject);
          procedure HelpSearch(Sender: TObject);
          procedure HelpHowToUse(Sender: TObject);
          procedure SelectFont(Sender: TObject);
          procedure RulerResize(Sender: TObject);
          procedure FormResize(Sender: TObject);
          procedure FormPaint(Sender: TObject);
          procedure BoldButtonClick(Sender: TObject);
          procedure ItalicButtonClick(Sender: TObject);
          procedure FontSizeChange(Sender: TObject);
          procedure AlignButtonClick(Sender: TObject);
          procedure FontNameChange(Sender: TObject);
          procedure UnderlineButtonClick(Sender: TObject);
          procedure BulletsButtonClick(Sender: TObject);
          procedure RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure RulerItemMouseMove(Sender: TObject; Shift: TShiftState; X,
               Y: Integer);
          procedure FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure RightIndMouseUp(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure FormShow(Sender: TObject);
          procedure RichEditChange(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure EditorSupChange(Sender: TObject);
          procedure EditorSupSelectionChange(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure Image1DblClick(Sender: TObject);
          procedure FontNameKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure FontSizeKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure ImageAltDblClick(Sender: TObject);
          procedure btnlimpaimgesqClick(Sender: TObject);
          procedure btnlimpaimgdirClick(Sender: TObject);
          procedure DBImage1DblClick(Sender: TObject);
    procedure PageChange(Sender: TObject);
    procedure EditorInfChange(Sender: TObject);
    procedure EditorInfSelectionChange(Sender: TObject);
     private
          X: integer;
          consulta, edicao: boolean;
          FFileName: string;
          FUpdating: Boolean;
          FDragOfs: Integer;
          FDragging: Boolean;
          FClipboardOwner: HWnd;
          function CurrText: TTextAttributes;
          procedure GetFontNames;
          procedure SetFileName(const FileName: string);
          procedure SetupRuler;
          procedure SetEditRect;
          procedure UpdateCursorPos;
          procedure ClipboardChanged;
          procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
          procedure WMChangeCBChain(var Msg: TWMChangeCBChain); message WM_CHANGECBCHAIN;
          procedure WMDrawClipboard(var Msg: TWMDrawClipboard); message WM_DRAWCLIPBOARD;
          procedure PerformFileOpen(const AFileName: string);
          procedure SetModified(Value: Boolean);
     end;

var
     FCabecalho: TFCabecalho;

implementation

uses RichEdit, ShellAPI, UDM;

const
     RulerAdj = 4 / 3;
     GutterWid = 6;

{$R *.DFM}

procedure TFCabecalho.SelectionChange(Sender: TObject);
begin
     with EditorSup.Paragraph do
     try
          FUpdating := True;
          FirstInd.Left := Trunc(FirstIndent * RulerAdj) - 4 + GutterWid;
          LeftInd.Left := Trunc((LeftIndent + FirstIndent) * RulerAdj) - 4 + GutterWid;
          RightInd.Left := Ruler.ClientWidth - 6 - Trunc((RightIndent + GutterWid) * RulerAdj);
          BoldButton.Down := fsBold in EditorSup.SelAttributes.Style;
          ItalicButton.Down := fsItalic in EditorSup.SelAttributes.Style;
          UnderlineButton.Down := fsUnderline in EditorSup.SelAttributes.Style;
          BulletsButton.Down := Boolean(Numbering);
          FontSize.Text := IntToStr(EditorSup.SelAttributes.Size);
          FontName.Text := EditorSup.SelAttributes.Name;
          case Ord(Alignment) of
               0: LeftAlign.Down := True;
               1: RightAlign.Down := True;
               2: CenterAlign.Down := True;
          end;
          UpdateCursorPos;
     finally
          FUpdating := False;
     end;
end;

function TFCabecalho.CurrText: TTextAttributes;
begin
    if Page.ActivePageIndex = 0 then
    begin
         if EditorSup.SelLength > 0 then
              Result := EditorSup.SelAttributes
         else
              Result := EditorSup.DefAttributes;
    end
    else
    begin
         if EditorInf.SelLength > 0 then
              Result := EditorInf.SelAttributes
         else
              Result := EditorInf.DefAttributes;
    end;
end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
     FontType: Integer; Data: Pointer): Integer; stdcall;
begin
     TStrings(Data).Add(LogFont.lfFaceName);
     Result := 1;
end;

procedure TFCabecalho.GetFontNames;
var
     DC: HDC;
begin
     DC := GetDC(0);
     EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
     ReleaseDC(0, DC);
     FontName.Sorted := True;
end;

procedure TFCabecalho.SetFileName(const FileName: string);
begin
     FFileName := FileName;
     Caption := Format('%s - %s', [ExtractFileName(FileName), Application.Title]);
end;

procedure TFCabecalho.SetupRuler;
var
     I: Integer;
     S: string;
begin
     SetLength(S, 201);
     I := 1;
     while I < 200 do
     begin
          S[I] := #9;
          S[I + 1] := '|';
          Inc(I, 2);
     end;
     Ruler.Caption := S;
end;

procedure TFCabecalho.SetEditRect;
var
     R: TRect;
begin
     with EditorSup do
     begin
          R := Rect(GutterWid, 0, ClientWidth - GutterWid, ClientHeight);
          SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
     end;
end;

procedure TFCabecalho.FormCreate(Sender: TObject);
begin
     GetFontNames;
     SelectionChange(Self);
     x := 0;
     SetupRuler;
     edicao := false;
     consulta := false;
end;

procedure TFCabecalho.ShowHint(Sender: TObject);
begin
     if Length(Application.Hint) > 0 then
     begin
          StatusBar.SimplePanel := True;
          StatusBar.SimpleText := Application.Hint;
     end
     else StatusBar.SimplePanel := False;
end;

procedure TFCabecalho.FileNew(Sender: TObject);
begin
     SetFileName('Untitled');
     EditorSup.Lines.Clear;
     EditorSup.Modified := False;
     SetModified(False);
end;

procedure TFCabecalho.PerformFileOpen(const AFileName: string);
begin
     EditorSup.Lines.LoadFromFile(AFileName);
     SetFileName(AFileName);
     EditorSup.SetFocus;
     EditorSup.Modified := False;
     SetModified(False);
end;

procedure TFCabecalho.FileSaveAs(Sender: TObject);
begin
     if SaveDialog.Execute then
     begin
          if FileExists(SaveDialog.FileName) then
               if MessageDlg(Format('OK to overwrite %s', [SaveDialog.FileName]),
                    mtConfirmation, mbYesNoCancel, 0) <> idYes then Exit;
          EditorSup.Lines.SaveToFile(SaveDialog.FileName);
          SetFileName(SaveDialog.FileName);
          EditorSup.Modified := False;
          SetModified(False);
     end;
end;

procedure TFCabecalho.FileExit(Sender: TObject);
begin
     Close;
end;

procedure TFCabecalho.EditUndo(Sender: TObject);
begin
     with EditorSup do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure TFCabecalho.EditCut(Sender: TObject);
begin
     EditorSup.CutToClipboard;
end;

procedure TFCabecalho.EditCopy(Sender: TObject);
begin
     EditorSup.CopyToClipboard;
end;

procedure TFCabecalho.EditPaste(Sender: TObject);
begin
     close;
end;

procedure TFCabecalho.HelpContents(Sender: TObject);
begin
     Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TFCabecalho.HelpSearch(Sender: TObject);
const
     EmptyString: PChar = '';
begin
     Application.HelpCommand(HELP_PARTIALKEY, Longint(EmptyString));
end;

procedure TFCabecalho.HelpHowToUse(Sender: TObject);
begin
     Application.HelpCommand(HELP_HELPONHELP, 0);
end;

procedure TFCabecalho.SelectFont(Sender: TObject);
begin
     FontDialog1.Font.Assign(EditorSup.SelAttributes);
     if FontDialog1.Execute then
          CurrText.Assign(FontDialog1.Font);
     EditorSup.SetFocus;

end;

procedure TFCabecalho.RulerResize(Sender: TObject);
begin
     RulerLine.Width := Ruler.ClientWidth - (RulerLine.Left * 2);
end;

procedure TFCabecalho.FormResize(Sender: TObject);
begin
     SetEditRect;
     SelectionChange(Sender);
end;

procedure TFCabecalho.FormPaint(Sender: TObject);
begin
     SetEditRect;
end;

procedure TFCabecalho.BoldButtonClick(Sender: TObject);
begin
     if FUpdating then Exit;
     if BoldButton.Down then
          CurrText.Style := CurrText.Style + [fsBold]
     else
          CurrText.Style := CurrText.Style - [fsBold];
end;

procedure TFCabecalho.ItalicButtonClick(Sender: TObject);
begin
     if FUpdating then Exit;
     if ItalicButton.Down then
          CurrText.Style := CurrText.Style + [fsItalic]
     else
          CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure TFCabecalho.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize.Text);
end;

procedure TFCabecalho.AlignButtonClick(Sender: TObject);
begin
     if FUpdating then Exit;
     case Page.ActivePageIndex of
       0 : EditorSup.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
       1 : EditorINf.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
     end;
end;

procedure TFCabecalho.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure TFCabecalho.UnderlineButtonClick(Sender: TObject);
begin
     if FUpdating then Exit;
     if UnderlineButton.Down then
          CurrText.Style := CurrText.Style + [fsUnderline]
     else
          CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure TFCabecalho.BulletsButtonClick(Sender: TObject);
begin
     if FUpdating then Exit;
     case Page.ActivePageIndex of
       0 : EditorSup.Paragraph.Numbering := TNumberingStyle(BulletsButton.Down);
       1 : EditorInf.Paragraph.Numbering := TNumberingStyle(BulletsButton.Down);
     end;
end;

procedure TFCabecalho.RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
begin
     FDragOfs := (TLabel(Sender).Width div 2);
     TLabel(Sender).Left := TLabel(Sender).Left + X - FDragOfs;
     FDragging := True;
end;

procedure TFCabecalho.RulerItemMouseMove(Sender: TObject; Shift: TShiftState;
     X, Y: Integer);
begin
     if FDragging then
          TLabel(Sender).Left := TLabel(Sender).Left + X - FDragOfs
end;

procedure TFCabecalho.FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
begin
     FDragging := False;
     EditorSup.Paragraph.FirstIndent := Trunc((FirstInd.Left + FDragOfs - GutterWid) / RulerAdj);
     LeftIndMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TFCabecalho.LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
begin
     FDragging := False;
     EditorSup.Paragraph.LeftIndent := Trunc((LeftInd.Left + FDragOfs - GutterWid) / RulerAdj) - EditorSup.Paragraph.FirstIndent;
     SelectionChange(Sender);
end;

procedure TFCabecalho.RightIndMouseUp(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
begin
     FDragging := False;
     EditorSup.Paragraph.RightIndent := Trunc((Ruler.ClientWidth - RightInd.Left + FDragOfs - 2) / RulerAdj) - 2 * GutterWid;
     SelectionChange(Sender);
end;

procedure TFCabecalho.UpdateCursorPos;
var
     CharPos: TPoint;
begin
     CharPos.Y := SendMessage(EditorSup.Handle, EM_EXLINEFROMCHAR, 0,
          EditorSup.SelStart);
     CharPos.X := (EditorSup.SelStart -
          SendMessage(EditorSup.Handle, EM_LINEINDEX, CharPos.Y, 0));
     Inc(CharPos.Y);
     Inc(CharPos.X);
     StatusBar.Panels[1].Text := Format('Line: %3d   Col: %3d', [CharPos.Y, CharPos.X]);
end;

procedure TFCabecalho.FormShow(Sender: TObject);
begin
     UpdateCursorPos;
     DragAcceptFiles(Handle, True);
     RichEditChange(nil);
     ClipboardChanged;

     // check if we should load a file from the command line
     if (ParamCount > 0) and FileExists(ParamStr(1)) then
          PerformFileOpen(ParamStr(1));
end;

procedure TFCabecalho.WMDropFiles(var Msg: TWMDropFiles);
var
     CFileName: array[0..MAX_PATH] of Char;
begin
     try
          if DragQueryFile(Msg.Drop, 0, CFileName, MAX_PATH) > 0 then
          begin
               PerformFileOpen(CFileName);
               Msg.Result := 0;
          end;
     finally
          DragFinish(Msg.Drop);
     end;
end;

procedure TFCabecalho.RichEditChange(Sender: TObject);
begin
     SetModified(EditorSup.Modified);
end;

procedure TFCabecalho.SetModified(Value: Boolean);
begin
     if Value then StatusBar.Panels[2].Text := 'Modified'
     else StatusBar.Panels[2].Text := '';
end;

procedure TFCabecalho.WMChangeCBChain(var Msg: TWMChangeCBChain);
begin
     if Msg.Remove = FClipboardOwner then FClipboardOwner := Msg.Next
     else SendMessage(FClipboardOwner, WM_CHANGECBCHAIN, Msg.Remove, Msg.Next);
     Msg.Result := 0;
end;

procedure TFCabecalho.ClipboardChanged;
var
     I: Integer;
     Format: Word;
begin
     // check to see if we can paste what's on the clipboard
     for I := 0 to Clipboard.FormatCount - 1 do
     begin
          Format := Clipboard.Formats[I];
          if SendMessage(EditorSup.Handle, EM_CANPASTE, Format, 0) <> 0 then
          begin
               Break;
          end;
     end;
end;

procedure TFCabecalho.WMDrawClipboard(var Msg: TWMDrawClipboard);
begin
     SendMessage(FClipboardOwner, WM_DRAWCLIPBOARD, 0, 0);
     Msg.Result := 0;
     ClipboardChanged;
end;

procedure TFCabecalho.FormDestroy(Sender: TObject);
begin
   ChangeClipboardChain(Handle, FClipboardOwner);
end;

procedure TFCabecalho.EditorSupChange(Sender: TObject);
begin
     SetModified(EditorSup.Modified);
end;

procedure TFCabecalho.EditorSupSelectionChange(Sender: TObject);
begin
     with EditorSup.Paragraph do
     try
          FUpdating := True;
          FirstInd.Left := Trunc(FirstIndent * RulerAdj) - 4 + GutterWid;
          LeftInd.Left := Trunc((LeftIndent + FirstIndent) * RulerAdj) - 4 + GutterWid;
          RightInd.Left := Ruler.ClientWidth - 6 - Trunc((RightIndent + GutterWid) * RulerAdj);
          BoldButton.Down := fsBold in EditorSup.SelAttributes.Style;
          ItalicButton.Down := fsItalic in EditorSup.SelAttributes.Style;
          UnderlineButton.Down := fsUnderline in EditorSup.SelAttributes.Style;
          BulletsButton.Down := Boolean(Numbering);
          FontSize.Text := IntToStr(EditorSup.SelAttributes.Size);
          FontName.Text := EditorSup.SelAttributes.Name;
          case Ord(Alignment) of
               0: LeftAlign.Down := True;
               1: RightAlign.Down := True;
               2: CenterAlign.Down := True;
          end;
          UpdateCursorPos;
     finally
          FUpdating := False;
     end;
end;

procedure TFCabecalho.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.CDSInstituto.post;
     dm.CDSInstituto.edit;
     action := cafree;
end;

procedure TFCabecalho.Image1DblClick(Sender: TObject);
var BMP: TBitMap;
begin
     BMP := TBitMap.Create;
     if OpenPictureDialog1.Execute then
     begin
          BMP.LoadFromFile(OpenPictureDialog1.FileName);
          DM.CDSInstitutoINSFIGURA.Assign(BMP);
     end;
end;

procedure TFCabecalho.FontNameKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = 27 then
          sbtnsair.click;
     if key = 13 then
          fontsize.setfocus;
end;

procedure TFCabecalho.FontSizeKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if key = 27 then
          sbtnsair.click;
end;

procedure TFCabecalho.ImageAltDblClick(Sender: TObject);
var BMP: TBitMap;
begin
     BMP := TBitMap.Create;
     if OpenPictureDialog1.Execute then
     begin
          BMP.LoadFromFile(OpenPictureDialog1.FileName);
          DM.CDSInstitutoINSFIGURAAlt.Assign(BMP);
     end;
end;

procedure TFCabecalho.btnlimpaimgesqClick(Sender: TObject);
begin
     DM.CDSInstitutoINSFIGURA.clear;
end;

procedure TFCabecalho.btnlimpaimgdirClick(Sender: TObject);
begin
     DM.CDSInstitutoINSLOGO.clear;
end;

procedure TFCabecalho.DBImage1DblClick(Sender: TObject);
var BMP: TBitMap;
begin
     BMP := TBitMap.Create;
     if OpenPictureDialog1.Execute then
     begin
          BMP.LoadFromFile(OpenPictureDialog1.FileName);
          DM.CDSInstitutoINSLOGO.Assign(BMP);
     end; 
end;

procedure TFCabecalho.PageChange(Sender: TObject);
begin
  {  case Page.ActivePageIndex of
      0 : Editor := EditorSup;
      1 : Editor := EditorInf;
    end;   }
end;

procedure TFCabecalho.EditorInfChange(Sender: TObject);
begin
     SetModified(EditorInf.Modified);
end;

procedure TFCabecalho.EditorInfSelectionChange(Sender: TObject);
begin
     with EditorInf.Paragraph do
     try
          FUpdating := True;
          FirstInd.Left := Trunc(FirstIndent * RulerAdj) - 4 + GutterWid;
          LeftInd.Left := Trunc((LeftIndent + FirstIndent) * RulerAdj) - 4 + GutterWid;
          RightInd.Left := Ruler.ClientWidth - 6 - Trunc((RightIndent + GutterWid) * RulerAdj);
          BoldButton.Down := fsBold in EditorInf.SelAttributes.Style;
          ItalicButton.Down := fsItalic in EditorInf.SelAttributes.Style;
          UnderlineButton.Down := fsUnderline in EditorInf.SelAttributes.Style;
          BulletsButton.Down := Boolean(Numbering);
          FontSize.Text := IntToStr(EditorInf.SelAttributes.Size);
          FontName.Text := EditorInf.SelAttributes.Name;
          case Ord(Alignment) of
               0: LeftAlign.Down := True;
               1: RightAlign.Down := True;
               2: CenterAlign.Down := True;
          end;
          UpdateCursorPos;
     finally
          FUpdating := False;
     end;

end;

end.
