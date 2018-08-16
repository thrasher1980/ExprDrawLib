using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using FormulaDraw.Exceptions;

namespace FormulaDraw
{
    public class FormulaDrawing
    {
        /// <summary>
        ///     System capacity check
        /// </summary>
        private static bool Is64Bit => Marshal.SizeOf(typeof(IntPtr)) == 8;
        

        public static void SaveExpressionToPng(MathExpression expression, FontParams font, string pngFileName)
        {
            if (Is64Bit)
            {
                var succes = FormulaDraw64.SaveExpressionToPng(expression, font, pngFileName, out ResultCodes rs);
                if (!succes)
                {
                    if (rs.ErrorCode == 1)
                    {
                        throw new MathExpressionExpectedSymbol(rs.ErrorPos, rs.ExpectedSymbols);
                    }

                    if (rs.ErrorCode == 2)
                    {
                        throw new MathExpressionInvalidSymbol(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 3)
                    {
                        throw new MathExpressionIncompletedExpressionString();
                    }

                    if (rs.ErrorCode == 4)
                    {
                        throw new MathExpressionExpectedDigitals(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 5)
                    {
                        throw new MathExpressionFileSavingError();
                    }
                }
            }
            else
            {
                var succes = FormulaDraw32.SaveExpressionToPng(expression, font, pngFileName, out ResultCodes rs);
                if (!succes)
                {
                    if (rs.ErrorCode == 1)
                    {
                        throw new MathExpressionExpectedSymbol(rs.ErrorPos,rs.ExpectedSymbols);
                    }

                    if (rs.ErrorCode == 2)
                    {
                        throw new MathExpressionInvalidSymbol(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 3)
                    {
                        throw new MathExpressionIncompletedExpressionString();
                    }

                    if (rs.ErrorCode == 4)
                    {
                        throw new MathExpressionExpectedDigitals(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 5)
                    {
                        throw new MathExpressionFileSavingError();
                    }
                }
            }
        }

        public static void SaveExpressionToJpg(MathExpression expression, FontParams font, string jpgFileName)
        {
            if (Is64Bit)
            {
                var succes = FormulaDraw64.SaveExpressionToJpg(expression, font, jpgFileName, out ResultCodes rs);
                if (!succes)
                {
                    if (rs.ErrorCode == 1)
                    {
                        throw new MathExpressionExpectedSymbol(rs.ErrorPos, rs.ExpectedSymbols);
                    }

                    if (rs.ErrorCode == 2)
                    {
                        throw new MathExpressionInvalidSymbol(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 3)
                    {
                        throw new MathExpressionIncompletedExpressionString();
                    }

                    if (rs.ErrorCode == 4)
                    {
                        throw new MathExpressionExpectedDigitals(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 5)
                    {
                        throw new MathExpressionFileSavingError();
                    }
                }
            }
            else
            {
                var succes = FormulaDraw32.SaveExpressionToJpg(expression, font, jpgFileName, out ResultCodes rs);
                if (!succes)
                {
                    if (rs.ErrorCode == 1)
                    {
                        throw new MathExpressionExpectedSymbol(rs.ErrorPos, rs.ExpectedSymbols);
                    }

                    if (rs.ErrorCode == 2)
                    {
                        throw new MathExpressionInvalidSymbol(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 3)
                    {
                        throw new MathExpressionIncompletedExpressionString();
                    }

                    if (rs.ErrorCode == 4)
                    {
                        throw new MathExpressionExpectedDigitals(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 5)
                    {
                        throw new MathExpressionFileSavingError();
                    }
                }
            }
        }

        public static void SaveExpressionToGif(MathExpression expression, FontParams font, string gifFileName)
        {
            if (Is64Bit)
            {
                var succes = FormulaDraw64.SaveExpressionToGif(expression, font, gifFileName, out ResultCodes rs);
                if (!succes)
                {
                    if (rs.ErrorCode == 1)
                    {
                        throw new MathExpressionExpectedSymbol(rs.ErrorPos, rs.ExpectedSymbols);
                    }

                    if (rs.ErrorCode == 2)
                    {
                        throw new MathExpressionInvalidSymbol(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 3)
                    {
                        throw new MathExpressionIncompletedExpressionString();
                    }

                    if (rs.ErrorCode == 4)
                    {
                        throw new MathExpressionExpectedDigitals(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 5)
                    {
                        throw new MathExpressionFileSavingError();
                    }
                }
            }
            else
            {
                var succes = FormulaDraw32.SaveExpressionToGif(expression, font, gifFileName, out ResultCodes rs);
                if (!succes)
                {
                    if (rs.ErrorCode == 1)
                    {
                        throw new MathExpressionExpectedSymbol(rs.ErrorPos, rs.ExpectedSymbols);
                    }

                    if (rs.ErrorCode == 2)
                    {
                        throw new MathExpressionInvalidSymbol(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 3)
                    {
                        throw new MathExpressionIncompletedExpressionString();
                    }

                    if (rs.ErrorCode == 4)
                    {
                        throw new MathExpressionExpectedDigitals(rs.ErrorPos);
                    }

                    if (rs.ErrorCode == 5)
                    {
                        throw new MathExpressionFileSavingError();
                    }
                }
            }
        }
    }
}
