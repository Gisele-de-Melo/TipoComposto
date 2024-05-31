//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
 TPerson = record
    Name: String;
    Age: Integer;
    Salary: Currency;
  end;

  TDays = (Sun, Mon, Tue, Wed, Thu, Fri, Sat); //Domingo, Segunda, Terça, Quarta, Quinta, Sexta, Sábado

  TDaysSet = set of TDays; //Conjunto do tipo TDays

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    procedure ArrayExample;
    procedure RecordExample;
    procedure EnumExample;
    procedure SetExample;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ArrayExample;
var
  IntArray: array[1..5] of Integer;
  I: Integer;

begin
  for I := 1 to 5 do
    IntArray[I] := I * 10;

  for I := 1 to 5 do
    ShowMessage('IntArray[' + IntToStr(I) + ']: ' + IntToStr(IntArray[I]));

end;

procedure TForm1.RecordExample;
var
  Person: TPerson;

begin
  Person.Name := 'John Doe';
  Person.Age := 30;
  Person.Salary := 45000.75;

  ShowMessage('Name: ' + Person.Name + sLineBreak +
              'Age: ' + IntToStr(Person.Age) + sLineBreak +
              'Salary: ' + CurrToStr(Person.Salary) + sLineBreak);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //Exemplo do uso de array
  ArrayExample;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //Exemplo do uso de records
  RecordExample;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  //Exemplo do uso de enumerations
  EnumExample;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  //Exemplo do uso de conjuntos
  SetExample;
end;

procedure TForm1.EnumExample;
var
  Day: TDays;

begin
  Day := Fri;
  ShowMessage('Day: '+ IntToStr(Ord(Day))); // Saídas: 5 (índice baseado em zero)
end;

procedure TForm1.SetExample;
var
  WorkDays: TDaysSet;

begin
  WorkDays := [Mon, Tue, Wed, Thu, Fri];

  if Sat in WorkDays then
    ShowMessage('Saturday is a workday')
  else
    ShowMessage('Saturday is not a workday');
end;

end.
