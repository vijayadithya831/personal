n = int(input("enter a number : "))
# t = n
if n %2 != 0:
    for i in range(n):
        for j in range(n):
            if i == j and i < (n+1)//2:
                print(n-i, end = '')
            if i+j == n-1 and i < (n+1)//2 - 1:
                print(i+1, end = '')
            if i+j == n-1 and i>= (n+1)//2:
                print(j+1, end = '')
            if i == j and i>= (n+1)//2:
                print(i+1, end = '')
            else:
                print(' ', end = '')
        print()
else:
    print("Enter an odd number")