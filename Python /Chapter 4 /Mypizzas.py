pizzas = ['Marghertia','Four cheese','Neapolitan']
friend_pizzas = pizzas[:]
pizzas.append('pepperoni')
friend_pizzas.append('deep dish')
print("My favorite pizzas are:")
for pizza in pizzas:
    print(pizza)
print("My favorite pizzas are:")
for pizza in friend_pizzas:
    print(pizza)
