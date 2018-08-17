using System.Drawing;
using System.IO;
using FormulaDraw;

namespace FormulaDrawWinForm
{
    internal class FormulaController
    {
        
        internal Image TakeFormulaImage(string expressionStr)
        {
            MathExpression expression;

            expression.Expression = expressionStr;
            expression.Height = 200;
            expression.Width = 400;
            expression.Transparancy = true;


            FontParams fontParams;

            fontParams.Name = "Times New Roman";
            fontParams.Color = 30;
            fontParams.Size = 15;

            string temporaryFile = $@"{Path.GetTempFileName()}.png";
            FormulaDrawing.SaveExpressionToPng(expression,fontParams,temporaryFile);

            Image image = Image.FromFile(temporaryFile);
            return image;


        }
    }
}