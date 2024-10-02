package main

import (
	"fmt"
)

func bubbleSort(array []int) []int {
	array_size := len(array)

	for i := 0; i < array_size; i++ {
		swapped := false

		for j := 0; j < array_size-i-1; j++ {
			if array[j] > array[j+1] {
				// Swap the elements
				array[j], array[j+1] = array[j+1], array[j]
				swapped = true
			}
		}

		if !swapped {
			break
		}
	}

	return array
}

func main() {
	arr := []int{64, 34, 25, 12, 22, 11, 90}
	sortedArr := bubbleSort(arr)
	fmt.Println("Sorted array:", sortedArr)
}
