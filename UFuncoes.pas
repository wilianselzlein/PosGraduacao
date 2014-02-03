unit UFuncoes;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB, Menus, Dialogs,
    WSEdit, WSDBEdit, WSDBMemo, Buttons, DBGrids, shellapi, Grids, extdlgs,
    ImgList, jpeg, dbclient, Provider, dbtables, FMTBcd, SqlExpr, dateutils,
    WSMaskEdit, WSDBComboBox, RLReport, Mapi;

type
  THackControl = class(TControl);

procedure verifica_banco;
procedure carregar_propriedades_dbgrid(Nome_da_Tela: string; Tela: TForm; DBGrid: TDBGrid);
procedure AutoFitColunasGrid(AGrid : TDBGrid);
procedure carrega_propriedades_tela(nome_da_tela: string; tela: TForm);
procedure limpa_edits(Form: TForm);
procedure setCaption(form: tform);
procedure fechar_tabelas;
procedure salva_dbgrid(nome_da_tela: string; tela: TForm);
procedure salva_propriedades_tela(nome_da_tela: string; tela: Tform);
procedure novo_padrao(DataSource: TDataSource; Tabela: string);
procedure Editar(Form: TForm; chaves: boolean);
procedure navegar(Form: TForm);
procedure importar(Tab: string; DS: TDataSource);
procedure exportar(Tab: array of string; CDS: array of TClientDataSet);
procedure html(titulo: string; dbgrid: TDBGrid; DataSource: TDataSource);
procedure excel(titulo: string; dbgrid: TDbgrid);
procedure usuario(objeto: string; Programa: Integer);
procedure integridade(campo, tabela, valor: string);
procedure execsql(sql: string);
procedure Rastreabilidade(acao: string; DataSetProv: TdataSetProvider);
procedure seta_indicacao(Itemss: TStrings);
procedure testa_data(data: tdate);
procedure BuscaTrocaMemo(RichText: TRichEdit; Busca, Troca: string);
procedure ResizeForm(Sender: TForm; AjustarTamanho: Boolean = True);
procedure Carregando(pVisivel: Boolean; AClient: TDataSet = nil; AMsg: String = 'C a r r e g a n d o . . .');

function testa_registro_ja_cadastrado(tabela: string; Datasource: tDataSource): boolean;
function getForm(AControl: TControl): TForm;
function executasqlretorno(textosql: string): string;
function executasqlretornodouble(textosql: string): double;
function sqltotal(textosql: string): double;
function extenso(valor: real): string;
function extensoquant(valor: real): string;
function BuscaTroca(Text, Busca, Troca: string): string;
function valor_parametro(cod: integer): string;
function RemoveAcento(Str: string): string;
function Max(Campo, tabela: string): integer;
function tbKeyIsDown(const Key: integer): boolean;
function Arredonda(Valor: Real; Decimais: Byte): double;
function cpf(num: string): boolean;
function cnpj(num: string): boolean;
function EnviaEMail(const De, Para, Assunto, Texto, Arquivo: string; Confirma: Boolean): Integer;
function ThreadExecSql(ACds: TClientDataSet = nil; ASql: WideString = ''; AParams: TParams = nil; AQry: TSQLQuery = nil): Boolean;

procedure atualizar_sistema;

var
   ExecutandoThread: Boolean = False;

implementation

uses UDM, USenha, UThreadExecSql, UCarregando;

procedure verifica_banco;
begin
     if not FileExists(ExtractFilePath(Application.ExeName) + 'banco.fdb') then
          raise exception.create('Essa ação só pode ser executada no servidor!');
end;

procedure carregar_propriedades_dbgrid(Nome_da_Tela: string; Tela: TForm; DBGrid: TDBGrid);
var
     i: integer;
begin
//     AutoFitColunasGrid(DBGrid);
    gDBGrid := DBGrid;
    //DbGrid.PopupMenu := Dm.PMGrid;
    //Dm.MICarregarConfiguracao.Click;

     {for I := 0 to Tela.ComponentCount-1 do
     begin
         if (Tela.Components[I].ClassType = TDBGrid) then
             AutoFitColunasGrid(TDBGrid(Tela.Components[I]));
         if (Tela.Components[I].ClassType = TDBGrid) then
             AutoFitColunasGrid(TDBgrid(Tela.Components[I]));
     end;}

     dm.CDSDbGrid.Filter :=
        ' GRIDUSUARIO = ' + QuotedStr(lUsuario) +
        ' AND GRIDTELA = ' + QuotedStr(nome_da_tela) +
        ' AND GRIDNOME = ' + QuotedStr(DbGrid.name);
     dm.CDSDbGrid.Filtered := True;
     if dm.CDSDbGrid.RecordCount > 0 then
     begin
          DBGrid.Columns.Clear;
          i := 0;
          while not dm.CDSDbGrid.eof do
          begin
               if dm.CDSDbGridGRIDVISIVEL.AsString = 'Sim' then
               begin
                    DBGrid.Columns.add;
                    if dm.CDSDbGridGRIDALINHAMENTO.AsString = 'Direita' then
                    begin
                         DBGrid.Columns[i].Alignment := Classes.taRightJustify;
                         DBGrid.Columns[i].title.Alignment := Classes.taRightJustify;
                    end;
                    if dm.CDSDbGridGRIDALINHAMENTO.AsString = 'Esquerda' then
                    begin
                         DBGrid.Columns[i].Alignment := Classes.taLeftJustify;
                         DBGrid.Columns[i].title.Alignment := Classes.taLeftJustify;
                    end;
                    if dm.CDSDbGridGRIDALINHAMENTO.AsString = 'Centro' then
                    begin
                         DBGrid.Columns[i].Alignment := Classes.tacenter;
                         DBGrid.Columns[i].title.Alignment := Classes.tacenter;
                    end;
                    DBGrid.Columns[i].FieldName := dm.CDSDbGridGRIDCAMPO.asstring;
                    DBGrid.Columns[i].Title.caption := dm.CDSDbGridGRIDTITULO.AsString;
                    DBGrid.Columns[i].Width := dm.CDSDbGridGRIDTAMANHO.asinteger;
                    inc(i);
               end;
               dm.CDSDbGrid.next;
          end;
     end;
     dm.CDSDbGrid.Filter := '';
     dm.CDSDbGrid.Filtered := False;
end;

procedure AutoFitColunasGrid(AGrid : TDBGrid);
var
    F, T, G : Double;
    i : Integer;
begin
    T := 0;
    G := AGrid.Width - 30;
    for i := 0 to AGrid.Columns.Count - 1 do
        T := T + AGrid.Columns[i].Width;
    if T > G then
    begin
       F := T / G;
       for i := 0 to AGrid.Columns.Count - 1 do
           AGrid.Columns[i].Width := Round(AGrid.Columns[i].Width * F);
    end
    else
    begin
       F := G / T;
       for i := 0 to AGrid.Columns.Count - 1 do
           AGrid.Columns[i].Width := Round(AGrid.Columns[i].Width * F);
    end;

    T := 0;
    for i := 0 to AGrid.Columns.Count - 1 do
        T := T + AGrid.Columns[i].Width;

    if T > G then
    begin
       F := (T - G) / AGrid.Columns.Count;
       for i := 0 to AGrid.Columns.Count - 1 do
           AGrid.Columns[i].Width := AGrid.Columns[i].Width - Round(F);
    end
    else
    begin
       F := (G - T) / AGrid.Columns.Count;
       for i := 0 to AGrid.Columns.Count - 1 do
           AGrid.Columns[i].Width := AGrid.Columns[i].Width + Round(F);
    end;

end;

procedure carrega_propriedades_tela(nome_da_tela: string; tela: TForm);
begin
    if tela.Tag <> 1 then
    begin
         if not dm.CDSTela.Active then
             Exit;
         if dm.CDSTela.Locate('TELUSUARIO;TELTELA', VarArrayOf([lUsuario, nome_da_tela]), [loPartialKey,loCaseInsensitive]) then
         begin
              tela.Width := dm.CDSTelaTELLARGURA.asinteger;
              tela.Height := dm.CDSTelaTELALTURA.asinteger;
         end;
    end;
end;

procedure limpa_edits(Form: TForm);
var
     i: integer;
     botao: TtoolButton;
     ds: tdatasource;
     pesquisa: Variant;
begin
     {for i := 0 to Form.ComponentCount - 1 do
     begin
          if (Form.Components[i] is TWSEdit) then
               TWSedit(Form.Components[i]).clear;
          if (Form.Components[i] is TEdit) then
               Tedit(Form.Components[i]).clear;
//          if (Form.Components[i] is TMaskEdit) then
//               TMaskEdit(Form.Components[i]).text := '01/01/1999';
//          if (Form.Components[i] is TWSMaskEdit) then
//               TWSMaskEdit(Form.Components[i]).text := '01/01/1999';
     end;
     ds := form.FindComponent('DataSource') as TDataSource;

     if ds <> nil then
     begin
          pesquisa := ds.DataSet.Fields[0].value;
          botao := form.FindComponent('BtnFiltro') as TtoolButton;
          if botao <> nil then
               botao.click;
          ds.DataSet.Locate(ds.DataSet.Fields[0].FieldName, pesquisa, [loPartialKey, loCaseInsensitive]);
     end;}
end;

procedure setCaption(form: tform);
Const
     Educacional : array [0..10] of string = ('Aluno','Professores','Professor','Professores','Cursos','Curso','Disciplina','Faculdade', 'Mensalidades', 'Mensalidade', 'Bolsa');
     Empresarial : array [0..10] of string = ('Cliente','Profissionais','Profissional','Profissionais','Centro Neg.','Centro Neg.','Atividade','Empresa', 'Contas a Receber','Contas a Receber', 'Outros Desc.');
Var
     Cont, Cont1 : integer;

     function Mudar(Texto: AnsiString): AnsiString;
     var
          i : Integer;
     begin
          Result := Texto;
          if trim(Texto) <> '' then
               for i := 0 to Length(Educacional)-1 do
                    Result := BuscaTroca(Result,Educacional[i],Empresarial[i]);
     end;

begin
     Form.Caption := DM.CDSParamEmpEMpNome.AsString + ' - ' + Valor_Parametro(20); //Reinandus

     if (Form.Tag = 0) and (valor_Parametro(19) = 'S') then
     begin
         if Form.Name <> 'FMenu' then
             ResizeForm(Form);
         carrega_propriedades_tela(Form.Name, Form);
         Form.Tag := 1;
     end;

     if TipoSistema = 'EMPRESARIAL' then
          for Cont := 0 to Form.ComponentCount-1 do
          begin
               if (Form.Components[Cont].ClassType = TLabel) then
                    (Form.Components[Cont] as TLabel).Caption := Mudar((Form.Components[Cont] as TLabel).Caption)
               else if (Form.Components[Cont].ClassType = TButton) then
                    (Form.Components[Cont] as TButton).Caption := Mudar((Form.Components[Cont] as TButton).Caption)
               else if (Form.Components[Cont].ClassType = TRLLabel) then
                    (Form.Components[Cont] as TRLLabel).Caption := Mudar((Form.Components[Cont] as TRLLabel).Caption)
               else if (Form.Components[Cont].ClassType = TGroupBox) then
                    (Form.Components[Cont] as TGroupBox).Caption := Mudar((Form.Components[Cont] as TGroupBox).Caption)
               else if (Form.Components[Cont].ClassType = TCheckBox) then
                    (Form.Components[Cont] as TCheckBox).Caption := Mudar((Form.Components[Cont] as TCheckBox).Caption)
               else if (Form.Components[Cont].ClassType = TRadioButton) then
                    (Form.Components[Cont] as TRadioButton).Caption := Mudar((Form.Components[Cont] as TRadioButton).Caption)
               else if (Form.Components[Cont].ClassType = TImage) then
                    (Form.Components[Cont] as TImage).Hint := Mudar((Form.Components[Cont] as TImage).Hint)
               else if (Form.Components[Cont].ClassType = TTabSheet) then
                    (Form.Components[Cont] as TTabSheet).Caption := Mudar((Form.Components[Cont] as TTabSheet).Caption)
               else if (Form.Components[Cont].ClassType = TMenuItem) then
                    (Form.Components[Cont] as TMenuItem).Caption := Mudar((Form.Components[Cont] as TMenuItem).Caption)
               else if (Form.Components[Cont].ClassType = TDBGrid) then
               begin
                    For Cont1 := 0 to (Form.Components[Cont] as TDBGrid).Columns.Count-1 do
                         (Form.Components[Cont] as TDBGrid).Columns[Cont1].Title.Caption := Mudar((Form.Components[Cont] as TDBGrid).Columns[Cont1].Title.Caption);
               end
               else if (Form.Components[Cont].ClassType = TRadioGroup) then
               begin
                    For Cont1 := 0 to (Form.Components[Cont] as TRadioGroup).Items.Count-1 do
                         (Form.Components[Cont] as TRadioGroup).Items[Cont1] := Mudar((Form.Components[Cont] as TRadioGroup).Items[Cont1]);
               end;
          end;
