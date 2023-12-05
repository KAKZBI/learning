class Queue
    def initialize
        @data = []
    end
    def enqueue(element)
        @data << element
    end
    def dequeue
        # The Ruby shift method removes and returns the
        # first element of an array:
        @data.shift
    end
    def read
        @data.first
    end
end

class Vertex
    attr_accessor :value, :adjacent_vertices
    def initialize(value)
        @value = value
        @adjacent_vertices = []
    end
    def add_adjacent_vertex(vertex)
        return if adjacent_vertices.include?(vertex)
        @adjacent_vertices << vertex
        vertex.add_adjacent_vertex(self)
    end

    def bfs_traverse(starting_vertex)
        queue = Queue.new
        visited_vertices = {}
        visited_vertices[starting_vertex.value] = true
        queue.enqueue(starting_vertex)
        # While the queue is not empty:
        while queue.read
            # Remove the first vertex off the queue and make it the current vertex:
            current_vertex = queue.dequeue
            # Print the current vertex's value:
            puts current_vertex.value
            # Iterate over current vertex's adjacent vertices:
            current_vertex.adjacent_vertices.each do |adjacent_vertex|
                # If we have not yet visited the adjacent vertex:
                if !visited_vertices[adjacent_vertex.value]
                    # Mark the adjacent vertex as visited:
                    visited_vertices[adjacent_vertex.value] = true
                    # Add the adjacent vertex to the queue:
                    queue.enqueue(adjacent_vertex)
                end
            end
        end
    end
    
end