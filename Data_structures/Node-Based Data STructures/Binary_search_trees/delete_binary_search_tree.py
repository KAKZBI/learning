class TreeNode:
    def __init__(self,val,left=None,right=None):
        self.value = val
        self.leftChild = left
        self.rightChild = right

node1 = TreeNode(25)
node2 = TreeNode(75)
root = TreeNode(50, node1, node2)

def delete(valueToDelete, node):
    # The base case is when we've hit the bottom of the tree,
    # and the parent node has no children:
    if node is None:
        return None
    # If the value we're deleting is less or greater than the current node,
    # we set the left or right child respectively to be
    # the return value of a recursive call of this
    # very method on the current
    # node's left or right subtree.
    elif valueToDelete < node.value:
        node.leftChild = delete(valueToDelete, node.leftChild)
        # We return the current node (and its subtree if existent) to
        # be used as the new value of its parent's left or right child:
        return node
    elif valueToDelete > node.value:
        node.rightChild = delete(valueToDelete, node.rightChild)
        return node
        # If the current node is the one we want to delete:
    elif valueToDelete == node.value:
        # If the current node has no left child, we delete it by
        # returning its right child (and its subtree if existent)
        # to be its parent's new subtree:
        if node.leftChild is None:
            return node.rightChild
            # (If the current node has no left OR right child, this ends up
            # being None as per the first line of code in this function.)
        elif node.rightChild is None:
            return node.leftChild
        # If the current node has two children, we delete the current node
        # by calling the lift function (below),
        # which changes the current node's
        # value to the value of its successor node:
        else:
            node.rightChild = lift(node.rightChild, node)
            return node

def lift(node, nodeToDelete):
    # If the current node of this function has a left child,
    # we recursively call this function to continue down
    # the left subtree to find the successor node.
    if node.leftChild:
        node.leftChild = lift(node.leftChild, nodeToDelete)
        return node
    # If the current node has no left child, that means the current node
    # of this function is the successor node, and we take its value
    # and make it the new value of the node that we're deleting:
    else:
        nodeToDelete.value = node.value
        # We return the successor node's right child to be now used
        # as its parent's left child:
        return node.rightChild