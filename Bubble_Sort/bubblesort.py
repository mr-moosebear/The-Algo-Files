
def bubble_sort(array):
    length_of_array = len(array)

    for number_one in range(length_of_array):
        swapped = False

        for number_two in range(0, length_of_array - number_one - 1):
            if array[number_two] > array[number_two + 1]:
                array[number_two], array[number_two + 1] = array[number_two + 1], array[number_two]
                swapped = True
            if(swapped == False):
                break
# Driver Code 
if __name__ == "__main__":
    arr = [64, 43, 12, 24, 90, 99, 56]
    bubble_sort(arr)

    print("Sorted Array:")
    for i in range(len(arr)):
        print("%d" % arr[i], end=" ")
