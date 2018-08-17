namespace FormulaDrawWinForm
{
    partial class MainForm
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.pcFormula = new System.Windows.Forms.PictureBox();
            this.txtMathExpression = new System.Windows.Forms.TextBox();
            this.lblMathExpr = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pcFormula)).BeginInit();
            this.SuspendLayout();
            // 
            // pcFormula
            // 
            this.pcFormula.Location = new System.Drawing.Point(12, 44);
            this.pcFormula.Name = "pcFormula";
            this.pcFormula.Size = new System.Drawing.Size(678, 239);
            this.pcFormula.TabIndex = 0;
            this.pcFormula.TabStop = false;
            this.pcFormula.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // txtMathExpression
            // 
            this.txtMathExpression.Location = new System.Drawing.Point(112, 6);
            this.txtMathExpression.Name = "txtMathExpression";
            this.txtMathExpression.Size = new System.Drawing.Size(479, 20);
            this.txtMathExpression.TabIndex = 1;
            // 
            // lblMathExpr
            // 
            this.lblMathExpr.AutoSize = true;
            this.lblMathExpr.Location = new System.Drawing.Point(12, 9);
            this.lblMathExpr.Name = "lblMathExpr";
            this.lblMathExpr.Size = new System.Drawing.Size(85, 13);
            this.lblMathExpr.TabIndex = 2;
            this.lblMathExpr.Text = "Math Expression";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(618, 6);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 3;
            this.button1.Text = "Make";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(708, 299);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.lblMathExpr);
            this.Controls.Add(this.txtMathExpression);
            this.Controls.Add(this.pcFormula);
            this.Name = "MainForm";
            this.Text = "Formula Expression Example";
            this.Load += new System.EventHandler(this.MainForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pcFormula)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pcFormula;
        private System.Windows.Forms.TextBox txtMathExpression;
        private System.Windows.Forms.Label lblMathExpr;
        private System.Windows.Forms.Button button1;
    }
}

