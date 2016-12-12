using Djskitra;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using daewoo.Calculation;
namespace daewoo
{
    public partial class Form1 : Form
    {
        Routes obj_route = new Routes();
        Cities obj_city = new Cities();
        cal_ticket obj_ticke_cal = new cal_ticket();
        cal_time obj_time_cal = new cal_time();
        cal_ticket obj_ticket_cal_simple = new cal_ticket();
        cal_time obj_time_cal_simple = new cal_time();
        cal_Both obj_both = new cal_Both();


        DataTable Cities;
        int Time_cities;
        string Time_route = "";
        double Time_ticket;
        string Time_time;

        int Ticket_cities;
        string Ticket_route = "";
        string Ticket_ticket;
        double Ticket_time;



        int Auto_cities;
        string Auto_route;
        int Auto_ticket;
        double Auto_time = 0.0;



        int[] second;


        public Form1()
        {
            InitializeComponent();

        }

        public void fill_dropdowns(DataTable cities)
        {
            DataRow row = null;
            for (int i = 0; i < obj_city.Total_cities; i++)
            {
                row = cities.Rows[i];
                source.Items.Add(row[1].ToString());
                destination.Items.Add(row[1].ToString());

            }

        }
        private void Form1_Load(object sender, EventArgs e)
        {
            obj_ticke_cal.make_ready();
            obj_time_cal.make_ready();
            obj_both.make_ready();
            obj_time_cal_simple.make_ready();
            obj_ticket_cal_simple.make_ready();
            obj_city.Total_cities = obj_city.Cities_count();
            Cities = new DataTable();
            Cities = obj_city.Cities_data();
            fill_dropdowns(Cities);
        }

        private void Route_Click(object sender, EventArgs e)
        {
            obj_ticke_cal.theGraph.set_root(source.SelectedItem.ToString());
            obj_time_cal.theGraph.set_root(source.SelectedItem.ToString());
            obj_both.theGraph.set_root(source.SelectedItem.ToString());

            if (radio_ticket.Checked)
            {
                On_Ticket();
            }
            if (radio_time.Checked)
            {
                On_Time();
            }
            if (Auto.Checked)
            {
                On_Time();
                On_Auto();
                On_Ticket();

                Direct_fare.Visible = false;
                Direct_fare.Text = "";
                total_path.Visible = false;
                total_path.Text = "";
                total_distance.Visible = false;
                total_distance.Text = "";
                label3.Visible = false;
                lbl_first.Visible = false;
                lbl_second.Visible = false;
                lbl_second.Text = "";
                lbl_first.Text = "";

                if (Ticket_cities <= Auto_cities)
                {
                    label3.Visible = true;
                    total_path.Visible = true;
                    total_path.Text = Ticket_route;
                    lbl_first.Visible = true;
                    lbl_second.Visible = true;
                    lbl_first.Text = "Ticket required : " + Ticket_ticket;
                    lbl_second.Text = "Time required : " + Ticket_time;
                }
                if (Time_cities <= Auto_cities)
                {
                    if (Ticket_cities > Time_cities)
                    {
                        label3.Visible = true;
                        total_path.Visible = true;
                        total_path.Text = Time_route;
                        lbl_first.Visible = true;
                        lbl_second.Visible = true;
                        lbl_first.Text = "Time required : " + Time_time;
                        lbl_second.Text = "Ticket required : " + Time_ticket;
                    }
                    if (Ticket_cities == Time_cities)
                    {
                        double difference = Time_ticket - Convert.ToDouble(Ticket_ticket);
                        double per = (Convert.ToDouble(Ticket_ticket) / 100) * 40;
                        if (difference <= per)
                        {
                            label3.Visible = true;
                            total_path.Visible = true;
                            total_path.Text = Time_route;
                            lbl_first.Visible = true;
                            lbl_second.Visible = true;
                            lbl_first.Text = "Time required : " + Time_time;
                            lbl_second.Text = "Ticket required : " + Time_ticket;
                        }

                    }
                }
                if (Ticket_cities > Auto_cities && Time_cities > Auto_cities)
                {

                    label3.Visible = true;
                    total_path.Visible = true;
                    total_path.Text = Auto_route;
                    lbl_first.Visible = true;
                    lbl_second.Visible = true;
                    lbl_first.Text = "Time required : " + Auto_time;
                    lbl_second.Text = "Ticket required : " + Auto_ticket;
                }
            }
        }

