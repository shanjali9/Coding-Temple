prompt = "What is your dream destination?"

while True:
    destination = input(prompt)

    if destination == 'quit':
        break 
    else:
        print(destination.title())