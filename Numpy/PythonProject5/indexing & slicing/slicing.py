'''
slicing

array[start:stop:step]      #we have pass indexing number

arr[start:end] , start to end -1

negative step, -1 reverse
'''

import numpy as np
arr = np.array([10,20,30,40,50])
print(arr[1:5]) #index 1 to 4
print(arr[:4])  #index 0 to 3
print(arr[::2]) #every second elemnt
print(arr[::-1])    #reverse


import calendar

yy = 2025
mm = 10
print(calendar.month(yy,mm))