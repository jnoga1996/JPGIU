using System;
using System.Collections.Generic;
using System.Text;
public class Lista {
    protected List<int> numbers = new List<int>();
    protected Random random = new Random();

    public Lista(int numberOfElements) {
        FillList(numbers, numberOfElements);
    }

    public Lista() {
        FillList(numbers, random.Next(1,5));
    }

    private void FillList(List<int> list, int numberOfElements) {
        for (int i=0; i<numberOfElements; i++) {
            Random rand = new Random();
            numbers.Add(rand.Next(0, 100));
        }
    }

    public override string ToString() {
        StringBuilder builder = new StringBuilder();
        foreach(int x in numbers) {
            builder.Append(x);
            builder.Append(" ");
        }
        return builder.ToString();
    }
}