end;

procedure fechar_tabelas;
var i: integer;
begin
     for i := 0 to DM.ComponentCount - 1 do
     begin
          if (DM.Components[i] is TClientDataSet) then
               TClientDataSet(DM.Components[i]).Close;
     end;
     for i := 0 to DM.ComponentCount - 1 do
     begin
          if (DM.Components[i] is TSQLQuery) then
               TSQLQuery(DM.Components[i]).Close;
     end;
     dm.SQLConnection.Connected := false;

     {for i := 0 to DM.ComponentCount -1 do
     begin
          if (DM.Components[i] is TClientDataSet) then
               TTable (DM.Components[i]).open;
     end;}
end;

procedure salva_dbgrid(nome_da_tela: string; tela: TForm);
var
     grids, i: integer;
begin
     for grids := 0 to tela.ComponentCount - 1 do
     begin
          if (tela.Components[grids] is TDBGrid) then
          begin
               i := 0;
               while i <> TDBGRid(tela.Components[grids]).Columns.Count do
               begin
                    dm.CDSDbGrid.Filtered := False;
                    dm.CDSDbGrid.Filter :=
                        ' GRIDUSUARIO = ' + QuotedStr(lUsuario) +
                        ' AND GRIDTELA = ' + QuotedStr(nome_da_tela) +
                        ' AND GRIDNOME = ' + QuotedStr(TDBGRid(tela.Components[grids]).name) +
                        ' AND GRIDPOSICAO = ' + IntToStr(i+1);
                    dm.CDSDbGrid.Filtered := True;
                    Application.ProcessMessages;
                    if dm.CDSDbGrid.RecordCount > 0 then
                        dm.CDSDbGrid.Edit
                    else
                    begin
                        dm.CDSDbGrid.Append;
                        dm.CDSDbGridGRIDUSUARIO.ASString := lUsuario;
                        dm.CDSDbGridGRIDTELA.AsString := nome_da_tela;
                        dm.CDSDbGridGRIDNOME.AsString := TDBGRid(tela.Components[grids]).name;
                        dm.CDSDbGridGRIDPOSICAO.AsInteger := i+1;
                    end;
                    if TDBGRid(tela.Components[grids]).Columns[i].Alignment = Classes.taRightJustify then
                         dm.CDSDbGridGRIDALINHAMENTO.AsString :=  'Direita';
                    if TDBGRid(tela.Components[grids]).Columns[i].Alignment = Classes.taLeftJustify then
                         dm.CDSDbGridGRIDALINHAMENTO.AsString := 'Esquerda';
                    if TDBGRid(tela.Components[grids]).Columns[i].Alignment = Classes.tacenter then
                         dm.CDSDbGridGRIDALINHAMENTO.AsString := 'Centro';
                    dm.CDSDbGridGRIDCAMPO.ASString := TDBGRid(tela.Components[grids]).Columns[i].FieldName;
                    dm.CDSDbGridGRIDTITULO.ASString := TDBGRid(tela.Components[grids]).Columns[i].Title.Caption;
                    dm.CDSDbGridGRIDTAMANHO.AsInteger := TDBGRid(tela.Components[grids]).Columns[i].Width;
                    if TDBGRid(tela.Components[grids]).Columns[i].visible then
                         dm.CDSDbGridGRIDVISIVEL.AsString := 'Sim'
                    else
                         dm.CDSDbGridGRIDVISIVEL.AsString := 'Não';
                    dm.CDSDbGrid.post;
                    inc(i);
               end;
          end;
     end;
     dm.CDSDbGrid.ApplyUpdates(0);
end;

procedure salva_propriedades_tela(nome_da_tela: string; tela: Tform);
begin
     if not dm.CDSTela.Active then
         Exit;
     if dm.CDSTela.Locate('TELUSUARIO;TELTELA', VarArrayOf([lUsuario, nome_da_tela]), [loPartialKey,loCaseInsensitive]) then
         dm.CDSTela.Edit
     else
     begin
         dm.CDSTela.Append;
         dm.CDSTelaTELUSUARIO.AsString := lUsuario;
         dm.CDSTelaTELTELA.AsString := nome_da_tela;
     end;
     dm.CDSTelaTELALTURA.AsInteger := tela.Height;
     dm.CDSTelaTELLARGURA.AsInteger := tela.Width;
     dm.CDSTela.Post;
     dm.CDSTela.ApplyUpdates(0);
end;

procedure novo_padrao(DataSource: TDataSource; Tabela: string);
var i: integer;
     valor: integer;
begin
     valor := 0;
     dm.cdsnovo.close;
     dm.cdsnovo.fielddefs.clear;
     i := 0;
     while i <> DataSource.dataset.FieldCount do
     begin
          if datasource.DataSet.Fields[i].FieldKind = fkdata then
               if (datasource.DataSet.Fields[i].ProviderFlags = [pfInUpdate, pfInWhere]) or (datasource.DataSet.Fields[i].ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]) then
                    dm.cdsnovo.FieldDefs.Add(DataSource.dataset.Fields[i].FieldName, DataSource.dataset.Fields[i].DataType, DataSource.dataset.Fields[i].Size, false);
          inc(i);
     end;
     dm.cdsnovo.createdataset;
     dm.cdsnovo.open;

     dm.cdsnovo.append;
     i := 0;
     while i <> DataSource.dataset.FieldCount do
     begin
          if datasource.DataSet.Fields[i].FieldKind = fkdata then
               if (datasource.DataSet.Fields[i].ProviderFlags = [pfInUpdate, pfInWhere]) or (datasource.DataSet.Fields[i].ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]) then
                    dm.CDSNovo.FieldByName(DataSource.dataset.Fields[i].FieldName).value := DataSource.dataset.FieldByName(DataSource.dataset.Fields[i].FieldName).value;
          inc(i);
     end;
     dm.cdsnovo.post;

     DataSource.dataset.append;
     if DataSource.dataset.Fields[0].DataType = ftInteger then
          valor := DataSource.dataset.Fields[0].AsInteger;
     i := 0;
     while i <> dm.cdsnovo.FieldCount do
     begin
          //try
               DataSource.dataset.FieldByName(dm.cdsnovo.Fields[i].FieldName).value := dm.cdsnovo.FieldByName(dm.cdsnovo.Fields[i].FieldName).value;
          //except
          //end;
          inc(i);
     end;

     dm.qchave.close;
     dm.qchave.Fields.Clear;
     dm.qchave.ParamByName('TABELA').AsString := UpperCase(Tabela);
     dm.qchave.open;
     dm.qchave.first;
     while not dm.qchave.eof do
     begin
          DataSource.dataset.FieldByName(trim(dm.qchave.Fields[0].AsString)).clear;
          dm.qchave.next;
     end;

     if DataSource.dataset.Fields[0].DataType = ftInteger then
          DataSource.dataset.Fields[0].AsInteger := valor;

     dm.cdsnovo.close;
end;

procedure Editar(Form: TForm; chaves: boolean);
var i: Integer;
     comp: tobject;
begin
     if (UpperCase(form.Name) = 'FNOTAENT') or (UpperCase(form.Name) = 'FNOTAFISC') then
     begin
          comp := form.FindComponent('PageControlCad');
          if comp <> nil then
               (comp as TPageControl).ActivePageIndex := 0;
     end;
     comp := form.FindComponent('TabConsulta');
     if comp <> nil then
          (comp as TTabSheet).enabled := false;
     comp := form.FindComponent('TabCadastro');
     if comp <> nil then
          (comp as TTabSheet).enabled := true;
     comp := form.FindComponent('PanPesquisa');
     if comp <> nil then
          (comp as TPanel).enabled := false;

     for i := 0 to Form.ComponentCount - 1 do
     begin
          {if (Form.Components[i] is TDBEdit) then
             TDBedit(Form.Components[i]).enabled := True;

          if (Form.Components[i] is TWSDBMemo) then
             TWSDBMemo(Form.Components[i]).enabled := True;}

          if (Form.Components[i] is TWSDBEdit) then
          begin
               if not TWSDBedit(Form.Components[i]).chave then
                    TWSDBedit(Form.Components[i]).enabled := true
               else
                    TWSDBedit(Form.Components[i]).enabled := chaves;

               if chaves then //novo, passa false para os componentes de chaves
               begin
                    if TWSDBedit(Form.Components[i]).FocoNovo then
                    begin
                         if (TWSDBedit(Form.Components[i]).enabled) then
                         begin
                              TWSDBedit(Form.Components[i]).setfocus;
                         end;
                    end;
               end
               else //if not chaves then alteração, passa false para os componentes de chaves
               begin
                    if TWSDBedit(Form.Components[i]).FocoAlterar then
                    begin
                         if (TWSDBedit(Form.Components[i]).enabled) then
                         begin
                              TWSDBedit(Form.Components[i]).setfocus;
                         end;
                    end;
               end;
          end;

          if (Form.Components[i] is TDBImage) then
               TDBImage(Form.Components[i]).enabled := true;
          {if (Form.Components[i] is TDBlookupComboBox) then
             TDBlookupComboBox(Form.Components[i]).enabled := True;

          if (Form.Components[i] is TDBCheckBox) then
             TDBCheckBox(Form.Components[i]).enabled := True;

          if (Form.Components[i] is TEdit) then
              TEdit(Form.Components[i]).enabled := false;}

          if (Form.Components[i] is TWSEdit) then
               if comp <> nil then
               begin
                    if TWSEdit(Form.Components[i]).parent = comp then
                         TWSEdit(Form.Components[i]).enabled := false
                    else
                         TWSEdit(Form.Components[i]).enabled := true;
               end
               else
                    TWSEdit(Form.Components[i]).enabled := true;

          {if (Form.Components[i] is TSpeedButton) then
             TSpeedButton(Form.Components[i]).enabled := True;}

          if (Form.Components[i] is TToolButton) then
          begin
               if TToolButton(Form.Components[i]).Name = 'btnexportar' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'btnimportar' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'btnsalvaritem' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'btnexcluiritem' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'btnnovopadrao' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'btnhtml' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'btnexcel' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'btngrid' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'btndesconectar' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnPrimeiro' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnAnterior' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnProximo' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnUltimo' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnIncluir' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnAlterar' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnExcluir' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if uppercase(TToolButton(Form.Components[i]).Name) = 'BTNSAIR' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnImprimir' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnFiltro' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnSalvar' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnCancelar' then
                    TToolButton(Form.Components[i]).Enabled := true;
          end;
     end;
end;

procedure navegar(Form: TForm);
var I: Integer;
     comp: tobject;
