favorite_languages = {
       'jen': 'python',
       'sarah': 'c',
       'edward': 'ruby',
       'phil': 'python',
       }
polling = ['jen','phil','karen','akira']

for name in polling:
    if name in favorite_languages.keys():
        print("You have already taken the poll")
    else:
        print("We invite you to take the poll")