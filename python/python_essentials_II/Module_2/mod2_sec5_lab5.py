#Test data
word = input("Enter the word: ")
comb = input("Enter the combination: ")

answer = "Yes"
for ch in word:
    if ch not in comb:
        answer = "No"
        break
print(answer)