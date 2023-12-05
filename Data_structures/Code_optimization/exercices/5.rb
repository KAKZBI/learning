def sort_temperatures(temperatures)
    hash_temperatures = Hash.new(0)
    lowest_temperature = temperatures.first
    highest_temperature = temperatures.first
    sorted_temperatures = []
    temperatures.each do | temperature|
        lowest_temperature = temperature if temperature < lowest_temperature
        highest_temperature = temperature if temperature > highest_temperature
        # We want to work with integers
        hash_temperatures[(temperature*10).to_i] += 1
    end
    # p hash_temperatures
    lowest_temperature = (lowest_temperature*10).to_i
    highest_temperature = (highest_temperature*10).to_i
    # p lowest_temperature, highest_temperature
    for temperature in lowest_temperature..highest_temperature do
        # we insert the value the number of times it appears in the array
        hash_temperatures[temperature].times do
            # We revert back to the original decimal values
            sorted_temperatures << temperature/10.0 if hash_temperatures[temperature]
        end
    end
    return sorted_temperatures
end

p sort_temperatures([98.6, 98.0, 97.1, 99.0, 98.9, 97.8, 98.5, 98.2, 98.0, 97.1])

# We start by creating a new hash for our lookups in which each value
# is initialized with the value of 0
# In the first loop:
#  -we find the lowest and highest temperatures
#  -we also populate the hash with the integer counterparts of our 
#   initial array temperatures; making sure the key is the integer 
#   corresponding equivalent and the value is the number of times 
#   it appears on the  temperatures array
# In the second loop:
#   we iterate trough all the values ranging from the lowest to the highest
#   temperature and if the temperature is in our hash table then we 
#   insert it into our new array the number of times it should appear