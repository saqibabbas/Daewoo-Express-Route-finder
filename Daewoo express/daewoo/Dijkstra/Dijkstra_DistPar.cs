using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Djskitra
{
    class Dijkstra_DistPar 
    {
        public double distance; 
        public int parentVert;
        public Dijkstra_DistPar(int pv, double d)
        {
            distance = d;
            parentVert = pv;
        }
    } 
}
