def count_x(string)
    # Base case: an empty string
    return 0 if string.length == 0
    if string[0] == "x"
        return 1 + count_x(string[1, string.length - 1])
    else
        return count_x(string[1, string.length - 1])
    end
end

print count_x 'axbxcxd'