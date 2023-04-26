#Caesar cipher
text = input("Enter your message: ")
cipher = ''
shift = int(input("Enter a shift value:"))
while shift<1 or shift>25:
    shift = int(input("Enter a valid shift value- between 1 and 25 inclusive: "))
for char in text:
    if not char.isalpha():
        cipher += char
    code = ord(char) + shift
    if char.isupper():
        if code > ord('Z'):
            code = ord('A') + code % ord('Z') -1
        cipher += chr(code)
    if char.islower():
        if code > ord('z'):
            code = ord('a') + code % ord('z') -1
        cipher += chr(code)

print(cipher)