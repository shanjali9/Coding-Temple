age = input("What is your age?")
age = int(age)

if age < 3:
    print("Your ticket is free.")
elif 3 < age < 12:
    print("Your ticket is $10")
else:
    print("Your ticket is $15")