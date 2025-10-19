#calculate the sum of even numbers upto a given numbers n.

n = int(input("Enter a value of n: "))
sum_Evennumbers = 0

for i in range(1,n+1):
    if i%2 == 0:
        sum_Evennumbers+=i
print("sum of even numbers",sum_Evennumbers)