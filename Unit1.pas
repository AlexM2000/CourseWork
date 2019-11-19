unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TItemState=(isNormal, isCompare, isFounded);

type
  TfMain = class(TForm)
    PaintBox1: TPaintBox;
    Panel1: TPanel;
    bFind: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure bFindClick(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Elements:array[0..99] of integer;
    FoundIndex:Integer;
    procedure DrawElement(i:Integer; State:TItemState);
    procedure DrawArray;
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

procedure TfMain.bFindClick(Sender: TObject);
var
  i:Integer;
begin
  DrawArray;
  if FoundIndex <> -1 then
  begin
     DrawElement(FoundIndex, isNormal)
  end;
  for i:=0 to 99 do
  begin
    FoundIndex:=-1;
    DrawElement(i,isCompare);
    PaintBox1.Invalidate;
    Sleep(200);
    if StrToInt(Edit1.Text)=Elements[i] then      
    begin
      FoundIndex:=i;
      DrawElement(i, isFounded);
      Break;
    end
    else
    begin
      DrawElement(i,isNormal);
    end;
  end;
end;

procedure TfMain.DrawArray;
var
 R:TRect;
 i:Integer;
begin
  PaintBox1.Canvas.Brush.Color:=clGray;
  PaintBox1.Canvas.FillRect(PaintBox1.ClientRect);
  if FoundIndex <> -1 then
  begin
      DrawElement(FoundIndex, isNormal);
  end;
  for i:=0 to 99 do
  begin
    if i=FoundIndex then
      DrawElement(i, isFounded)
    else
      DrawElement(i, isNormal);
  end
end;

procedure TfMain.DrawElement(i:Integer; State:TItemState);
var
  x,y:integer;
  R:TRect;
begin
  x:=5+(i mod 10)*82;
  y:=5+(i div 10)*25;
  case State of
    isNormal:begin PaintBox1.Canvas.Brush.Color:=clBlue; PaintBox1.Canvas.Font.Color:=clRed; end;
    isCompare:begin PaintBox1.Canvas.Brush.Color:=clYellow;  PaintBox1.Canvas.Font.Color:=clBlack; end;
    isFounded:begin PaintBox1.Canvas.Brush.Color:=clRed;  PaintBox1.Canvas.Font.Color:=clYellow; end;
  end;
  PaintBox1.Canvas.Font.Size:=8;
  PaintBox1.Canvas.Font.Style:=PaintBox1.Canvas.Font.Style+[fsBold];
  PaintBox1.Canvas.Rectangle(x,y,x+80,y+23);
  PaintBox1.Canvas.TextOut(x+3,y+2,IntToStr(Elements[i]));
end;

procedure TfMain.PaintBox1Paint(Sender: TObject);
begin
  DrawArray;
end;

procedure TfMain.Button2Click(Sender: TObject);
var
  i:Integer;
begin
  for i:=0 to 99 do
    Elements[i]:=random(10000);
  DrawArray;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  FoundIndex:=-1;
end;

end.
