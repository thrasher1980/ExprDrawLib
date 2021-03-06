unit MainFormF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.JPEG, Vcl.Imaging.pngimage;

type
  TMainForm = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses ExprDraw, ExprMake, ExpressionException;
{$LongStrings Off}
{$R *.dfm}

function AnsiToOemStr(const s: string): string;
begin
if Length(Result) < 1 then
begin
Result := '';
exit;
end;
SetLength(Result, Length(s));
CharToOem(PWideChar(s), PAnsiChar(Result));
end;

function UnicodToAscii(AStr:string):string;
var Str:string;
i:byte;
Ch:Char;
iCh:byte;
begin
  Str:= StringReplace(AStr, '&#','', [rfReplaceAll]);
  I:=1;
    while (Length(Str) +1 > i) do
  begin
    Result:= Result + Chr(Ord(Str[i]));
    inc(i);
  end;
end;


procedure TMainForm.Button1Click(Sender: TObject);
 var

 Expr:TExprClass;
 Builder:TExprBuilder;
 FormulaPict:TPicture;

 exprStr:String;
 jpgImage:TJpegImage;
 pngImage:TpngImage;
 stream:TMemoryStream;
 a: TArray<byte>;
 b: array [0..100] of byte;
begin
  exprStr := 'X^2';

   FormulaPict := TPicture.Create;
   Builder:=TExprBuilder.Create;
   exprStr :='Q_���^(2^z)=Q_���*.((T*.P_�*.z)/(T_�*.2*.T))';
   jpgImage := TJpegImage.Create;
   pngImage := TPngImage.Create;
   Expr:=TExprVar.Create(' ');
   try
    Expr.AddNext(Builder.BuildExpr(exprStr));
   except
   on E:EExpressionException do
      begin
        ShowMessage(E.ErrorCode.ToString());
      end;
   end;
   FormulaPict.Bitmap.Height:=100;
   FormulaPict.Bitmap.Width:=400;
   Expr:=TExprChain.Create(Expr);
   FormulaPict.Bitmap.Transparent:=False;
   Expr.Canvas:=FormulaPict.Bitmap.Canvas;
   Expr.Font.Size:=20; //��� ����
   Expr.Font.Name:='Arial Black';
   Expr.Color:=clRed;
   Expr.Draw(0,0,ehLeft,evTop);
   Image1.Picture := FormulaPict;
   jpgImage.Assign(FormulaPict.Graphic);
   jpgImage.Transparent:=True;
//   jpgImage.
   jpgImage.SaveToFile('d:\formula.jpg');
   pngImage.Assign(FormulaPict.Graphic);
   pngImage.SaveToFile('d:\formula.PNG');
   stream := TMemoryStream.Create;
   pngImage.SaveToStream(stream);
   SetLength(a,stream.Size);
//   ShowMessage(stream.Size.ToString());
   stream.Position:=0;

   stream.Read(b, 45);
    stream.Position:=0;
   stream.Read(a, 45);
   a[1]:=b[1];
   ShowMessage(Length(a).ToString());

   Expr.Free;
   Builder.Free;

end;

end.
