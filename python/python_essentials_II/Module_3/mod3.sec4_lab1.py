class Timer:
    def __init__(self, h=0, m=0, s=0):
        self.__hours = h % 24
        self.__minutes = m % 60
        self.__seconds = s % 60
    def get_hours(self):
        if self.__hours < 10:
            return f'0{self.__hours}'
        else:
            return f'{self.__hours}'
    def get_minutes(self):
        if self.__minutes < 10:
            return f'0{self.__minutes}'
        else:
            return f'{self.__minutes}'
    def get_seconds(self):
        if self.__seconds < 10:
            return f'0{self.__seconds}'
        else:
            return f'{self.__seconds}'
    def __str__(self):
        return f'{self.get_hours()}:{self.get_minutes()}:{self.get_seconds()}'
    def next_second(self):
        self.__seconds += 1
        self.__seconds %= 60
        if self.__seconds == 0:
            self.__minutes += 1
            if self.__minutes == 60:
                self.__minutes = 0
                if self.__hours == 23:
                    self.__hours = 0
    def prev_second(self):
        self.__seconds -= 1
        if self.__seconds == -1:
            self.__seconds = 59
            self.__minutes -= 1
            if self.__minutes == -1:
                self.__minutes = 59
                self.__hours -= 1
                if self.__hours == -1:
                    self.__hours = 23

timer = Timer(23, 59, 59)
print(timer)
timer.next_second()
print(timer)
timer.prev_second()
print(timer)