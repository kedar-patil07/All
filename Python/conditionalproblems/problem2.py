'''Movie tickets are priced based on
 age: $12 for adults (18 and over), $8 for children.
Everyone gets a $2 discount on Wednesday
'''

age = int(input("Enter your age: "))
day = input("Enter your day: ")

if age>=18:
    Price = 12
elif age<18:
    Price = 8

if day == "wednesday":
    Price_updated = Price - 2
    print("Price after discount is $:",Price_updated)
else:
    print("Price is $",Price)
