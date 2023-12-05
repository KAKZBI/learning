def greatest_profit(array)
    # You consider the first element as your first purchase price
    buy = array.first
    current_profit = 0
    highest_profit = 0
    for i in 1...array.length
        sell = array[i]
        if sell - buy > 0
            # If there is a profit:
            current_profit = sell - buy
            highest_profit = current_profit if current_profit > highest_profit
        else
            # If there's no profit, you consider the actual price as your new 
            # buying price
            buy = sell
        end
    end
    return highest_profit
end

p greatest_profit([10, 7, 5, 8, 11, 2, 6])
p greatest_profit([2, 9, 4, 7, 11])
p greatest_profit([9, 6, 5, 8, 4, 10])