def max_sum(array)
    current_sum = 0
    greatest_sum = 0
    array.each do |num|
        # If current sum is a negative number, reset current sum to zero:
        if current_sum + num < 0
            current_sum = 0
        else
            current_sum += num
            # Greedily assume the current sum is the greatest sum
            # if it's the greatest sum we've encountered so far:
            greatest_sum = current_sum if current_sum > greatest_sum
        end
    end
    return greatest_sum
end

p max_sum [3, -4, 4, -3, 1, -9]