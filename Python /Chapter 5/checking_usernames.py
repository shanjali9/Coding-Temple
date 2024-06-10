current_users = ['Scotty','Jeff',"Tanner",'Jason','Travis']
new_users = ['Jeff','Jason','Lana','Peyton','Cody']

for current_user in current_users:
    if current_user in new_users:
        print("Username already taken, please try again")
    else:
        print("Username available")
