unit Num_;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Menus, ComCtrls, DateUtils;

type
  TF = class(TForm)
    Bevel1: TBevel;
    mm: TMainMenu;
    N1: TMenuItem;
    mNew: TMenuItem;
    sp: TStatusBar;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    Button55: TButton;
    Button56: TButton;
    Button57: TButton;
    Button58: TButton;
    Button59: TButton;
    Button60: TButton;
    Button61: TButton;
    Button62: TButton;
    Button63: TButton;
    Button64: TButton;
    Button65: TButton;
    Button66: TButton;
    Button67: TButton;
    Button68: TButton;
    Button69: TButton;
    Button70: TButton;
    Button71: TButton;
    Button72: TButton;
    Button73: TButton;
    Button74: TButton;
    Button75: TButton;
    Button76: TButton;
    Button77: TButton;
    Button78: TButton;
    Button79: TButton;
    Button80: TButton;
    Button81: TButton;
    Button82: TButton;
    Button83: TButton;
    Button84: TButton;
    Button85: TButton;
    Button86: TButton;
    Button87: TButton;
    Button88: TButton;
    Button89: TButton;
    Button90: TButton;
    Button91: TButton;
    Button92: TButton;
    Button93: TButton;
    Button94: TButton;
    Button95: TButton;
    Button96: TButton;
    Button97: TButton;
    Button98: TButton;
    Button99: TButton;
    Button100: TButton;
    mExit: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Button99Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure mNewClick(Sender: TObject);
    procedure mExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F: TF;
  A:array [0..99] of byte;//массив неповтор. последовательности чисел
  h,s,ms:Word;//часы, секунды, милисекунды
  m:word=0;//минуты
  bgnTime,endTime:TDateTime;//время старта и постначальное время
  Order:ShortInt=-1;
  number:byte=0;//число на нажатой кнопке

  const limit=15;//время на выполнение теста

implementation

