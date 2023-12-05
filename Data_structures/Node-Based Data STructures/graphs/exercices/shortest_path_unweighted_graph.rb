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


def dijkstra_shortest_path(starting_vertex, final_vertex)
    shortest_path_table = {}
    shortest_previous_stopover_vertex_table = {}
    # To keep our code simple, we'll use a basic array to keep track of
    # the known vertices we haven't yet visited:
    unvisited_vertices = []
    # We keep track of the vertices we've visited using a hash table.
    # We could have used an array, but since we'll be doing lookups,
    # a hash table is more efficient:
    visited_vertices = {}
    # We add the starting vertex's name as the first key inside the
    # shortest_path_table. It has a value of 0, since it costs nothing
    # to get there:
    shortest_path_table[starting_vertex.value] = 0
    # current_vertex = starting_vertex
    queue = Queue.new
    queue.enqueue(starting_vertex)
    # This loop is the core of the algorithm. It runs as long as 
    # the queue is not empty
    while queue.read
        # Remove the first vertex off the queue and make it the current vertex:
        current_vertex = queue.dequeue
        # We add the current_vertex's name to the visited_vertices hash to record
        # that we've officially visited it. We also remove it from the list
        # of unvisited vertices:
        visited_vertices[current_vertex.value] = true
        unvisited_vertices.delete(current_vertex)
        # We iterate over each of the current_vertex's adjacent vertices:
        current_vertex.adjacent_vertices.each do |adjacent_vertex|
            # If we've discovered a new vertex,
            # we add it to the list of unvisited_vertices:
            unvisited_vertices <<
            adjacent_vertex unless visited_vertices[adjacent_vertex.value]
            # we also enqueue the vertex 
            queue.enqueue(adjacent_vertex)unless visited_vertices[adjacent_vertex.value]
            # We calculate the number of edges of getting from the STARTING vertex to the
            # ADJACENT vertex using the CURRENT vertex as the second-to-last stop:
            edges_through_current_vertex =
            shortest_path_table[current_vertex.value] + 1
            # If the number of edges from the STARTING vertex to the ADJACENT vertex is
            # the shortest one we've found so far...
            if !shortest_path_table[adjacent_vertex.value] ||
                edges_through_current_vertex <
                shortest_path_table[adjacent_vertex.value]
                # ... we update our two tables:
                shortest_path_table[adjacent_vertex.value] =
                edges_through_current_vertex
                shortest_previous_stopover_vertex_table[adjacent_vertex.value] =
                current_vertex.value
            end
        end
        
        
    end
    # We have completed the core algorithm. At this point, the
    # shortest_path_table contains all the shortest number of edges to get to each
    # vertex from the starting vertex. However, to calculate the precise path
    # to take from our starting vertex to our final vertex,
    # we need to move on.
    # We'll build the shortest path using a simple array:
    shortest_path = []
    # To construct the shortest path, we need to work backwards from our
    # final vertex. So, we begin with the final vertex as our
    # current_vertex_value:
    current_vertex_value = final_vertex.value
    # We loop until we reach our starting vertex:
    while current_vertex_value != starting_vertex.value
        # We add each current_vertex_value we encounter to the shortest path array:
        shortest_path << current_vertex_value
        # We use the shortest_previous_stopover_vertex_table to follow each vertex
        # to its previous stopover vertex:
        current_vertex_value =
        shortest_previous_stopover_vertex_table[current_vertex_value]
    end
    # We cap things off by adding the starting vertex to the shortest path:
    shortest_path << starting_vertex.value
    # We reverse the output so we can see the path from beginning to end:
    return shortest_path.reverse
end

p dijkstra_shortest_path(ken, lina)