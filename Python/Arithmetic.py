num1=int(input("Enter the first number:"))
num2=int(input("Enter the second Number:"))

choice = input("Enter ur choice:+,-,*,/,//,**,%")

if choice=='+':
    print(f"Addition of two numbers is {num1+num2}")
elif choice=='-':
    print(f"Subtraction of two numbers is {num1-num2}")
elif choice=='*':
    print(f"Multiplication of two numbers is {num1*num2}")
elif choice=='/':
    print(f"Division of two numbers is {num1/num2}")
elif choice=='//':
    print(f"Floor division of two numbers is {num1/num2}")
elif choice=='%':
    print(f"Modulo of two numbers is {num1%num2}")
elif choice=='**':
    print(f"Exponent of two numbers is {num1**num2}")
else:
    print("Invalid choice:")
