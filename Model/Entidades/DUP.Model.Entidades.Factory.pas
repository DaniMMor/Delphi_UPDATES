unit DUP.Model.Entidades.Factory;

interface

uses
  DUP.Model.Entidades.Interfaces, DUP.Model.Entidades.Produto;

type
    TModelEntidadesFactory = class(TInterfacedObject, iModelEntidadeFactory)
    private

    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelEntidadeFactory;
      function Usuario : iModelEntidade;
    end;

  implementation

{ TModelEntidades }


constructor TModelEntidadesFactory.Create;
begin
   inherited;
end;

destructor TModelEntidadesFactory.Destroy;
begin

  inherited;
end;

class function TModelEntidadesFactory.New: iModelEntidadeFactory;
begin
   Result := Self.Create;
end;

function TModelEntidadesFactory.Usuario: iModelEntidade;
begin
  Result := TModelEntidadeUsuario.New;
end;

end.