        private void On_Ticket()
        {
            Direct_fare.Visible = false;

            Direct_fare.Text = "";
            total_path.Visible = true;
            total_distance.Visible = true;
            label3.Visible = true;
            lbl_first.Visible = true;
            lbl_second.Visible = true;

            total_distance.Text = "";
            total_path.Text = "";
            obj_ticke_cal.ticket(source.SelectedItem.ToString(), destination.SelectedItem.ToString());
            total_path.Text = obj_ticke_cal.total_path;
            Ticket_route = obj_ticke_cal.total_path;
            Ticket_cities = obj_ticke_cal.total_cities;
            //if (obj_ticke_cal.direct != "1000000")
            //{
                Direct_fare.Visible = true;

                Direct_fare.Text = obj_ticke_cal.Direct_fare;
                //Direct_fare.Text = obj_ticke_cal.Direct_fare;
            //}
            //else
            //{
            //    Direct_fare.Text = "Not directly connected";
            //}
            if (obj_ticke_cal.distance != -1)
            {
                lbl_first.Text = "Ticket cost :  " + obj_ticke_cal.total_distance.ToString();
                Ticket_ticket = obj_ticke_cal.total_distance;
            }
            second = new int[obj_ticke_cal.theGraph.locaton.Length];
            int j = 0;
            for (int i = obj_ticke_cal.theGraph.locaton.Length - 1; i >= 0; i--) //for time calculation
            {

                if (obj_ticke_cal.theGraph.locaton[i] != 0)
                {
                    second[j] = obj_ticke_cal.theGraph.locaton[i];
                    j++;
                }
            }

            int a1 = 0;
            double time_required = 0;
            foreach (int item in second)
            {
                if (item != 0)
                {
                    time_required =time_calculation(time_required, obj_time_cal.theGraph.adjMat[a1, item]);
                    a1 = item;
                }
            }

            string string_distance = time_required.ToString() + ".0";
            string[] array_distance = string_distance.Split('.');
            if ((Convert.ToInt32(array_distance[1])) > 60)
            {
                array_distance[0] = (Convert.ToInt32(array_distance[0]) + 1).ToString();
                array_distance[1] = ((Convert.ToInt32(array_distance[1])) - 60).ToString();
                time_required = Convert.ToDouble(array_distance[0] + "." + array_distance[1]);


            }
            lbl_second.Text = "Time required : " + time_required;
            Ticket_time = time_required;
        }
        private void On_Time()
        {
            Direct_fare.Visible = false;
            Direct_fare.Text = "";
            total_path.Visible = true;
            total_distance.Visible = true;
            label3.Visible = true;
            lbl_second.Visible = true;

            lbl_first.Visible = true;
            total_distance.Text = "";
            total_path.Text = "";
            obj_time_cal.Time(source.SelectedItem.ToString(), destination.SelectedItem.ToString());
            Time_cities = obj_time_cal.total_cities;
            total_path.Text = obj_time_cal.total_path;
            Time_route = obj_time_cal.total_path;
            //if (obj_time_cal.direct != "1000000")
            //{
                Direct_fare.Visible = true;
                Direct_fare.Text = obj_time_cal.Direct_fare;
                //Direct_fare.Text = "Run auto best solution for better result";

                //Direct_fare.Text = obj_time_cal.Direct_fare;
            //}
            //else
            //{
            //    Direct_fare.Text = "Not directly connected";
            //}
            if (obj_time_cal.distance != -1)
            {
                lbl_first.Text = "Time required : " + obj_time_cal.total_distance.ToString();
                Time_time = obj_time_cal.total_distance;
            }
            second = new int[obj_time_cal.theGraph.locaton.Length];
            int j = 0;
            for (int i = obj_time_cal.theGraph.locaton.Length - 1; i >= 0; i--) //for time calculation
            {

                if (obj_time_cal.theGraph.locaton[i] != 0)
                {
                    second[j] = obj_time_cal.theGraph.locaton[i];
                    j++;
                }
            }

            int a1 = 0; ;
            double ticket_required = 0;
            foreach (int item in second)
            {
                if (item != 0)
                {
                    ticket_required += obj_ticke_cal.theGraph.adjMat[a1, item];
                    a1 = item;
                }
            }
            lbl_second.Text = "Ticket cost :  " + ticket_required;
            Time_ticket = ticket_required;
        }
        private void On_Auto()
        {
            Direct_fare.Visible = false;

            Direct_fare.Text = "";
            total_path.Visible = true;
            total_distance.Visible = true;
            label3.Visible = true;
            lbl_first.Visible = true;
            total_distance.Text = "";
            total_path.Text = "";
            obj_both.ticket(source.SelectedItem.ToString(), destination.SelectedItem.ToString());
            if (!obj_both.single)
            {

                string auto_route_ = "";
                int final_index = time(0);
                double b = Auto_time;
                int limit = obj_both.theGraph.roots[final_index, 0] + 1;
                Auto_cities = limit;
                for (int i = limit; i > 0; i--)
                {
                    if (limit == 1)
                    {
                        auto_route_ += "-->";
                        auto_route_ += obj_both.theGraph.vertexList[obj_both.theGraph.roots[final_index, 1]].label;
                        break;
                    }
                    if (i >= 1)
                    {
                        auto_route_ += "-->";
                        auto_route_ += obj_both.theGraph.vertexList[obj_both.theGraph.roots[final_index, i]].label;
                    }
                }
                auto_route_ += "-->" + obj_both.theGraph.vertexList[obj_both.theGraph.destination_point].label;
                total_path.Text = auto_route_;
                Auto_route = auto_route_;
                lbl_first.Text = "Time Required : " + Auto_time.ToString();
            }
            //    if (obj_both.direct != "1000000")
            //    {
            //        Direct_fare.Visible = true;

            //        Direct_fare.Text = obj_both.Direct_fare;
            //    }
            //    else
            //    {
            //        Direct_fare.Text = "Not directly connected";
            //    }
            //    if (obj_both.distance != -1)
            //    {
            //        lbl_first.Text = "Ticket cost :  " + obj_both.total_distance.ToString();
            //    }
            //    second = new int[obj_both.theGraph.locaton.Length];
            //    int j = 0;
            //    for (int i = obj_both.theGraph.locaton.Length - 1; i >= 0; i--) //for time calculation
            //    {

            //        if (obj_both.theGraph.locaton[i] != 0)
            //        {
            //            second[j] = obj_both.theGraph.locaton[i];
            //            j++;
            //        }
            //    }

            //    int a1 = 0;
            //    double time_required = 0;
            //    foreach (int item in second)
            //    {
            //        if (item != 0)
            //        {
            //            time_required += obj_time_cal.theGraph.adjMat[a1, item];
            //            a1 = item;
            //        }
            //    }
            //    lbl_second.Text = "Time required : " + time_required;
            //}


        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            add a1 = new add();
            a1.Show();
        }

