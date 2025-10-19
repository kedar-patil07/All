'''counting positive numbers from following list
list = [1,-2,3,-4,5,6,-7,-8,9,10]
'''
list = [1,-2,3,-4,5,6,-7,-8,9,10]
positive_numbers_count = 0

for i in list:
    if i>0:
        positive_numbers_count+=1
        print(i)