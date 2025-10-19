'''
Even numbers[1-10]
2,4,6,8,10
num%2==0

odd numbers[1-10]
1,3,5,7,9,
num%2!=0

'''

for i in range(1,12):
    if i%2==0:
        print("Even",i)
    else:
        print("Odd",i)

