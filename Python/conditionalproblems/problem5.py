'''password strenght checker
weak-<6 chars , medium-6-10 chars , strong->10 chars
'''
password = input("enter password:")

if len(password) < 6:
    print("password is weak")
elif len(password) <=10:
    print("password is medium")
elif len(password)>10:
    print("password is strong")