begin
     setCaption(Form);
     comp := form.FindComponent('PanPesquisa');
     if comp <> nil then
          (comp as TPanel).enabled := true;
     for i := 0 to Form.ComponentCount - 1 do
     begin
          if (Form.Components[i] is TDBImage) then
               TDBImage(Form.Components[i]).enabled := false;
          {if (Form.Components[i] is TDBEdit) then
             TDBedit(Form.Components[i]).enabled := false;

          if (Form.Components[i] is TWSDBMemo) then
             TWSDBMemo(Form.Components[i]).enabled := false;

          if (Form.Components[i] is TWSDBEdit) then
             TWSDBedit(Form.Components[i]).enabled := false;

          if (Form.Components[i] is TDBlookupComboBox) then
             TDBlookupComboBox(Form.Components[i]).enabled := false;

          if (Form.Components[i] is TDBCheckBox) then
             TDBCheckBox(Form.Components[i]).enabled := false;

          if (Form.Components[i] is TEdit) then
             TEdit(Form.Components[i]).enabled := true;}

          if (Form.Components[i] is TWSEdit) then
          begin
               if comp <> nil then
               begin
                    if TWSEdit(Form.Components[i]).parent = comp then
                    begin
                         TWSEdit(Form.Components[i]).enabled := true;
                         if LowerCase(copy(TWSEdit(Form.Components[i]).name, 1, 7)) = 'txtnome' then
                              TWSEdit(Form.Components[i]).enabled := false;
                    end;
               end
               else
                    TWSEdit(Form.Components[i]).enabled := false;

          end;

          {if (Form.Components[i] is TCheckBox) then
             TCheckBox(Form.Components[i]).enabled := false;

          if (Form.Components[i] is TSpeedButton) then
             TSpeedButton(Form.Components[i]).enabled := false;}

          if (Form.Components[i] is TToolButton) then
          begin
               if TToolButton(Form.Components[i]).Name = 'btnexportar' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'btnimportar' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'btnsalvaritem' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'btnexcluiritem' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'btnnovopadrao' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'btnhtml' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'btnexcel' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'btngrid' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'btndesconectar' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnPrimeiro' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnAnterior' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnProximo' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnUltimo' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnIncluir' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnAlterar' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnExcluir' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if uppercase(TToolButton(Form.Components[i]).Name) = 'BTNSAIR' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnImprimir' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnFiltro' then
                    TToolButton(Form.Components[i]).Enabled := true;
               if TToolButton(Form.Components[i]).Name = 'BtnSalvar' then
                    TToolButton(Form.Components[i]).Enabled := false;
               if TToolButton(Form.Components[i]).Name = 'BtnCancelar' then
                    TToolButton(Form.Components[i]).Enabled := false;
          end;
     end;
     comp := form.FindComponent('txtpesquisa');
     if comp <> nil then
     begin
          with comp as twsedit do
          begin
               SetFocus;
          end;
     end;
     comp := form.FindComponent('TabConsulta');
     if comp <> nil then
          (comp as TTabSheet).enabled := true;
     comp := form.FindComponent('TabCadastro');
     if comp <> nil then
          (comp as TTabSheet).enabled := false;
end;

procedure importar(Tab: string; DS: TDataSource);
begin
     dm.cdstemp.close;
     dm.opendialog.Title := 'Abrir Tabela ' + tab;
     if dm.opendialog.execute then
     begin
          if ds.dataset.active = false then
               ds.dataset.active := true;

          dm.cdstemp.LoadFromFile(dm.opendialog.filename);
          dm.cdstemp.open;
          dm.cdstemp.first;
          while not dm.cdstemp.eof do
          begin
               dm.QExec.SQL.text := dm.CDSTemp.Fields[0].asstring;
               dm.cdsexec.active := true;
               if dm.cdsExec.recordcount = 0
                    then dm.QExec.SQL.text := dm.CDSTemp.Fields[1].asstring
               else dm.QExec.SQL.text := dm.CDSTemp.Fields[2].asstring;
               dm.QExec.execsql;
               dm.CDSExec.close;
               dm.QExec.close;
               dm.cdstemp.next;
          end;
          dm.cdstemp.close;

          ds.dataset.active := false;
          ds.dataset.active := true;

          showmessage('Importação Concluída com Sucesso!');
     end;
end;

procedure exportar(Tab: array of string; CDS: array of TClientDataSet);

     procedure salva_cds(QualCDS: byte; Tab: string; CDS: TClientDataSet);
     var
          i: byte;
          temp, SQLexiste, SQLinsert, SQLupdate, TEMPinsert, TEMPUpdate: string;
     begin
          dm.CDSchave.close;
          dm.qchave.Fields.Clear;
          dm.qchave.ParamByName('TABELA').AsString := Tab;
          dm.CDSchave.open;
          TEMPUpdate := '';
          SQLexiste := 'SELECT ';
          dm.CDSchave.first;
          while not dm.CDSchave.eof do
          begin
               if dm.CDSchave.Bof then
                    SQLexiste := SQLexiste + trim(dm.CDSChaveCAMPO.asstring)
               else
                    SQLexiste := SQLexiste + ', ' + trim(dm.CDSChaveCAMPO.asstring);
               dm.CDSchave.next;
          end;
          SQLexiste := SQLexiste + ' FROM ' + Tab;
          dm.CDSChave.first;
          while not dm.CDSchave.eof do
          begin
               temp := '';
               if dm.CDSchave.Bof then
                    temp := temp + ' WHERE ' + trim(dm.CDSChaveCAMPO.asstring)
               else
                    temp := temp + ' AND ' + trim(dm.CDSChaveCAMPO.asstring);

               temp := temp + ' = ';
               if CDS.Fieldbyname(trim(dm.CDSChaveCAMPO.asstring)).DataType = ftstring then
                    temp := temp + quotedstr(CDS.Fieldbyname(trim(dm.CDSChaveCAMPO.asstring)).AsString)
               else if CDS.Fieldbyname(trim(dm.CDSChaveCAMPO.asstring)).DataType = ftinteger then
                    temp := temp + CDS.Fieldbyname(trim(dm.CDSChaveCAMPO.asstring)).AsString
               else if CDS.Fieldbyname(trim(dm.CDSChaveCAMPO.asstring)).DataType = ftfloat then
                    temp := temp + StringReplace(CDS.Fieldbyname(trim(dm.CDSChaveCAMPO.asstring)).Asstring, '.', ',', [rfReplaceAll])
               else if CDS.Fieldbyname(trim(dm.CDSChaveCAMPO.asstring)).DataType = ftdate then
                    temp := temp + quotedstr(StringReplace(CDS.Fieldbyname(trim(dm.CDSChaveCAMPO.asstring)).Asstring, '/', '.', [rfReplaceAll]))
               else
                    raise exception.Create('Tipo de campo inválido! ' + dm.CDSChaveCAMPO.asstring);

               sqlexiste := sqlexiste + temp;
               TEMPUpdate := TEMPUpdate + temp;
               dm.CDSchave.next;
          end;

          SQLinsert := 'INSERT INTO ' + Tab + ' ( ';
          tempinsert := '';
          for i := 0 to CDS.FieldCount - 1 do
          begin
               if CDS.Fields[i].FieldKind = fklookup then
                    continue;
               if CDS.Fields[i].ProviderFlags = [] then
                    continue;
               if CDS.Fields[i].DataType = ftDataSet then
                    continue;

               if i = 0 then
               begin
                    if CDS.Fields[0].DataType = ftstring then
                    begin
                         SQLinsert := SQLinsert + CDS.Fields[0].FieldName;
                         tempinsert := tempinsert + quotedstr(CDS.Fields[0].AsString);
                    end;
                    if CDS.Fields[0].DataType = ftinteger then
                    begin
                         if trim(CDS.Fields[0].AsString) <> '' then
                         begin
                              SQLinsert := SQLinsert + CDS.Fields[0].FieldName;
                              tempinsert := tempinsert + CDS.Fields[0].AsString;
                         end;
                    end;
                    if CDS.Fields[0].DataType = ftfloat then
                    begin
                         SQLinsert := SQLinsert + CDS.Fields[0].FieldName;
                         tempinsert := tempinsert + StringReplace(CDS.Fields[0].asstring, ',', '.', [rfReplaceAll]);
                    end;
                    if CDS.Fields[0].DataType = ftdate then
                    begin
                         if trim(CDS.Fields[0].AsString) <> '' then
                         begin
                              SQLinsert := SQLinsert + CDS.Fields[0].FieldName;
                              tempinsert := tempinsert + quotedstr(StringReplace(CDS.Fields[0].asstring, '/', '.', [rfReplaceAll]));
                         end;
                    end;
               end
               else
               begin
                    if CDS.Fields[i].DataType = ftstring then
                    begin
                         SQLinsert := SQLinsert + ', ' + CDS.Fields[i].FieldName;
                         tempinsert := tempinsert + ', ' + quotedstr(CDS.Fields[i].AsString);
                    end;
                    if CDS.Fields[i].DataType = ftinteger then
                    begin
                         if trim(CDS.Fields[i].AsString) <> '' then
                         begin
                              SQLinsert := SQLinsert + ', ' + CDS.Fields[i].FieldName;
                              tempinsert := tempinsert + ', ' + CDS.Fields[i].AsString;
                         end;
                    end;
                    if CDS.Fields[i].DataType = ftfloat then
                    begin
                         SQLinsert := SQLinsert + ', ' + CDS.Fields[i].FieldName;
                         tempinsert := tempinsert + ', ' + StringReplace(CDS.Fields[i].asstring, ',', '.', [rfReplaceAll]);
                    end;
                    if CDS.Fields[i].DataType = ftdate then
                    begin
                         if trim(CDS.Fields[i].AsString) <> '' then
                         begin
                              SQLinsert := SQLinsert + ', ' + CDS.Fields[i].FieldName;
                              tempinsert := tempinsert + ', ' + quotedstr(StringReplace(CDS.Fields[i].asstring, '/', '.', [rfReplaceAll]));
                         end;
                    end;
               end;
          end;
          SQLinsert := SQLinsert + ') VALUES (' + tempinsert + ');';

          SQLupdate := 'UPDATE ' + Tab + ' SET ';
          for i := 0 to CDS.FieldCount - 1 do
          begin
               if CDS.Fields[i].FieldKind = fklookup then
                    continue;
               if CDS.Fields[i].ProviderFlags = [] then
                    continue;
               if CDS.Fields[i].DataType = ftDataSet then
                    continue;

               if i = 0 then
               begin
                    if CDS.Fields[0].DataType = ftstring then
                    begin
                         SQLupdate := SQLupdate + CDS.Fields[0].FieldName + ' = ' +
                              quotedstr(CDS.Fields[0].AsString);
                    end;
                    if CDS.Fields[0].DataType = ftinteger then
                    begin
                         if trim(CDS.Fields[0].AsString) <> '' then
                              SQLupdate := SQLupdate + CDS.Fields[0].FieldName + ' = ' +
                                   CDS.Fields[0].AsString;
                    end;
                    if CDS.Fields[0].DataType = ftfloat then
                    begin
                         SQLupdate := SQLupdate + CDS.Fields[0].FieldName + ' = ' +
                              StringReplace(CDS.Fields[0].asstring, ',', '.', [rfReplaceAll]);
                    end;
                    if CDS.Fields[0].DataType = ftdate then
                    begin
                         if trim(CDS.Fields[0].AsString) <> '' then
                              SQLupdate := SQLupdate + CDS.Fields[0].FieldName + ' = ' +
                                   quotedstr(StringReplace(CDS.Fields[0].asstring, '/', '.', [rfReplaceAll]));
                    end;
               end
               else
               begin
                    if CDS.Fields[i].DataType = ftstring then
                    begin
                         SQLupdate := SQLupdate + ', ' + CDS.Fields[i].FieldName + ' = ' +
                              quotedstr(CDS.Fields[i].AsString);
                    end;
                    if CDS.Fields[i].DataType = ftinteger then
                    begin
                         if trim(CDS.Fields[i].AsString) <> '' then
                              SQLupdate := SQLupdate + ', ' + CDS.Fields[i].FieldName + ' = ' +
                                   CDS.Fields[i].AsString;
                    end;
                    if CDS.Fields[i].DataType = ftfloat then
                    begin
                         SQLupdate := SQLupdate + ', ' + CDS.Fields[i].FieldName + ' = ' +
                              StringReplace(CDS.Fields[i].asstring, ',', '.', [rfReplaceAll]);
                    end;
                    if CDS.Fields[i].DataType = ftdate then
                    begin
                         if trim(CDS.Fields[i].AsString) <> '' then
                              SQLupdate := SQLupdate + ', ' + CDS.Fields[i].FieldName + ' = ' +
                                   quotedstr(StringReplace(CDS.Fields[i].asstring, '/', '.', [rfReplaceAll]));
                    end;
               end;
          end;
          SQLupdate := SQLupdate + TEMPUpdate;

          if QualCDS = 1 then
          begin
               DM.CDSNovo1.append;
               Dm.CDSNovo1.fieldbyname('SQLExiste').asstring := SQLexiste;
               Dm.CDSNovo1.fieldbyname('SQLInsert').asstring := SQLinsert;
               Dm.CDSNovo1.fieldbyname('SQLupdate').asstring := SQLupdate;
               DM.CDSNovo1.post;
          end;
          if QualCDS = 2 then
          begin
               DM.CDSNovo2.append;
               Dm.CDSNovo2.fieldbyname('SQLExiste').asstring := SQLexiste;
               Dm.CDSNovo2.fieldbyname('SQLInsert').asstring := SQLinsert;
               Dm.CDSNovo2.fieldbyname('SQLupdate').asstring := SQLupdate;
               DM.CDSNovo2.post;
          end;
          if QualCDS = 3 then
          begin
               DM.CDSNovo3.append;
               Dm.CDSNovo3.fieldbyname('SQLExiste').asstring := SQLexiste;
               Dm.CDSNovo3.fieldbyname('SQLInsert').asstring := SQLinsert;
               Dm.CDSNovo3.fieldbyname('SQLupdate').asstring := SQLupdate;
               DM.CDSNovo3.post;
          end;
          if QualCDS = 4 then
          begin
               DM.CDSNovo4.append;
               Dm.CDSNovo4.fieldbyname('SQLExiste').asstring := SQLexiste;
               Dm.CDSNovo4.fieldbyname('SQLInsert').asstring := SQLinsert;
               Dm.CDSNovo4.fieldbyname('SQLupdate').asstring := SQLupdate;
               DM.CDSNovo4.post;
          end;
          if QualCDS = 5 then
          begin
               DM.CDSNovo5.append;
               Dm.CDSNovo5.fieldbyname('SQLExiste').asstring := SQLexiste;
               Dm.CDSNovo5.fieldbyname('SQLInsert').asstring := SQLinsert;
               Dm.CDSNovo5.fieldbyname('SQLupdate').asstring := SQLupdate;
               DM.CDSNovo5.post;
          end;
     end;

