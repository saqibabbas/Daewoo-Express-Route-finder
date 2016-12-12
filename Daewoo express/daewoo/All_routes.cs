using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace daewoo
{
    public partial class All_routes : Form
    {
        public All_routes()
        {
            InitializeComponent();
        }

        private void All_routes_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'daewooDataSet.Routes' table. You can move, or remove it, as needed.
            this.routesTableAdapter.Fill(this.daewooDataSet.Routes);
            // TODO: This line of code loads data into the 'daewooDataSet.Routes' table. You can move, or remove it, as needed.
            this.routesTableAdapter.Fill(this.daewooDataSet.Routes);
            // TODO: This line of code loads data into the 'daewooDataSet1.Routes' table. You can move, or remove it, as needed.
       

        }
    }
}
