program Num;

uses
  Forms,
  Num_ in 'Num_.pas' {F};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Числа';
  Application.CreateForm(TF, F);
  Application.Run;
end.
