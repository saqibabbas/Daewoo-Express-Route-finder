using BFS;
using Djskitra;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace daewoo.Calculation
{
    class cal_Both
    {
        public bool single = true;
        Time obj_time = new Time();
        Tickets obj_tickets = new Tickets();
        Cities obj_city = new Cities();
        public BFS_Graph theGraph;


        int min_no = 0;
        int value_min;
        int[] array_min = new int[13];

        //int min_no = 0;
        int value_min_time;
        //int[] array_min = new int[13];
        int no;
        public double distance;
        public string direct;
       public int destination_index;

        public string total_path;
        public string Direct_fare;
        public string total_distance;

        public void make_ready()
        {
            obj_city.Total_cities = obj_city.Cities_count();

            theGraph = new BFS_Graph(obj_city.Total_cities);

            DataTable Cities = new DataTable();
            Cities = obj_city.Cities_data();
            fill_vertex(Cities);

            DataTable tickets = new DataTable();
            tickets = obj_tickets.Ticket_data();

            DataTable time = new DataTable();
            time = obj_time.Time_data();
            fill_edges(tickets, time);

        }

        public void fill_vertex(DataTable cities)
        {
            DataRow row = null;
            for (int i = 0; i < obj_city.Total_cities; i++)
            {
                row = cities.Rows[i];

                theGraph.addVertex(row[1].ToString()); // 0 (start)
            }

        }
        public void fill_edges(DataTable Tickets, DataTable Time)
        {
            obj_time.Total_Times = obj_time.Times_count();

            no = obj_time.Total_Times;

            DataRow ticket_row = null;
            DataRow time_row = null;

            //obj_tickets.Total_Tickets = obj_tickets.Tickets_count();
            for (int i = 0; i < no; i++)
            {
                ticket_row = Tickets.Rows[i];
                time_row = Time.Rows[i];

                theGraph.addEdge(Convert.ToInt32(ticket_row["Source"]), Convert.ToInt32(ticket_row["Destination"]));
            }
        }


        public void ticket(string source, string destination)
        {

            //Direct_fare.Visible = false;

            //total_path.Visible = true;
            //total_distance.Visible = true;
            //label3.Visible = true;
            //label4.Visible = true;


            Direct_fare = "";
            total_distance = "";
            total_path = "";

            make_ready();
            obj_tickets.Total_Tickets = obj_tickets.Tickets_count();
            no = obj_time.Total_Times;
            obj_time.Total_Times = obj_time.Times_count();

            //theGraph.set_root(source);
            //distance = 
            theGraph.find_root(source);
            theGraph.find_destination(destination);
            for (int i = 0; i < obj_city.Total_cities; i++)
            {


                theGraph.bfs(destination, obj_city.Total_cities, theGraph.root_index);
                theGraph.ac();
                theGraph.index_finding(i);
                for (int j = 0; j < obj_city.Total_cities; j++)
                {
                    theGraph.vertexList[j].wasVisited = false;
                }
                for (int k = 0; k <= i + 1; k++)
                {
                    if (k < obj_city.Total_cities)
                    {
                        theGraph.vertexList[k].wasVisited = true;
                    }
                }
                theGraph.vertexList[0].wasVisited = false;
            }
            theGraph.ac();
            find_minimum();
            
            //theGraph.pre_final();

            //BFS_Vertex[] vertex = theGraph.get_vertex();
            //theGraph.make_list(destination);
            //for (int i = 0; i < theGraph.vertexList.Length; i++)
            //{
            //    if (theGraph.vertexList[i].label.ToLower().ToString() == destination.ToLower())
            //    {
            //        break;
            //    }
            //    destination_index++;
            //}
            //direct = theGraph.adjMat[0, destination_index].ToString();
            //for (int i = theGraph.locaton.Length - 1; i >= 0; i--)
            //{

            //    if (theGraph.locaton[i] != 0)
            //    {
            //        total_path += "-->";
            //        total_path += vertex[theGraph.locaton[i]].label;

            //    }
            //}
            //if (direct != "1000000")
            //{
            //    //Direct_fare.Visible = true;

            //    Direct_fare += "Direct fare : " + direct;
            //}
            //else
            //{
            //    Direct_fare = "Not directly connected";
            //}
            //if (distance != -1)
            //{
            //    total_distance = distance.ToString();
            //}
            //else
            //{
            //}
            //distance = 0;
            //direct = "";
            //destination_index = 0;
            //no = 0;

        }
        public void find_minimum()
        {
            value_min = theGraph.roots[0, 0];
            int index = 0;
            for (int i = 1; i < obj_city.Total_cities; i++)
            {

                if (theGraph.roots[i, 0] < value_min)
                {
                    value_min = i;
                    
                }
                if (theGraph.roots[i, 0] == value_min)
                {
                    array_min[index] = i;
                    min_no++;
                    index++;
                    single = false;
                }
            }
        }
      

    }
}
