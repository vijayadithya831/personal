a = int(input("Enter the value of num1: "))
b = int(input("Enter the value of num2: "))
c = int(input("Enter the value of num3: "))

if num1 > num2 and num1 > num3:
    print(f"{num1} is greater than {num2} and {num3}")
elif num2 > num1 and num2 > num3:
    print(f"{num2} is greater than {num1} and {num3}")
else:
    print(f"{num3} is greater than {num1} and {num2}")

# complete this code using nested if and optimize it to the maximum
# if a == b == c:
#     print("a,b,c are equal")
# if a == b and a != c:
#     if c > a:
#         print("c is larger, a and b are equal")
#     else:
#         print("c is smaller, a and b are equal")
# if a == c and a != b:
#     if b > a:
#         print ("b is larger, a and c are equal")
#     else:
#         print("b is smaller, a and c are equal")
# if b == c and b != a:
#     if a > b:
#         print("a is larger, b and c are equal")
#     else:
#         print("a is smaller, b and c are equal")
