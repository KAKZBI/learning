class TrieNode:
    def __init__(self):
        self.children = {}

class Trie:
    def __init__(self):
        self.root = TrieNode()
    def search(self, word):
        currentNode = self.root
        for char in word:
        # If the current node has child key with current character:
            if currentNode.children.get(char):
                # Follow the child node:
                currentNode = currentNode.children[char]
            else:
                # If the current character isn't found among
                # the current node's children, our search word
                # must not be in the trie:
                return None
        return currentNode
    # We add a popularity parameter to the function 
    def insert(self, word, popularity=0):
        currentNode = self.root
        for char in word:
            # If the current node has child key with current character:
            if currentNode.children.get(char):
                # Follow the child node:
                currentNode = currentNode.children[char]
            else:
                # If the current character isn't found among
                # the current node's children, we add
                # the character as a new child node:
                newNode = TrieNode()
                currentNode.children[char] = newNode
                # Follow this new node:
                currentNode = newNode
                # After inserting the entire word into the trie,
                # we add a * key at the end:
        currentNode.children["*"] = popularity
    def collectAllWords(self, node=None, word="", words=[]):
        # This method accepts three arguments. The first is the
        # node whose descendants we're collecting words from.
        # The second argument, word, begins as an empty string,
        # and we add characters to it as we move through the trie.
        # The third argument, words, begins as an empty array,
        # and by the end of the function will contain all the words
        # from the trie.
        # The current node is the node passed in as the first parameter,
        # or the root node if none is provided:
        currentNode = node or self.root
        # We iterate through all the current node's children:
        for key, childNode in currentNode.children.items():
            # If the current key is *, it means we hit the end of a
            # complete word, so we can add it to our words array:
            if key == "*":
                words.append(word)
            else: # If we're still in the middle of a word:
                # We recursively call this function on the child node.
                self.collectAllWords(childNode, word + key, words)
        return words
    def autocomplete(self, prefix):
        currentNode = self.search(prefix)
        if not currentNode:
            return None
        return self.collectAllWords(currentNode)
    def autocorrect(self, typo):
        currentNode = self.root
        # We use this variable to track the user's word that's found
        prefix = ''
        for char in typo:
            # If the current node has child key with current character:
            if currentNode.children.get(char):
                # Follow the child node:
                currentNode = currentNode.children[char] 
                prefix += char  
            else:
                # If the current character isn't found among
                # the current node's children, we break
                break
        # If the word found so far has more than one character we, return the
        # possible words that can be used
        if prefix == typo:
            return typo
        if len(prefix) > 0:
            
            arr = self.autocomplete(prefix)
            # We'll add the complete words to be returned in this array
            arr2 = []
            for word in arr:
                word = prefix + word
                arr2.append(word)
            return arr2

                
trie = Trie()
trie.insert("tag")
trie.insert("tank")
trie.insert("tankk")
trie.insert("tap")
trie.insert("today")
trie.insert("total")
trie.insert("we")
trie.insert("well")
trie.insert("went")
trie.insert("weather")

print(trie.autocorrect("tanos")) 
