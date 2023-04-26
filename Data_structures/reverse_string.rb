class Stack
    def initialize
        @data = []
    end
    def push(element)
        @data << element
    end
    def pop
        @data.pop
    end
    def read
        @data.last
    end
end

def reverse_string(string)
    string_stack = Stack.new
    string.each_char{|c| string_stack.push(c)}
    final_string = ''
    string.length.times do
        final_string += string_stack.pop
    end
    final_string
end
p reverse_string("abcde")