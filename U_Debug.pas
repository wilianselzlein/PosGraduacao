{
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
PROJECT  : Delphi debugging manager
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
FILE     : U_Debug.pas
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
CLASS    : IDebug
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
CREATION : 06/2001 - Olivier Rogier (orogier@urimont.com) - http://www.urimont.com
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SPEC     : By using an interface to debug singleton object and map file (think to active it in project link options).
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}

unit U_Debug;

{
###########################################################################################################################################
                                                                 INTERFACE
###########################################################################################################################################
}

interface

uses
     Classes, SysUtils;

const
     DEBUG_MODE: boolean = true;

type
     EMapFileException = class(Exception); // Errors from MapFile manipulations
     EDebugException = class(Exception); // Errors from Debug manipulations

     // Events for doing actions before & after an exception
     TBeforeExceptionEvent = procedure(Sender: TObject; ExceptObject: Exception; var Process: boolean) of object;
     TAfterExceptionEvent = procedure(Sender: TObject; ExceptObject: Exception) of object;

type
     // **********************************************************************************************
     // TObjectInfos
     // **********************************************************************************************
     // SPEC : Get object informations
     // **********************************************************************************************
     TObjectInfos = class
     private
          FTarget: TObject; // Objet
          FComponentName: string; // Name if TComponent
          FTargetClassName: string; // Class
          FParentClassName: string; // Parent class
          FText: string; // Short description
          FInherits: string; // Parents class list
          FOwners: string; // Owners class list if TComponent
     protected
          procedure SetTarget(Value: TObject); virtual;
     public
          property Target: TObject read FTarget write SetTarget;
          property TargetClassName: string read FTargetClassName;
          property ParentClassName: string read FParentClassName;
          property Text: string read FText;
          property Inherits: string read FInherits;
          property Owners: string read FOwners;
          property ComponentName: string read FComponentName;
     end;

     // **********************************************************************************************
     // IDebug
     // **********************************************************************************************
     // SPEC : Exception manager interface
     // **********************************************************************************************
     IDebug = interface(IUnknown)
          function IsActive: boolean;
          procedure SetActive(Value: boolean);
          procedure SetBeforeException(Value: TBeforeExceptionEvent);
          function GetBeforeException: TBeforeExceptionEvent;
          procedure SetAfterException(Value: TAfterExceptionEvent);
          function GetAfterException: TAfterExceptionEvent;
          procedure ShowException(Sender: TObject; ExceptObject: Exception);
     end;

function GetDebug: IDebug;

var
     AppPath: string;
     AppExe: string;
     AppVersion: string;
     WinComputer: string;
     WinUser: string;
     WinVersion: string;
     {
     ###########################################################################################################################################
                                                                    IMPLEMENTATION
     ###########################################################################################################################################
     }

implementation

uses
     Forms, Windows, Controls, Dialogs;

const
     ERR_INVALID_MAP_FILE = 'Invalid map file : %s.';
     ERR_MAP_FILE_NOT_FOUND = 'File not found : %s.';
     MSG_UNKNOWN = 'Unknown';
     MSG_NA = 'NA';
     MAPFILE_EXT = '.map';
     MAPFILE_M_1 = 7;
     MAPFILE_M_2 = 16;
     MAPFILE_FCT = 22;
     MAPFILE_LINE_1 = 1;
     MAPFILE_LINE_2 = 13;
     MAPFILE_LINE_3 = 20;
     ADDR_LENGTH = 8;

