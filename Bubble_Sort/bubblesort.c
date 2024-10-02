#include <stdbool.h>
#include <stdio.h>

void swap(int* xp, int* yp)
{
	int temp = *xp;
	*xp = *yp;
	*yp = temp;
}

void bubbleSort(int arr[], int n)
{
	bool swapped;
	for (int i = 0; i < n - 1; i++) {
		swapped = false;
		for (int j = 0; j < n - i -1; j++) {
			if (arr[j] > arr[j + 1]) {
				swap(&arr[j], &arr[j + 1]);
				swapped = true;
			}
		}

		if (swapped == false)
			break;
	}
}

void printArray(int arr[], int size)
{
	for (int i = 0; i < size; i++) {
		printf("%d\n", arr[i]);
	}
}

int main() {
	int arr[] = {64, 56, 87, 99, 69, 11};
	int n = sizeof(arr) / sizeof(arr[0]);
	bubbleSort(arr, n);
	printf("Sorted Array\n");
	printArray(arr, n);
	return 0;
}
