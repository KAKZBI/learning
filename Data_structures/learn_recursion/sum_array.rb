def sum(array)
    # Base case: only one element in the array:
    return 0 if array.length == 0
    return array[0] + sum(array[1, array.length - 1])
end

print sum([1,2,3,4,5])