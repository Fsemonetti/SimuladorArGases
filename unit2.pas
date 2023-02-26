unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls, ExtCtrls, Buttons;

type





  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button11: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckGroup1: TCheckGroup;
    DisjNome1: TStaticText;
    RadioButton1: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioGroup1: TRadioGroup;
    StaticText1: TStaticText;
    DisjNome: TStaticText;

    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
   procedure Desliga_sinc_DJ(Sender: TObject);
    procedure Liga_sinc_DJ(Sender: TObject);
    procedure CheckBox12Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}
     uses unit1;
{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin
self.ScaleBy(3, 4);





end;

procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  form2.Desliga_sinc_DJ(self);
  form2.CheckBox1.visible:=false;
  form2.CheckBox2.visible:=false;
  form2.CheckBox3.visible:=false;
  form2.CheckBox4.visible:=false;
  form2.CheckBox5.visible:=false;
  form2.CheckBox6.visible:=false;
  form2.CheckBox7.visible:=false;
  form2.CheckBox8.visible:=false;
  form2.CheckBox9.visible:=false;
  form2.CheckBox10.visible:=false;
  form2.CheckBox11.visible:=false;
  form2.CheckBox12.visible:=false;



  form2.RadioButton1.Checked:=false;
  form2.RadioButton2.Checked:=false;
  form2.RadioButton3.Checked:=false;
  form2.RadioButton4.Checked:=false;
  form2.RadioButton5.Checked:=false;
  form2.RadioButton6.Checked:=false;
  form2.RadioButton7.Checked:=false;
  form2.RadioButton8.Checked:=false;
  form2.RadioButton9.Checked:=false;
  form2.RadioButton10.Checked:=false;
  form2.RadioButton11.Checked:=false;

 // desliga chave de sincronismo
 //form1.SetaValorVariavel('SL_SINC_'+form2.DisjNome.Caption,false);
 // form2.StaticText2.Caption:='Desligada';

//  form1.salvar_Arquivos;
end;


procedure TForm2.Desliga_sinc_DJ(Sender: TObject);
var
  texto : string;
begin

end;

procedure TForm2.Liga_sinc_DJ(Sender: TObject);
var
  texto : string;
begin

  end;


procedure TForm2.Button1Click(Sender: TObject);
Var
  F : integer;
  Aberto,Fechado : string[15];
  begin



  end;

procedure TForm2.Button10Click(Sender: TObject);
var
  ttag : string;
begin


end;

procedure TForm2.Button11Click(Sender: TObject);
begin
  form2.Close;
end;

procedure TForm2.CheckBox12Change(Sender: TObject);
var
  texto,variavel : string;
begin

texto:=tcomponent(sender).name; // pega o nome do componente
variavel:='';
if texto='CheckBox1' then variavel:=Form2.CheckBox1.Hint;
if texto='CheckBox2' then variavel:=Form2.CheckBox2.Hint;
if texto='CheckBox3' then variavel:=Form2.CheckBox3.Hint;
if texto='CheckBox4' then variavel:=Form2.CheckBox4.Hint;
if texto='CheckBox5' then variavel:=Form2.CheckBox5.Hint;
if texto='CheckBox6' then variavel:=Form2.CheckBox6.Hint;
if texto='CheckBox7' then variavel:=Form2.CheckBox7.Hint;
if texto='CheckBox8' then variavel:=Form2.CheckBox8.Hint;
if texto='CheckBox9' then variavel:=Form2.CheckBox9.Hint;
if texto='CheckBox10' then variavel:=Form2.CheckBox10.Hint;
if texto='CheckBox11' then variavel:=Form2.CheckBox11.Hint;
if texto='CheckBox12' then variavel:=Form2.CheckBox12.Hint;


end;



end.

