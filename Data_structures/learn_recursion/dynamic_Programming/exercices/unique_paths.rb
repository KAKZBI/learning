def unique_paths(rows, columns, memo = {})
    return 1 if rows == 1 || columns == 1
    if !memo[[rows, columns]]
        memo[[rows, columns]] = unique_paths(rows - 1, columns) + unique_paths(rows, columns - 1)
    end
    return memo[[rows, columns]]
end
p unique_paths(3,7)