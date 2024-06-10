guest = ['diana','marilyn','trisha']
print(guest)
not_guest = guest.pop()
print(not_guest)
print(guest)
guest.append('elon')
print(guest)
message = "I would like to coordially invite you to dinner Princess " + guest[0].title() + "."
print(message)
message = "I would like to coordinally invite you to dinner " + guest[1].title() + " Monroe."
print(message)
message = "I would like to coordially invite you to dinner " + guest[2].title() + " Musk."
print(message)
