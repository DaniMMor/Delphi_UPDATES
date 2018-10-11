unit DUP.Controller;

interface

uses System.SysUtils, DUP.Model.Entidades.Interfaces,
  DUP.Controller.Interfaces, DUP.Model.Entidades.Factory;

type
   TController = class(TInterfacedObject, iController)
      private
      FModelEntidades : iModelEntidadeFactory;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New : iController;
         function Entidades : iModelEntidadeFactory;

end;

implementation

{ TMinhaClass }

constructor TController.Create;
begin
   FModelEntidades := TModelEntidadesFactory.new;
end;

destructor TController.Destroy;
begin

  inherited;
end;


function TController.Entidades: iModelEntidadeFactory;
begin
   Result := FModelEntidades;
end;

class function TController.New: iController;
begin
   Result :=  Self.Create;
end;

end.