begin
     if CDS[0].active then
     begin
          if High(Tab) >= 0 then
          begin
               DM.CDSNovo1.close;
               DM.CDSNovo1.fielddefs.clear;
               dm.CDSNovo1.FieldDefs.Add('SQLExiste', ftMemo, 0, false);
               dm.CDSNovo1.FieldDefs.Add('SQLInsert', ftMemo, 0, false);
               dm.CDSNovo1.FieldDefs.Add('SQLUpdate', ftMemo, 0, false);
               DM.CDSNovo1.createdataset;
               DM.CDSNovo1.open;
               DM.CDSNovo1.LogChanges := False;
          end;
          if High(Tab) >= 1 then
          begin
               DM.CDSNovo2.close;
               DM.CDSNovo2.fielddefs.clear;
               dm.CDSNovo2.FieldDefs.Add('SQLExiste', ftMemo, 0, false);
               dm.CDSNovo2.FieldDefs.Add('SQLInsert', ftMemo, 0, false);
               dm.CDSNovo2.FieldDefs.Add('SQLUpdate', ftMemo, 0, false);
               DM.CDSNovo2.createdataset;
               DM.CDSNovo2.open;
               DM.CDSNovo2.LogChanges := False;
          end;
          if High(Tab) >= 2 then
          begin
               DM.CDSNovo3.close;
               DM.CDSNovo3.fielddefs.clear;
               dm.CDSNovo3.FieldDefs.Add('SQLExiste', ftMemo, 0, false);
               dm.CDSNovo3.FieldDefs.Add('SQLInsert', ftMemo, 0, false);
               dm.CDSNovo3.FieldDefs.Add('SQLUpdate', ftMemo, 0, false);
               DM.CDSNovo3.createdataset;
               DM.CDSNovo3.open;
               DM.CDSNovo3.LogChanges := False;
          end;
          if High(Tab) >= 3 then
          begin
               DM.CDSNovo4.close;
               DM.CDSNovo4.fielddefs.clear;
               dm.CDSNovo4.FieldDefs.Add('SQLExiste', ftMemo, 0, false);
               dm.CDSNovo4.FieldDefs.Add('SQLInsert', ftMemo, 0, false);
               dm.CDSNovo4.FieldDefs.Add('SQLUpdate', ftMemo, 0, false);
               DM.CDSNovo4.createdataset;
               DM.CDSNovo4.open;
               DM.CDSNovo4.LogChanges := False;
          end;
          if High(Tab) >= 4 then
          begin
               DM.CDSNovo5.close;
               DM.CDSNovo5.fielddefs.clear;
               dm.CDSNovo5.FieldDefs.Add('SQLExiste', ftMemo, 0, false);
               dm.CDSNovo5.FieldDefs.Add('SQLInsert', ftMemo, 0, false);
               dm.CDSNovo5.FieldDefs.Add('SQLUpdate', ftMemo, 0, false);
               DM.CDSNovo5.createdataset;
               DM.CDSNovo5.open;
               DM.CDSNovo5.LogChanges := False;
          end;

          CDS[0].first;
          while not CDS[0].eof do
          begin
               if High(Tab) >= 0 then
                    salva_cds(1, Tab[0], CDS[0]);
               if High(Tab) >= 1 then
                    salva_cds(2, Tab[1], CDS[1]);
               if High(Tab) >= 2 then
                    salva_cds(3, Tab[2], CDS[2]);
               if High(Tab) >= 3 then
                    salva_cds(4, Tab[3], CDS[3]);
               if High(Tab) >= 4 then
                    salva_cds(5, Tab[4], CDS[4]);

               CDS[0].next;
          end;

          if High(Tab) >= 0 then
          begin
               dm.savedialog.Title := 'Salvar Tabela ' + Tab[0];
               if dm.savedialog.execute then
               begin
                    DM.CDSNovo1.SaveToFile(dm.savedialog.filename, dfXMLUTF8);
                    showmessage('Exportação Concluída com Sucesso! (' + dm.savedialog.filename + ')');
               end;
          end;
          if High(Tab) >= 1 then
          begin
               dm.savedialog.Title := 'Salvar Tabela ' + Tab[1];
               if dm.savedialog.execute then
               begin
                    DM.CDSNovo2.SaveToFile(dm.savedialog.filename, dfXMLUTF8);
                    showmessage('Exportação Concluída com Sucesso! (' + dm.savedialog.filename + ')');
               end;
          end;
          if High(Tab) >= 2 then
          begin
               dm.savedialog.Title := 'Salvar Tabela ' + Tab[2];
               if dm.savedialog.execute then
               begin
                    DM.CDSNovo3.SaveToFile(dm.savedialog.filename, dfXMLUTF8);
                    showmessage('Exportação Concluída com Sucesso! (' + dm.savedialog.filename + ')');
               end;
          end;
          if High(Tab) >= 3 then
          begin
               dm.savedialog.Title := 'Salvar Tabela ' + Tab[3];
               if dm.savedialog.execute then
               begin
                    DM.CDSNovo4.SaveToFile(dm.savedialog.filename, dfXMLUTF8);
                    showmessage('Exportação Concluída com Sucesso! (' + dm.savedialog.filename + ')');
               end;
          end;
          if High(Tab) >= 4 then
          begin
               dm.savedialog.Title := 'Salvar Tabela ' + Tab[4];
               if dm.savedialog.execute then
               begin
                    DM.CDSNovo5.SaveToFile(dm.savedialog.filename, dfXMLUTF8);
                    showmessage('Exportação Concluída com Sucesso! (' + dm.savedialog.filename + ')');
               end;
          end;
     end;
end;

procedure html(titulo: string; dbgrid: TDBGrid; DataSource: TDataSource);
var arq: TextFile;
     i: integer;
