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
    def bfs_search(starting_vertex, search_value)
        # Return the original vertex if it happens to
        # be the one we're searching for:
        return starting_vertex if starting_vertex.value == search_value
        queue = Queue.new
        visited_vertices = {}
        visited_vertices[starting_vertex.value] = true
        queue.enqueue(starting_vertex)
        # While the queue is not empty:
        while queue.read
            # Remove the first vertex off the queue and make it the current vertex:
            current_vertex = queue.dequeue
            # Iterate over current vertex's adjacent vertices:
            current_vertex.adjacent_vertices.each do |adjacent_vertex|
                # If we have not yet visited the adjacent vertex:
                if !visited_vertices[adjacent_vertex.value]
                    # If the adjacent vertex is the vertex we're searching for, just return
                    # that vertex:
                    return adjacent_vertex if adjacent_vertex.value == search_value
                    # Mark the adjacent vertex as visited:
                    visited_vertices[adjacent_vertex.value] = true
                    # Add the adjacent vertex to the queue:
                    queue.enqueue(adjacent_vertex)
                end
            end
        end
        # If we haven't found the vertex we're searching for:
        return nil
    end
end
idriss = Vertex.new("Idriss")
kamil = Vertex.new("Kamil")
talia = Vertex.new("Talia")
lina = Vertex.new("Lina")
ken = Vertex.new("Ken")
marco = Vertex.new("Marco")
sasha = Vertex.new("Sacha")
idriss.add_adjacent_vertex(kamil)
idriss.add_adjacent_vertex(talia)
kamil.add_adjacent_vertex(lina)
talia.add_adjacent_vertex(ken)
ken.add_adjacent_vertex(marco)
lina.add_adjacent_vertex(sasha)
marco.add_adjacent_vertex(sasha)

p idriss.bfs_search(kamil, "Ken")
# p idriss.bfs_traverse idriss