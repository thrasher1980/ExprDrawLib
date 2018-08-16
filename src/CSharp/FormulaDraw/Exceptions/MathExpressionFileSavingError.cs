using System;

namespace FormulaDraw.Exceptions
{
    public class MathExpressionFileSavingError:Exception
    {
        public MathExpressionFileSavingError():base("An error occurred while writing the file.")
        {
            
        }
    }
}