#include<stdio.h>

void main()
{
	const int SIZE = 10;
	int array[] = {100, 5, 8, 3, 9, 11, 8, 1, 2, 24};
	
	int i, j, temp;
	for (i=0; i<SIZE-1; i++)
	{
		for (j=0; j<SIZE-i-1; j++)
		{
			if (array[j] > array[j+1])
			{
				temp = array[j];
				array[j] = array[j+1];
				array[j+1] = temp;
			}
		}
	}
	
	for (i=0; i<SIZE; i++) 
	{
		printf("%d ", array[i]);
	}
}