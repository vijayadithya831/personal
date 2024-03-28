print("Let's find out whether the year is a Leap Year or Not!")
year = int(input("Enter the year: "))
if year % 400 == 0 or (year % 4 == 0 and year % 100 != 0):
    print("Yay! This is a Leap Year. :)")
else:
    print("Sorry buddy, This is not a Leap Year. :(")