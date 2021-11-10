#Phyton2 Task2

#Ask the user for 2 numbers and convernt integer
num1 = int(input("Enter First Number: "))
num2 = int(input("Enter Second Number: "))
#display to `ask enter which operation would you like to perform?`
print("Enter which operation would you like to perform?")
# enter which char for specific math operation 
ch = input("Enter any of these char for specific operation +,-,*,/: ")
#result equal to 0
result = 0
# if `+` selected use + 
if ch == '+':
    # do the math operation using by + 
    result = num1 + num2
    # else if `-` selected use - 
elif ch == '-':
    # do the math operation using by - 
    result = num1 - num2
     # else if `*` selected use * 
elif ch == '*':
    # do the math operation using by * 
    result = num1 * num2
     # else if `/` selected use / 
elif ch == '/':
    # do the math operation using by / 
    result = num1 / num2
else:
     # if there is anything else selected instead of this operations display "Input character is not recognized!"
    print("Input character is not recognized!")
# Display math operation with result
print(num1, ch , num2, ":", result)
