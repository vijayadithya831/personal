# enter name
# weight in kg
# enter height in m
# output : hi name, your weight is so and so, your height is so and so, so your bmi is so and so

name = input("Enter your name: ")
weight = float(input("Enter your weight in KG: "))
height = float(input("Enter your height in meters: "))
bmi = round(weight/(height**2),2)
print(f"Hi {name}, Your weight is {weight} kg, Your height is {height} m. So, Your BMI is {bmi}")

if bmi <=  18.5:
    print("You are a little under-weight, time to grab some carbs!")
elif bmi > 18.5 and bmi <= 24.9:
    print("You are in a good shape, Keep it up!")
elif bmi > 24.9 and bmi <=29.9:
    print("You are a little over-weight, time to burn some calories!")
else:
    print("You are obese, you must definitely reconsider your food and fitness habits!")
