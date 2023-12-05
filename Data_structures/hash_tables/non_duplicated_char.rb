# Write a function that returns the first non-duplicated character in a string.
# For example, the string, "minimum" has two characters that only exist
# once—the "n" and the "u", so your function should return the "n", since it
# occurs first. The function should have an efficiency of O(N).
def non_duplicate(string)
    # string_arr = string.to_a
    string_hash = string.split("").reduce(Hash.new(0)) do |string_hash, char|
        string_hash[char] +=1
        string_hash
    end
    string_hash.each{|char, occurences| return char if occurences == 1}
end
p non_duplicate("minimum")
