# def add_until_100(array)
#     return 0 if array.length == 0
#     if array[0] + add_until_100(array[1, array.length - 1]) > 100
#         return add_until_100(array[1, array.length - 1])
#     else
#         return array[0] + add_until_100(array[1, array.length - 1])
#     end
# end
def add_until_100(array)
    return 0 if array.length == 0
    remainder_sum = add_until_100(array[1, array.length - 1])
    if array[0] + remainder_sum > 100
        return remainder_sum
    else
        return array[0] + remainder_sum
    end
end
