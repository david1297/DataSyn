unit Parametros;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Rtti, FMX.Grid.Style,
  FMX.Grid, FMX.ScrollBox;

type
  TForm2 = class(TForm)
    Button1: TButton;
    StringGrid1: TStringGrid;
    Parametro: TStringColumn;
    Seleccionar: TCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses Principal;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Main.Cuentas := StringGrid1.Cells[1, 0].ToBoolean;
  Main.Terceros := StringGrid1.Cells[1, 1].ToBoolean;
  Main.Items := StringGrid1.Cells[1, 2].ToBoolean;
  Main.Usuarios := StringGrid1.Cells[1, 3].ToBoolean;
  Main.FormasPago := StringGrid1.Cells[1, 4].ToBoolean;
  Form2.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0, 0] := 'Cuentas';
  StringGrid1.Cells[1, 0] := BoolToStr(Main.Cuentas, True);
  StringGrid1.Cells[0, 1] := 'Terceros';
  StringGrid1.Cells[1, 1] := BoolToStr(Main.Terceros, True);
  StringGrid1.Cells[0, 2] := 'Items';
  StringGrid1.Cells[1, 2] := BoolToStr(Main.Items, True);
  StringGrid1.Cells[0, 3] := 'Usuarios';
  StringGrid1.Cells[1, 3] := BoolToStr(Main.Usuarios, True);
  StringGrid1.Cells[0, 4] := 'Formas De Pago';
  StringGrid1.Cells[1, 4] := BoolToStr(Main.FormasPago, True);

end;

end.
