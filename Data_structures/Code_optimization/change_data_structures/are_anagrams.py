def areAnagrams(firstString, secondString):
    # Convert secondString into an array so we can delete characters from it,
    # as strings are immutable in Python:
    secondStringArray = list(secondString)
    for i in range(0, len(firstString)):
        # If we're still iterating through the firstString, but the
        # secondStringArray is already empty:
        if len(secondStringArray) == 0:
            return False
        for j in range(0, len(secondStringArray)):
            # If we find the same character in both the firstString
            # and secondStringArray:
            if firstString[i] == secondStringArray[j]:
                # Delete the character from the second array and
                # go back to the outer loop:
                del secondStringArray[j]
                break
    # The two strings are only anagrams if the secondStringArray
    # has no characters remaining by the time we're done
    # iterating over the firstString:
    return len(secondStringArray) == 0

def areAnagrams_optimized(firstString, secondString):
    firstWordHashTable = {}
    secondWordHashTable = {}
    # Create hash table out of first string:
    for char in firstString:
        if firstWordHashTable.get(char):
            firstWordHashTable[char] += 1
        else:
            firstWordHashTable[char] = 1
        # Create hash table out of second string:
    for char in secondString:
        if secondWordHashTable.get(char):
            secondWordHashTable[char] += 1
        else:
            secondWordHashTable[char] = 1
    # The two strings are anagrams only if the two hash tables are identical:
    return firstWordHashTable == secondWordHashTable

print(areAnagrams_optimized("startle", 'rattles'))

