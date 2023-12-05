def count_car(array)
    #Base case: return the length of the only element in the array
    return array[0].length if array.length == 1
    return array[0].length + count_car(array[1, array.length - 1])
end

print count_car(["ab", "c", "def", "ghij"])