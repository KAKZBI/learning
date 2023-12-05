# Add a method to the DoublyLinkedList class that prints all the elements of
# the list in reverse order.
class Node
    attr_accessor :data, :next_node, :previous_node
    def initialize(data)
        @data = data
    end
end

class DoublyLinkedList
    attr_accessor :first_node, :last_node
    def initialize(first_node=nil, last_node=nil)
        @first_node = first_node
        @last_node = last_node
    end
    def insert_at_end(value)
        new_node = Node.new(value)
        # If there are no elements yet in the linked list:
        if !first_node
            @first_node = new_node
            @last_node = new_node
        else # If the linked list already has at least one node:
            new_node.previous_node = @last_node
            @last_node.next_node = new_node
            @last_node = new_node
        end
    end
    def print_reverse
        current_node = @last_node
        while current_node
            p = current_node.data
            current_node = current_node.previous_node
        end
    end
end