unit ExpressionException;

interface
uses SysUtils;

const
   // Коды ошибок
   EC_ExpectedSymbol:integer = 1; // Ожидается символ
   EC_InvalidSymbol:integer = 2; //  Недопустимый символ
   EC_IncompletedString:integer = 3; // Незаконченная строка
   EC_ExpectedDigitals:integer = 4; // Ожидается число


type
        EExpressionException=class(Exception)
        public

        ErrorMessage:string; // Сообщение об ошибке
        ErrorCode:integer; // Код ошибки
        ErrorPosition:integer; // Позиция с ошибкой
        ExpectedSymbol:string; // Ожидаемые символы
        public
        constructor Create(ECode:integer); overload;
        constructor Create(ECode:integer;EMessage:string); overload;
        constructor Create(ECode:integer;EMessage:string;EPosition:integer); overload;
        constructor Create(ECode:integer;EPosition:integer); overload;
        constructor Create(ECode:integer;EPosition:integer;ESymbols:string); overload;
        end;

implementation

constructor EExpressionException.Create(ECode: Integer);
begin
  inherited Create('Error in Expression');
  Self.ErrorCode := ECode;
end;

constructor EExpressionException.Create(ECode:integer;EMessage:string);
begin
  inherited Create('Error in Expression');
  Self.ErrorCode := ECode;
  Self.ErrorMessage := EMessage;
end;

constructor EExpressionException.Create(ECode:integer;EMessage:string;EPosition:integer);
begin
  inherited Create('Error in Expression');
  Self.ErrorCode := ECode;
  Self.ErrorMessage := EMessage;
  Self.ErrorPosition := EPosition;
end;

constructor EExpressionException.Create(ECode:integer;EPosition:integer);
begin
  inherited Create('Error in Expression');
  Self.ErrorCode := ECode;
  Self.ErrorPosition := EPosition;
end;


constructor EExpressionException.Create(ECode:integer;EPosition:integer;ESymbols:string);
begin
  inherited Create('Error in Expression');
  Self.ErrorCode := ECode;
  Self.ErrorPosition := EPosition;
  Self.ExpectedSymbol := ESymbols;
end;


end.
