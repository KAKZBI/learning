#Digit of life
birthdate = input("Enter the birthdate: ")
birthdate = birthdate.replace(' ','')
while len(birthdate) != 8:
    birthdate = input("Enter a valid birthdate - in the format YYYYMMDD,\
                           or YYYYDDMM, or MMDDYYYY: ")
    
life_digit = 0
for digit in birthdate:
    life_digit += int(digit)

while life_digit > 9:
    birthdate = str(life_digit)
    life_digit = 0
    for digit in birthdate:
        life_digit += int(digit)
print(life_digit)

