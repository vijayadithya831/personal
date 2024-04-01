print("Time to solve some Mensuration Problems! We shall now find the area of a Circle with given Radius")
print("Note: The value of PI is taken as 3.14 by default")
r = int(input("Enter the Radius of the circle: "))
PI = 3.14
def circleArea(r):
    area = PI * r * r
    return round(area,2)
def circleCircumference(r):
    circumference = 2 * PI * r
    return round(circumference,2)
print(f"The Area of the Circle of radius {r} is {circleArea(r)} square units")
print(f"The Circumference of the Circle of radius {r} is {circleCircumference(r)} units")