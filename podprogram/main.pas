unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfMain }

  TfMain = class(TForm)
    knopka1: TButton;
    knopka2: TButton;
    kniopka3: TButton;
    knopka4: TButton;
    knopka5: TButton;
    pole: TEdit;
    tx: TLabel;
    procedure knopka1Click(Sender: TObject);
    procedure knopka2Click(Sender: TObject);
    procedure kniopka3Click(Sender: TObject);
    procedure knopka4Click(Sender: TObject);
    procedure knopka5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure MyPrivat;
    procedure MyDouble;
  public

  end;

var
  fMain: TfMain;
  MyNum: real;

implementation

{$R *.lfm}

{ TfMain }
procedure Udvoenie(st: string);
var
  r:real;
  begin
    r:=StrToFloat(st);
    r:=r*2;
    ShowMessage(FloatToStr(r));
  end;

procedure TfMain.knopka1Click(Sender: TObject);
begin
  Udvoenie(pole.Text);
end;

function FuncUdvoenie(st: string): string;
var
  r: real;
begin
   r:= StrToFloat(st);
   r:= r * 2;
   Result:= FloatToStr(r);
end;

procedure TfMain.knopka2Click(Sender: TObject);
begin
   ShowMessage(FuncUdvoenie(pole.Text));
end;

procedure UdvoeniePoSsilke(var r: real);
begin
  r:= r * 2;
end;

procedure TfMain.kniopka3Click(Sender: TObject);
  var
  myReal: real;
begin
  myReal:= StrToFloat(pole.Text);
  UdvoeniePoSsilke(myReal);
  ShowMessage(FloatToStr(myReal));
end;

procedure TfMain.knopka4Click(Sender: TObject);
begin
   MyPrivat;
end;

procedure TfMain.knopka5Click(Sender: TObject);
begin
  MyNum:= StrToFloat(pole.Text);
  MyDouble;
  ShowMessage(FloatToStr(MyNum));
end;

procedure TfMain.FormCreate(Sender: TObject);
begin

end;

procedure TfMain.MyPrivat;
  var
  r: real;
begin
  r:= StrToFloat(pole.Text);
  r:= r * 2;
  ShowMessage(FloatToStr(r));
end;

procedure TfMain.MyDouble;
begin
  MyNum:= MyNum * 2;
end;

end.

