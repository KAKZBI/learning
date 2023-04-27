import math


class Point:
    def __init__(self, x=0.0, y=0.0):
        self.__x = x
        self.__y = y

    def getx(self):
        return self.__x

    def gety(self):
        return self.__y

    def distance_from_xy(self, x, y):
        return math.hypot(self.__x-x, self.__y-y)

    def distance_from_point(self, point):
        return math.hypot(self.__x-point.getx(), self.__y-point.gety())


class Triangle:
    def __init__(self, vertice1, vertice2, vertice3):
        self.__points = [vertice1, vertice2, vertice3]

    def perimeter(self):
        l1 = self.__points[0].distance_from_point(self.__points[1])
        l2 = self.__points[0].distance_from_point(self.__points[2])
        l3 = self.__points[1].distance_from_point(self.__points[2])
        return l1 + l2 + l3


triangle = Triangle(Point(0, 0), Point(1, 0), Point(0, 1))
print(triangle.perimeter())