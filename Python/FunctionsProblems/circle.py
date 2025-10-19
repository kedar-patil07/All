import math


def circle(radius):
    area = math.pi*radius**2
    circumference = 2*math.pi*radius
    return round(area,3),round(circumference,2)
a , c = circle(3)
print("area", a ,"circumference",c)
