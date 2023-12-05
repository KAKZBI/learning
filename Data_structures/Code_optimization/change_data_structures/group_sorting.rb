def group_array(array)
    hash_table = {}
    new_array = []
    # Store the tallies of each string in a hash table:
    array.each do |value|
        if hash_table[value]
            hash_table[value] += 1
        else
            hash_table[value] = 1
        end
    end
    # Iterate over the hash table and populate a new array
    # with the correct number of each string:
    hash_table.each do |key, count|
        count.times do
            new_array << key
        end
    end
    return new_array
end