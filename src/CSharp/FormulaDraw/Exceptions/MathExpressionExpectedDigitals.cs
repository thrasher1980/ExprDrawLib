using System;

namespace FormulaDraw.Exceptions
{
    public class MathExpressionExpectedDigitals:Exception
    {
        public int ErrorPosition;

        public MathExpressionExpectedDigitals(int position):base($@"Expected digital at position {position}")
        {
            ErrorPosition = position;
        }
    }
}