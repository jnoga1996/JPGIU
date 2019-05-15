using System;
public class Graph
{
    private int[][] vertices;

    public Graph(int nodes)
    {
        vertices = new int[nodes][];    }

    public int[] GetAdjecencyList(int index)
    {
        return vertices[index];
    }

    public void InsertNodesToList(int index, params int[] nodes)
    {
        vertices[index] = new int[nodes.Length];
        for (int i=0; i<nodes.Length; i++)
        {
            vertices[index][i] = nodes[i];
        }
    }

    public void PrintGraph()
    {
        for (int row=0; row<vertices.Length; row++)
        {
            for (int column=0; column<vertices[row].Length; column++)
            {
                Console.Write(vertices[row][column] + " ");
            }
            Console.WriteLine();
        }
    }
}