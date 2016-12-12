namespace daewoo
{
    partial class add
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.source = new System.Windows.Forms.ComboBox();
            this.destination = new System.Windows.Forms.ComboBox();
            this.ticket = new System.Windows.Forms.TextBox();
            this.Submit = new System.Windows.Forms.Button();
            this.time = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // source
            // 
            this.source.FormattingEnabled = true;
            this.source.Location = new System.Drawing.Point(12, 35);
            this.source.Name = "source";
            this.source.Size = new System.Drawing.Size(121, 21);
            this.source.TabIndex = 0;
            this.source.SelectionChangeCommitted += new System.EventHandler(this.source_SelectionChangeCommitted);
            // 
            // destination
            // 
            this.destination.FormattingEnabled = true;
            this.destination.Location = new System.Drawing.Point(151, 35);
            this.destination.Name = "destination";
            this.destination.Size = new System.Drawing.Size(121, 21);
            this.destination.TabIndex = 1;
            // 
            // ticket
            // 
            this.ticket.Location = new System.Drawing.Point(83, 79);
            this.ticket.Name = "ticket";
            this.ticket.Size = new System.Drawing.Size(100, 20);
            this.ticket.TabIndex = 2;
            // 
            // Submit
            // 
            this.Submit.Location = new System.Drawing.Point(12, 174);
            this.Submit.Name = "Submit";
            this.Submit.Size = new System.Drawing.Size(75, 23);
            this.Submit.TabIndex = 3;
            this.Submit.Text = "Submit";
            this.Submit.UseVisualStyleBackColor = true;
            this.Submit.Click += new System.EventHandler(this.Submit_Click);
            // 
            // time
            // 
            this.time.Location = new System.Drawing.Point(12, 144);
            this.time.Name = "time";
            this.time.Size = new System.Drawing.Size(100, 20);
            this.time.TabIndex = 4;
            this.time.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(19, 82);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(37, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Ticket";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 128);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(30, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Time";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // add
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 262);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.time);
            this.Controls.Add(this.Submit);
            this.Controls.Add(this.ticket);
            this.Controls.Add(this.destination);
            this.Controls.Add(this.source);
            this.Name = "add";
            this.Text = "add";
            this.Load += new System.EventHandler(this.add_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox source;
        private System.Windows.Forms.ComboBox destination;
        private System.Windows.Forms.TextBox ticket;
        private System.Windows.Forms.Button Submit;
        private System.Windows.Forms.TextBox time;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}