using Djskitra;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace daewoo.Calculation
{
    class cal_ticket
    {

        Tickets obj_tickets = new Tickets();
        Cities obj_city = new Cities();

        int no;
        public Dijkstra_Graph theGraph;
        public int total_cities = 0;

        public double distance;
        public string direct;
        int destination_index;

        public string total_path;
        public string Direct_fare;
        public string total_distance;

        public void make_ready()
        {
            obj_city.Total_cities = obj_city.Cities_count();

            theGraph = new Dijkstra_Graph(obj_city.Total_cities);

            DataTable Cities = new DataTable();
            Cities = obj_city.Cities_data();
            fill_vertex(Cities);

            DataTable tickets = new DataTable();
            tickets = obj_tickets.Ticket_data();
            fill_edges(tickets);

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
        public void fill_edges(DataTable Data)
        {
            obj_tickets.Total_Tickets = obj_tickets.Tickets_count();

            no = obj_tickets.Total_Tickets;

            DataRow row = null;
            //obj_tickets.Total_Tickets = obj_tickets.Tickets_count();
            for (int i = 0; i < no; i++)
            {
                row = Data.Rows[i];
                theGraph.addEdge(Convert.ToInt32(row["Source"]), Convert.ToInt32(row["Destination"]), Convert.ToDouble(row[3]));
            }
        }


        public void ticket(string source, string destination)
        {

            //Direct_fare.Visible = false;

            //total_path.Visible = true;
            //total_distance.Visible = true;
            //label3.Visible = true;
            //label4.Visible = true;

            total_cities = 0;
            Direct_fare = "";
            total_distance = "";
            total_path = "";

            make_ready();
            obj_tickets.Total_Tickets = obj_tickets.Tickets_count();
            no = obj_tickets.Total_Tickets;
            theGraph.set_root(source);
            distance = theGraph.path(destination, false);

            Dijkstra_Vertex[] vertex = theGraph.get_vertex();
            theGraph.make_list(destination);
            for (int i = 0; i < theGraph.vertexList.Length; i++)
            {
                if (theGraph.vertexList[i].label.ToLower().ToString() == destination.ToLower())
                {
                    break;
                }
                destination_index++;
            }
            direct = theGraph.adjMat[0, destination_index].ToString();
            total_path += "-->" + source;
            for (int i = theGraph.locaton.Length - 1; i >= 0; i--)
            {

                if (theGraph.locaton[i] != 0)
                {
                    total_cities++;
                    total_path += "-->";
                    total_path += vertex[theGraph.locaton[i]].label;

                }
            }
            if (direct != "1000000")
            {
                //Direct_fare.Visible = true;

                Direct_fare += "Direct route is available, do auto best solution for better result";
            }
            else
            {
                Direct_fare = "Not directly connected , do auto best solution for better result";
            }
            if (distance != -1)
            {
                total_distance = distance.ToString();
            }
            else
            {
            }
            distance = 0;
            direct = "";
            destination_index = 0;
            no = 0;

        }
    }
}
