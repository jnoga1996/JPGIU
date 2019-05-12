using System;
using System.Linq;
public class Lista1 : Lista, IComparable<Lista1> {

    public Lista1() : base()
    {}

    public Lista1(int numberOfElements) : base(numberOfElements)
    {}

    public int CompareTo(Lista1 other) {
        if (other == null) {
            return 1;
        }

        if (numbers == null) {
            return -1;
        }

        if (numbers.Count == other.numbers.Count) {
            for (int i=0; i<numbers.Count; i++) {
                if (numbers[i] > other.numbers[i])
                    return 1;
                if (numbers[i] == other.numbers[i])
                    continue;
                else
                    return -1;
            }
            return 0;
        }

        if (numbers.Count != other.numbers.Count) {
            int? x = null;
            int? y = null;
            for (int i=0; i<Math.Max(numbers.Count, other.numbers.Count); i++) {
                x = numbers.ElementAtOrDefault(i);
                y = other.numbers.ElementAtOrDefault(i);
                if (x == y) {
                    continue;
                }
                if (x > y) {
                    return 1;
                }
                if (x < y) {
                    return -1;
                }
            }
            return 0;
        }

        else
            return 0;
    }
}