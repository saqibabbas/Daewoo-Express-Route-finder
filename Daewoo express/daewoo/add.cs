using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

namespace daewoo
{
    public partial class add : Form
    {
        Cities obj_city = new Cities();
        Tickets obj_tickets = new Tickets();
        Time obj_time = new Time();
        
        public add()
        {
            InitializeComponent();
        }

        private void add_Load(object sender, EventArgs e)
        {
        
            DataTable t1 = new System.Data.DataTable();

            t1 = obj_city.Source_Data();
            source.DataSource = t1;
            source.DisplayMember = t1.Columns["Name"].ToString();
            source.ValueMember = t1.Columns["City"].ToString();
        
          
          
        }

        private void Submit_Click(object sender, EventArgs e)
        {
            //obj_tickets.Source =Convert.ToInt32( source.SelectedValue);
            //obj_tickets.Destination = Convert.ToInt32(destination.SelectedValue);
            //obj_tickets.Ticket = Convert.ToInt32(ticket.Text);
            //obj_tickets.Insert();


            obj_time.Source = Convert.ToInt32(source.SelectedValue);
            obj_time.Destination = Convert.ToInt32(destination.SelectedValue);
            obj_time.newtime =Convert.ToDouble(time.Text);
            
            obj_time.Insert();


            manage_destination();

        }


        private void source_SelectionChangeCommitted(object sender, EventArgs e)
        {
            manage_destination();
            
        }
        public void manage_destination()
        {
            obj_city.Source = Convert.ToInt32(source.SelectedValue);

            DataTable t2 = new System.Data.DataTable();
            t2 = obj_city.Destination_Data();

            destination.DataSource = t2;
            destination.DisplayMember = t2.Columns["Name"].ToString();
            destination.ValueMember = t2.Columns["City"].ToString();

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void txt_arrival_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
