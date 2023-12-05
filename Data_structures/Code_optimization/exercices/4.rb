def highest_product(array)
    
    highest = 0
    second_to_highest = 0
    lowest = 0
    second_to_lowest = 0
    array.each do |num|
        # here I look for the two lowest and 2 highest numbers
        if num > 0
            if num > highest
                highest, second_to_highest = num, highest
            elsif num < highest
                second_to_highest = num if num > second_to_highest
            end
        end
       
        if num < 0
            if num < lowest
                lowest, second_to_lowest = num, lowest
            elsif num > lowest
                second_to_lowest = num if num < second_to_lowest
            end
        end
    end
    # p highest, second_to_highest
    # p lowest, second_to_lowest
    product_of_positive = highest * second_to_highest
    product_of_negative = lowest * second_to_lowest
    if product_of_positive > product_of_negative
        return product_of_positive
    else
        return product_of_negative
    end
end

p highest_product([5, -10, -6, 9, 4])