begin
     if dm.SaveDialogHTML.execute then
     begin
          AssignFile(Arq, dm.savedialoghtml.FileName);
          Rewrite(Arq);
          Writeln(Arq, '<html>');
          Writeln(Arq, '<head>');
          Writeln(Arq, '<title>Relatório</title>');
          Writeln(Arq, '</head>');
          Writeln(Arq, '<body>');
          Writeln(Arq, '<p align="center"><font face="Courier New" size="5"><b>' + titulo + '</b></font></p>');
          Writeln(Arq, '<table border="1" >');
          Writeln(Arq, '<tr>');
          i := 0;
          while i <> dbgrid.Columns.Count do
          begin
               Writeln(Arq, '<td width="' + inttostr(dbgrid.columns[i].width) + '" bgcolor="#EFEFEF"><b><font face="Courier New" size="2">' + dbgrid.columns[i].title.caption + '</font></b></td>');
               inc(i);
          end;
          Writeln(Arq, '</tr>');

          DataSource.DataSet.First;
          while not DataSource.DataSet.eof do
          begin
               Writeln(Arq, '<tr>');
               i := 0;
               while i <> dbgrid.Columns.Count do
               begin
                    Writeln(Arq, '<td width="' + inttostr(dbgrid.columns[i].width) + '"><font face="Courier New" size="2">' + DataSource.DataSet.fieldbyname(dbgrid.columns[i].fieldname).displaytext + '</font></td>');
                    inc(i);
               end;
               Writeln(Arq, '</tr>');
               DataSource.DataSet.next;
          end;
          Writeln(Arq, '</table>');
          Writeln(Arq, '<br>');
          Writeln(Arq, '<font face="Courier New" size="2">');
          Writeln(Arq, 'Data....: ' + formatdatetime('dd, "de" mmmm "de" yyyy', date) + '<br>');
          Writeln(Arq, 'Usuario.: ' + lusuario + '<br>');
          Writeln(Arq, '</font>');
          Writeln(Arq, '</body>');
          Writeln(Arq, '</html>');
          CloseFile(Arq);
          {if application.messagebox ('Deseja enviar o arquivo por e-mail?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
          begin
               try
                   femail := tfemail.create(self);
                   femail.txtarquivo.text := dm.savedialoghtml.FileName;
                   femail.showmodal;
               finally
                   femail.release;
                   femail:= nil;
                   femail.free;
               end;
          end
          else
          begin
               ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
          end;}
     end;
end;

procedure excel(titulo: string; dbgrid: TDbgrid);
var
     i: integer;
begin
     showmessage('Função desabilitada temporariamente!');
     {if Application.MessageBox('Confirma a geração da planilha?', 'Confirmação', mb_YesNo) = mrYes then
     begin
          DbGrid.DataSource.DataSet.First;
          if DM.SaveXls.Execute then
          begin
               with DM.mxNativeExcel do
               begin
                    NewFile;
                    FileName := DM.SaveXls.filename;
                    ActiveFont := 0;
                    WriteLabel(Row, 1, titulo);
                    WriteLabel(Row, 2, '');
                    WriteLabel(Row, 3, '');
                    Row := 3;
                    for i := 0 to dbgrid.Columns.Count - 1 do
                    begin
                         WriteLabel(Row, i + 1, DBGrid.Columns[i].Title.Caption);
                    end;
                    Row := Row + 1;
                    DbGrid.DataSource.DataSet.first;
                    while not DbGrid.DataSource.DataSet.Eof do
                    begin
                         for i := 0 to dbgrid.Columns.Count - 1 do
                         begin
                              WriteLabel(Row, i + 1, DBGrid.DataSource.DataSet.Fieldbyname(DBGrid.Columns[i].FieldName).DisplayText);
                         end;
                         DbGrid.DataSource.DataSet.Next;
                         Row := Row + 1;
                    end;
                    CloseFile;
                    SaveToFile;
                    Application.MessageBox(pchar('Planilha ' + DM.SaveXls.FileName + ' gerada.'), 'Aviso', mb_Ok);
                    DbGrid.DataSource.DataSet.First;
               end;
          end;
     end;}
end;

procedure usuario(objeto: string; Programa: Integer);
begin
     if dm.cdsusuario.Locate('USULOGIN', lusuario, []) then
     begin
          if dm.CDSItemusuario.Locate('ITEUSUARIO;ITEPROGRAMA', VarArrayOf([lusuario, programa]), []) then
          begin
               if uppercase(objeto) = 'BTNINCLUIR' then
                    if uppercase(dm.CDSItemUsuarioITEINSERCAO.asstring) = 'N' then
                         raise Exception.Create('Acesso negado para o usuário.');
               if uppercase(objeto) = 'BTNNOVOPADRAO' then
                    if uppercase(dm.CDSItemUsuarioITEINSERCAO.asstring) = 'N' then
                         raise Exception.Create('Acesso negado para o usuário.');
               if uppercase(objeto) = 'BTNALTERAR' then
                    if uppercase(dm.CDSItemUsuarioITEALTERACAO.asstring) = 'N' then
                         raise Exception.Create('Acesso negado para o usuário.');
               if uppercase(objeto) = 'BTNEXCLUIR' then
                    if uppercase(dm.CDSItemUsuarioITEEXCLUSAO.asstring) = 'N' then
                         raise Exception.Create('Acesso negado para o usuário.');
               if uppercase(objeto) = 'BTNIMPRIMIR' then
                    if uppercase(dm.CDSItemUsuarioITERELATORIO.asstring) = 'N' then
                         raise Exception.Create('Acesso negado para o usuário.');
               if uppercase(objeto) = 'BTNHTML' then
                    if uppercase(dm.CDSItemUsuarioITERELATORIO.asstring) = 'N' then
                         raise Exception.Create('Acesso negado para o usuário.');
               if uppercase(objeto) = 'BTNEXCEL' then
                    if uppercase(dm.CDSItemUsuarioITERELATORIO.asstring) = 'N' then
                         raise Exception.Create('Acesso negado para o usuário.');
               if uppercase(objeto) = 'BTNEXPORTAR' then
                    if uppercase(dm.CDSItemUsuarioITERELATORIO.asstring) = 'N' then
                         raise Exception.Create('Acesso negado para o usuário.');
               if uppercase(objeto) = 'BTNIMPORTAR' then
                    if uppercase(dm.CDSItemUsuarioITERELATORIO.asstring) = 'N' then
                         raise Exception.Create('Acesso negado para o usuário.');
               if uppercase(objeto) = 'BTNCONSULTAR' then
                    if uppercase(dm.CDSItemUsuarioITEACESSO.asstring) = 'N' then
                         raise Exception.Create('Acesso negado para o usuário.');
          end;
     end;
end;

procedure integridade(campo, tabela, valor: string);
begin
     dm.qexiste.close;
     with dm.qexiste.sql do
     begin
          clear;
          add('Select ' + campo + ' from ' + tabela + ' where ' + campo + ' = ' + quotedstr(valor));
     end;
     dm.qexiste.open;
     if dm.qexiste.recordcount > 0 then
     begin
          raise exception.create('Impossivel excluir, violação de integridade com a tabela ' + tabela);
     end;
     dm.qexiste.close;
end;

procedure execsql(sql: string);
begin
     dm.qexiste.close;
     dm.qexiste.sql.text := sql;
     dm.qexiste.execsql;
     dm.qexiste.close;
end;

procedure Rastreabilidade(acao: string; DataSetProv: TdataSetProvider);
var
     cds: TClientDataSet;
     i: byte;
     campos: string;
begin
     cds := dm.findcomponent('CDS' + copy(DataSetProv.Name, 4, length(DataSetProv.Name))) as tclientdataset;
     campos := executasqlretorno('SELECT MAX(RASCOD) FROM TRASTREABILIDADE');
     if campos = '' then campos := '0';
     campos := inttostr(strtoint(campos) + 1);
     dm.qexiste.close;
     with dm.qexiste.sql do
     begin
          clear;
          add('insert into trastreabilidade (rascod, rasdata, rashora, rasusuario, rasacao, rastabela, raschave) values (');
          add(campos + ', :data, :hora, ' + quotedstr(lusuario) + ',');
          add(quotedstr(acao) + ',');
          add(quotedstr(cds.name) + ',');

          campos := '';
          for i := 0 to cds.fields.count - 1 do
          begin
               campos := campos + cds.fields[i].fieldname + '=' + cds.fields[i].displaytext + ',';
          end;
          add(quotedstr(copy(campos, 1, 100)));
          add(');');
     end;
     dm.qexiste.parambyname('DATA').asdate := date;
     dm.qexiste.parambyname('HORA').astime := now;
     dm.qexiste.execsql;
     dm.qexiste.close;
end;

procedure seta_indicacao(Itemss: TStrings);
begin
     with itemss do
     begin
          clear;
          add('Amigo(a)');
          add('Propaganda');
          add('Google');
          add('Email');
     end;
end;

procedure testa_data(data: tdate);
var dataini, datafin, texto: string;
begin
     if data <> strtodate('30/12/1899') then
     begin
          dataini := '01/01/' + formatfloat('0000', yearof(date) - 4);
          datafin := '31/12/' + formatfloat('0000', yearof(date) + 4);

          texto := 'A data informada (' + datetostr(data) + ') ';
          if data < strtodate(dataini) then
               texto := texto + 'é menor que ' + dataini;
          if data > strtodate(datafin) then
               texto := texto + 'é maior que ' + datafin;

          texto := texto + ', essa data é valida? Deseja continuar?';

          if ((data < strtodate(dataini)) or (data > strtodate(datafin))) then
          begin
               if application.messagebox(pchar(texto), 'Atenção', mb_yesno + MB_ICONQUESTION) = mrno then
                    raise exception.Create('Operação Abortada!');
          end;
     end;
end;

procedure BuscaTrocaMemo(RichText: TRichEdit; Busca, Troca: string);
var
     n, i, l: integer;
begin
     i := length(Busca);
     for l := 0 to RichText.Lines.Count - 1 do
          for n := 1 to Length(RichText.Lines.Strings[l]) do
          begin
               if Copy(RichText.Lines.Strings[l], n, i) = Busca then
               begin
                    RichText.lines.Delete(n);
                    RichText.lines.Insert(n, troca);
               end;
          end;
end;

procedure ResizeForm(Sender: TForm; AjustarTamanho: Boolean = True);
const
  iMinFontSize = Integer(7);
var
  i, j: Integer;
  eFatorWidth, eFatorHeight, eZoom: Extended;
  dCompWidth: Double;
begin
  eZoom := 0;
  eZoom := (eZoom / 100);
  //eFatorHeight := (Sender.ClientHeight / ClientHeightDesign) + eZoom;
  //eFatorWidth :=  (Sender.ClientWidth / ClientWidthDesign) + eZoom;
  eFatorHeight := ((Screen.Height - 100) / 600) + eZoom;
  eFatorWidth := ((Screen.Width - 100) / 800) + eZoom;

  if AjustarTamanho then
  begin
    //Sender.Top := 0;
    //Sender.Left := 0;
    //Sender.ClientHeight := Screen.Height;
    //Sender.ClientWidth := Screen.Width;
    //Sender.WindowState := wsMaximized;
//    Sender.Height := Screen.Height - 100; | WILIAN
//    Sender.Width := Screen.Width - 100; | WILIAN
    Sender.Height := Round(Sender.Height * eFatorHeight);
    Sender.Width := Round(Screen.Width * eFatorWidth);
    if Sender.Height > Screen.Height - 100 then
        Sender.Height := Screen.Height - 100;
    if Sender.Width > Screen.Width - 100 then
        Sender.Width := Screen.Width - 100;

//    CenterForm(Sender);
  end;

  for i := 0 to Sender.ComponentCount - 1 do
  begin
    if (Sender.Components[i] is TControl)
    and (not (sender.Components[i] is TToolBar))
    and (not (sender.Components[i] is TToolButton))
    and (pos('RL', sender.Components[i].ClassName) = 0)
    then
    begin
      THackControl(Sender.Components[i]).Height := Round(THackControl(Sender.Components[i]).Height * eFatorHeight);
      THackControl(Sender.Components[i]).Width := Round(THackControl(Sender.Components[i]).Width * eFatorWidth);
      THackControl(Sender.Components[i]).Left := Round(THackControl(Sender.Components[i]).Left * eFatorWidth);
      THackControl(Sender.Components[i]).Top := Round(THackControl(Sender.Components[i]).Top * eFatorHeight);
      THackControl(Sender.Components[i]).Font.Size := Round(THackControl(Sender.Components[i]).Font.Size * eFatorHeight);
      THackControl(Sender.Components[i]).Font.Style := [];
      if THackControl(Sender.Components[i]).Font.Size < iMinFontSize then
        THackControl(Sender.Components[i]).Font.Size := iMinFontSize;
      //THackControl(Sender.Components[i]).Anchors := [akLeft, akTop];
    end;

    if (Sender.Components[i] is TDBGrid) then
    begin
      for j := 0 to TDBGrid(Sender.Components[i]).Columns.Count - 1 do
      begin
        //TDBGrid(Sender.Components[i]).Columns[j].Width := Round(TDBGrid(Sender.Components[i]).Columns[j].Width * eFatorWidth);
        //ajustar as colunas conforme a proporção que cada coluna representa no DBGrid

        dCompWidth := (TDBGrid(Sender.Components[i]).Columns[j].Width / TDBGrid(Sender.Components[i]).Width) * eFatorWidth;
        if dCompWidth > 1 then //indica que a coluna está maior que a largura do DBGrid
        begin
          dCompWidth := TDBGrid(Sender.Components[i]).Width / TDBGrid(Sender.Components[i]).Columns[j].Width;
          dCompWidth := TDBGrid(Sender.Components[i]).Columns[j].Width - (TDBGrid(Sender.Components[i]).Columns[j].Width * dCompWidth);
        end
        else if (dCompWidth > 0) then
          dCompWidth := TDBGrid(Sender.Components[i]).Columns[j].Width + (TDBGrid(Sender.Components[i]).Columns[j].Width * dCompWidth);
        //dCompWidth := TDBGrid(Sender.Components[i]).Columns[j].Width + (TDBGrid(Sender.Components[i]).Columns[j].Width * dCompWidth);
        TDBGrid(Sender.Components[i]).Columns[j].Width := Round(dCompWidth);
        if eFatorHeight > 1 then
          TDBGrid(Sender.Components[i]).Columns[j].Font.Size := Round(TDBGrid(Sender.Components[i]).Columns[j].Font.Size)
        else
          TDBGrid(Sender.Components[i]).Columns[j].Font.Size := Round(TDBGrid(Sender.Components[i]).Columns[j].Font.Size / eFatorHeight);
        if TDBGrid(Sender.Components[i]).Columns[j].Font.Size < iMinFontSize then
          TDBGrid(Sender.Components[i]).Columns[j].Font.Size := iMinFontSize;
        TDBGrid(Sender.Components[i]).Columns[j].Font.Style := [];
        TDBGrid(Sender.Components[i]).Columns[j].Title.Font.Size := Round(TDBGrid(Sender.Components[i]).Columns[j].Title.Font.Size * eFatorHeight);
        if TDBGrid(Sender.Components[i]).Columns[j].Title.Font.Size < iMinFontSize then
          TDBGrid(Sender.Components[i]).Columns[j].Title.Font.Size := iMinFontSize;
        TDBGrid(Sender.Components[i]).Columns[j].Title.Font.Style := [];
      end;
    end;
  end;
end;

procedure Carregando(pVisivel: Boolean; AClient: TDataSet = nil; AMsg: String = 'C a r r e g a n d o . . .');
begin
     Application.PRocessmessages;
     if pVisivel then
     begin
         if FCarregando <> nil then
             FCarregando.BringToFront
         else
         begin
             FCarregando := tFCarregando.create(application);
             FCarregando.show;
             FCarregando.update;
             FCarregando.BringToFront;
         end;
         Application.ProcessMessages;
	    	 if FCarregando <> nil then
             FCarregando.Label1.Caption := AMsg;
         {if AClient <> nil then
         begin
             if tIni = 0 then
                 tIni := time;
             Application.ProcessMessages;
             tReg := Time - tIni;
             tEst := (tReg / AClient.RecNo) * (AClient.RecordCount - AClient.RecNo);
             FCarregando.carregando.Label1.Caption := FCarregando.carregando.Label1.Caption + ' Tempo estimado ' + TimeToStr(IncSecond(tEst,1));
         end;}
     end
     else
     begin
         if FCarregando <> nil then
         begin
             try
                 FCarregando.Close;
                 FCarregando.release;
                 FCarregando := nil;
                 FCarregando.free;
             except
             end;
         end;
         //tIni := 0;
     end;
     Application.PRocessmessages;
end;

function testa_registro_ja_cadastrado(tabela: string; Datasource: tDataSource): boolean;
begin
     result := false;
     if Datasource.DataSet.State = dsinsert then
     begin
          dm.qchave.parambyname('TABELA').asstring := tabela;
          dm.qchave.open;

          dm.qexiste.sql.clear;
          dm.qexiste.sql.add('SELECT');
          dm.qchave.first;
          while not dm.qchave.eof do
          begin
               if dm.qchave.bof then
                    dm.qexiste.sql.add(trim(dm.qchave.fields[0].asstring))
               else
                    dm.qexiste.sql.add(',' + trim(dm.qchave.fields[0].asstring));
               dm.qchave.next;
          end;
          dm.qexiste.sql.add('FROM ' + tabela);
          dm.qexiste.sql.add('WHERE');
          dm.qchave.first;
          while not dm.qchave.eof do
          begin
               if dm.qchave.bof then
                    dm.qexiste.sql.add(trim(dm.qchave.fields[0].asstring) + ' = :' + trim(dm.qchave.fields[0].asstring))
               else
                    dm.qexiste.sql.add(' AND ' + trim(dm.qchave.fields[0].asstring) + ' = :' + trim(dm.qchave.fields[0].asstring));
               dm.qchave.next;
          end;

          dm.qchave.first;
          while not dm.qchave.eof do
          begin
               dm.qexiste.parambyname(trim(dm.qchave.fields[0].asstring)).value := datasource.dataset.fieldbyname(trim(dm.qchave.fields[0].asstring)).value;
               dm.qchave.next;
          end;
          dm.qexiste.open;
          dm.qchave.close;
          if dm.qexiste.fields[0].asstring <> '' then
          begin
               result := true;
               if tabela <> 'TLCTOCONTABIL' then
                   raise exception.create('Registro já cadastrado!');
          end;
     end;
end;

function getForm(AControl: TControl): TForm;
begin
    while true do
    begin
         AControl := AControl.Parent;
         if AControl is TForm then
             break;
    end;
    Result := AControl as TForm;
end;

function executasqlretorno(textosql: string): string;
begin
     dm.QExiste.close;
     dm.QExiste.sql.text := textosql;
     dm.QExiste.open;
     result := trim(dm.qexiste.fields[0].asstring);
     dm.QExiste.close;
end;

function executasqlretornodouble(textosql: string): double;
begin
     dm.QExiste.close;
     dm.QExiste.sql.text := textosql;
     dm.QExiste.open;
     result := dm.qexiste.fields[0].asfloat;
     if result < 0 then
          result := result * (-1);
     dm.QExiste.close;
end;

function sqltotal(textosql: string): double;
begin
     dm.QExiste.close;
     dm.QExiste.sql.text := textosql;
     dm.QExiste.open;
     result := dm.qexiste.fields[0].asfloat;
     dm.QExiste.close;
end;

function extenso(valor: real): string;
var
     Centavos, Centena, Milhar, Texto, msg: string;
const
     Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');
     Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
     Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
     Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');

     function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: string): string;
     begin
          if Expressao
               then Result := CasoVerdadeiro
          else Result := CasoFalso;
     end;

     function MiniExtenso(trio: string): string;
     var
          Unidade, Dezena, Centena: string;
     begin
          Unidade := '';
          Dezena := '';
          Centena := '';
          if (trio[2] = '1') and (trio[3] <> '0') then
          begin
               Unidade := Dez[strtoint(trio[3])];
               Dezena := '';
          end
          else
          begin
               if trio[2] <> '0' then
                    Dezena := Dezenas[strtoint(trio[2])];
               if trio[3] <> '0' then
                    Unidade := Unidades[strtoint(trio[3])];
          end;
          if (trio[1] = '1') and (Unidade = '') and (Dezena = '') then
               Centena := 'cem'
          else
               if trio[1] <> '0' then
                    Centena := Centenas[strtoint(trio[1])]
               else
                    Centena := '';
          Result := Centena + ifs((Centena <> '') and ((Dezena <> '') or (Unidade <> '')), ' e ', '')
               + Dezena + ifs((Dezena <> '') and (Unidade <> ''), ' e ', '') + Unidade;
     end;

