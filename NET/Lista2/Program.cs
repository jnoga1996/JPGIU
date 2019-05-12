using System;
using System.Collections.Generic;

namespace Lista2
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Lista1> collection = new List<Lista1>();
            List<List2> collection2 = new List<List2>();
            for (int i=0; i < 20; i++) {
                collection.Add(new Lista1());
                collection2.Add(new List2());
            }

            Print1(collection);
            Print2(collection2);

            collection.Sort();
            collection2.Sort();
            
            Print1(collection);
            Print2(collection2);
        }

        static void Print1(List<Lista1> collection)
        {
            Console.WriteLine("Lista1");
            foreach (var x in collection)
            {
                Console.WriteLine(x);
            }
            Console.WriteLine();
        }
        static void Print2(List<List2> collection)
        {
            Console.WriteLine("Lista2");
            foreach (var x in collection)
            {
                Console.WriteLine(x);
            }
            Console.WriteLine();
        }
    }
}
