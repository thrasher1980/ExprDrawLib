unit ExpressionException;

interface
uses SysUtils;

const
   // ���� ������
   EC_ExpectedSymbol:integer = 1; // ��������� ������
   EC_InvalidSymbol:integer = 2; //  ������������ ������
   EC_IncompletedString:integer = 3; // ������������� ������
   EC_ExpectedDigitals:integer = 4; // ��������� �����


type
        EExpressionException=class(Exception)
        public

        ErrorMessage:string; // ��������� �� ������
        ErrorCode:integer; // ��� ������
        ErrorPosition:integer; // ������� � �������
        ExpectedSymbol:string; // ��������� �������
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
