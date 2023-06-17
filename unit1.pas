unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Math;

type


  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
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
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
  private

  public

  end;
procedure drawcube();
procedure drawpyramyd();
procedure massiv();
procedure massiv2();
procedure signature();

var
  Form1: TForm1;
  i, j: integer;
  a, a2, h, u1, u2, ut, m1, m2, mt: real;
  P, tem: array[1..8,1..4] of integer;
  P2, tem2: array[1..9,1..4]of integer;
const
  pi=3.14;
implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button24Click(Sender: TObject);         {shut up fuck up}
begin
  close();
end;

procedure TForm1.Button25Click(Sender: TObject);         {cube size-}
begin
  Image1.Picture.Clear;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=Round(tem[i,1]/m1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*0);
    P[i,2]:=Round(tem[i,1]*0+tem[i,2]/m1+tem[i,3]*0+tem[i,4]*0);
    P[i,3]:=Round(tem[i,1]*0+tem[i,2]*0+tem[i,3]/m1+tem[i,4]*0);
    P[i,4]:=Round(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=Round(tem2[i,1]/m2+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,2]:=Round(tem2[i,1]*0+tem2[i,2]/m2+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,3]:=Round(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]/m2+tem2[i,4]*0);
    P2[i,4]:=Round(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=Round(tem2[i,1]/mt+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,2]:=Round(tem2[i,1]*0+tem2[i,2]/mt+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,3]:=Round(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]/mt+tem2[i,4]*0);
    P2[i,4]:=Round(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=Round(tem[i,1]/mt+tem[i,2]*0+tem[i,3]*0+tem[i,4]*0);
    P[i,2]:=Round(tem[i,1]*0+tem[i,2]/mt+tem[i,3]*0+tem[i,4]*0);
    P[i,3]:=Round(tem[i,1]*0+tem[i,2]*0+tem[i,3]/mt+tem[i,4]*0);
    P[i,4]:=Round(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button1Click(Sender: TObject);          {spinning cube}
begin
  Image1.Picture.Clear;
  case RadioGroup1.ItemIndex OF
  0:
    begin
    massiv;
    for i:=1 to 8 do
      begin
        P[i,1]:=(tem[i,1]*1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*0);
        P[i,2]:=Round(tem[i,1]*0+tem[i,2]*cos(u1)+tem[i,3]*sin(u1)+tem[i,4]*0);
        P[i,3]:=Round(tem[i,1]*0+tem[i,2]*(-sin(u1))+tem[i,3]*cos(u1)+tem[i,4]*0);
        P[i,4]:=Round(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
      end;
      drawcube;
    end;
  1:
    begin
    massiv;
    for i:=1 to 8 do
      begin
        P[i,1]:=Round(tem[i,1]*cos(u1)+tem[i,2]*0+tem[i,3]*(-sin(u1))+tem[i,4]*0);
        P[i,2]:=(tem[i,1]*0+tem[i,2]*1+tem[i,3]*0+tem[i,4]*0);
        P[i,3]:=Round(tem[i,1]*sin(u1)+tem[i,2]*0+tem[i,3]*cos(u1)+tem[i,4]*0);
        P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
      end;
      drawcube;
    end;
  2:
    begin
    massiv;
    for i:=1 to 8 do
      begin
        P[i,1]:=Round(tem[i,1]*cos(u1)+tem[i,2]*sin(u1)+tem[i,3]*0+tem[i,4]*0);
        P[i,2]:=Round(tem[i,1]*(-sin(u1))+tem[i,2]*cos(u1)+tem[i,3]*0+tem[i,4]*0);
        P[i,3]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*1+tem[i,4]*0);
        P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
      end;
      drawcube;
    end;
  end;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=(tem2[i,1]*1+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,2]:=(tem2[i,1]*0+tem2[i,2]*1+tem2[i,3]*0+tem2[i,4]*3);
    P2[i,3]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*1+tem2[i,4]*0);
    P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=(tem[i,1]*1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*0);
    P[i,2]:=(tem[i,1]*0+tem[i,2]*1+tem[i,3]*0+tem[i,4]*3);
    P[i,3]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*1+tem[i,4]*0);
    P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=(tem2[i,1]*1+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*3);
    P2[i,2]:=(tem2[i,1]*0+tem2[i,2]*1+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,3]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*1+tem2[i,4]*0);
    P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=(tem[i,1]*1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*3);
    P[i,2]:=(tem[i,1]*0+tem[i,2]*1+tem[i,3]*0+tem[i,4]*0);
    P[i,3]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*1+tem[i,4]*0);
    P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=(tem2[i,1]*1+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*(-3));
    P2[i,2]:=(tem2[i,1]*0+tem2[i,2]*1+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,3]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*1+tem2[i,4]*0);
    P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=(tem[i,1]*1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*(-3));
    P[i,2]:=(tem[i,1]*0+tem[i,2]*1+tem[i,3]*0+tem[i,4]*0);
    P[i,3]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*1+tem[i,4]*0);
    P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=Round(tem2[i,1]*mt+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,2]:=Round(tem2[i,1]*0+tem2[i,2]*mt+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,3]:=Round(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*mt+tem2[i,4]*0);
    P2[i,4]:=Round(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=Round(tem[i,1]*mt+tem[i,2]*0+tem[i,3]*0+tem[i,4]*0);
    P[i,2]:=Round(tem[i,1]*0+tem[i,2]*mt+tem[i,3]*0+tem[i,4]*0);
    P[i,3]:=Round(tem[i,1]*0+tem[i,2]*0+tem[i,3]*mt+tem[i,4]*0);
    P[i,4]:=Round(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button10Click(Sender: TObject);         {stray pyramyd}
begin
  Image1.Picture.Clear;
  drawpyramyd;
end;

procedure TForm1.Button11Click(Sender: TObject);         {spinning pyramyd}
begin
  Image1.Picture.Clear;
  case RadioGroup2.ItemIndex OF
  0:
    begin
    massiv2;
    for i:=1 to 9 do
      begin
        P2[i,1]:=(tem2[i,1]*1+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*0);
        P2[i,2]:=Round(tem2[i,1]*0+tem2[i,2]*cos(u2)+tem2[i,3]*sin(u2)+tem2[i,4]*0);
        P2[i,3]:=Round(tem2[i,1]*0+tem2[i,2]*(-sin(u2))+tem2[i,3]*cos(u2)+tem2[i,4]*0);
        P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
      end;
      drawpyramyd;
    end;
  1:
    begin
    massiv2;
    for i:=1 to 9 do
      begin
        P2[i,1]:=Round(tem2[i,1]*cos(u2)+tem2[i,2]*0+tem2[i,3]*(-sin(u2))+tem2[i,4]*0);
        P2[i,2]:=(tem2[i,1]*0+tem2[i,2]*1+tem2[i,3]*0+tem2[i,4]*0);
        P2[i,3]:=Round(tem2[i,1]*sin(u2)+tem2[i,2]*0+tem2[i,3]*cos(u2)+tem2[i,4]*0);
        P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
      end;
      drawpyramyd;
    end;
  2:
    begin
    massiv2;
    for i:=1 to 8 do
      begin
        P2[i,1]:=Round(tem2[i,1]*cos(u2)+tem2[i,2]*sin(u2)+tem2[i,3]*0+tem2[i,4]*0);
        P2[i,2]:=Round(tem2[i,1]*(-sin(u2))+tem2[i,2]*cos(u2)+tem2[i,3]*0+tem2[i,4]*0);
        P2[i,3]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*1+tem2[i,4]*0);
        P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
      end;
      drawpyramyd;
    end;
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);         {pyramyd, go up}
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=(tem2[i,1]*1+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,2]:=(tem2[i,1]*0+tem2[i,2]*1+tem2[i,3]*0+tem2[i,4]*(-3));
    P2[i,3]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*1+tem2[i,4]*0);
    P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