begin
     if (valor > 999999.99) or (valor < 0) then
     begin
          msg := 'O valor está fora do intervalo permitido.';
          msg := msg + 'O número deve ser maior ou igual a zero e menor que 999.999,99.';
          msg := msg + ' Se não for corrigido o número não será escrito por extenso.';
          showmessage(msg);
          Result := '';
          exit;
     end;
     if valor = 0 then
     begin
          Result := '';
          Exit;
     end;
     Texto := formatfloat('000000.00', valor);
     Milhar := MiniExtenso(Copy(Texto, 1, 3));
     Centena := MiniExtenso(Copy(Texto, 4, 3));
     Centavos := MiniExtenso('0' + Copy(Texto, 8, 2));
     Result := Milhar;

     if Milhar <> '' then
          if copy(texto, 4, 3) = '000' then
               Result := Result + ' Mil Reais'
          else
               Result := Result + ' Mil, ';

     if (((copy(texto, 4, 2) = '00') and (Milhar <> '')
          and (copy(texto, 6, 1) <> '0')) or (centavos = ''))
          and (Centena <> '') then
          Result := Result + '   ';

     if (Milhar + Centena <> '') then
          Result := Result + Centena;
     if (Milhar = '') and (copy(texto, 4, 3) = '001') then
          Result := Result + ' Real'
     else
          if (copy(texto, 4, 3) <> '000') then
               Result := Result + ' Reais';
     if Centavos = '' then
     begin
          Result := Result + '.';
          Exit;
     end
     else
     begin
          if Milhar + Centena = '' then
               Result := Centavos
          else
               Result := Result + ' e ' + Centavos;
          if (copy(texto, 8, 2) = '01') and (Centavos <> '') then
               Result := Result + ' Centavo.'
          else
               Result := Result + ' Centavos.';
     end;
     Result := LowerCase(Result);
end;

function extensoquant(valor: real): string;
var
     Centavos, Centena, Milhar, Texto, msg: string;
const
     Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');
     Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
     Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
     Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');

     function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: string): string;
     begin
          if Expressao
               then Result := CasoVerdadeiro
          else Result := CasoFalso;
     end;

     function MiniExtenso(trio: string): string;
     var
          Unidade, Dezena, Centena: string;
     begin
          Unidade := '';
          Dezena := '';
          Centena := '';
          if (trio[2] = '1') and (trio[3] <> '0') then
          begin
               Unidade := Dez[strtoint(trio[3])];
               Dezena := '';
          end
          else
          begin
               if trio[2] <> '0' then
                    Dezena := Dezenas[strtoint(trio[2])];
               if trio[3] <> '0' then
                    Unidade := Unidades[strtoint(trio[3])];
          end;
          if (trio[1] = '1') and (Unidade = '') and (Dezena = '') then
               Centena := 'cem'
          else
               if trio[1] <> '0' then
                    Centena := Centenas[strtoint(trio[1])]
               else
                    Centena := '';
          Result := Centena + ifs((Centena <> '') and ((Dezena <> '') or (Unidade <> '')), ' e ', '')
               + Dezena + ifs((Dezena <> '') and (Unidade <> ''), ' e ', '') + Unidade;
     end;

begin
     if (valor > 999999.99) or (valor < 0) then
     begin
          msg := 'O valor está fora do intervalo permitido.';
          msg := msg + 'O número deve ser maior ou igual a zero e menor que 999.999,99.';
          msg := msg + ' Se não for corrigido o número não será escrito por extenso.';
          showmessage(msg);
          Result := '';
          exit;
     end;
     if valor = 0 then
     begin
          Result := '';
          Exit;
     end;
     Texto := formatfloat('000000.00', valor);
     Milhar := MiniExtenso(Copy(Texto, 1, 3));
     Centena := MiniExtenso(Copy(Texto, 4, 3));
     Centavos := MiniExtenso('0' + Copy(Texto, 8, 2));
     Result := Milhar;

     if Milhar <> '' then
          if copy(texto, 4, 3) = '000' then
               Result := Result + ' Mil'
          else
               Result := Result + ' Mil, ';

     if (((copy(texto, 4, 2) = '00') and (Milhar <> '')
          and (copy(texto, 6, 1) <> '0')) or (centavos = ''))
          and (Centena <> '') then
          Result := Result + '   ';

     if (Milhar + Centena <> '') then
          Result := Result + Centena;
     if (Milhar = '') and (copy(texto, 4, 3) = '001') then
          Result := Result
     else
          if (copy(texto, 4, 3) <> '000') then
               Result := Result;
     if Centavos = '' then
     begin
          Result := Result;
          Exit;
     end
     else
     begin
          if Milhar + Centena = '' then
               Result := Centavos
          else
               Result := Result + ', e ' + Centavos;
     end;

     Result := LowerCase(Result);
end;

function BuscaTroca(Text, Busca, Troca: string): string;
var
     n, i: integer;
begin
     i := length(Busca);
     for n := 1 to length(Text) do
     begin
          if Copy(Text, n, i) = Busca then
          begin
               Delete(Text, n, i); Insert(Troca, Text, n);
          end;
     end;
     Result := Text;
end;

function valor_parametro(cod: integer): string;
begin
     dm.qexiste.close;
     with dm.qexiste.sql do
     begin
          clear;
          add('SELECT PARVALOR FROM TPARAMETRO WHERE PARCOD = ' + inttostr(cod));
     end;
     dm.qexiste.open;
     result := dm.qexiste.fieldbyname('PARVALOR').asstring;
     if ((result = '') and (not (cod in [17,18]))) then
          showmessage('valor inválido para o parâmetro número ' + inttostr(cod));
     dm.qexiste.close;
end;

function RemoveAcento(Str: string): string;
const
     ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
     SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
     x: Integer;
begin
     for x := 1 to Length(Str) do
          if Pos(Str[x], ComAcento) <> 0 then
               Str[x] := SemAcento[Pos(Str[x], ComAcento)];
     Result := Str;
end;

function Max(Campo, tabela: string): integer;
begin
     dm.qmax.close;
     with dm.qmax.sql do
     begin
          clear;
          add('SELECT MAX(' + campo + ') AS COD FROM ' + tabela);
//          if trim(tabela) = 'TALUNO' then
//               add('WHERE ' + campo + ' < 10000');
     end;
     dm.qmax.open;
     result := dm.qmaxcod.asinteger + 1;
     dm.qmax.close;
end;

function tbKeyIsDown(const Key: integer): boolean;
begin
     Result := GetKeyState(Key) and 128 > 0;
end;

function Arredonda(Valor: Real; Decimais: Byte): double;
var
     i: Byte;
     ML: string;
     RR: string;
begin
     ML := '0.';
     for i := 1 to Decimais do
     begin
          ML := ML + '0';
     end;
     RR := FormatFloat(ML, Valor);
     Result := StrToFloat(RR);
end;

function cpf(num: string): boolean;
var
     n1, n2, n3, n4, n5, n6, n7, n8, n9: integer;
     d1, d2: integer;
     digitado, calculado: string;
begin
     if (num <> '         -  ') and (trim(num) <> '') then
     begin
          try
               n1 := StrToInt(num[1]);
               n2 := StrToInt(num[2]);
               n3 := StrToInt(num[3]);
               n4 := StrToInt(num[4]);
               n5 := StrToInt(num[5]);
               n6 := StrToInt(num[6]);
               n7 := StrToInt(num[7]);
               n8 := StrToInt(num[8]);
               n9 := StrToInt(num[9]);
               d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10;
               d1 := 11 - (d1 mod 11);
               if d1 >= 10 then d1 := 0;
               d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11;
               d2 := 11 - (d2 mod 11);
               if d2 >= 10 then d2 := 0;
               calculado := inttostr(d1) + inttostr(d2);
               digitado := num[11] + num[12];
               result := calculado = digitado;
          except
               result := false;
          end;
     end
     else
          result := true;
end;

function cnpj(num: string): boolean;
var
     n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: integer;
     d1, d2: integer;
     digitado, calculado: string;
begin
     if trim(num) <> '' then
     begin
          try
               n1 := StrToInt(num[1]);
               n2 := StrToInt(num[2]);
               n3 := StrToInt(num[4]);
               n4 := StrToInt(num[5]);
               n5 := StrToInt(num[6]);
               n6 := StrToInt(num[8]);
               n7 := StrToInt(num[9]);
               n8 := StrToInt(num[10]);
               n9 := StrToInt(num[12]);
               n10 := StrToInt(num[13]);
               n11 := StrToInt(num[14]);
               n12 := StrToInt(num[15]);
               d1 := n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 6 + n7 * 7 + n6 * 8 + n5 * 9 + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5;
               d1 := 11 - (d1 mod 11);
               if d1 >= 10 then d1 := 0;
               d2 := d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 8 + n6 * 9 + n5 * 2 + n4 * 3 + n3 * 4 + n2 * 5 + n1 * 6;
               d2 := 11 - (d2 mod 11);
               if d2 >= 10 then d2 := 0;
               calculado := inttostr(d1) + inttostr(d2);
               digitado := num[17] + num[18];
               result := calculado = digitado;
          except
               result := false;
          end;
     end
     else
          result := true;
end;

function EnviaEMail(const De, Para, Assunto, Texto, Arquivo: string; Confirma: Boolean): Integer;
var
     Msg: TMapiMessage;
     lpSender, lpRecepient: TMapiRecipDesc;
     FileAttach: TMapiFileDesc;
     SM: TFNMapiSendMail;
     MAPIModule: HModule;
     Flags: Cardinal;
