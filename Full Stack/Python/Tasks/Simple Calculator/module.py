from functions import *
print("This is a simple calculator!")
print("These are the operations available:\n1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\n5. Modulus\n6. Floor Division\n7. Exponentiation")
operation = input("Enter what you would like to do: ")
num1 = float(input("Enter your first input number: "))
num2 = float(input("Enter your second input number: "))
op = operation.casefold()
if op in ("add", "addition", "sum"):
    result = add(num1,num2)
    print(f"The addition value when {num1} and {num2} are added is {round(result,2)}")
elif op in ("sub", "subtraction", "difference", "diff"):
    result = sub(num1,num2)
    print(f"The subtraction value when {num2} is subtracted from {num1} is {round(result,2)}")
elif op in ("mul", "multiplication", "product", "prod"):
    result = mul(num1,num2)
    print(f"The multiplication value when {num1} is multiplied by {num2} is {round(result,2)}")
elif op in ("div", "division"):
    result = div(num1,num2)
    print(f"The division value when {num1} is divided by {num2} is {round(result,2)}")
elif op in ("mod", "modulus", "reminder"):
    result = mod(num1,num2)
    print(f"The reminder value when {num1} is divided by {num2} is {round(result,2)}")
elif op in ("floor", "floor division", "quotient"):
    result = flr(num1,num2)
    print(f"The quotient value when {num1} is divided by {num2} is {round(result,2)}")
elif op in ("exp", "exponent", "exponentiation", "pow", "power"):
    result = exp(num1,num2)
    print(f"The exponent value when {num1} is raised to the power {num2} is {round(result,2)}")










