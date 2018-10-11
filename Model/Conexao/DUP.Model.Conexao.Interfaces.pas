unit DUP.Model.Conexao.Interfaces;

interface

type
   iModelConexao = interface
     ['{051CD529-CE4D-45C3-B66E-C5E93899ADA0}']
     function Connection : TObject;
   end;

   iModelQuery = interface
     ['{01F2EA41-7C11-4000-8AF5-4F2407EAF6AA}']
     function Query : TObject;
     function OpenTable (aTable : String ) : iModelQuery;
   end;

   iModelConexaoFactory = interface
     ['{AC8A42E8-3034-4713-883E-38A0F7EB6AF0}']
     function Conexao : iModelConexao;
     function Query : iModelQuery;
   end;

implementation

end.
