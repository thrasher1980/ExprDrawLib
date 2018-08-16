using System.Runtime.InteropServices;


namespace FormulaDraw
{
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
    public struct FontParams
    {
        public string Name;
        public int Size;
        public int Color;
    }
}