        public int time(int a)
        {
            double ticket = 0;
            double min_ticket = 0;
            double time = 0.0;
            double min_time = 10000.0;
            int return_index = 1;
            time = 0.0;

            for (int k = 0; k < obj_city.Total_cities; k++)
            {
                time = 0.0;
                ticket = 0;
                a = k;
                int first = 0;
                int second = 0;
                double result;
                int limit = obj_both.theGraph.roots[a, 0] + 1;
                for (int i = limit; i > 0; i--)
                {
                    if (limit == 1)
                    {
                        ticket = obj_ticket_cal_simple.theGraph.adjMat[obj_both.theGraph.root_index, obj_both.theGraph.destination_point];

                        time = obj_time_cal_simple.theGraph.adjMat[obj_both.theGraph.root_index, obj_both.theGraph.destination_point];
                    }
                    if (i > 1)
                    {
                        second = obj_both.theGraph.roots[a, i - 1];
                        result = obj_time_cal.theGraph.adjMat[first, second];

                        //time += result;
                        time = time_calculation(result, time);
                        ticket += obj_ticke_cal.theGraph.adjMat[first, second];
                    }
                    first = second;

                }
                if (limit != 1)
                {
                    ticket += obj_ticket_cal_simple.theGraph.adjMat[first, obj_both.theGraph.destination_point];
                    result = obj_time_cal_simple.theGraph.adjMat[first, obj_both.theGraph.destination_point];
                    time = time_calculation(result, time);
                }

                if (time <= min_time)
                {
                    min_ticket = ticket;
                    min_time = time;
                    return_index = a;
                }
            }

            string string_distance = min_time.ToString() + ".0";
            string[] array_distance = string_distance.Split('.');
            if ((Convert.ToInt32(array_distance[1])) > 60)
            {
                array_distance[0] = (Convert.ToInt32(array_distance[0]) + 1).ToString();
                array_distance[1] = ((Convert.ToInt32(array_distance[1])) - 60).ToString();
                min_time = Convert.ToDouble(array_distance[0] + "." + array_distance[1]);


            }
            Auto_time = min_time;
            Auto_ticket = Convert.ToInt32(min_ticket);
            return return_index;

        }
        public double time_calculation(double one, double second)
        {

            string string_startToCurrent = one.ToString() + ".0";
            string[] array_startToCurrent = string_startToCurrent.Split('.');

            string string_currentToFringe = second.ToString() + ".0";
            string[] array_currentToFringe = string_currentToFringe.Split('.');
            string[] array_startToFringe = new string[2];


            if ((Convert.ToInt32(array_startToCurrent[1]) + Convert.ToInt32(array_currentToFringe[1])) > 60)
            {
                array_startToFringe[0] = (Convert.ToInt32(array_startToCurrent[0]) + Convert.ToInt32(array_currentToFringe[0]) + 1).ToString();
                array_startToFringe[1] = ((Convert.ToInt32(array_startToCurrent[1]) + Convert.ToInt32(array_currentToFringe[1])) - 60).ToString();
                one = Convert.ToDouble(array_startToFringe[0] + "." + array_startToFringe[1]);


            }
            if ((Convert.ToInt32(array_startToCurrent[1]) + Convert.ToInt32(array_currentToFringe[1])) <= 60)
            {
                one = second + one;
            }
            return one;
        }

