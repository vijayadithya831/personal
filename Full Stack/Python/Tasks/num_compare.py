num1 = int(input("Enter the value of num1: "))
num2 = int(input("Enter the value of num2: "))
num3 = int(input("Enter the value of num3: "))

if num1 > num2 and num1 > num3:
    print(f"{num1} is greater than {num2} and {num3}")
elif num2 > num1 and num2 > num3:
    print(f"{num2} is greater than {num1} and {num3}")
else:
    print(f"{num3} is greater than {num1} and {num2}")

# complete this code using nested if and optimize it to the maximum
# if(num1 > num2):
#     if(num1 > num3):
#         print("num1 is greater")
#     else:
#         print("num3 is greater")
# elif(num2 > num3):
#     print("num2 is greater")
# else:
#     print("num3 is greater")