type
     // **********************************************************************************************
     // TMapFile
     // **********************************************************************************************
     // SPEC : Link map file manager
     // **********************************************************************************************
     TMapFile = class
     private
          FFileName: TFileName; // Map file name
          FPresent: boolean; // True if map file loaded
          FSegments: TStrings; // Segments List
          FAdress: TStrings; // Addresses List
          FLines: TStrings; // Lines List
          FAddr: integer; // Current Addresse for infos below
          FUnitName: string; // Unit name
          FProcName: string; // Proc name
          FProcAddr: integer; // Proc address
          FLineNo: string; // Line number
     private
          procedure UpdateUnitName;
          procedure UpdateFunctionName;
          procedure UpdateLineNo;
     protected
          constructor Create;
          destructor Destroy; override;
          procedure SetFileName(Value: TFileName); virtual;
          procedure SetAddr(Value: integer); virtual;
     published
          property Present: boolean read FPresent;
          property FileName: TFileName read FFileName write SetFileName;
          property Addr: integer read FAddr write SetAddr;
          property UnitName: string read FUnitName;
          property ProcName: string read FProcName;
          property ProcAddr: integer read FProcAddr;
          property LineNo: string read FLineNo;
     end;

     // **********************************************************************************************
     // TDebug
     // **********************************************************************************************
     // SPEC : Exception Manager
     // **********************************************************************************************
     TDebug = class(TObject, IDebug)
     private
          FObjectInfos: TObjectInfos;
          FOldHandler: TExceptionEvent;
          FMapFile: TMapFile;
          FActive: boolean;
          FBeforeException: TBeforeExceptionEvent;
          FAfterException: TAfterExceptionEvent;
     private
          function QueryInterface(const IID: TGUID; out Obj): Integer; stdcall;
          function _AddRef: Integer; stdcall;
          function _Release: Integer; stdcall;
     protected
          procedure HandleException(Sender: TObject; ExceptObject: Exception); virtual;
     public
          constructor Create;
          destructor Destroy; override;
          function IsActive: boolean;
          procedure SetActive(Value: boolean);
          procedure SetBeforeException(Value: TBeforeExceptionEvent);
          function GetBeforeException: TBeforeExceptionEvent;
          procedure SetAfterException(Value: TAfterExceptionEvent);
          function GetAfterException: TAfterExceptionEvent;
          procedure ShowException(Sender: TObject; ExceptObject: Exception);
     published
          property MapFile: TMapFile read FMapFile;
          property Active: boolean read FActive write SetActive;
          property BeforeException: TBeforeExceptionEvent read GetBeforeException write SetBeforeException;
          property AfterException: TAfterExceptionEvent read GetAfterException write SetAfterException;
     end;

var
     MapFileBase: integer = $00400000 + $1000; // Infos lieur, changer si différent
     Debug: TDebug;

     //-------------------------------------------------------------------------------------------------
     // GetDebugObject
     //-------------------------------------------------------------------------------------------------

function GetDebug: IDebug;
begin
     result := Debug;
end;

{
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                        TObjectInfos
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
}

//-------------------------------------------------------------------------------------------------
// TObjectInfos.SetTarget
//-------------------------------------------------------------------------------------------------

procedure TObjectInfos.SetTarget(Value: TObject);
var p: TClass;
     o: TComponent;
begin
     if (FTarget = Value) then Exit;
     FTarget := Value;
     FComponentName := MSG_NA;
     FTargetClassName := MSG_NA;
     FParentClassName := MSG_NA;
     FInherits := MSG_NA;
     FOwners := MSG_NA;
     if (FTarget <> nil) and Assigned(FTarget) then
     begin
          FTargetClassName := FTarget.ClassName;
          if (FTarget is TComponent) then
               with (FTarget as TComponent) do
               begin
                    case (Name = '') of
                         True: FComponentName := MSG_UNKNOWN;
                         False: FComponentName := Name;
                    end;
                    if (Owner <> nil) then
                    begin
                         FOwners := Format('%s: %s ( %s )', [Owner.Name, Owner.ClassName, Owner.ClassParent.ClassName]);
                         o := Owner;
                         while (o.Owner <> nil) do
                         begin
                              FOwners := Format('%s -> %s: %s ( %s )', [FOwners, o.Owner.Name, o.Owner.ClassName, o.Owner.ClassParent.ClassName]);
                              o := o.Owner;
                         end;
                    end;
               end;
          if (FTarget.ClassParent <> nil) then
          begin
               FParentClassName := FTarget.ClassParent.ClassName;
               FInherits := FTargetClassName + ' > ' + FParentClassName;
               p := FTarget.ClassParent;
               while (p.ClassParent <> nil) do
               begin
                    FInherits := FInherits + ' > ' + p.ClassParent.ClassName;
                    p := p.ClassParent;
               end;
          end;
     end;
     FText := Format('%s: %s ( %s )', [FComponentName, FTargetClassName, FParentClassName]);
end;

{
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                             TMapFile
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
}

//-------------------------------------------------------------------------------------------------
// TMapFile.Create
//-------------------------------------------------------------------------------------------------

