guests =['trisha', 'diana', 'marilyn', 'franco', 'elon', 'carrey']
print(guests)
Shrink = "I am only able to invite two people to dinner"
print(Shrink)
g5 = guests.pop(5)
print("Sorry, I can no longer have you over for dinner, " + g5)
g4 = guests.pop(4)
print("Sorry, I can no longer have you over for dinner, " + g4)
g3 = guests.pop(3)
print("Sorry, I can no longer have you over for dinner, " + g3)
g2 = guests.pop(2)
print("Sorry, I can no longer have you over for dinner, " + g2)
print(guests)
print("You are still invited to dinner," + guests[0].title())
print("You are still invited to dinner," + guests[1].title())
print(guests)
del guests[0]
print(guests)
del guests[0]
print(guests)




