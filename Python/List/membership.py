'''in - true when we got this element in list/false when element not in list
not in - opposite'''

'''-----in------'''
lst1 = [1,2,3,4,5]
check = int(input("Enter a number: "))

if check in lst1:
    print("found")
else:
    print("not found")

'''-----not in----'''
lst2 = [6,7,8,9,10]
check2 = int(input("Enter a number: "))
if check2 not in lst2:
    print("yes not found")
else:
    print("yes found")