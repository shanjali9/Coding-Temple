user = input("Please type a number of your choice. ")
user = int(user)

if user % 10 ==0:
    print("The number " + str(user) + " is a multiple of 10.")
else:
    print("The number " + str(user) + " is not a mutliple of 10.")
