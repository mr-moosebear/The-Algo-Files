
def bubble_sort(array)
  n = array.length

  (n - 1).times do
    (0...n - 1).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end
  array
end

unsorted_array = [5, 2, 55, 23, 99, 10, 14]
sorted_array = bubble_sort(unsorted_array)
puts "Sorted Array: #{sorted_array}"