constructor TMapFile.Create;
begin
     inherited;
     FSegments := TStringList.Create;
     FAdress := TStringList.Create;
     FLines := TStringList.Create;
     FPresent := false;
     FUnitName := MSG_UNKNOWN;
     FProcName := MSG_UNKNOWN;
     FLineNo := MSG_UNKNOWN;
end;

//-------------------------------------------------------------------------------------------------
// TMapFile.Destroy
//-------------------------------------------------------------------------------------------------

destructor TMapFile.Destroy;
begin
     FSegments.Free;
     FAdress.Free;
     FLines.Free;
     inherited;
end;

//-------------------------------------------------------------------------------------------------
// TMapFile.SetFileName
//-------------------------------------------------------------------------------------------------

procedure TMapFile.SetFileName(Value: TFileName);
var i, ideb, iend, i1, i2, i2b, i3: integer;
begin
     if (FFileName = Value) then Exit;
     if (Value <> '') and (not FileExists(Value)) then raise EMapFileException.CreateFmt(ERR_MAP_FILE_NOT_FOUND, [Value]);
     FSegments.Clear;
     FAdress.Clear;
     FLines.Clear;
     FPresent := false;
     if (Value = '') then Exit;
     with (TStringList.Create) do
     try
          LoadFromFile(Value);
          i1 := 0;
          i2 := 0;
          i2b := 0;
          i3 := 0;
          ideb := 0;
          iend := Pred(Count);
          for i := ideb to iend do if (Pos('Detailed map of segments', Strings[i]) <> 0) then begin i1 := i; break; end;
          for i := i1 to iend do if (Pos('  Address         Publics by Name', Strings[i]) <> 0) then begin i2 := i; break; end;
          for i := i2 to iend do if (Pos('  Address         Publics by Value', Strings[i]) <> 0) then begin i2b := i; break; end;
          for i := i2b to iend do if (Pos('Line numbers for ', Strings[i]) <> 0) then begin i3 := i; break; end;
          if (i1 = 0) or (i2b = 0) or (i3 = 0) then raise EMapFileException.CreateFmt(ERR_INVALID_MAP_FILE, [Value]);
          for i := i1 to Pred(i2) do FSegments.Add(Strings[i]);
          for i := i2b to Pred(i3) do FAdress.Add(Strings[i]);
          for i := i3 to iend do FLines.Add(Strings[i]);
          FPresent := true;
          FFileName := Value;
     finally
          Free;
     end;
end;

//-------------------------------------------------------------------------------------------------
// TMapFile.SetAddr
//-------------------------------------------------------------------------------------------------

procedure TMapFile.SetAddr(Value: integer);
begin
     if (not FPresent) or (FAddr = Value) then Exit;
     FAddr := VAlue;
     UpdateUnitName;
     UpdateFunctionName;

     UpdateLineNo;

end;

//-------------------------------------------------------------------------------------------------
// TMapFile.UpdateUnitName
//-------------------------------------------------------------------------------------------------

procedure TMapFile.UpdateUnitName;
var i, base, spos: integer;
begin
     FUnitName := MSG_UNKNOWN;
     if (not FPresent) then Exit;
     with (FSegments) do
          for i := 0 to Pred(Count) do
          begin
               try
                    base := StrToInt('$' + Copy(Strings[i], MAPFILE_M_1, ADDR_LENGTH));
               except
                    continue;
               end;
               if (FAddr >= base) and (FAddr < (base + StrToInt('$' + Copy(Strings[i], MAPFILE_M_2, ADDR_LENGTH)))) then
               begin
                    spos := Pos('M=', Strings[i]) + 2;
                    FUnitName := Trim(Copy(Strings[i], spos, Pos('ACBP=', Strings[i]) - spos - 1));
                    break;
               end;
          end;
end;

//-------------------------------------------------------------------------------------------------
// TMapFile.UpdateFunctionName
//-------------------------------------------------------------------------------------------------

