unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, csvdataset, DB, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls, DBGrids, DBCtrls, jvCSVBase;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure jvCSVBase1CursorChanged(Sender: Tobject; NameValues: TstringList;
      Fieldcount: integer);
    procedure StringGrid2Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
var
  f : integer;
begin
  stringgrid1.LoadFromCSVFile('Digitais.csv',',',true,0,true);
 stringgrid2.LoadFromCSVFile('logica.csv',',',true,0,true);
for f:=0 to 2126 do combobox1.AddItem(stringgrid1.Cells[0,f],nil);

end;

procedure TForm3.ComboBox1Change(Sender: TObject);
var
  f : integer;
begin
    for f:=0 to 2126 do
      begin
      if stringgrid1.Cells[0,f]=combobox1.Caption  then stringgrid1.TopRow:=f;
      end;

end;

procedure TForm3.jvCSVBase1CursorChanged(Sender: Tobject;
  NameValues: TstringList; Fieldcount: integer);
begin

end;

procedure TForm3.StringGrid2Click(Sender: TObject);
var
  f : integer;
begin
if   stringgrid2.col=3 then
begin
      ComboBox1.Text:=stringgrid2.Cells[stringgrid2.Col,stringgrid2.row];
      for f:=0 to 2126 do
      begin
      if stringgrid1.Cells[0,f]=stringgrid2.Cells[stringgrid2.Col,stringgrid2.row] then stringgrid1.TopRow:=f;
      end;
      end;
end;



end.

