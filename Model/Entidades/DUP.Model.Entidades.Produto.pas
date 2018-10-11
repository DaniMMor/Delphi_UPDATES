unit DUP.Model.Entidades.Produto;

interface

uses DUP.Model.Entidades.Interfaces, Data.DB, DUP.Model.Conexao.Interfaces,
  DUP.Model.Conexao.Factory;

type
   TModelEntidadeUsuario = class(TInterfacedObject, iModelEntidade)
      private
         FQuery : iModelQuery;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iModelEntidade;
         function DataSet (aValue : TDataSource) : iModelEntidade;
         function Open : iModelEntidade;

end;

implementation

{ TModelEntidadeProduto }

constructor TModelEntidadeUsuario.Create;
begin
   FQuery := TModelConexaoFactory.New.Query;
end;

function TModelEntidadeUsuario.DataSet(aValue: TDataSource): iModelEntidade;
begin
   Result := Self;
   aValue.DataSet := TDataSet(FQuery.Query);
end;

destructor TModelEntidadeUsuario.Destroy;
begin

  inherited;
end;

class function TModelEntidadeUsuario.New: iModelEntidade;
begin
  Result := Self.Create;
end;

function TModelEntidadeUsuario.Open: iModelEntidade;
begin
  FQuery.OpenTable('USUARIO');
end;

end.
