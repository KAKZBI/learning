class QueueError(IndexError):  # Choose base class for the new exception.
    pass


class Queue:
    def __init__(self):
        self.__queue_list = []

    def put(self, elem):
        self.__queue_list.insert(0, elem)

    def get(self):
        if len(self.__queue_list) > 0:
            val = self.__queue_list.pop()
            # del self.__queue_list[-1]
            return val
        else :
            raise QueueError
    def get_queue_counter(self):# I created this method to access the queue_list variable bc it is private i.e
        # isn't accessible by functions of derived classes
        return len(self.__queue_list)
    

class SuperQueue(Queue):
    def __init__(self):
        Queue.__init__(self)
    def isempty(self):
        return (self.get_queue_counter()) == 0

que = SuperQueue()
que.put(1)
que.put("dog")
que.put(False)
# print(que.get_queue_counter())
# print(que.isempty())
for i in range(4):
    if not que.isempty():
        try:
            print(que.get())
        except:
            continue
    else:
        print("Queue empty")