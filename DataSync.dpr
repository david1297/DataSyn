program DataSync;

uses
  System.StartUpCopy,
  FMX.Forms,
  Principal in 'Principal.pas' {Main} ,
  Parametros in 'Parametros.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;

end.
