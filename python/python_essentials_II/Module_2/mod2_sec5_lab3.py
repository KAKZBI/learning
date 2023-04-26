# Anagrams
text = input("Enter the first text: ")
text1 = ''
#Remove anything that isn't a letter
for char in text:
    if char.isalpha():
        text1 += char
text1 = text1.lower()

text = input("Enter the second text: ")
text2 = ''
for char in text:
    if char.isalpha():
        text2 += char
text2 = text2.lower()

def anagrams(text1, text2):
    #collet the letters into a list
    text1_array = list(text1)
    text2_array = list(text2)
    #Empty texts and unequal lenghts for the texts says they're not anagrams
    if len(text1) != len(text2) or len(text1) == 0 or len(text2) == 0:
        return ("Not anagrams")
    else:
        #was wrongly trying to go with text2_array[j]==text1_array[i]
        for i in range(len(text1_array)) :
            found = False
            for j in range(len(text2_array)):
                if text2_array[j]==text1_array[0]:
                    del text2_array[j]
                    del text1_array[0]
                    found = True
                    break
            if not found:
                    return ("Not anagrams")
        if len(text1_array) == 0 and len(text2_array) == 0:
            return("Anagrams")
        else:
            return("Not anagrams")

print(anagrams(text1,text2))