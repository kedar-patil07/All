number = int(input("enter the number:"))

if number <= 1:
    print(f"{Number} is not a prime number")
else :
    for i in range(2,number-1):
        if number % i == 0:
            print(f"{number} is not a prime number")
            break
        else:
            print(f"{number} is prime")
            break


