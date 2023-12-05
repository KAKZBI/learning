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
    def dfs_traverse(vertex, visited_vertices={})
        # Mark vertex as visited by adding it to the hash table:
        visited_vertices[vertex.value] = true
        # Print the vertex's value, so we can make sure our traversal really works:
        puts vertex.value
        # Iterate through the current vertex's adjacent vertices:
        vertex.adjacent_vertices.each do |adjacent_vertex|
            # Ignore an adjacent vertex if we've already visited it:
            next if visited_vertices[adjacent_vertex.value]
            # Recursively call this method on the adjacent vertex:
            dfs_traverse(adjacent_vertex, visited_vertices)
        end
    end
    def dfs(vertex, search_value, visited_vertices={})
        # Return the original vertex if it happens to
        # be the one we're searching for:
        return vertex if vertex.value == search_value
        visited_vertices[vertex.value] = true
        vertex.adjacent_vertices.each do |adjacent_vertex|
            next if visited_vertices[adjacent_vertex.value]
            # If the adjacent vertex is the vertex we're searching for, just return
            # that vertex:
            return adjacent_vertex if adjacent_vertex.value == search_value
            # Attempt to find the vertex we're searching for by recursively calling
            # this method on the adjacent vertex:
            vertex_were_searching_for =
            dfs(adjacent_vertex, search_value, visited_vertices)
            # If we were able to find the correct vertex using the above recursion,
            # return the correct vertex:
            return vertex_were_searching_for if vertex_were_searching_for
        end
        # If we haven't found the vertex we're searching for:
        return nil
    end
end