procedure TMapFile.UpdateFunctionName;
var i, val, paddr: integer;
begin
     FProcName := MSG_UNKNOWN;
     FProcAddr := 0;
     if (not FPresent) then Exit;
     val := 0;
     with (FAdress) do
          for i := 0 to Pred(Count) do
          begin
               try
                    paddr := val;
                    val := StrToInt('$' + Copy(Strings[i], MAPFILE_M_1, ADDR_LENGTH));
               except
                    continue;
               end;
               if (val = FAddr) then
               begin
                    FProcName := Trim(Copy(Strings[i], MAPFILE_FCT, Length(Strings[i]) - MAPFILE_FCT + 1));
                    FProcAddr := val;
                    break;
               end;
               if (val > FAddr) then
               begin
                    FProcName := Trim(Copy(Strings[i - 1], MAPFILE_FCT, Length(Strings[i - 1]) - MAPFILE_FCT + 1));
                    FProcAddr := paddr;
                    break;
               end;
          end;
end;

//-------------------------------------------------------------------------------------------------
// TMapFile.UpdateLineNo
//-------------------------------------------------------------------------------------------------

procedure TMapFile.UpdateLineNo;
var i, j, val, line: integer;
     b: boolean;
begin
     FLineNo := MSG_UNKNOWN;
     if (not FPresent) then Exit;
     line := 0;
     val := 0;
     b := false;
     with (FLines) do
     begin
          for i := 0 to Pred(Count) do
               if (Pos(FUnitName, Strings[i]) <> 0) then
               begin
                    b := true;
                    break;
               end;
          if (not b) then Exit;
          i := i + 2;
          while (b) do
          try
               for j := 0 to 3 do
               begin
                    val := StrToInt('$' + Copy(Strings[i], MAPFILE_LINE_2 + MAPFILE_LINE_3 * j, ADDR_LENGTH));
                    if (val > FAddr) then
                    begin
                         FLineNo := IntToStr(line);
                         b := false;
                         break;
                    end;
                    line := StrToInt(StringReplace(Copy(Strings[i], MAPFILE_LINE_1 + MAPFILE_LINE_3 * j, 6), ' ', '', [rfReplaceAll]));
                    if (val = FAddr) then
                    begin
                         FLineNo := IntToStr(line);
                         b := false;
                         break;
                    end;
               end;
               Inc(i);
          except
               break;
          end;
     end;
end;

{
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                             TDebug
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
}

//-------------------------------------------------------------------------------------------------
// TDebug.Create
//-------------------------------------------------------------------------------------------------

constructor TDebug.Create;
begin
     inherited;
     FMapFile := TMapFile.Create;
     FObjectInfos := TObjectInfos.Create;
     try
          FMapFile.FileName := AppPath + AppExe + MAPFILE_EXT;
     except
     end;
end;

//-------------------------------------------------------------------------------------------------
// TDebug.Destroy
//-------------------------------------------------------------------------------------------------

destructor TDebug.Destroy;
begin
     Active := false;
     Application.OnException := nil;
     FMapFile.Free;
     FObjectInfos.Free;
     inherited;
end;

//-------------------------------------------------------------------------------------------------
// TDebug.QueryInterface
//-------------------------------------------------------------------------------------------------

function TDebug.QueryInterface(const IID: TGUID; out Obj): Integer; stdcall;
begin
end;

//-------------------------------------------------------------------------------------------------
// TDebug.HandlerProc
//-------------------------------------------------------------------------------------------------

function TDebug._AddRef: Integer; stdcall;
begin
end;

//-------------------------------------------------------------------------------------------------
// TDebug.HandlerProc
//-------------------------------------------------------------------------------------------------

function TDebug._Release: Integer; stdcall;
begin
end;

//-------------------------------------------------------------------------------------------------
// TDebug.IsActive
//-------------------------------------------------------------------------------------------------

function TDebug.IsActive: boolean;
begin
     result := FActive;
end;

//-------------------------------------------------------------------------------------------------
// TDebug.SetActive
//-------------------------------------------------------------------------------------------------

procedure TDebug.SetActive(Value: boolean);
begin
     if (FActive = Value) then Exit;
     case (Value) of
          True: begin
                    FOldHandler := Application.OnException;
                    Application.OnException := HandleException;
               end;
          False: Application.OnException := FOldHandler;
     end;
     FActive := Value;
end;

//-------------------------------------------------------------------------------------------------
// TDebug.Set/Get...Exception Events
//-------------------------------------------------------------------------------------------------

procedure TDebug.SetBeforeException(Value: TBeforeExceptionEvent);
begin
     FBeforeException := Value;
end;

function TDebug.GetBeforeException: TBeforeExceptionEvent;
begin
     result := FBeforeException;

