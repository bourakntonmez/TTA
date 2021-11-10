#Phyton3 Task1


my_file = open("Numbers.txt", "w")
num1 = int(input("Enter First Number: "))
num2 = int(input("Enter Second Number: "))
num3 = int(input("Enter Third Number: "))
num4 = int(input("Enter Forth Number: "))

my_file.write(str(num1))
my_file.write(str(num2))
my_file.write(str(num3))
my_file.write(str(num4))
my_file.write("\n")
my_file.close() 

with open("Numbers.txt", "r") as my_file:
	data = my_file.read(",\n")
my_file.close()
my_file = open("Numbers.txt", "a")
my_file.write("")
my_file.close()
