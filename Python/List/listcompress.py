'''
[expression for item in iterable if condition]

where
e - x*2
item - element in list
iterable - range(1,11)
condition optional
'''

'''
squares = []
for i in range(1,11):
    squares.append(i**2)
print(squares)
'''
squares = [i**2 for i in range(1,20) if i%2 == 0]
print(squares)