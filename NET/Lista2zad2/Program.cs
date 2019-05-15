using System;

namespace Lista2zad2
{
    class Program
    {
        static void Main(string[] args)
        {
            Graph g = new Graph(4);
            
            g.InsertNodesToList(0, 1, 3, 2);
            g.InsertNodesToList(1, 3);
            g.InsertNodesToList(2, 3);
            g.InsertNodesToList(3);
            
            g.PrintGraph();
        }
    }
}
