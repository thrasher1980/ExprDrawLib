using System;
using System.IO;
using System.Runtime;
using System.Runtime.InteropServices;

namespace FormulaDraw
{
    [System.Security.SuppressUnmanagedCodeSecurity()]
    internal class FormulaDraw32
    {
        private FormulaDraw32()
        { 
            //all methods in this class would be static
        }
        
        [DllImport("ExprDrawLib32.dll", CharSet = CharSet.Unicode, CallingConvention = CallingConvention.StdCall, EntryPoint = "SaveExpressionToPng")]
        internal static extern bool SaveExpressionToPng(MathExpression expression,  FontParams font, [MarshalAs(UnmanagedType.BStr)]string pngfileName, out ResultCodes resultsCodes);

        [DllImport("ExprDrawLib32.dll", CharSet = CharSet.Unicode, CallingConvention = CallingConvention.StdCall, EntryPoint = "SaveExpressionToJpg")]
        internal static extern bool SaveExpressionToJpg(MathExpression expression, FontParams font, [MarshalAs(UnmanagedType.BStr)]string pngfileName, out ResultCodes resultsCodes);

        [DllImport("ExprDrawLib32.dll", CharSet = CharSet.Unicode, CallingConvention = CallingConvention.StdCall, EntryPoint = "SaveExpressionToGif")]
        internal static extern bool SaveExpressionToGif(MathExpression expression, FontParams font, [MarshalAs(UnmanagedType.BStr)]string pngfileName, out ResultCodes resultsCodes);
        
    }
}