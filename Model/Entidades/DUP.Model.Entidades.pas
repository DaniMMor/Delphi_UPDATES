unit DUP.Model.Entidades;

interface




type
    TModelEntidades = class
    strict private
      class var FInstance: TModelEntidades;
      constructor Create;
    public
      class function GetInstance: TModelEntidades;
      function Usuario : TModelEntidadesUsuario;
    end;

  implementation

{ TModelEntidades }

function TModelEntidades.Usuario: TModelEntidadesUsuario;
begin
     Result := ModelEntidadesUsuario;
end;

constructor TModelEntidades.Create;
begin
   inherited;
end;

class function TModelEntidades.GetInstance: TModelEntidades;
begin
   If FInstance = nil Then
   begin
      FInstance := TModelEntidades.Create();
   end;
   Result := FInstance;
end;

end.
