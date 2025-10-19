start = int(input("Enter your start:"))
stop = int(input("Enter your stop:"))

skip = int(input("Enter your skip:"))

for i in range(start,stop):
    if i==skip:
        continue
    print(i)