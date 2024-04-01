print("This is a Simple Calculator, Which recieves 2 numbers and calculates all the basic arithmetic operations!")
num1 = int(input("Enter the first number: "))
num2 = int(input("Enter the second number: "))
def sum(a=0,b=0):
    return a+b
def difference(a=0,b=0):
    return a-b
def product(a=1,b=1):
    return a*b
def divide(a=1,b=1):
    return round(a/b,2)
def quotient(a=1,b=1):
    return a//b
def reminder(a=1,b=1):
    return a%b
def exponent(a=0,b=0):
    return a**b

print(f"The addition value when {num1} and {num2} are added is {sum(num1,num2)}")
print(f"The subtraction value when {num2} is subtracted from {num1} is {difference(num1,num2)}")
print(f"The multiplication value when {num1} is multiplied by {num2} is {product(num1,num2)}")
print(f"The division value when {num1} is divided by {num2} is {divide(num1,num2)}")
print(f"The quotient value when {num1} is divided by {num2} is {quotient(num1,num2)}")
print(f"The reminder value when {num1} is divided by {num2} is {reminder(num1,num2)}")
print(f"The exponent value when {num1} is raised to the power {num2} {exponent(num1,num2)}")