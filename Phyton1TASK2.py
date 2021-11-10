#task2

import random
num = random.randint(1, 100)

favNumber = int(input(" What`s your favourite number between 1-100 ? :") )
if favNumber <= 33:
    print(" Hear about the new restaurant called Karma?")
    print("There’s no menu: You get what you deserve. ")
elif 33 > favNumber <= 66:
    print(" Why don’t scientists trust atoms?") 
    print(" Because they make up everything. ")     
elif 66 > favNumber < 100:
    print("What did the Buddhist say to the hot dog vendor?")
    print("Make me one with everything. ")
else :
    print("Wrong no joke for you, better luck next time ")
