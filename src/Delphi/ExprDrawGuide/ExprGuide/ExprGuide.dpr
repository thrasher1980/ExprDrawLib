program ExprGuide;

uses
  Forms,
  EG in 'EG.pas' {FormGuide},
  ExprDraw in 'ExprDraw.pas',
  ExprMake in 'ExprMake.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormGuide, FormGuide);
  Application.Run;
end.
