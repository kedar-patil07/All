import random
rock = '''
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
'''

paper = '''
     _______
---'    ____)____
           ______)
          _______)
         _______)
---.__________)
'''

scissors = '''
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
'''

choices = [rock, paper, scissors]

User_choice=int(input("Enter a User choice:0 for Rock , 1 for Paper , 2 for Scissor :"))
if User_choice>2 or User_choice<0:
    print("Invalid Input")
else:
    print(choices[User_choice])
    Computer_choice = random.randint(0, 2)
    print("Computer_choice:")
    print(Computer_choice)

    if Computer_choice == User_choice:
        print("It's a tie")
    elif User_choice == 0 and Computer_choice == 2:
        print("You win")
    elif Computer_choice == 0 and User_choice == 2:
        print("You lose")

    elif Computer_choice > User_choice:
        print("You lose")
    elif User_choice > Computer_choice:
        print("You win")


