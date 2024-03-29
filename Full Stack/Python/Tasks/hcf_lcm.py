print("We are now going to find out the Highest Common Factor and Least Commom Multiple for a given pair of numbers")
num1 = int(input("Enter the first number: "))
num2 = int(input("Enter the second number: "))
a = num1
b = num2
if not(a>b):
    c = a
    a = b
    b = c
q = 0
r = 1
while r!=0:
    q = a//b
    r = a%b
    a = b
    b = r
hcf = a
lcm = int((num1 * num2)/hcf)
print(f"The Highest Common Factor of {num1} and {num2} is {hcf}")
print(f"The Least Common Multiple of {num1} and {num2} is {lcm}")