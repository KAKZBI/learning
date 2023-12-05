# Use recursion to write a function that accepts a string and returns the
# first index that contains the character “x.” For example, the string,
# "abcdefghijklmnopqrstuvwxyz" has an “x” at index 23. To keep things simple,
# assume the string definitely has at least one “x.”
def index_x(string)
    return 0 if string[0] == 'x'
    index = index_x(string[1, string.length-1])
    return index +1
end

p index_x("abcdefghijklmnopqrstuvwxyz")