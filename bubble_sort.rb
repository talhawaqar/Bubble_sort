def bubble_sort(unsorted_array)
  (0..unsorted_array.length - 2).each do |i|
    (0..unsorted_array.length - 2 - i).each do |m|
      if unsorted_array[m] > unsorted_array[m + 1]
        unsorted_array[m + 1], unsorted_array[m] = unsorted_array[m], unsorted_array[m + 1]
      end
    end
  end
  print unsorted_array.to_s + "\n"
end

unsorted_array = [1, 5, 7, 2, 9]

bubble_sort unsorted_array

def bubble_sort_by(unsorted_array)
  (0..unsorted_array.length - 2).each do |i|
    (0..unsorted_array.length - 2 - i).each do |m|
      if yield(unsorted_array[m], unsorted_array[m + 1]).positive?
        unsorted_array[m + 1], unsorted_array[m] = unsorted_array[m], unsorted_array[m + 1]
      end
    end
  end
  print unsorted_array
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
