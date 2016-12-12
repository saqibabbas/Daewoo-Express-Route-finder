using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BFS
{
    class BFS_Graph
    {
        
        public int[,] roots;
        bool more = false;
        int[] no_cities;
        int how_many=0;
        int source;
        bool found = false;
        private string[] result;
        int index_result = 0;
        private int MAX_VERTS = 20;
        public double distance;
        public string direct;
        int destination_index;

        public string total_path;
        public string Direct_fare;
        public string total_distance;
        public BFS_Vertex[] vertexList;
        public int location_point = 0;

        public int[] locaton;

        public int[,] adjMat;
        private int nVerts;
        private parent_child[] parent_child;
        int index;
        int start;
        private int[,] adjMat_swap_row;

        private int[,] adjMat_swap_column;
        public int root_index;

        public int destination_point;

        private BFS_queue theQueue;
        public BFS_Graph(int MAX_VERTS)
        {
            roots = new int[MAX_VERTS,MAX_VERTS];
            vertexList = new BFS_Vertex[MAX_VERTS];
            adjMat = new int[MAX_VERTS, MAX_VERTS];
            adjMat_swap_row = new int[MAX_VERTS, MAX_VERTS];
            adjMat_swap_column = new int[MAX_VERTS, MAX_VERTS];

            result = new string[MAX_VERTS];

            parent_child = new parent_child[MAX_VERTS * MAX_VERTS];

            nVerts = 0;
            for (int j = 0; j < MAX_VERTS; j++)
                for (int k = 0; k < MAX_VERTS; k++)
                    adjMat[j, k] = 0;
            theQueue = new BFS_queue(MAX_VERTS * MAX_VERTS);
        }
        public void find_destination(string destination)
        {
            destination_point = 0;
            for (int i = 0; i < vertexList.Length; i++)
            {
                if (vertexList[i].label.ToString().ToLower() == destination.ToLower())
                {
                    break;
                }
                destination_point++;
            }
        }
        public void find_root(string root)
        {
            root_index = 0;
            for (int i = 0; i < vertexList.Length; i++)
            {
                if (vertexList[i].label.ToString().ToLower() == root.ToLower())
                {
                    break;
                }
                root_index++;
            }
        }
        public void set_root(string root)
        {
            find_root(root);
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
                adjMat[i, 0] = adjMat[i, root_index];
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


        public void addVertex(string lab)
        {
            vertexList[nVerts++] = new BFS_Vertex(lab);
        }

        public void addEdge(int start, int end)
        {
            adjMat[start, end] = 1;
            adjMat[end, start] = 1;
        }

        public void displayVertex(int v)
        {
            Console.Write(vertexList[v].label);
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
            //if (sPath[index].parentVert != 0 && index < sPath.Length)
            //{
            //    location_point++;
            //    locaton[location_point++] = sPath[index].parentVert;

            //    finding_parent(sPath[index].parentVert);
            //}
        }

        public BFS_Vertex[] get_vertex()
        {
            return vertexList;
        }
        public bool bfs(string value, int no,int source)
        {
          
            this.source = source;
            index = 0;
            start = 0;
            int initial = 0;
            int[] val = new int[200];
            int point = 0;
            //for (int i = initial; i < no; i++)
            //{


            vertexList[source].wasVisited = true;
            displayVertex(0);
            theQueue.insert(source);
            int v2;
            while (!theQueue.isEmpty())
            {
                int v1 = theQueue.remove();
                vertexList[v1].wasVisited = true;
                val[point] = v1;
                if (v1==4)
                {
                    
                }
                
               
                while ((v2 = getAdjUnvisitedVertex(v1)) != -1)
                {
                    point++;
                    vertexList[v2].wasVisited = true;

                    val[point] = v2;

                    if (v2==9)
                    {
                        
                    }
                    displayVertex(v2);
                    theQueue.insert(v2);
                    parent_child[v2] = new parent_child(v2.ToString(), v1.ToString());

                    //if (parent_child[v2] != null&& parent_child[v2].parent!=v1.ToString())
                    //{                      
                    //    parent_child[v2].yes = true;
                    //    parent_child[v2].next_child(v2 + "+" + parent_child[v2].next_index, v1.ToString());
                    //    parent_child[v2].next_index++;
                    //}
                    //else
                    //{
                        //parent_child[v2] = new parent_child(v2.ToString(), v1.ToString());
                    //}
                    index++;
                }
                parent_child_check(value);               
                //for (int j = 0; j < nVerts; j++)
                //{
                //    vertexList[j].wasVisited = false;
                //}
                //point++;
                //for (int i = 0; i < point; i++)
                //{
                //    vertexList[val[i]].wasVisited = true;
                //}

            }



            //foreach (var item in val)
            //{


            //    vertexList[item].wasVisited = true;
            //}
            //    point++;
            //}

            return false;
        }
        public void ac()
         {
            string a = result[2];
            parent_child b = parent_child[4];
            int c = roots[0, 0];

        }
        public void parent_child_check(string value)
        {
            for (int i = 0; i <= index; i++)
            {
                if (parent_child[i] != null && parent_child[i].visited == false)
                {


                    if (vertexList[Convert.ToInt32(parent_child[i].child)].label.ToString() == value)
                    {
                        parent_child[i].visited = true;
                        result[0] = i.ToString();
                        //result[index_result] = parent_child[i].child;
                        index_result++;
                        found = true;
                    }
                }
                //if (parent_child[i] != null && parent_child[i].yes == true)
                //{

                //    for (int k = 0; k < parent_child[i].next_index; k++)
                //    {
                //        if (parent_child[i].next[k] != null && parent_child[i].next[k].visited == false)
                //        {
                //            string[] temp = parent_child[i].next[k].child.Split('+');
                          
                //            if (vertexList[Convert.ToInt32(temp[0])].label.ToString() == value)
                //            {
                //                parent_child[i].next[k].visited = true;
                //                result[index_result] = i.ToString() + "+" + k.ToString(); ;
                //                //result[index_result] = parent_child[i].child;
                //                index_result++;
                //            }
                //        }

                //    }
                //}
            }
            start = index;
        }
        public void index_finding(int index)
        {
            
            int parent =Convert.ToInt32( result[0]);
            int i = 1;
            if (parent_child[destination_point] != null)
            {
                while (source != Convert.ToInt32(parent_child[parent].parent))
                {
                    roots[index, i] = Convert.ToInt32(parent_child[parent].parent);
                    parent = Convert.ToInt32(parent_child[parent].parent);
                    i++;
                }
                roots[index, i] = source;
                roots[index, 0] = i - 1;
            }
        }
        public int getAdjUnvisitedVertex(int v)
        {
            for (int j = 0; j < nVerts; j++)
                if (adjMat[v, j] == 1 && vertexList[j].wasVisited == false)
                {
                    vertexList[j].count++;
                    //&& vertexList[j].wasVisited==false
                    return j;
                }
            return -1;
        }
        public void pre_final()
        {
            no_cities=new int [index_result];
            for (int i = 0; i < index_result; i++)
            {                
                //string[] nodes=result[i].Split('+');
                //int node1 = Convert.ToInt32(nodes[0]);
                //int node2 = Convert.ToInt32(nodes[1]);
                
                    //int parent =Convert.ToInt32( parent_child[node1].parent);
                    final(result[i]);
                    no_cities[i] = how_many;
                    how_many = 0;
                
            }
        
        }
        public void final(string parent)
        {
            string[] nodes = parent.Split('+');
            int node1 = Convert.ToInt32(nodes[0]);
            int node2 = Convert.ToInt32(nodes[1]);
            if (node2 == -1)
            {
                while (source != Convert.ToInt32(parent_child[node1].parent))
                {
                    how_many++;
                    final(parent_child[node1].parent + "+-1");
                    if (more)
                    {
                        break;
                    }
                }
                more = true;
            }
            else
            {
                while (source != Convert.ToInt32(parent_child[node1].next[node2].parent))
                {
                    how_many++;
                    final(parent_child[node1].next[node2].parent + "+-1");
                    if (more)
                    {
                        break;
                    }
                }    
            }
            //no_cities[index] = how_many;
            //how_many = 0;
        }

        //public void parent_child_check(string value)
        //{
        //    for (int i = 0; i < index; i++)
        //    {
        //        if (parent_child[i] != null && parent_child[i].visited == false)
        //        {


        //            if (vertexList[Convert.ToInt32(parent_child[i].child)].label.ToString() == value)
        //            {
        //                parent_child[i].visited = true;
        //                result[index_result] = i.ToString();
        //                //result[index_result] = parent_child[i].child;
        //                index_result++;
        //                found = true;
        //            }
        //        }
        //        if (parent_child[i] != null && parent_child[i].yes == true)
        //        {

        //            for (int k = 0; k < parent_child[i].next_index; k++)
        //            {
        //                if (parent_child[i].next[k] != null && parent_child[i].next[k].visited == false)
        //                {
        //                    string[] temp = parent_child[i].next[k].child.Split('+');

        //                    if (vertexList[Convert.ToInt32(temp[0])].label.ToString() == value)
        //                    {
        //                        parent_child[i].next[k].visited = true;
        //                        result[index_result] = i.ToString() + "+" + k.ToString(); ;
        //                        //result[index_result] = parent_child[i].child;
        //                        index_result++;
        //                    }
        //                }

        //            }
        //        }
        //    }
        //    start = index;
        //}
    }
}
