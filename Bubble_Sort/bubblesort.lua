function bubble_sort(array)
  local n = #array  -- Get the length of the array

  -- Outer loop to go through the array
  for i = 1, n - 1 do
    -- Inner loop to compare adjacent elements
    for j = 1, n - i do
      -- Swap if the current element is greater than the next
      if array[j] > array[j + 1] then
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end

  return array
end

-- Example usage
local unsorted_array = {5, 2, 55, 23, 99, 10, 14}
local sorted_array = bubble_sort(unsorted_array)

-- Print the sorted array
print("Sorted Array:")
for _, value in ipairs(sorted_array) do
  print(value)
end
