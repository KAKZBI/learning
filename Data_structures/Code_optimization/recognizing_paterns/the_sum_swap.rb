def sum_swap(array_1, array_2)
    # Hash table to store values of first array:
    hash_table = {}
    sum_1 = 0
    sum_2 = 0
    # Get sum of first array, while storing its values
    # in a hash table, together with an index
    array_1.each_with_index do |num, index|
        sum_1 += num
        hash_table[num] = index
    end
    # Get sum of second array:
    array_2.each do |num|
        sum_2 += num
    end
    # Calculate how much a number in the second array needs
    # to shift by:
    shift_amount = (sum_1 - sum_2) / 2
    # Iterate over each number in second array:
    array_2.each_with_index do |num, index|
        # Check hash table for the number's counterpart in the
        # first array, which is calculated as the current number
        # plus the amount it has to shift by:
        if hash_table[num + shift_amount]
            return [hash_table[num + shift_amount], index]
        end
    end
    return nil
end