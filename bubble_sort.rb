def bubble_sort(unsorted_array)
    for i in unsorted_array.length-1 do
        for m in unsorted_array.length-1 do
            if unsorted_array[m] > unsorted_array[m+1]
                unsorted_array[m+1], unsorted_array[m] = unsorted_array[m], unsorted_array[m+1]
            end
        end
    end
    print unsorted_array
end


unsorted_array = [1, 5, 7, 2, 9]

bubble_sort (unsorted_array)

#take and array of five numbers