end;

procedure TForm1.Button13Click(Sender: TObject);         {pyramyd, go down}
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=(tem2[i,1]*1+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,2]:=(tem2[i,1]*0+tem2[i,2]*1+tem2[i,3]*0+tem2[i,4]*3);
    P2[i,3]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*1+tem2[i,4]*0);
    P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
end;

procedure TForm1.Button14Click(Sender: TObject);         {pyramyd, go right}
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=(tem2[i,1]*1+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*3);
    P2[i,2]:=(tem2[i,1]*0+tem2[i,2]*1+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,3]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*1+tem2[i,4]*0);
    P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
end;

procedure TForm1.Button15Click(Sender: TObject);         {pyramyd, go left}
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=(tem2[i,1]*1+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*(-3));
    P2[i,2]:=(tem2[i,1]*0+tem2[i,2]*1+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,3]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*1+tem2[i,4]*0);
    P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
end;

procedure TForm1.Button16Click(Sender: TObject);         {pyramyd size+}
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=Round(tem2[i,1]*m2+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,2]:=Round(tem2[i,1]*0+tem2[i,2]*m2+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,3]:=Round(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*m2+tem2[i,4]*0);
    P2[i,4]:=Round(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Image1.Picture.Clear;
  case RadioGroup3.ItemIndex OF
  0:
  begin
    massiv;
    for i:=1 to 8 do
      begin
        P[i,1]:=(tem[i,1]*1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*0);
        P[i,2]:=Round(tem[i,1]*0+tem[i,2]*cos(ut)+tem[i,3]*sin(ut)+tem[i,4]*0);
        P[i,3]:=Round(tem[i,1]*0+tem[i,2]*(-sin(ut))+tem[i,3]*cos(ut)+tem[i,4]*0);
        P[i,4]:=Round(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
      end;
      drawcube;
    massiv2;
    for i:=1 to 9 do
      begin
        P2[i,1]:=(tem2[i,1]*1+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*0);
        P2[i,2]:=Round(tem2[i,1]*0+tem2[i,2]*cos(ut)+tem2[i,3]*sin(ut)+tem2[i,4]*0);
        P2[i,3]:=Round(tem2[i,1]*0+tem2[i,2]*(-sin(ut))+tem2[i,3]*cos(ut)+tem2[i,4]*0);
        P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
      end;
      drawpyramyd;
  end;
  1:
  begin
    massiv;
    for i:=1 to 8 do
      begin
        P[i,1]:=Round(tem[i,1]*cos(ut)+tem[i,2]*0+tem[i,3]*(-sin(ut))+tem[i,4]*0);
        P[i,2]:=(tem[i,1]*0+tem[i,2]*1+tem[i,3]*0+tem[i,4]*0);
        P[i,3]:=Round(tem[i,1]*sin(ut)+tem[i,2]*0+tem[i,3]*cos(ut)+tem[i,4]*0);
        P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
      end;
      drawcube;
    massiv2;
    for i:=1 to 9 do
      begin
        P2[i,1]:=Round(tem2[i,1]*cos(ut)+tem2[i,2]*0+tem2[i,3]*(-sin(ut))+tem2[i,4]*0);
        P2[i,2]:=(tem2[i,1]*0+tem2[i,2]*1+tem2[i,3]*0+tem2[i,4]*0);
        P2[i,3]:=Round(tem2[i,1]*sin(ut)+tem2[i,2]*0+tem2[i,3]*cos(ut)+tem2[i,4]*0);
        P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
      end;
      drawpyramyd;
  end;
  2:
  begin
    massiv;
    for i:=1 to 8 do
      begin
        P[i,1]:=Round(tem[i,1]*cos(ut)+tem[i,2]*sin(ut)+tem[i,3]*0+tem[i,4]*0);
        P[i,2]:=Round(tem[i,1]*(-sin(ut))+tem[i,2]*cos(ut)+tem[i,3]*0+tem[i,4]*0);
        P[i,3]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*1+tem[i,4]*0);
        P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
      end;
      drawcube;
    massiv2;
    for i:=1 to 8 do
      begin
        P2[i,1]:=Round(tem2[i,1]*cos(ut)+tem2[i,2]*sin(ut)+tem2[i,3]*0+tem2[i,4]*0);
        P2[i,2]:=Round(tem2[i,1]*(-sin(ut))+tem2[i,2]*cos(ut)+tem2[i,3]*0+tem2[i,4]*0);
        P2[i,3]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*1+tem2[i,4]*0);
        P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
      end;
    drawpyramyd;
  end;
  end;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  if (a>=(1+sqrt(2))*a2) then
   if (a>=h) then
    begin
      drawcube;
      drawpyramyd;
  end;
  if (a<((1+sqrt(2))*a2)) then
    ShowMessage('Невозможно вписать пирамиду в куб. Проверьте введённые значения');
  if (a<h) then
    ShowMessage('Невозможно вписать пирамиду в куб. Проверьте введённые значения');
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  Image1.Picture.Clear;
  massiv2;
  for i:=1 to 9 do
  begin
    P2[i,1]:=(tem2[i,1]*1+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*0);
    P2[i,2]:=(tem2[i,1]*0+tem2[i,2]*1+tem2[i,3]*0+tem2[i,4]*(-3));
    P2[i,3]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*1+tem2[i,4]*0);
    P2[i,4]:=(tem2[i,1]*0+tem2[i,2]*0+tem2[i,3]*0+tem2[i,4]*1);
  end;
  drawpyramyd;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=(tem[i,1]*1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*0);
    P[i,2]:=(tem[i,1]*0+tem[i,2]*1+tem[i,3]*0+tem[i,4]*(-3));
    P[i,3]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*1+tem[i,4]*0);
    P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button2Click(Sender: TObject);          {cube, go up}
