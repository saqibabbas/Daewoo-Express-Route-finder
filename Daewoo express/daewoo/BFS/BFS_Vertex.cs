using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BFS
{
    class BFS_Vertex
    {
        public string label;
public bool wasVisited;
public int count;
public BFS_Vertex(string lab) 
{
    count = 0;
label = lab;
wasVisited = false;
}
    }
}
