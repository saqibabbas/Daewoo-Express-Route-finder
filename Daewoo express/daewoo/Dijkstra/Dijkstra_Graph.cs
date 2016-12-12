using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Djskitra
{
    class Dijkstra_Graph
    {
        public bool from_time;
        public int[] locaton;
        private int MAX_VERTS;
        private int INFINITY = 1000000;
        public Dijkstra_Vertex[] vertexList;
        public double[,] adjMat;
        private double[,] adjMat_swap_row;

        private double[,] adjMat_swap_column;

        public int destination_index;
        public int location_point=0;
        private int nVerts; 
        private int nTree;
        public Dijkstra_DistPar[] sPath; 
        public int currentVert;
        public double startToCurrent;
        public int root_index;

        public void set_root(string root)
        {       
            root_index = 0;
            for (int i = 0; i < vertexList.Length; i++)
            {
                if (vertexList[i].label.ToLower().ToString()==root.ToLower())
                {            
                    break;
                }
                root_index++;
            }
            //adjMat_swap

            for (int i = 0; i < vertexList.Length; i++) // for row exchange
            {
                adjMat_swap_row[0, i] = adjMat[0, i];
            }
            for (int i = 0; i < vertexList.Length; i++)
            {
                adjMat[0, i] = adjMat[root_index, i];
            }
            for (int i = 0; i < vertexList.Length; i++)
            {
                adjMat[root_index, i] = adjMat_swap_row[0, i];
            }
            // row end

            // for column exchange
            for (int i = 0; i < vertexList.Length; i++) 
            {
                adjMat_swap_column[i, 0] = adjMat[i, 0];
            }
            for (int i = 0; i < vertexList.Length; i++)
            {
                adjMat[i, 0] = adjMat[i,root_index];
            }
            for (int i = 0; i < vertexList.Length; i++)
            {
                adjMat[i, root_index] = adjMat_swap_column[i, 0];
            }

            //column end
            string swap_word;
            swap_word = vertexList[root_index].label.ToString();
            vertexList[root_index].label = vertexList[0].label;
            vertexList[0].label = swap_word;

        }

        public Dijkstra_Graph(int MAX_VERTS) 
        {
            locaton = new int[MAX_VERTS];
            vertexList = new Dijkstra_Vertex[MAX_VERTS];

            adjMat = new double[MAX_VERTS, MAX_VERTS];

            adjMat_swap_row = new double[MAX_VERTS, MAX_VERTS];
            adjMat_swap_column = new double[MAX_VERTS, MAX_VERTS];

            nVerts = 0;
            nTree = 0;
            for (int j = 0; j < MAX_VERTS; j++) 
                for (int k = 0; k < MAX_VERTS; k++) 
                    adjMat[j, k] = INFINITY;
            sPath = new Dijkstra_DistPar[MAX_VERTS]; 
        } 

        public void addVertex(string lab)
        {
            vertexList[nVerts++] = new Dijkstra_Vertex(lab);
        }

        public void addEdge(int start, int end, double weight)
        {
            adjMat[start, end] = weight;
            adjMat[end, start] = weight; 
        }
        public Dijkstra_Vertex[] get_vertex()
        {
            return vertexList;
        }

        public double path(string value,bool flag) 
        {
            this.from_time = flag;
            int startTree = 0; 
            vertexList[startTree].isInTree = true;
            nTree = 1; 
            for (int j = 0; j < nVerts; j++)
            {
                double tempDist = adjMat[startTree, j];
                sPath[j] = new Dijkstra_DistPar(startTree, tempDist);
            }
            
            while (nTree < nVerts)
            {
                int indexMin = getMin();

                double minDist = sPath[indexMin].distance;
                if (minDist == INFINITY) 
                { 
                    Console.WriteLine("There are unreachable vertices");
                    break; 
                }
                else
                { 
                    currentVert = indexMin; 
                    startToCurrent = sPath[indexMin].distance;
                }
                vertexList[currentVert].isInTree = true;
                nTree++;
                if (vertexList[currentVert].label.ToString().ToLower() == value.ToLower())
                {
                    return startToCurrent;
                }
                adjust_sPath();
                //displayPaths();
                //foreach (var item in locaton)
                //{
                //    Console.WriteLine(item);
                //}
            }
            //displayPaths(); //////////////////////////////////////////////
            nTree = 0; 
            for (int j = 0; j < nVerts; j++)
                vertexList[j].isInTree = false;
            return -1;
         
        }

        public void make_list(string destination)
        {
            int destination_index = 0;
            location_point = 0;
            for (int i = 0; i < vertexList.Length; i++)
            {
                if (vertexList[i].label.ToLower().ToString() == destination.ToLower())
                {
                    break;
                }
                destination_index++;
            }
            locaton[location_point] = destination_index;
            finding_parent(destination_index++);
        }
        public void finding_parent(int index)
        {
            if (sPath[index].parentVert != 0 && index<sPath.Length)
            {
                location_point++;
                locaton[location_point++] = sPath[index].parentVert;
                
                finding_parent(sPath[index].parentVert);
            }
        }







        public int getMin() 
        {
            double minDist = INFINITY; 
            int indexMin = 0;
            for (int j = 1; j < nVerts; j++)
            {
                if (!vertexList[j].isInTree && 
                sPath[j].distance < minDist)
                {
                    minDist = sPath[j].distance;
                    indexMin = j; 
                }
            } 
            return indexMin; 
        } 

        public void adjust_sPath()
        {
            int a = 0;
            double startToFringe = 0;

            int column = 1; 
            while (column < nVerts) 
            {
                
                if (vertexList[column].isInTree)
                {
                    column++;
                    continue;
                }
                double currentToFringe = adjMat[currentVert, column];
                
                double sPathDist = sPath[column].distance;
                if (!from_time)
                {
                     startToFringe = startToCurrent + currentToFringe;
                
                }
                if (from_time)
                {
                    
                    string string_startToCurrent = startToCurrent.ToString() + ".0";
                    string[] array_startToCurrent = string_startToCurrent.Split('.');

                    string string_currentToFringe = currentToFringe.ToString() + ".0";
                     string[] array_currentToFringe = string_currentToFringe.Split('.');
                     string[] array_startToFringe = new string[2];
                     a++;
                     
                     if ((Convert.ToInt32(array_startToCurrent[1]) + Convert.ToInt32(array_currentToFringe[1])) > 60)
                     {                     
                         array_startToFringe[0] = (Convert.ToInt32(array_startToCurrent[0]) + Convert.ToInt32(array_currentToFringe[0]) + 1).ToString();                     
                         array_startToFringe[1] = ((Convert.ToInt32(array_startToCurrent[1]) + Convert.ToInt32(array_currentToFringe[1])) - 60).ToString();
                         startToFringe = Convert.ToDouble(array_startToFringe[0] + "." + array_startToFringe[1]);


                     }
                     if ((Convert.ToInt32(array_startToCurrent[1]) + Convert.ToInt32(array_currentToFringe[1])) <= 60)
                     {
                         startToFringe = startToCurrent + currentToFringe;    
                     }

                     
                }
                if (startToFringe < sPathDist)
                {

                    sPath[column].parentVert = currentVert;
                    sPath[column].distance = startToFringe;
                }
                column++;
            }
        } 

        public void displayPaths()
        {
            for (int j = 0; j < nVerts; j++) 
            {
                Console.Write(vertexList[j].label + "="); 
                if (sPath[j].distance == INFINITY)
                    Console.Write("inf"); 
                else
                    Console.Write(sPath[j].distance); 
                string parent = vertexList[sPath[j].parentVert].label;
                Console.Write("(" + parent + ") ");
            }
            Console.WriteLine("");
        }

    } 
}
