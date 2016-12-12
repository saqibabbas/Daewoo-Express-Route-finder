using Djskitra;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace daewoo.Calculation
{
    class cal_time
    {
        Cities obj_city = new Cities();
        Time obj_time = new Time();
        int no;
      public  Dijkstra_Graph theGraph;
      public double distance;
        public string direct;
        int destination_index;
        public int total_cities=0;
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

            DataTable time = new DataTable();
            time = obj_time.Time_data();
            fill_edges(time);

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
            obj_time.Total_Times = obj_time.Times_count();

            no = obj_time.Total_Times;

            DataRow row = null;
         
            for (int i = 0; i < no; i++)
            {
                row = Data.Rows[i];
                theGraph.addEdge(Convert.ToInt32(row["Source"]), Convert.ToInt32(row["Destination"]), Convert.ToDouble(row[3]));
            }
        }

        public void Time(string source, string destination)
        {
            total_cities = 0;
            Direct_fare = "";
            total_distance = "";
            total_path = "";

            make_ready();
            obj_time.Total_Times = obj_time.Times_count();

            no = obj_time.Total_Times;
            theGraph.set_root(source);
            distance = theGraph.path(destination,true);
            string string_distance = distance.ToString() + ".0";
            string[] array_distance = string_distance.Split('.');
            //string[] array_startToFringe = new string[2];

            if ((Convert.ToInt32(array_distance[1])) > 60)
            {
                array_distance[0] = (Convert.ToInt32(array_distance[0])  + 1).ToString();
                array_distance[1] = ((Convert.ToInt32(array_distance[1]) ) - 60).ToString();
                distance = Convert.ToDouble(array_distance[0] + "." + array_distance[1]);


            }


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
