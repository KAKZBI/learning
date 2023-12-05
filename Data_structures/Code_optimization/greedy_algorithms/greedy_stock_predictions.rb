def increasing_triplet?(array)
    lowest_price = array[0]
    middle_price = Float::INFINITY
    array.each do |price|
        if price <= lowest_price
            lowest_price = price
            # if current price is higher than lowest price
            # but lower than middle price:
        elsif price <= middle_price
            middle_price = price
            # if the current price is higher than the middle price:
        else
            return true
        end
    end
    return false
end