begin
     // cria propriedades da mensagem
     FillChar(Msg, SizeOf(Msg), 0);

     with Msg do
     begin
          if (Assunto <> '') then
               lpszSubject := PAnsiChar(Assunto);

          if (Texto <> '') then
               lpszNoteText := PAnsiChar(Texto);

          // remetente
          if (De <> '') then
          begin
               lpSender.ulRecipClass := MAPI_ORIG;
               lpSender.lpszName := PAnsiChar(De);
               lpSender.lpszAddress := PAnsiChar(De);
               lpSender.ulReserved := 0;
               lpSender.ulEIDSize := 0;
               lpSender.lpEntryID := nil;
               lpOriginator := @lpSender;
          end;

          // destinatário
          if (Para <> '') then
          begin
               lpRecepient.ulRecipClass := MAPI_TO;
               lpRecepient.lpszName := PAnsiChar(Para);
               lpRecepient.lpszAddress := PAnsiChar(Para);
               lpRecepient.ulReserved := 0;
               lpRecepient.ulEIDSize := 0;
               lpRecepient.lpEntryID := nil;
               nRecipCount := 1;
               lpRecips := @lpRecepient;
          end
          else
               lpRecips := nil;

          // arquivo anexo
          if (Arquivo = '') then
          begin
               nFileCount := 0;
               lpFiles := nil;
          end
          else
          begin
               FillChar(FileAttach, SizeOf(FileAttach), 0);
               FileAttach.nPosition := Cardinal($FFFFFFFF);
               FileAttach.lpszPathName := PAnsiChar(Arquivo);
               nFileCount := 1;
               lpFiles := @FileAttach;
          end;
     end;

     // carrega dll e o método para envio do email
     MAPIModule := LoadLibrary(PChar(MAPIDLL));

     if MAPIModule = 0 then
          Result := -1
     else
     try
          if Confirma then
               Flags := MAPI_DIALOG or MAPI_LOGON_UI
          else
               Flags := 0;

          @SM := GetProcAddress(MAPIModule, 'MAPISendMail');

          if @SM <> nil then
               Result := SM(0, Application.Handle, Msg, Flags, 0)
          else
               Result := 1;
     finally
          FreeLibrary(MAPIModule);
     end;
end;

function ThreadExecSql(ACds: TClientDataSet = nil; ASql: WideString = ''; AParams: TParams = nil; AQry: TSQLQuery = nil): Boolean;
var
    NoEvent: TEvento;

    function _ThreadExecSql: TThreadExecSql;
    var _ExecThread: TThreadExecSql;
    begin
        _ExecThread := TThreadExecSql.Create(true);
        with _ExecThread do
        begin
            FreeOnTerminate := true;
            SqlConnection := Dm.SQLConnection;
            if ASql <> '' then
                SQLString := ASql;
            if AParams <> nil then
                Params := AParams;
            if ACds <> nil then
                ClientDataSet := ACds;
            if AQry <> nil then
                SqlQuery := AQry;
            Priority := tpNormal;
            DoOnTerminate := NoEvent.ThreadTerminate;
            Resume;
        end;
        Result := _ExecThread;
    end;
begin
    Result := True;
    try
        Carregando(True);
        ExecutandoThread := True;
        _ThreadExecSql;
        while ExecutandoThread do
             Carregando(true);
    finally
        Carregando(False);
    end;
end;

procedure atualizar_sistema;
const
     versaoatu: integer = 405;
var
     versao: integer;
