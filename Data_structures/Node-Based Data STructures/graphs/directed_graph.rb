class Vertex
    attr_accessor :value, :adjacent_vertices
    def initialize(value)
        @value = value
        @adjacent_vertices = []
    end
    def add_adjacent_vertex(vertex)
        @adjacent_vertices << vertex
    end
end

alice = Vertex.new("alice")
bob = Vertex.new("bob")
cynthia = Vertex.new("cynthia")
alice.add_adjacent_vertex(bob)
alice.add_adjacent_vertex(cynthia)
bob.add_adjacent_vertex(cynthia)
cynthia.add_adjacent_vertex(bob)