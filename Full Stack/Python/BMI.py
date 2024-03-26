# enter name
# weight in kg
# enter height in m
# output : hi name, your weight is so and so, your height is so and so, so your bmi is so and so

name = input("Enter your name: ")
weight = float(input("Enter your weight in KG: "))
height = float(input("Enter your height in meters: "))
bmi = weight/(height**height)
print(f"Hi {name}, Your weight is {weight} kgs, Your height is {height} m. So, Your BMI is {bmi}")
