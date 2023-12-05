# Write a function that accepts a string that contains all the letters of the
# alphabet except one and returns the missing letter. For example, the string,
# "the quick brown box jumps over a lazy dog" contains all the letters of the alphabet
# except the letter, "f". The function should have a time complexity of O(N).
def absent_char(string)
    # alphabet_hash = {} 
    # ('a'..'z').each do |char|
    #     alphabet_hash[char] = true
    # end

    # This would work but with but not in the spirit of the exercise
    # ('a'..'z').each do |char|
    #     return char if !string.include?(char)
    #  end
    string_hash = {}
    string.each_char do |char|
        string_hash[char] = true
    end
    ('a'..'z').each do |char|
        return char if !string_hash[char]
    end
end
p absent_char("the quick brown box jumps over a lazy dog")
    