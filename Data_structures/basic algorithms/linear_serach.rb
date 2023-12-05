def linear_search(array, search_value)
    # We iterate through every element in the array:
    array.each_with_index do |element, index|
        # If we find the value we're looking for, we return its index:
        if element == search_value
            return index
        # If we reach an element that is greater than the value
        # we're looking for, we can exit the loop early:
        elsif element > search_value
            break
        end
    end
        # We return nil if we do not find the value within the array:
    return nil
end
p linear_search([3, 17, 75, 80, 202], 22)