begin
     with dm.qexiste do
     begin
          close;
          sql.add(' SELECT INSVERSAO AS VERSAO, INSTIPOSISTEMA FROM TINSTITUTO');
          open;
          versao := fieldbyname('VERSAO').asinteger;
          TipoSistema := fieldbyname('INSTIPOSISTEMA').asString;

          if versao < versaoatu then
          begin
               showmessage('Há uma nova versão dispónivel, o sistema fará a atualização automáticamente, ' + #13 +
                    'antes é apropriado que faça uma cópia de segurança do seu banco de dados. ' + #13 +
                    'Copie o arquivo ' + quotedstr(ExtractFilePath(Application.ExeName) + 'BANCO.GDB') + ' para um cd ou outra pasta,' + #13 +
                    'Qualquer dúvida entre em contato com o suporte técnico.' + #13 + #13 +
                    'Pressione OK para continuar a atualização.');
          end;

          if versao < 369 then
          begin
              sql.Clear;
              sql.add('DELETE FROM TDBGRID WHERE GRIDTELA = ''FPlanoConta'';');
              execsql;
          end;

          if versao < 370 then
          begin
              sql.Clear;
              sql.add('DELETE FROM TDBGRID WHERE GRIDTELA = ''FLctoContabil'';');
              execsql;
          end;

          if versao < 373 then
          begin
               sql.Clear;
               sql.add('ALTER TABLE TNETWORKING');
               sql.add('ADD NETDESCONTO DOUBLE PRECISION DEFAULT 0,');
               sql.add('ADD NETLOGO BLOB SUB_TYPE 0 SEGMENT SIZE 80;');
               execsql;

               sql.Clear;
               sql.add('UPDATE TNETWORKING SET NETDESCONTO = 0;');
               execsql;

               sql.Clear;
               sql.add('DELETE FROM TTELA WHERE TELTELA = ''FNetworking'';');
               execsql;
          end;

          if versao < 374 then
          begin
               sql.Clear;
               sql.add('CREATE TABLE TAVISO (');
               sql.add('  AVICOD INTEGER NOT NULL,');
               sql.add('  AVIDATA DATE,');
               sql.add('  AVIUSUARIO VARCHAR(20),');
               sql.add('  AVIMENSAGEM VARCHAR(100),');
               sql.add('  AVIARQUIVO VARCHAR(100)');
               sql.add(');');
               ExecSQL;

               sql.text := 'ALTER TABLE TAVISO ADD CONSTRAINT PK_TAVISO PRIMARY KEY (AVICOD);';
               ExecSQL;

               sql.text := 'INSERT INTO TPROGRAMA (PROCOD, PRONOME) VALUES (32, ''AVISOS'');';
               ExecSQL;
          end;

          if versao < 375 then
          begin
               sql.text := 'ALTER TABLE TAVISO DROP AVIMENSAGEM;';
               ExecSQL;

               sql.text := 'ALTER TABLE TAVISO ADD AVIMENSAGEM BLOB SUB_TYPE 1 CHARACTER SET ISO8859_1;';
               ExecSQL;
          end;

          if versao < 376 then
          begin
              sql.Clear;
              sql.add('DELETE FROM TDBGRID WHERE GRIDTELA = ''FLctoContabil'';');
              execsql;
          end;

          if versao < 377 then
          begin
               sql.text := 'INSERT INTO TPARAMETRO VALUES (17, ''FILTRO DATA INICIAL LCTOCONTABIL?'', '''');';
               execsql;

               sql.text := 'INSERT INTO TPARAMETRO VALUES (18, ''FILTRO DATA FINAL LCTOCONTABIL?'', '''');';
               execsql;
          end;

          if versao < 379 then
          begin
               sql.text := 'ALTER TABLE TAVISO ADD AVITIPO VARCHAR(1);';
               ExecSQL;

               sql.text := 'UPDATE TAVISO SET AVITIPO = ''A'';';
               ExecSQL;
          end;

          if versao < 380 then
          begin
              sql.Clear;
              sql.add('DELETE FROM TDBGRID WHERE GRIDTELA = ''FAviso'';');
              execsql;
          end;

          if versao < 381 then
          begin
              SQLConnection.ExecuteDirect(
                   'ALTER PROCEDURE PBALANCETE_VALORES(' + #13 +
                   '  CODANAINI VARCHAR(20) CHARACTER SET ISO8859_1,' + #13 +
                   '  CODANAFIN VARCHAR(20) CHARACTER SET ISO8859_1,' + #13 +
                   '  PLANONEG INTEGER,' + #13 +
                   '  DATAINI DATE,' + #13 +
                   '  DATAFIN DATE,' + #13 +
                   '  DATAEXC DATE)' + #13 +
                   'AS' + #13 +
                   'declare variable data date;' + #13 +
                   'declare variable valor double precision = 0;' + #13 +
                   'declare variable planonegocio integer;' + #13 +
                   'declare variable nivel1 varchar(20);' + #13 +
                   'declare variable nivel2 varchar(20);' + #13 +
                   'declare variable nivel3 varchar(20);' + #13 +
                   'declare variable nivel4 varchar(20);' + #13 +
                   'declare variable nivel5 varchar(20);' + #13 +
                   'declare variable nivel6 varchar(20);' + #13 +
                   'declare variable nivel7 varchar(20);' + #13 +
                   'declare variable nivel8 varchar(20);' + #13 +
                   'declare variable nivel9 varchar(20);' + #13 +
                   'declare variable nivel10 varchar(20);' + #13 +
                   'begin' + #13 +
                   '  for' + #13 +
                   '     select lctdata, lctvalor, lctplanonegocios, planivel1, planivel2, planivel3,' + #13 +
                   '     planivel4, planivel5, planivel6, planivel7, planivel8, planivel9, planivel10' + #13 +
                   '     from tlctocontabil' + #13 +
                   '     inner join tplanoconta on tplanoconta.placodred = tlctocontabil.lctdebito' + #13 +
                   '     where tplanoconta.placodana between :codanaini and :codanafin' + #13 +
                   '     and lctdata <= :datafin and lctdata <> :dataexc' + #13 +
                   '     into :data, :valor, :planonegocio, :nivel1, :nivel2, :nivel3, :nivel4, :nivel5,' + #13 +
                   '     :nivel6, :nivel7, :nivel8, :nivel9, :nivel10' + #13 +
                   ' do' + #13 +
                   ' begin' + #13 +
                   '    if (:data < :dataini) then' + #13 +
                   '    begin' + #13 +
                   '         update ttmpbalancete set ttmpbalancete.tmpsaldoanterior = ttmpbalancete.tmpsaldoanterior + :valor' + #13 +
                   '         where ttmpbalancete.tmpnivel <> '''' and' + #13 +
                   '         ttmpbalancete.tmpnivel = :nivel1 or' + #13 +
                   '         ttmpbalancete.tmpnivel = :nivel2 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '   if ((:planoneg = :planonegocio) or (:planoneg = 0)) then ' + #13 +
                   '   begin ' + #13 +
                   '     if ((:data >= :dataini) and (:data <= :datafin)) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpdebito = ttmpbalancete.tmpdebito + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 1) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes1 = ttmpbalancete.tmpmes1 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 2) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes2 = ttmpbalancete.tmpmes2 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 3) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes3 = ttmpbalancete.tmpmes3 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 4) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes4 = ttmpbalancete.tmpmes4 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 5) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes5 = ttmpbalancete.tmpmes5 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 6) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes6 = ttmpbalancete.tmpmes6 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 7) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes7 = ttmpbalancete.tmpmes7 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 8) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes8 = ttmpbalancete.tmpmes8 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 9) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes9 = ttmpbalancete.tmpmes9 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 10) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes10 = ttmpbalancete.tmpmes10 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 11) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes11 = ttmpbalancete.tmpmes11 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 12) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes12 = ttmpbalancete.tmpmes12 + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '   end ' + #13 +
                   '  end ' + #13 +
                   '  for ' + #13 +
                   '      select lctdata, lctvalor, lctplanonegocios, planivel1, planivel2, planivel3, ' + #13 +
                   '      planivel4, planivel5, planivel6, planivel7, planivel8, planivel9, planivel10 ' + #13 +
                   '      from tlctocontabil ' + #13 +
                   '      inner join tplanoconta on tplanoconta.placodred = tlctocontabil.lctcredito ' + #13 +
                   '      where tplanoconta.placodana between :codanaini and :codanafin ' + #13 +
                   '      and lctdata <= :datafin and lctdata <> :dataexc ' + #13 +
                   '      into :data, :valor, :planonegocio, :nivel1, :nivel2, :nivel3, :nivel4, :nivel5,' + #13 +
                   '      :nivel6, :nivel7, :nivel8, :nivel9, :nivel10 ' + #13 +
                   '  do ' + #13 +
                   '  begin' + #13 +
                   '     if (:data < :dataini) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpsaldoanterior = ttmpbalancete.tmpsaldoanterior - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '   if ((:planoneg = :planonegocio) or (:planoneg = 0)) then ' + #13 +
                   '   begin ' + #13 +
                   '     if ((:data >= :dataini) and (:data <= :datafin)) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpcredito = ttmpbalancete.tmpcredito + :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10;' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 1) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes1 = ttmpbalancete.tmpmes1 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 2) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes2 = ttmpbalancete.tmpmes2 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end' + #13 +
                   '     if ((extract(month from :data) = 3) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes3 = ttmpbalancete.tmpmes3 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 4) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes4 = ttmpbalancete.tmpmes4 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 5) and (extract(year from :data) = extract(year from :dataini))) then' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes5 = ttmpbalancete.tmpmes5 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 6) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes6 = ttmpbalancete.tmpmes6 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10;' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 7) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes7 = ttmpbalancete.tmpmes7 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 8) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes8 = ttmpbalancete.tmpmes8 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end' + #13 +
                   '     if ((extract(month from :data) = 9) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes9 = ttmpbalancete.tmpmes9 - :valor' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 10) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes10 = ttmpbalancete.tmpmes10 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 11) and (extract(year from :data) = extract(year from :dataini))) then' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes11 = ttmpbalancete.tmpmes11 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '     end ' + #13 +
                   '     if ((extract(month from :data) = 12) and (extract(year from :data) = extract(year from :dataini))) then ' + #13 +
                   '     begin ' + #13 +
                   '          update ttmpbalancete set ttmpbalancete.tmpmes12 = ttmpbalancete.tmpmes12 - :valor ' + #13 +
                   '          where ttmpbalancete.tmpnivel <> '''' and ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel1 or ' + #13 +
                   '          ttmpbalancete.tmpnivel = :nivel2 or ' + #13 +
                   '           ttmpbalancete.tmpnivel = :nivel3 or ' + #13 +
                   '           ttmpbalancete.tmpnivel = :nivel4 or ' + #13 +
                   '           ttmpbalancete.tmpnivel = :nivel5 or ' + #13 +
                   '           ttmpbalancete.tmpnivel = :nivel6 or ' + #13 +
                   '           ttmpbalancete.tmpnivel = :nivel7 or ' + #13 +
                   '           ttmpbalancete.tmpnivel = :nivel8 or ' + #13 +
                   '           ttmpbalancete.tmpnivel = :nivel9 or ' + #13 +
                   '           ttmpbalancete.tmpnivel = :nivel10; ' + #13 +
                   '      end ' + #13 +
                   '    end ' + #13 +
                   '   end' + #13 +
                   '    end;  ');
          end;
          if versao < 382 then
          begin
               sql.text := 'ALTER TABLE TAVISO ADD AVIARQUIVO1 VARCHAR(100);';
               ExecSQL;

               sql.text := 'ALTER TABLE TAVISO ADD AVIARQUIVO2 VARCHAR(100);';
               ExecSQL;

               sql.text := 'ALTER TABLE TAVISO ADD AVIARQUIVO3 VARCHAR(100);';
               ExecSQL;
          end;
          if versao < 383 then
          begin
               sql.text := 'ALTER TABLE TAVISO ADD AVICURSO INTEGER;';
               ExecSQL;

               sql.clear;
               sql.add('alter table TAVISO');
               sql.add('add constraint FK_TAVISO_CURSO');
               sql.add('foreign key (AVICURSO)');
               sql.add('references TCURSO(CURCOD);');
               execsql;
          end;

          if versao < 384 then
          begin
               sql.Clear;
               sql.add('CREATE TABLE TAVISOCURSO (');
               sql.add('  AVICURAVISO INTEGER NOT NULL,');
               sql.add('  AVICURCURSO INTEGER NOT NULL);');
               ExecSQL;

               sql.text := 'ALTER TABLE TAVISOCURSO ADD CONSTRAINT PK_TAVISOCURSO PRIMARY KEY (AVICURAVISO, AVICURCURSO);';
               ExecSQL;

               sql.text := 'ALTER TABLE TAVISOCURSO ADD CONSTRAINT FK_AVICURSO_AVISO FOREIGN KEY (AVICURAVISO) REFERENCES TAVISO (AVICOD) ON DELETE CASCADE ON UPDATE CASCADE;';
               ExecSQL;

               sql.text := 'ALTER TABLE TAVISOCURSO ADD CONSTRAINT FK_AVICURSO_CURSO FOREIGN KEY (AVICURCURSO) REFERENCES TCURSO (CURCOD) ON UPDATE CASCADE;';
               ExecSQL;
          end;

          if versao < 385 then
          begin
               sql.text := 'ALTER TABLE TAVISO DROP CONSTRAINT FK_TAVISO_CURSO;';
               ExecSQL;

               sql.text := 'ALTER TABLE TAVISO DROP AVICURSO;';
               ExecSQL;

               sql.text := 'ALTER TABLE TAVISO ADD AVILINHAS INTEGER;';
               ExecSQL;
          end;

          if versao < 386 then
          begin
               sql.Clear;
               sql.add('ALTER TABLE TALUNO ');
               sql.add('  ADD ALUCERTSOLICITADO DATE,');
               sql.add('  ADD ALUCERTENTREGA DATE;');
               ExecSQL;
          end;

          if versao < 387 then
          begin
               sql.Clear;
               sql.add('ALTER TABLE TALUNO ');
               sql.add('  ADD ALURESPPGTO INTEGER;');
               ExecSQL;

               sql.text := 'ALTER TABLE TALUNO ADD CONSTRAINT FK_ALUNO_RESPPGTO FOREIGN KEY (ALURESPPGTO) REFERENCES TNETWORKING (NETCOD) ON UPDATE CASCADE;';
               ExecSQL;
          end;

          if versao < 388 then
          begin
               sql.Clear;
               sql.add('ALTER TABLE TCONTAPAGAR ');
               sql.add('  ADD CTPFORMAPGTO INTEGER,');
               sql.add('  ADD CTPLCTOCONTABILVALOR INTEGER,');
               sql.add('  ADD CTPLCTOCONTABILDESCONTO INTEGER,');
               sql.add('  ADD CTPLCTOCONTABILJUROS INTEGER;');
               ExecSQL;

               sql.text := 'ALTER TABLE TCONTAPAGAR ADD CONSTRAINT FK_CONTAPAGAR_FORMAPGTO FOREIGN KEY (CTPFORMAPGTO) REFERENCES TFORMAPGTO (FORCOD) ON UPDATE CASCADE;';
               ExecSQL;
          end;

          if versao < 389 then
          begin
               sql.Clear;
               sql.add('CREATE TABLE TGRUPOCURSO (');
               sql.add('  GRUCOD INTEGER NOT NULL,');
               sql.add('  GRUNOME VARCHAR(100)');
               sql.add(');');
               ExecSQL;

               sql.text := 'ALTER TABLE TGRUPOCURSO ADD CONSTRAINT PK_TGRUPOCURSO PRIMARY KEY (GRUCOD);';
               ExecSQL;

               sql.text := 'INSERT INTO TPROGRAMA (PROCOD, PRONOME) VALUES (33, ''GRUPO CURSO'');';
               ExecSQL;
         end;

          if versao < 390 then
          begin
               sql.Clear;
               sql.add('ALTER TABLE TCURSO ');
               sql.add('  ADD CURGRUPO INTEGER;');
               ExecSQL;

               sql.text := 'ALTER TABLE TCURSO ADD CONSTRAINT FK_CURSO_GRUPO FOREIGN KEY (CURGRUPO) REFERENCES TGRUPOCURSO (GRUCOD) ON UPDATE CASCADE;';
               ExecSQL;
          end;

          if versao < 391 then
          begin
               sql.text := 'ALTER TABLE TAVISOCURSO DROP CONSTRAINT FK_AVICURSO_CURSO;';
               ExecSQL;
          end;

          if versao < 392 then
          begin
               sql.text := 'UPDATE TCURSO SET CURGRUPO = NULL';
               ExecSQL;

               sql.text := 'DELETE FROM TGRUPOCURSO';
               ExecSQL;

               sql.text := 'INSERT INTO TGRUPOCURSO SELECT MAX(CURCOD), CURSIGLA FROM TCURSO GROUP BY CURSIGLA;';
               ExecSQL;

          end;

          if versao < 393 then
          begin
              sql.Clear;
              sql.add('ALTER TABLE TINSTITUTO');
              sql.add(' ADD INSCABINF BLOB SUB_TYPE 0 SEGMENT SIZE 80;');
              execsql;

              sql.Clear;
              sql.add('UPDATE TINSTITUTO SET INSCABINF = INSCAB;');
               execsql;
          end;

          if versao < 394 then
          begin
               sql.text := 'INSERT INTO TPARAMETRO VALUES (19, ''ZOOM'', ''S'');';
               execsql;
          end;

          if versao < 395 then
          begin
              sql.Clear;
              sql.add('ALTER TABLE TCURSO ');
              sql.add(' ADD CURTIPO VARCHAR(20) DEFAULT '''';');
              execsql;

              sql.Clear;
              sql.add('UPDATE TCURSO SET CURTIPO = ''POS-GRADUAÇÃO'';');
               execsql;
          end;

          if versao < 396 then
          begin
              sql.text := 'UPDATE TBANCO SET BANCARTEIRA = ''0''';
              execsql;
          end;

          if versao < 397 then
          begin
              sql.text := 'INSERT INTO TPARAMETRO VALUES (20, ''NOME SISTEMA'', ''Sistema Reinandus de Gestão'');';
              execsql;
          end;

          if versao < 398 then
          begin
               sql.Clear;
               sql.add('ALTER TABLE TALUNODISCIPLINA ');
               sql.add('  ADD ALUDISSITUACAO VARCHAR(1) DEFAULT '''',');
               sql.add('  ADD ALUDISNOTA1 DOUBLE PRECISION DEFAULT 0,');
               sql.add('  ADD ALUDISNOTA2 DOUBLE PRECISION DEFAULT 0,');
               sql.add('  ADD ALUDISNOTA3 DOUBLE PRECISION DEFAULT 0,');
               sql.add('  ADD ALUDISNOTA4 DOUBLE PRECISION DEFAULT 0,');
               sql.add('  ADD ALUDISFREQUENCIA1 DOUBLE PRECISION DEFAULT 0,');
               sql.add('  ADD ALUDISFREQUENCIA2 DOUBLE PRECISION DEFAULT 0,');
               sql.add('  ADD ALUDISFREQUENCIA3 DOUBLE PRECISION DEFAULT 0,');
               sql.add('  ADD ALUDISFREQUENCIA4 DOUBLE PRECISION DEFAULT 0;');
               ExecSQL;
          end;

          if versao < 399 then
          begin
              sql.text := 'INSERT INTO TPARAMETRO VALUES (21, ''TIPO VISUALIZACAO'', ''1'');';
              execsql;
          end;

          if versao < 400 then
          begin
               sql.Clear;
               sql.add('ALTER TABLE TUSUARIO ');
               sql.add('  ADD USUPROFESSOR INTEGER;');
               ExecSql;
          end;

          if versao < 401 then
          begin
              sql.text := 'update tlctocontabil set lctvalor = cast(lctvalor as numeric(15,2));';
              execsql;
          end;

          if versao < 402 then
          begin
               sql.Clear;
               sql.add('CREATE VIEW VCOMPLEMENTO (');
               sql.add('  COMCODIGO,');
               sql.add('  COMCOMPLEMENTO');
               sql.add(') AS');
               sql.add('SELECT LCTNUMERO, CAST(SUBSTRING(LCTCOMPLEMENTO FROM 1 FOR 250) AS VARCHAR(250))');
               sql.add('FROM TLCTOCONTABIL;');
               ExecSql;
          end;

          if versao < 403 then
          begin
              sql.text := 'update tlctocontabil set lctvalor = cast(lctvalor as numeric(15,2));';
              execsql;
          end;

          if versao < 404 then
          begin
              sql.Clear;
              sql.add('DELETE FROM TDBGRID WHERE GRIDTELA = ''FLctoContabil'';');
              execsql;
          end;

          if versao < 405 then
          begin
              sql.Clear;
              sql.add('DELETE FROM TDBGRID;');
              execsql;
          end;

          if versao < versaoatu then
          begin
               sql.clear;
               sql.add('UPDATE TINSTITUTO SET INSVERSAO = ' + inttostr(versaoatu) + ';');
               ExecSQL;
          end;
          close;
     end;
end;

end.
