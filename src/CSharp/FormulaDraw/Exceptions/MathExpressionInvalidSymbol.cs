using System;

namespace FormulaDraw.Exceptions
{
    public class MathExpressionInvalidSymbol:Exception
    {
        public int ErrorPosition;

        public MathExpressionInvalidSymbol(int position):base($@"Invalid symbol at posion {position}")
        {
            ErrorPosition = position;
        }
    }
}