def bubble_sort(unsorted_array)
  i = 0
  for i in i..unsorted_array.length - 2 do
    m = 0
    for m in m..unsorted_array.length - 2 - i do
      if unsorted_array[m] > unsorted_array[m + 1]
        temp = unsorted_array[m + 1]
        unsorted_array[m + 1] = unsorted_array[m]
        unsorted_array[m] = temp
      end
    end
  end
  print unsorted_array.to_s + "\n"
end

unsorted_array = [1, 5, 7, 2, 9]

bubble_sort unsorted_array

def bubble_sort_by(unsorted_array)
  i = 0
  for i in i..unsorted_array.length - 2 do
    m = 0
    for m in m..unsorted_array.length - 2 - i do
      if yield(unsorted_array[m], unsorted_array[m + 1]).positive?
        temp = unsorted_array[m + 1]
        unsorted_array[m + 1] = unsorted_array[m]
        unsorted_array[m] = temp
      end
    end
  end
  print unsorted_array
end

bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end
