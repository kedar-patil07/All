'''Grade calculator
assign a letter grade based on a students score : A(90-100),B(80-89),C(70-79)
D(60-69),F(below 60)'''

score = int(input("Enter your score: "))

if score>100:
    print("Please enter valid score")
elif 90<=score<=100:
    print("A grade")
elif score>=80:
    print("B grade")
elif score>=70:
    print("C grade")
elif score>=60:
    print("D grade")
else :
    print("F grade")


