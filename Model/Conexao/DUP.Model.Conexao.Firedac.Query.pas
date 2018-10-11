unit DUP.Model.Conexao.Firedac.Query;

interface

uses
  DUP.Model.Conexao.Interfaces,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.SysUtils;

type
   TModelConexaoFiredacQuery = class(TInterfacedObject, iModelQuery)
      private
         FQuery : TFDQuery;
         FConexao : iModelConexao;
      public
         constructor Create(aValue : iModelConexao) ;
         destructor Destroy ; override;
         class function New(aValue : iModelConexao): iModelQuery;
         function Query : TObject;
         function OpenTable (aTable : String ) : iModelQuery;

end;

implementation

{ TModelConexaoFiredacQuery }

constructor TModelConexaoFiredacQuery.Create(aValue : iModelConexao) ;
begin
   FConexao := aValue;
   FQuery :=  TFDQuery.Create(nil);
   FQuery.Connection := TFDConnection(FConexao.Connection);
end;

destructor TModelConexaoFiredacQuery.Destroy;
begin
   Freeandnil(FQuery);
  inherited;
end;

class function TModelConexaoFiredacQuery.New(aValue : iModelConexao): iModelQuery;
begin
  Result := Self.Create(aValue);
end;

function TModelConexaoFiredacQuery.OpenTable(aTable: String): iModelQuery;
begin
   Result := Self;
   FQuery.Open('SELECT * FROM ' + aTable);
end;

function TModelConexaoFiredacQuery.Query: TObject;
begin
    Result := FQuery;
end;

end.
