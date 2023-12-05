def missing_int(array)
    array_hash = {}
    max_number = array.first
    array.each do |number|
        array_hash[number] = true
        max_number = number if number > max_number
    end
    max_number.times do |number|
        return number unless array_hash[number]
    end
end

p missing_int([2, 3, 0, 6, 1, 5])
p missing_int([8, 2, 3, 9, 4, 7, 5, 0, 6])