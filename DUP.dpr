program DUP;

uses
  Vcl.Forms,
  DUP.View.Principal in 'View\DUP.View.Principal.pas' {Form1},
  DUP.Controller in 'Controller\DUP.Controller.pas',
  DUP.Model.Entidades.Factory in 'Model\Entidades\DUP.Model.Entidades.Factory.pas',
  DUP.Model.Conexao.Interfaces in 'Model\Conexao\DUP.Model.Conexao.Interfaces.pas',
  DUP.Model.Conexao.Firedac.Conexao in 'Model\Conexao\DUP.Model.Conexao.Firedac.Conexao.pas',
  DUP.Model.Conexao.Firedac.Query in 'Model\Conexao\DUP.Model.Conexao.Firedac.Query.pas',
  DUP.Model.Conexao.Factory in 'Model\Conexao\DUP.Model.Conexao.Factory.pas',
  DUP.Model.Entidades.Interfaces in 'Model\Entidades\DUP.Model.Entidades.Interfaces.pas',
  DUP.Model.Entidades.Produto in 'Model\Entidades\DUP.Model.Entidades.Produto.pas',
  DUP.Controller.Interfaces in 'Controller\DUP.Controller.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
