using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BFS
{
    class parent_child
    {
        public int next_index = 0;

        public string child;
        public string parent;
        public bool visited = false;
        public bool yes = false;
        public parent_child[] next;
        public parent_child(string child, string parent)
        {
            next = new parent_child[50];
            this.child = child;
            //this.visited = false;
            this.parent = parent;
        }
        public void next_child(string child, string parent)
        {
            next[next_index] = new parent_child(child, parent);
        }
    }
}
