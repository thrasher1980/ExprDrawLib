using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FormulaDrawWinForm
{
    public partial class MainForm : Form
    {
        private FormulaController _formulaController = new FormulaController();

        public MainForm()
        {
            InitializeComponent();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void MainForm_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string expression = txtMathExpression.Text;
            pcFormula.Image = _formulaController.TakeFormulaImage(expression);
        }
    }
}
