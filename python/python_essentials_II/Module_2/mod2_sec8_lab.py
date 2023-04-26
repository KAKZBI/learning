def check_range(prompt, low_limit, high_limit):
    prompt += " " + str(low_limit) + " to " + str(high_limit) + ": "
    is_found = False
    while not is_found:
        try:
            value = int(input(prompt))
            if value<low_limit or value>high_limit:
                raise OverflowError
            # print("The value is:",value)
            is_found = True
        except ValueError:
            print("Wrong input")
            
        except OverflowError:
            print("Error: the value is not within permitted range ("+str(low_limit)+".."+str(high_limit)+")")
            
    return value

number = check_range("Enter a number from", 10, 25)
print("The number is:",number)


