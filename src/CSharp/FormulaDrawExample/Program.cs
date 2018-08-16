using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using FormulaDraw;
using FormulaDraw.Exceptions;

namespace FormulaDrawExample
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
                
            string expression = @"Q_доб^(2^z)=Q_сут*.((T*.P_д*.z)/(T_д*.2))";
            string pngFile = @"d:\testEnAny.png";
            string jpgFile = @"d:\testEnAny.jpg";
            string gifFile = @"d:\testEnAny.gif";

            FontParams fontParams;
            fontParams.Name = "Times New Roman";
            fontParams.Color = 11;
            fontParams.Size = 20;

            MathExpression mathExpression;
            mathExpression.Expression = @"Q_доб^(2^z)=Q_сут*.((T*.P_д*.z)/(T_д*.2))+(1)/(rho_вод*.mu)+pi*.q/(2*.d)";
            mathExpression.Height = 100;
            mathExpression.Width = 600;
            mathExpression.Transparancy = true;

            FormulaDrawing.SaveExpressionToPng(mathExpression, fontParams,pngFile);
            FormulaDrawing.SaveExpressionToJpg(mathExpression, fontParams, jpgFile);
            FormulaDrawing.SaveExpressionToJpg(mathExpression, fontParams, gifFile);


            Console.ReadKey();
        }
    }
}
