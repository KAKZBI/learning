# Use recursion to write a function that accepts an array of numbers and
# returns a new array containing just the even numbers.
def even_only(array)
    # This would also work
    # if array.length == 1
    #     return [array[0]] if array.first.even?
    #     return [] if array.first.odd?
    # end
    return [] if array.length == 0
    collection_even = even_only(array[1, array.length - 1])
    if array[0].even?
        collection_even << array[0]
        return collection_even
    else
        return collection_even
    end
end

array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
p even_only(array).reverse
