using System;

namespace FormulaDraw.Exceptions
{
    public class MathExpressionExpectedSymbol:Exception
    {
        public string ExpectedSymbol;
        public int ErrorPosion;

        public MathExpressionExpectedSymbol(int position, string expectedSymbol):base($@"Expected symbol {expectedSymbol} at position {position}")
        {
            ErrorPosion = position;
            ExpectedSymbol = expectedSymbol;
        }

    }
}