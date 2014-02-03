unit UThreadExecSql;

interface

uses
  Windows, Messages, Classes, SysUtils, SqlExpr, StdCtrls, Provider, DBClient, ActiveX, Dialogs, Forms, DB;

type
   TEvento = class
   public
       procedure ThreadTerminate(Sender: TObject);
   end;

  TThreadExecSql = class(TThread)
  private
    FSqlConnection: TSQLConnection;
    FSqlString : WideString;
    FPriority: TThreadPriority;
    FParams: TParams;
    FDoOnTerminate: TNotifyEvent;
    FCds: TClientDataSet;
    FException: Exception;
    FQry: TSqlQuery;  protected
    procedure Execute; override;
   procedure HandleException; virtual;
  public
    property SqlConnection: TSQLConnection read FSqlConnection write FSqlConnection;
    property SqlString: WideString read FSqlString write FSqlString;
    property ClientDataSet: TClientDataSet read FCds write FCds;
    property SqlQuery: TSQLQuery read FQry write FQry;
    property Params: TParams read FParams write FParams;
    property Priority: TThreadPriority read FPriority write FPriority;
    //property OnTerminate: TThreadMethod read FOnTerminate write FOnTerminate;
    property DoOnTerminate: TNotifyEvent read FDoOnTerminate write FDoOnTerminate;
  end;

implementation

uses UFuncoes;

{ TCalcThread }

//procedure TThreadExecSql.DoHandleException; //(aMsg: String);
//begin
//  if GetCapture <> 0 then //   Cancel the mouse capture
//    SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
//  if FException is Exception then
//    Application.ShowException(FException)
//  else
//    SysUtils.ShowException(FException, nil);
//end;

procedure TThreadExecSql.Execute;
var
  Con: TSQLConnection;
  Qry: TSQLQuery;
  Dsp: TDataSetProvider;
  Cds: TClientDataSet;
  //i : integer;
  //T: TTransactionDesc;
begin
  inherited;
  FException := nil;
  CoInitialize(nil); //CoInitialize was not called
  If FSqlString <> '' then
  begin
      //Con := TSQLConnection.Create(nil);
      Qry := TSQLQuery.Create(nil);
      Dsp := TDataSetProvider.Create(nil);
      Cds := TClientDataSet.Create(nil);
      try
        Con := FSqlConnection.CloneConnection;
        Con.Connected := True;
        Qry.SQLConnection := Con;
        //t.TransactionID := Id;
        //t.IsolationLevel := xilREPEATABLEREAD;
        //Con.StartTransaction(T);
        Qry.SQL.Text := FSqlString;
        //Qry.SQL.Text := 'UPDATE TPAIS SET PAICODIGOBACEN = PAICODIGOBACEN + 1;';
        if FParams <> nil then
          Qry.Params.AssignValues(FParams);

        Dsp.DataSet := Qry;
        Cds.SetProvider(Dsp);
        try
          if Copy(FSqlString, 1, 6) = 'SELECT' then
          begin
            Cds.Open;
            Cds.First;
          end
          else
            Qry.ExecSQL(True);
          //Synchronize(ExibeCarregando); //CanvSas Does NOT Allow Drawing if not called through Synhronize
        except
           HandleException;
        end;

        {while not cds.Eof and NOT Terminated do
        begin
           //ListBox.Items.Insert(0, Format('%d - %s', [Cds.Fields[0].AsInteger,Cds.Fields[1].asString]));
           Synchronize(ExibeProgresso); //Canvas Does NOT Allow Drawing if not called through Synhronize
           Application.ProcessMessages;
           Cds.Next;
        end;}
      finally
        //Con.Rollback(T);
        Qry.Free;
        Dsp.Free;
        Cds.free;
      end;
  end
  else if FQry <> nil then
  begin
      FQry.ExecSQL;
  end
  else if FCds <> nil then
  begin
      try
          FCds.Open;
      except
           HandleException;
      end;
  end;
  if Assigned(FDoOnTerminate) then
      try
          FDoOnTerminate(self);
      except
          HandleException;
      end;
  CoUninitialize();
end;

{procedure TThreadExecSql.ExibeCarregando;
begin
  Carregando(True);
end;}

{ TNotifyEvent }

procedure TEvento.ThreadTerminate(Sender: TObject);
begin
    ExecutandoThread := False;
end;

{procedure TThreadExecSql.ExibeCarregando;
begin
    Application.ProcessMessages;
end;}

procedure TThreadExecSql.HandleException;
begin
  // This function is virtual so you can override it
  // and add your own functionality.
  FException := Exception(ExceptObject);
  try
    // Don't show EAbort messages
    if not (FException is EAbort) then
    begin
      Application.ShowException(FException);
      ExecutandoThread := False;
      self.Terminate;
//      showmessage(FException.Message);
//      Synchronize(DoHandleException);
    end;
  finally
    FException := nil;
  end;
end;

end.