{$R *.dfm}
//контроль над выполнение основного условия теста
Procedure Control(Sender:TObject);
Begin
inc(Order);//иттерация кликов
number:=StrToInt((Sender as TButton).Caption);
if(Compare(Order<>number) then
                  begin
                  ShowMessage('Вы ошиблись. Придется начать всё заново. Будьте внимательны.');
                  F.mNew.Click;
                  Order:=-1;
                  number:=0;
                  end;
End;

//генерация неповторяющихся чисел от 0 до х с последующим сохранением в глоб. массив
Procedure Rnd(x:byte);
var i,r,k:byte;
    flag:Boolean;
Begin
randomize;
k:=0;
while k<x do
begin
     r:=random(x);//if r=0 then r:=x;
     flag:=true;
     for i:=1 to High(A) do
     if r=A[i] then
                   begin
                   flag:=false;
                   break;
                   end;
     if flag=true then
                      begin
                      inc(k);
                      A[k]:=r;
                      end;
end;
End;

Procedure StartGame(n:byte);
var k:byte;
Begin
ShowMessage('Требуется последовательно найти мышкой числа от 0 до 99 за 15 минут.');
Rnd(n);
//прислвоение каждой кнопке индидуально-визуального числа
for k:=1 to n do
case k of
1:F.Button1.Caption:=IntToStr(A[k]);
2:F.Button2.Caption:=IntToStr(A[k]);
3:F.Button3.Caption:=IntToStr(A[k]);
4:F.Button4.Caption:=IntToStr(A[k]);
5:F.Button5.Caption:=IntToStr(A[k]);
6:F.Button6.Caption:=IntToStr(A[k]);
7:F.Button7.Caption:=IntToStr(A[k]);
8:F.Button8.Caption:=IntToStr(A[k]);
9:F.Button9.Caption:=IntToStr(A[k]);
10:F.Button10.Caption:=IntToStr(A[k]);
11:F.Button11.Caption:=IntToStr(A[k]);
12:F.Button12.Caption:=IntToStr(A[k]);
13:F.Button13.Caption:=IntToStr(A[k]);
14:F.Button14.Caption:=IntToStr(A[k]);
15:F.Button15.Caption:=IntToStr(A[k]);
16:F.Button16.Caption:=IntToStr(A[k]);
17:F.Button17.Caption:=IntToStr(A[k]);
18:F.Button18.Caption:=IntToStr(A[k]);
19:F.Button19.Caption:=IntToStr(A[k]);
20:F.Button20.Caption:=IntToStr(A[k]);
21:F.Button21.Caption:=IntToStr(A[k]);
22:F.Button22.Caption:=IntToStr(A[k]);
23:F.Button23.Caption:=IntToStr(A[k]);
24:F.Button24.Caption:=IntToStr(A[k]);
25:F.Button25.Caption:=IntToStr(A[k]);
26:F.Button26.Caption:=IntToStr(A[k]);
27:F.Button27.Caption:=IntToStr(A[k]);
28:F.Button28.Caption:=IntToStr(A[k]);
29:F.Button29.Caption:=IntToStr(A[k]);
30:F.Button30.Caption:=IntToStr(A[k]);
31:F.Button31.Caption:=IntToStr(A[k]);
32:F.Button32.Caption:=IntToStr(A[k]);
33:F.Button33.Caption:=IntToStr(A[k]);
34:F.Button34.Caption:=IntToStr(A[k]);
35:F.Button35.Caption:=IntToStr(A[k]);
36:F.Button36.Caption:=IntToStr(A[k]);
37:F.Button37.Caption:=IntToStr(A[k]);
38:F.Button38.Caption:=IntToStr(A[k]);
39:F.Button39.Caption:=IntToStr(A[k]);
40:F.Button40.Caption:=IntToStr(A[k]);
41:F.Button41.Caption:=IntToStr(A[k]);
42:F.Button42.Caption:=IntToStr(A[k]);
43:F.Button43.Caption:=IntToStr(A[k]);
44:F.Button44.Caption:=IntToStr(A[k]);
45:F.Button45.Caption:=IntToStr(A[k]);
46:F.Button46.Caption:=IntToStr(A[k]);
47:F.Button47.Caption:=IntToStr(A[k]);
48:F.Button48.Caption:=IntToStr(A[k]);
49:F.Button49.Caption:=IntToStr(A[k]);
50:F.Button50.Caption:=IntToStr(A[k]);
51:F.Button51.Caption:=IntToStr(A[k]);
52:F.Button52.Caption:=IntToStr(A[k]);
53:F.Button53.Caption:=IntToStr(A[k]);
54:F.Button54.Caption:=IntToStr(A[k]);
55:F.Button55.Caption:=IntToStr(A[k]);
56:F.Button56.Caption:=IntToStr(A[k]);
57:F.Button57.Caption:=IntToStr(A[k]);
58:F.Button58.Caption:=IntToStr(A[k]);
59:F.Button59.Caption:=IntToStr(A[k]);
60:F.Button60.Caption:=IntToStr(A[k]);
61:F.Button61.Caption:=IntToStr(A[k]);
62:F.Button62.Caption:=IntToStr(A[k]);
63:F.Button63.Caption:=IntToStr(A[k]);
64:F.Button64.Caption:=IntToStr(A[k]);
65:F.Button65.Caption:=IntToStr(A[k]);
66:F.Button66.Caption:=IntToStr(A[k]);
67:F.Button67.Caption:=IntToStr(A[k]);
68:F.Button68.Caption:=IntToStr(A[k]);
69:F.Button69.Caption:=IntToStr(A[k]);
70:F.Button70.Caption:=IntToStr(A[k]);
71:F.Button71.Caption:=IntToStr(A[k]);
72:F.Button72.Caption:=IntToStr(A[k]);
73:F.Button73.Caption:=IntToStr(A[k]);
74:F.Button74.Caption:=IntToStr(A[k]);
75:F.Button75.Caption:=IntToStr(A[k]);
76:F.Button76.Caption:=IntToStr(A[k]);
77:F.Button77.Caption:=IntToStr(A[k]);
78:F.Button78.Caption:=IntToStr(A[k]);
79:F.Button79.Caption:=IntToStr(A[k]);
80:F.Button80.Caption:=IntToStr(A[k]);
81:F.Button81.Caption:=IntToStr(A[k]);
82:F.Button82.Caption:=IntToStr(A[k]);
83:F.Button83.Caption:=IntToStr(A[k]);
84:F.Button84.Caption:=IntToStr(A[k]);
85:F.Button85.Caption:=IntToStr(A[k]);
86:F.Button86.Caption:=IntToStr(A[k]);
87:F.Button87.Caption:=IntToStr(A[k]);
88:F.Button88.Caption:=IntToStr(A[k]);
89:F.Button89.Caption:=IntToStr(A[k]);
90:F.Button90.Caption:=IntToStr(A[k]);
91:F.Button91.Caption:=IntToStr(A[k]);
92:F.Button92.Caption:=IntToStr(A[k]);
93:F.Button93.Caption:=IntToStr(A[k]);
94:F.Button94.Caption:=IntToStr(A[k]);
95:F.Button95.Caption:=IntToStr(A[k]);
96:F.Button96.Caption:=IntToStr(A[k]);
97:F.Button97.Caption:=IntToStr(A[k]);
98:F.Button98.Caption:=IntToStr(A[k]);
99:F.Button99.Caption:=IntToStr(A[k]);
100:F.Button100.Caption:=IntToStr(A[k]);
  end;
    bgnTime:=GetTime;//время старта теста
End;

procedure TF.FormShow(Sender: TObject);
begin
  StartGame(100);
end;

procedure TF.Button99Click(Sender: TObject);
begin
//i:=(Sender as TButton).ComponentIndex;//индекс кнопки
Control(Sender);
end;

procedure TF.Timer1Timer(Sender: TObject);
var tm:TDateTime;
begin
endTime:=GetTime;
tm:=endTime-bgnTime;
DecodeTime(tm,h,m,s,ms);
F.sp.Panels[0].Text:='Таймер - '+TimeToStr(tm);
if(m<=limit)and(Order=99) then
ShowMessage('У Вас хорошая концентрация внимания.')
else
if(m>limit)and(Order in [0..89]) then
         begin
         ShowMessage(IntToStr(limit)+' минут истекло. Вы не успели найти все 99 чисел. Концентрация внимания снижена.');
         F.mNew.Click;
         end;
end;

procedure TF.mNewClick(Sender: TObject);
begin
StartGame(100);
end;

procedure TF.mExitClick(Sender: TObject);
begin
F.Close;
end;

end.
