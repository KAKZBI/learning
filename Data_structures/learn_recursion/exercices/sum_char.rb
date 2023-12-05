# Use recursion to write a function that accepts an array of strings and
# returns the total number of characters across all the strings. For example,
# if the input array is ["ab", "c", "def", "ghij"], the output should be 10 since there
# are 10 characters in total.
def sum_char(array)
    return 0 if array.first.length < 1
    return array.first.length if array.length == 1
    return array.first.length + sum_char(array[1, array.length - 1])
end
p sum_char(["ab", "c", "def", "ghij"])