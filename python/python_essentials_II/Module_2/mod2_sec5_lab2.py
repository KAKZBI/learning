# Palindrome checker

text = input("Enter your text: ")

palindrome = ''
for char in text:
    if char.isalpha():
        palindrome += char
palindrome = palindrome.lower()
# extract the first half of the text
middle_text =len(palindrome) //2
first_half_text = palindrome[:middle_text]
# extract the other half of the text
if len(palindrome)%2==0:
    second_half_text = palindrome[middle_text:]
else:
    second_half_text = palindrome[middle_text+1:]
#reverse the other half of the text
second_text = list(second_half_text)
second_text.reverse()
second_half_text = ''.join(second_text)
#Print the result
if first_half_text == second_half_text:
    print("It's a palindrome")
else:
    print("It's not a palindrome")