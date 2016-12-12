namespace daewoo
{
    partial class Form1
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
            this.button1 = new System.Windows.Forms.Button();
            this.total_distance = new System.Windows.Forms.Label();
            this.total_path = new System.Windows.Forms.Label();
            this.source = new System.Windows.Forms.ComboBox();
            this.destination = new System.Windows.Forms.ComboBox();
            this.Direct_fare = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.lbl_first = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
            this.radio_ticket = new System.Windows.Forms.RadioButton();
            this.radio_time = new System.Windows.Forms.RadioButton();
            this.lbl_second = new System.Windows.Forms.Label();
            this.Auto = new System.Windows.Forms.RadioButton();
            this.Routes = new System.Windows.Forms.Button();
            this.All_routes = new System.Windows.Forms.Button();
            this.customize = new System.Windows.Forms.RadioButton();
            this.priority = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(401, 119);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "Get route";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.Route_Click);
            // 
            // total_distance
            // 
            this.total_distance.AutoSize = true;
            this.total_distance.Location = new System.Drawing.Point(94, 183);
            this.total_distance.Name = "total_distance";
            this.total_distance.Size = new System.Drawing.Size(35, 13);
            this.total_distance.TabIndex = 3;
            this.total_distance.Text = "label1";
            this.total_distance.Visible = false;
            // 
            // total_path
            // 
            this.total_path.AutoSize = true;
            this.total_path.Location = new System.Drawing.Point(94, 157);
            this.total_path.Name = "total_path";
            this.total_path.Size = new System.Drawing.Size(35, 13);
            this.total_path.TabIndex = 4;
            this.total_path.Text = "label2";
            this.total_path.Visible = false;
            // 
            // source
            // 
            this.source.FormattingEnabled = true;
            this.source.Location = new System.Drawing.Point(23, 119);
            this.source.Name = "source";
            this.source.Size = new System.Drawing.Size(121, 21);
            this.source.TabIndex = 5;
            // 
            // destination
            // 
            this.destination.FormattingEnabled = true;
            this.destination.Location = new System.Drawing.Point(169, 119);
            this.destination.Name = "destination";
            this.destination.Size = new System.Drawing.Size(121, 21);
            this.destination.TabIndex = 6;
            // 
            // Direct_fare
            // 
            this.Direct_fare.AutoSize = true;
            this.Direct_fare.Location = new System.Drawing.Point(24, 241);
            this.Direct_fare.Name = "Direct_fare";
            this.Direct_fare.Size = new System.Drawing.Size(65, 13);
            this.Direct_fare.TabIndex = 7;
            this.Direct_fare.Text = "Direct fare =";
            this.Direct_fare.Visible = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(20, 96);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(41, 13);
            this.label1.TabIndex = 8;
            this.label1.Text = "Source";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(166, 96);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "Destination";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(24, 157);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(45, 13);
            this.label3.TabIndex = 10;
            this.label3.Text = "Route : ";
            this.label3.Visible = false;
            // 
            // lbl_first
            // 
            this.lbl_first.AutoSize = true;
            this.lbl_first.Location = new System.Drawing.Point(24, 183);
            this.lbl_first.Name = "lbl_first";
            this.lbl_first.Size = new System.Drawing.Size(69, 13);
            this.lbl_first.TabIndex = 11;
            this.lbl_first.Text = "Ticket cost : ";
            this.lbl_first.Visible = false;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(401, 222);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 13;
            this.button2.Text = "New Route";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Visible = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // radio_ticket
            // 
            this.radio_ticket.AutoSize = true;
            this.radio_ticket.Location = new System.Drawing.Point(235, 60);
            this.radio_ticket.Name = "radio_ticket";
            this.radio_ticket.Size = new System.Drawing.Size(55, 17);
            this.radio_ticket.TabIndex = 14;
            this.radio_ticket.TabStop = true;
            this.radio_ticket.Text = "Ticket";
            this.radio_ticket.UseVisualStyleBackColor = true;
            this.radio_ticket.Visible = false;
            // 
            // radio_time
            // 
            this.radio_time.AutoSize = true;
            this.radio_time.Location = new System.Drawing.Point(293, 60);
            this.radio_time.Name = "radio_time";
            this.radio_time.Size = new System.Drawing.Size(48, 17);
            this.radio_time.TabIndex = 15;
            this.radio_time.TabStop = true;
            this.radio_time.Text = "Time";
            this.radio_time.UseVisualStyleBackColor = true;
            this.radio_time.Visible = false;
            this.radio_time.CheckedChanged += new System.EventHandler(this.radio_time_CheckedChanged);
            // 
            // lbl_second
            // 
            this.lbl_second.AutoSize = true;
            this.lbl_second.Location = new System.Drawing.Point(20, 213);
            this.lbl_second.Name = "lbl_second";
            this.lbl_second.Size = new System.Drawing.Size(83, 13);
            this.lbl_second.TabIndex = 16;
            this.lbl_second.Text = "Time required = ";
            this.lbl_second.Visible = false;
            // 
            // Auto
            // 
            this.Auto.AutoSize = true;
            this.Auto.Location = new System.Drawing.Point(24, 36);
            this.Auto.Name = "Auto";
            this.Auto.Size = new System.Drawing.Size(109, 17);
            this.Auto.TabIndex = 17;
            this.Auto.TabStop = true;
            this.Auto.Text = "Auto best solution";
            this.Auto.UseVisualStyleBackColor = true;
            this.Auto.CheckedChanged += new System.EventHandler(this.Auto_CheckedChanged);
            // 
            // Routes
            // 
            this.Routes.Location = new System.Drawing.Point(401, 183);
            this.Routes.Name = "Routes";
            this.Routes.Size = new System.Drawing.Size(75, 23);
            this.Routes.TabIndex = 18;
            this.Routes.Text = "View routes";
            this.Routes.UseVisualStyleBackColor = true;
            this.Routes.Click += new System.EventHandler(this.Routes_Click);
            // 
            // All_routes
            // 
            this.All_routes.Location = new System.Drawing.Point(401, 152);
            this.All_routes.Name = "All_routes";
            this.All_routes.Size = new System.Drawing.Size(75, 23);
            this.All_routes.TabIndex = 19;
            this.All_routes.Text = "Get all routes";
            this.All_routes.UseVisualStyleBackColor = true;
            this.All_routes.Click += new System.EventHandler(this.All_routes_Click);
            // 
            // customize
            // 
            this.customize.AutoSize = true;
            this.customize.Location = new System.Drawing.Point(24, 56);
            this.customize.Name = "customize";
            this.customize.Size = new System.Drawing.Size(73, 17);
            this.customize.TabIndex = 20;
            this.customize.TabStop = true;
            this.customize.Text = "Customize";
            this.customize.UseVisualStyleBackColor = true;
            this.customize.CheckedChanged += new System.EventHandler(this.customize_CheckedChanged);
            // 
            // priority
            // 
            this.priority.AutoSize = true;
            this.priority.Location = new System.Drawing.Point(240, 36);
            this.priority.Name = "priority";
            this.priority.Size = new System.Drawing.Size(99, 13);
            this.priority.TabIndex = 21;
            this.priority.Text = "Choose your priority";
            this.priority.Visible = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(488, 365);
            this.Controls.Add(this.priority);
            this.Controls.Add(this.customize);
            this.Controls.Add(this.All_routes);
            this.Controls.Add(this.Routes);
            this.Controls.Add(this.Auto);
            this.Controls.Add(this.lbl_second);
            this.Controls.Add(this.radio_time);
            this.Controls.Add(this.radio_ticket);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.lbl_first);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Direct_fare);
            this.Controls.Add(this.destination);
            this.Controls.Add(this.source);
            this.Controls.Add(this.total_path);
            this.Controls.Add(this.total_distance);
            this.Controls.Add(this.button1);
            this.Name = "Form1";
            this.Text = "                                        ";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label total_distance;
        private System.Windows.Forms.Label total_path;
        private System.Windows.Forms.ComboBox source;
        private System.Windows.Forms.ComboBox destination;
        private System.Windows.Forms.Label Direct_fare;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label lbl_first;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.RadioButton radio_ticket;
        private System.Windows.Forms.RadioButton radio_time;
        private System.Windows.Forms.Label lbl_second;
        private System.Windows.Forms.RadioButton Auto;
        private System.Windows.Forms.Button Routes;
        private System.Windows.Forms.Button All_routes;
        private System.Windows.Forms.RadioButton customize;
        private System.Windows.Forms.Label priority;
    }
}

