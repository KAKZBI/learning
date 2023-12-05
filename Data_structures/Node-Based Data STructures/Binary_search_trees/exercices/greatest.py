# Write an algorithm that finds the greatest value within a binary search tree.

class TreeNode:
    def __init__(self,val,left=None,right=None):
        self.value = val
        self.leftChild = left
        self.rightChild = right

node1 = TreeNode(25)
node2 = TreeNode(75)
root = TreeNode(50, node1, node2)

def greatest(node):
    if node.rightChild is None:
        return node.value
    else:
        return greatest(node.rightChild)
    

print(greatest(root))