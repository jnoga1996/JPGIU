using System;

public class List2 : Lista, IComparable<List2>  {
    public List2(int numberOfElements) : base(numberOfElements)
    {}

    public List2() : base()
    {}

    public int CompareTo(List2 other) {
        if (numbers.Count != other.numbers.Count) {
            if (numbers.Count > other.numbers.Count) {
                return 1;
            }
            return -1;
        }
        else {
            for (int i=0; i<numbers.Count; i++) {
                if (numbers[i] > other.numbers[i])
                    return 1;
                if (numbers[i] < other.numbers[i])
                    return -1;
                else
                    continue; 
            }
        }
        return 0;
    }
}