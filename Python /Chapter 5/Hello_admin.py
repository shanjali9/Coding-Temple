usernames = ['kinky','dinky','admin','pinky','chunky','minky']
for username in usernames:
    if username == 'admin':
        print("Hello Admin, woudl you like to see a status report?")
    else:
        print("Hello " + username.title() + ",thank you for logging in again.")
