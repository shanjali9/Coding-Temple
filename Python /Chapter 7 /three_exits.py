prompt = "Please enter a series of pizza toppings."
prompt += "\n(Enter 'quit' to end the program.)"

while True: 
    message = input(prompt)
    
    if prompt == 'quit':
        break
    else:
        print("We will add your topping " + message + "!")



