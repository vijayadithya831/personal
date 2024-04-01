print("We are now going to find out the Highest Common Factor and Least Commom Multiple for a given pair of numbers")
num1 = int(input("Enter the first number: "))
num2 = int(input("Enter the second number: "))
def calcHcf(a,b):
    global hcf
    x = a
    y = b
    if not(x>y):
        c = x
        x = y
        y = c
    q = 0
    r = 1
    while r!=0:
        q = x//y
        r = x%y
        x = y
        y = r
    hcf = x
    return hcf
def calcLcm(a,b):
    lcm = int((a * b)/hcf)
    return lcm
print(f"The Highest Common Factor of {num1} and {num2} is {calcHcf(num1,num2)}")
print(f"The Least Common Multiple of {num1} and {num2} is {calcLcm(num1,num2)}")