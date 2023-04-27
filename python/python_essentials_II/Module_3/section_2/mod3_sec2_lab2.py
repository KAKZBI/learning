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


que = Queue()
que.put(1)
que.put("dog")
que.put(False)
try:
    for i in range(4):
        print(que.get())
except QueueError:
    print("Queue error")
    