# Let’s say we were programming a simple Ruby interface for a printer that can
# accept printing jobs from various computers across a network. We want to
# make sure we print each document in the order in which they were received.
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
class PrintManager
    def initialize
        @queue = Queue.new
    end
    def queue_print_job(document)
        @queue.enqueue(document)
    end
    def run
        # Each time this loop runs, we read the document
        # at the front of the queue:
        while @queue.read
            # We dequeue the document and print it:
            print(@queue.dequeue)
        end
    end
    private
    def print(document)
        # Code to run the actual printer goes here.
        # For demo purposes, we'll print to the terminal:
        puts document
    end
end

print_manager = PrintManager.new
print_manager.queue_print_job("First Document")
print_manager.queue_print_job("Second Document")
print_manager.queue_print_job("Third Document")
print_manager.run