begin
  Image1.Picture.Clear;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=(tem[i,1]*1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*0);
    P[i,2]:=(tem[i,1]*0+tem[i,2]*1+tem[i,3]*0+tem[i,4]*(-3));
    P[i,3]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*1+tem[i,4]*0);
    P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button3Click(Sender: TObject);          {cube, go down}
begin
  Image1.Picture.Clear;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=(tem[i,1]*1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*0);
    P[i,2]:=(tem[i,1]*0+tem[i,2]*1+tem[i,3]*0+tem[i,4]*3);
    P[i,3]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*1+tem[i,4]*0);
    P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button4Click(Sender: TObject);          {cube, go right}
begin
  Image1.Picture.Clear;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=(tem[i,1]*1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*3);
    P[i,2]:=(tem[i,1]*0+tem[i,2]*1+tem[i,3]*0+tem[i,4]*0);
    P[i,3]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*1+tem[i,4]*0);
    P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button5Click(Sender: TObject);          {cube, go left}
begin
  Image1.Picture.Clear;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=(tem[i,1]*1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*(-3));
    P[i,2]:=(tem[i,1]*0+tem[i,2]*1+tem[i,3]*0+tem[i,4]*0);
    P[i,3]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*1+tem[i,4]*0);
    P[i,4]:=(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button6Click(Sender: TObject);          {cube size+}
begin
  Image1.Picture.Clear;
  massiv;
  for i:=1 to 8 do
  begin
    P[i,1]:=Round(tem[i,1]*m1+tem[i,2]*0+tem[i,3]*0+tem[i,4]*0);
    P[i,2]:=Round(tem[i,1]*0+tem[i,2]*m1+tem[i,3]*0+tem[i,4]*0);
    P[i,3]:=Round(tem[i,1]*0+tem[i,2]*0+tem[i,3]*m1+tem[i,4]*0);
    P[i,4]:=Round(tem[i,1]*0+tem[i,2]*0+tem[i,3]*0+tem[i,4]*1);
  end;
  drawcube;
end;

procedure TForm1.Button7Click(Sender: TObject);          {your cube is so big}
begin
  ShowMessage('Объём куба равен: '+FloatToStr(a*a*a)+' см^3');
end;

procedure TForm1.Button8Click(Sender: TObject);          {stray cube}
begin
  Image1.Picture.Clear;
  drawcube;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  ShowMessage('Объём пирамиды равен: '+IntToStr(Round(2*a*a*(sqrt(2)+1)*h/3))+' см^3');
end;

procedure TForm1.Edit1Change(Sender: TObject);           {cube init}
begin
  a:=StrToFloat(Edit1.Text);
  P[1, 1]:=Round(-0.5*a);
  P[1, 2]:=Round(0.5*a);
  P[1, 3]:=0;
  P[1, 4]:=1;

  P[2, 1]:=Round(-0.5*a);
  P[2, 2]:=Round(-0.5*a);
  P[2, 3]:=0;
  P[2, 4]:=1;

  P[3, 1]:=Round(0.5*a);
  P[3, 2]:=Round(-0.5*a);;
  P[3, 3]:=0;
  P[3, 4]:=1;

  P[4, 1]:=Round(0.5*a);
  P[4, 2]:=Round(0.5*a);
  P[4, 3]:=0;
  P[4, 4]:=1;

  P[5, 1]:=Round(-0.5*a);
  P[5, 2]:=Round(0.5*a);
  P[5, 3]:=Round(a);
  P[5, 4]:=1;

  P[6, 1]:=Round(-0.5*a);
  P[6, 2]:=Round(-0.5*a);
  P[6, 3]:=Round(a);
  P[6, 4]:=1;

  P[7, 1]:=Round(0.5*a);
  P[7, 2]:=Round(-0.5*a);
  P[7, 3]:=Round(a);
  P[7, 4]:=1;

  P[8, 1]:=Round(0.5*a);
  P[8, 2]:=Round(0.5*a);
  P[8, 3]:=Round(a);
  P[8, 4]:=1;
end;

procedure TForm1.Edit2Change(Sender: TObject);           {pyramyd init}
begin
  h:=StrToFloat(Edit2.Text);
end;

procedure TForm1.Edit3Change(Sender: TObject);           {rolling thunder cube}
begin
  u1:=StrToFloat(Edit3.Text);
  u1:=u1*pi/180;
end;

procedure TForm1.Edit4Change(Sender: TObject);           {hey bro nice cub size}
begin
  m1:=StrToFloat(Edit4.Text);
end;

procedure TForm1.Edit5Change(Sender: TObject);           {rolling thunder pyramyd}
begin
  u2:=StrToFloat(Edit5.Text);
  u2:=u2*pi/180;
end;

procedure TForm1.Edit6Change(Sender: TObject);           {hey bro nice pyramyd size}
begin
  m2:=StrToFloat(Edit6.Text);
end;

procedure TForm1.Edit7Change(Sender: TObject);
begin
  ut:=StrToFloat(Edit7.Text);
  ut:=ut*pi/180;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
  mt:=StrToFloat(Edit8.Text);
end;

procedure TForm1.Edit9Change(Sender: TObject);
begin
  a2:=StrToFloat(Edit9.Text);

  P2[1,1]:=Round(-0.5*a2);
  P2[1,2]:=Round((sqrt(2)+1)*a2/2);
  P2[1,3]:=0;
  P2[1,4]:=1;

  P2[2,1]:=Round(-(sqrt(2)+1)*a2/2);
  P2[2,2]:=Round(0.5*a2);
  P2[2,3]:=0;
  P2[2,4]:=1;

  P2[3,1]:=Round(-(sqrt(2)+1)*a2/2);
  P2[3,2]:=Round(-0.5*a2);
  P2[3,3]:=0;
  P2[3,4]:=1;

  P2[4,1]:=Round(-0.5*a2);
  P2[4,2]:=Round(-(sqrt(2)+1)*a2/2);
  P2[4,3]:=0;
  P2[4,4]:=1;

  P2[5,1]:=Round(0.5*a2);
  P2[5,2]:=Round(-(sqrt(2)+1)*a2/2);
  P2[5,3]:=0;
  P2[5,4]:=1;

  P2[6,1]:=Round((sqrt(2)+1)*a2/2);
  P2[6,2]:=Round(-0.5*a2);
  P2[6,3]:=0;
  P2[6,4]:=1;

  P2[7,1]:=Round((sqrt(2)+1)*a2/2);
  P2[7,2]:=Round(0.5*a2);
  P2[7,3]:=0;
  P2[7,4]:=1;

  P2[8,1]:=Round(0.5*a2);
  P2[8,2]:=Round((sqrt(2)+1)*a2/2);
  P2[8,3]:=0;
  P2[8,4]:=1;

  P2[9,1]:=0;
  P2[9,2]:=0;
  P2[9,3]:=Round(h);
  P2[9,4]:=1;
end;

procedure drawcube();                                    {draw da cube}
begin
  WITH Form1.Image1.Picture.Bitmap do
  begin
    width:= Form1.Image1.Width;
    Height:= Form1.Image1.Height;
    Form1.Image1.Picture.Bitmap.Canvas.Pen.Color:= clYellow;
  end;
  WITH Form1.Image1.Picture.Bitmap.Canvas do
  begin
    MoveTo(525+P[1,1],287+P[1,2]);
    LineTo(525+P[2,1],287+P[2,2]);
    LineTo(525+P[3,1],287+P[3,2]);
    LineTo(525+P[4,1],287+P[4,2]);
    LineTo(525+P[1,1],287+P[1,2]);
    LineTo(525+P[5,1],287+P[5,2]);
    LineTo(525+P[6,1],287+P[6,2]);
    LineTo(525+P[2,1],287+P[2,2]);
    MoveTo(525+P[6,1],287+P[6,2]);
    LineTo(525+P[7,1],287+P[7,2]);
    LineTo(525+P[3,1],287+P[3,2]);
    MoveTo(525+P[7,1],287+P[7,2]);
    LineTo(525+P[8,1],287+P[8,2]);
    LineTo(525+P[4,1],287+P[4,2]);
    MoveTo(525+P[8,1],287+P[8,2]);
    LineTo(525+P[5,1],287+P[5,2]);
  end;
  signature;
end;

procedure massiv();                                      {ctrl + c, ctrl + v your cube}
begin
  for i:=1 to 8 do
    for j:=1 to 4 do
      tem[i,j]:=P[i,j];
end;

procedure massiv2();                                     {ctrl + c, ctrl + v your pyramyd}
begin
  for i:=1 to 9 do
    for j:=1 to 4 do
      tem2[i,j]:=P2[i,j];
end;

procedure drawpyramyd();                                 {draw da pyramyd}
begin
  WITH Form1.Image1.Picture.Bitmap do
  begin
    width:= Form1.Image1.Width;
    Height:= Form1.Image1.Height;
    Form1.Image1.Picture.Bitmap.Canvas.Pen.Color:= clWhite;
    Form1.Image1.Picture.Bitmap.Canvas.Brush.Style:= bsBDiagonal;
  end;
  WITH Form1.Image1.Picture.Bitmap.Canvas do
  begin
    Polygon([Point(525+P2[1,1],287+P2[1,2]),Point(525+P2[2,1],287+P2[2,2]),Point(525+P2[3,1],287+P2[3,2]),Point(525+P2[4,1],287+P2[4,2]),Point(525+P2[5,1],287+P2[5,2]),Point(525+P2[6,1],287+P2[6,2]),Point(525+P2[7,1],287+P2[7,2]),Point(525+P2[8,1],287+P2[8,2])]);
    MoveTo(525+P2[1,1],287+P2[1,2]);
    LineTo(525+P2[9,1],287+P2[9,2]);
    LineTo(525+P2[2,1],287+P2[2,2]);
    MoveTo(525+P2[3,1],287+P2[3,2]);
    LineTo(525+P2[9,1],287+P2[9,2]);
    LineTo(525+P2[4,1],287+P2[4,2]);
    MoveTo(525+P2[5,1],287+P2[5,2]);
    LineTo(525+P2[9,1],287+P2[9,2]);
    LineTo(525+P2[6,1],287+P2[6,2]);
    MoveTo(525+P2[7,1],287+P2[7,2]);
    LineTo(525+P2[9,1],287+P2[9,2]);
    LineTo(525+P2[8,1],287+P2[8,2]);
  end;
  signature;
end;

procedure signature();
begin
  WITH Form1.Image1.Picture.Bitmap do
  begin
    width:= Form1.Image1.Width;
    Height:= Form1.Image1.Height;
    Form1.Image1.Picture.Bitmap.Canvas.Pen.Color:= clWhite;
  end;
  WITH Form1.Image1.Picture.Bitmap.Canvas do
  begin
    MoveTo(855,564);
    LineTo(855,534);
    LineTo(870,534);
    MoveTo(875,564);
    LineTo(875,534);
    LineTo(890,534);
    LineTo(890,549);
    LineTo(875,549);
    MoveTo(895,534);
    LineTo(895,564);
    LineTo(910,534);
    LineTo(910,564);
    MoveTo(915,564);
    LineTo(915,534);
    LineTo(930,534);
    MoveTo(935,564);
    LineTo(935,534);
    LineTo(950,534);
    LineTo(950,564);
    LineTo(935,564);
    MoveTo(955,564);
    LineTo(955,534);
    LineTo(970,534);
    LineTo(970,549);
    LineTo(955,549);
    MoveTo(975,534);
    LineTo(975,564);
    LineTo(990,564);
    LineTo(990,549);
    LineTo(975,549);
    MoveTo(1010,564);
    LineTo(995,564);
    LineTo(995,534);
    LineTo(1010,534);
    MoveTo(995,549);
    LineTo(1010,549);
    MoveTo(1015,549);
    LineTo(1030,549);
    LineTo(1030,564);
    LineTo(1015,564);
    LineTo(1015,534);
    LineTo(1025,534);
    LineTo(1025,549);
    LineTo(1015,549);

    MoveTo(845,574);
    LineTo(845,524);
    LineTo(1050,524);
  end;
end;

end.