        private void Routes_Click(object sender, EventArgs e)
        {

            All_routes obj = new All_routes();
            obj.Show();

        }

        private void All_routes_Click(object sender, EventArgs e)
        {
            obj_route.Trunc();

            string Final_route = "";
            string Final_ticket = "-1";
            double Final_time = -1;
            int final_no = -1;
            for (int ist = 0; ist < obj_city.Total_cities; ist++)
            {
                DataRow row_source = Cities.Rows[ist];


                for (int second = 0; second < obj_city.Total_cities; second++)
                {
                    if (ist != second)
                    {


                        DataRow row_destination = Cities.Rows[second];
                        source.SelectedItem = row_source[1].ToString();
                        destination.SelectedItem = row_destination[1];

                        obj_ticke_cal.theGraph.set_root(source.SelectedItem.ToString());
                        obj_time_cal.theGraph.set_root(source.SelectedItem.ToString());
                        obj_both.theGraph.set_root(source.SelectedItem.ToString());

                        On_Time();
                        On_Auto();
                        On_Ticket();

                        Direct_fare.Visible = false;
                        Direct_fare.Text = "";
                        total_path.Visible = false;
                        total_path.Text = "";
                        total_distance.Visible = false;
                        total_distance.Text = "";
                        label3.Visible = false;
                        lbl_first.Visible = false;
                        lbl_second.Visible = false;
                        lbl_second.Text = "";
                        lbl_first.Text = "";

                        if (Ticket_cities <= Auto_cities)
                        {
                            label3.Visible = true;
                            total_path.Visible = true;
                            total_path.Text = Ticket_route;
                            lbl_first.Visible = true;
                            lbl_second.Visible = true;
                            lbl_first.Text = "Ticket required : " + Ticket_ticket;
                            lbl_second.Text = "Time required : " + Ticket_time;
                            Final_route = Ticket_route + "-Ticket";
                            Final_time = Ticket_time;
                            Final_ticket = Ticket_ticket;
                            final_no = Ticket_cities;
                        }
                        if (Time_cities <= Auto_cities)
                        {
                            if (Ticket_cities > Time_cities)
                            {
                                label3.Visible = true;
                                total_path.Visible = true;
                                total_path.Text = Time_route;
                                lbl_first.Visible = true;
                                lbl_second.Visible = true;
                                lbl_first.Text = "Time required : " + Time_time;
                                lbl_second.Text = "Ticket required : " + Time_ticket;
                                Final_route = Time_route + "-Time";
                                Final_time = Convert.ToDouble(Time_time);
                                Final_ticket = Time_ticket.ToString();
                                final_no = Time_cities;
                            }
                            if (Ticket_cities == Time_cities)
                            {
                                double difference = Time_ticket - Convert.ToDouble(Ticket_ticket);
                                double per = (Convert.ToDouble(Ticket_ticket) / 100) * 40;
                                if (difference <= per)
                                {
                                    label3.Visible = true;
                                    total_path.Visible = true;
                                    total_path.Text = Time_route;
                                    lbl_first.Visible = true;
                                    lbl_second.Visible = true;
                                    lbl_first.Text = "Time required : " + Time_time;
                                    lbl_second.Text = "Ticket required : " + Time_ticket;
                                    Final_route = Time_route + "-Time";
                                    Final_time = Convert.ToDouble(Time_time);
                                    Final_ticket = Time_ticket.ToString();
                                    final_no = Time_cities;
                                }
                                
                            }
                        }
                        if (Ticket_cities > Auto_cities && Time_cities > Auto_cities)
                        {

                            label3.Visible = true;
                            total_path.Visible = true;
                            total_path.Text = Auto_route;
                            lbl_first.Visible = true;
                            lbl_second.Visible = true;
                            lbl_first.Text = "Time required : " + Auto_time;
                            lbl_second.Text = "Ticket required : " + Auto_ticket;
                            Final_route = Auto_route + "-Auto";
                            Final_time = Auto_time;
                            Final_ticket = Auto_ticket.ToString();
                            final_no = Auto_cities;
                        }
                        obj_route.Route = Final_route;
                        obj_route.Ticket = Convert.ToInt32(Final_ticket);
                        obj_route.Time = Final_time;
                        obj_route.Destination = destination.SelectedItem.ToString();
                        obj_route.Source = source.SelectedItem.ToString();
                        obj_route.No_of_cities = final_no - 1;
                        obj_route.Insert();


                    }

                }
            }

        }

        private void radio_time_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void customize_CheckedChanged(object sender, EventArgs e)
        {
            if (customize.Checked)
            {
                priority.Visible = true;
                radio_ticket.Visible =true;
                radio_time.Visible = true;
            }
            
        }

        private void Auto_CheckedChanged(object sender, EventArgs e)
        {
            if (!customize.Checked)
            {
                priority.Visible = false;
                radio_ticket.Visible = false;
                radio_time.Visible = false;
            }
        }

    }
}   