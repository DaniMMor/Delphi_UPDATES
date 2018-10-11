unit DUP.Model.Entidades.Interfaces;

interface

uses
  Data.DB;

type
  iModelEntidade = interface
    ['{065218B6-6FAA-4249-9388-7EE760DAD72B}']
    function DataSet (aValue : TDataSource) : iModelEntidade;
    function Open : iModelEntidade;
  end;

  iModelEntidadeFactory = interface
    ['{EDF44434-B230-4287-9C7A-54EB282AE011}']
    function Usuario : iModelEntidade;

  end;

implementation

end.
