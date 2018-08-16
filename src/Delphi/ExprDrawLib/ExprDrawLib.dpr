library ExprDrawLib;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes,
  ExprDraw,
  ExprMake,
  ExpressionException,
  Vcl.Graphics,
  Winapi.Windows, Winapi.Messages, System.Variants,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.Jpeg, Vcl.Imaging.PngImage;

{$R *.res}

type

  ResultCodes = record
    ErrorCode:integer;
    ErrorPos:integer;
    ExpectedSymbols:PChar;
  end;

  FontParams = record
    Name :PChar;
    Size:integer;
    Color:Integer;
  end;

  MathExpression = record
    Expression:PChar;
    Width:integer;
    Heigth:integer;
    Transparancy:boolean;
  end;


function SaveExpressionToJPG(Expression:MathExpression;Font:FontParams;JPGFileName:PChar;out ResCodes:ResultCodes):bool; stdcall;
var
 Expr:TExprClass;
 Builder:TExprBuilder;
 FormulaPict:TPicture;
 exprStr:AnsiString;
 JPGImage:TJPEGImage;
begin

 ResCodes.ErrorCode:=0;
    ResCodes.ErrorPos:=-1;
    ResCodes.ExpectedSymbols:='';

    Result:=true;

   exprStr := Expression.Expression;

   FormulaPict := TPicture.Create;

   JPGImage := TJPEGImage.Create;

   Builder:=TExprBuilder.Create;

   Expr:=TExprVar.Create(' ');

   try

    Expr.AddNext(Builder.BuildExpr(exprStr));

   except

   on E:EExpressionException do
      begin
        Result := false;
        ResCodes.ErrorCode:=E.ErrorCode;
        ResCodes.ErrorPos:=E.ErrorPosition;
        ResCodes.ExpectedSymbols:=PChar(E.ExpectedSymbol);
      Exit;
      end;

   end;

   FormulaPict.Bitmap.Height:=Expression.Heigth;
   FormulaPict.Bitmap.Width:=Expression.Width;
   FormulaPict.Bitmap.Transparent:=Expression.Transparancy;

   Expr:=TExprChain.Create(Expr);
   Expr.Canvas:=FormulaPict.Bitmap.Canvas;


   Expr.Font.Size:=Font.Size;
   Expr.Font.Name:=Font.Name;
   Expr.Color:=Font.Color;

   Expr.Draw(0,0,ehLeft,evTop);
   JPGImage.Assign(FormulaPict.Graphic);

   try
    JPGImage.SaveToFile(JpgFileName);
   except

   end;


   Expr.Free;
   Builder.Free;
end;

function SaveExpressionToPNG(Expression:MathExpression;Font:FontParams;PNGFileName:PChar;out ResCodes:ResultCodes):boolean;stdcall;
var
 Expr:TExprClass;
 Builder:TExprBuilder;
 FormulaPict:TPicture;
 exprStr:AnsiString;
 PngImage:TPngImage;

begin
    ResCodes.ErrorCode:=0;
    ResCodes.ErrorPos:=-1;
    ResCodes.ExpectedSymbols:='';

    Result:=true;

   exprStr := Expression.Expression;

   FormulaPict := TPicture.Create;

   PngImage := TPngImage.Create;

   Builder:=TExprBuilder.Create;

   Expr:=TExprVar.Create(' ');

   try

    Expr.AddNext(Builder.BuildExpr(exprStr));

   except

   on E:EExpressionException do
      begin
        Result := false;
        ResCodes.ErrorCode:=E.ErrorCode;
        ResCodes.ErrorPos:=E.ErrorPosition;
        ResCodes.ExpectedSymbols:=PChar(E.ExpectedSymbol);
      Exit;
      end;

   end;

   FormulaPict.Bitmap.Height:=Expression.Heigth;
   FormulaPict.Bitmap.Width:=Expression.Width;
   FormulaPict.Bitmap.Transparent:=Expression.Transparancy;

   Expr:=TExprChain.Create(Expr);
   Expr.Canvas:=FormulaPict.Bitmap.Canvas;


   Expr.Font.Size:=Font.Size;
   Expr.Font.Name:=Font.Name;
   Expr.Color:=Font.Color;

   Expr.Draw(0,0,ehLeft,evTop);
   PngImage.Assign(FormulaPict.Graphic);
   PngImage.SaveToFile(PngFileName);

   Expr.Free;
   Builder.Free;
end;


exports
   SaveExpressionToJpg name 'SaveExpressionToJpg',
   SaveExpressionToPng name 'SaveExpressionToPng';
begin

end.
