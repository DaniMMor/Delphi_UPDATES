unit DUP.Controller.Interfaces;

interface

uses
  DUP.Model.Entidades.Interfaces;

type
   iController = interface
     ['{D3BA2F16-4B3F-4F3E-A52E-F7F8AD2CDF3A}']
     function Entidades : iModelEntidadeFactory;
   end;

implementation

end.
