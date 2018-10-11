unit DUP.Model.Conexao.Firedac.Conexao;

interface

uses DUP.Model.Conexao.Interfaces, System.SysUtils, System.Classes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;

type
   TModelConexaoFiredacConexao = class(TInterfacedObject, iModelConexao)
      private
         FConexao : TFDConnection;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iModelConexao;
         function Connection : TObject;

end;

implementation

{ TModelConexaoFiredacConexao }

function TModelConexaoFiredacConexao.Connection: TObject;
begin
   Result := FConexao;
end;

constructor TModelConexaoFiredacConexao.Create;
begin
   FConexao := TFDConnection.Create(nil);

   FConexao.Params.DriverID := 'PG';
   FConexao.Params.UserName := 'postgres';
   FConexao.Params.Password := 'mmormmor';
   FConexao.Params.Database := 'DUP';
   FConexao.Connected := true;
end;

destructor TModelConexaoFiredacConexao.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

class function TModelConexaoFiredacConexao.New: iModelConexao;
begin
  Result := Self.Create;
end;

end.
