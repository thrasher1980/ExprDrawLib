using System.Runtime.InteropServices;

namespace FormulaDraw
{
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
    public struct MathExpression
    {
        public string Expression;
        public int Width;
        public int Height;
        public bool Transparancy;
    }
}