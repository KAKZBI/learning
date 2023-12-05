def reverse(string)
    # Base case: string with just one character
    return '' if string.length == 0
    return reverse(string[1, string.length - 1]) + string[0]
end

print reverse "abcde"