end;

procedure TDebug.SetAfterException(Value: TAfterExceptionEvent);
begin
     FAfterException := value;
end;

function TDebug.GetAfterException: TAfterExceptionEvent;
begin
     result := FAfterException;
end;

//-------------------------------------------------------------------------------------------------
// TDebug.HandleException
//-------------------------------------------------------------------------------------------------
// SPEC : Gestionnaire.
//-------------------------------------------------------------------------------------------------

procedure TDebug.HandleException(Sender: TObject; ExceptObject: Exception);
var b: boolean;
     s: string;
begin
     try
          b := true;
          FMapFile.Addr := integer(ExceptAddr) - MapFileBase;
          case (FActive) of
               True: begin
                         if Assigned(FBeforeException) then
                         try
                              FBeforeException(Sender, ExceptObject, b);
                         except
                              on E: Exception do
                              begin
                                   b := true;
                                   ShowMessage(E.Message);
                              end;
                         end;
                         if (b) then ShowException(Sender, ExceptObject);
                         if (Active) and Assigned(AfterException) then
                         try
                              FAfterException(Sender, ExceptObject);
                         except
                              on E: Exception do ShowMessage(E.Message);
                         end;
                    end;
               False: Application.ShowException(ExceptObject);
          end;
     except
          Application.ShowException(ExceptObject);
     end;
end;

//-------------------------------------------------------------------------------------------------
// TDebug.ShowException
//-------------------------------------------------------------------------------------------------
// SPEC : Affiche une exception.
//-------------------------------------------------------------------------------------------------

procedure TDebug.ShowException(Sender: TObject; ExceptObject: Exception);
var s: string;
begin
     FObjectInfos.Target := ExceptObject;
     s := Format('Application : %s'#13#10'Version : %s'#13#10#13#10'Exception : %s ( %s )'#13#10#13#10,
          [Application.Title, AppVersion, FObjectInfos.TargetClassName, FObjectInfos.ParentClassName]);
     FObjectInfos.Target := Sender;
     s := s + Format('Platform : %s'#13#10'Computer : %s'#13#10'User : %s'#13#10#13#10,
          [WinVersion, WinComputer, WinUser]);
     s := s + Format('Unit : %s'#13#10'Function : %s'#13#10'Line : %s'#13#10'Sender : %s'#13#10'Address : %s'#13#10#13#10,
          [FMapFile.UnitName, FMapFile.ProcName, FMapFile.LineNo, FObjectInfos.ComponentName, '0x' + IntToHex(integer(ExceptAddr), 8)]);
     s := s + Format('Text : %s', [ExceptObject.Message]);
     MessageDlg(s, mtError, [mbOK], 0);
     // ToDo : Logging in file here
end;

{
###########################################################################################################################################
                                                              INITIALIZATION
###########################################################################################################################################
}

const
     TAB_NAMES_PLATFORM: array[0..2] of string = ('Win32s on Windows 3.1', 'Win32 on Windows 95', 'Windows NT');

var z: array[0..MAX_PATH] of char;
     ln: dword;
     i: integer;

initialization
     AppPath := ExtractFilePath(Application.ExeName);
     AppExe := ExtractFileName(Copy(Application.ExeName, 1, Length(Application.ExeName) - 4));
     WinVersion := Format('%s v%d.%d.%d %s', [TAB_NAMES_PLATFORM[Win32Platform], Win32MajorVersion,
          Win32MinorVersion, Win32BuildNumber, Win32CSDVersion]);
     //
     ln := MAX_PATH;
     GetComputerName(z, ln);
     WinComputer := z;
     ln := MAX_PATH;
     GetUserName(z, ln);
     WinUser := z;
     {for i := 0 to ParamCount do
          if (AnsiCompareText(ParamStr(i), 'DEBUG') = 0) then
               DEBUG_MODE := true
          else
               if (AnsiCompareText(ParamStr(i), 'NODEBUG') = 0) then
                    DEBUG_MODE := false;}
     try
          Debug := TDebug.Create;
          Debug.Active := DEBUG_MODE;
     except
          on E: Exception do
          begin
               MessageDlg(E.Message, mtError, [mbOK], 0);
               Debug := nil;
          end;
     end;

finalization
     // Let's cleaning process by Windows...

end.
