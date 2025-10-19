age = int(input("enter your age: "))

if age<13:
    print("You are child")
elif 13<=age<=19:
    print("You are teenager")
elif 20<=age<=59:
    print("You are adult now")
elif age>=60:
    print("You are Senior")
else:
    print("Invalid age")