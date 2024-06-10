toppings = 'peppers'
if toppings != 'mushroom':
   print("Not my topping")

fruits = ['apple','orange','grapes']
for fruit in fruits:
    if fruit == 'orange': 
        print(fruit.lower())
    else:
        print(fruit.upper())

age = 18 
print(age ==18)
print(age<21)
print(age<=21)
print(age>21)
print(age>=21)

age_0 = 22
age_1 = 18
print(age_0 >= 21 or age_1 >= 21)

age_0 = 18 
print(age_0 >= 21 or age_1 >= 21)

fruits = ['apple','orange','grapes']
item = 'banana'
if item not in fruits:
    print(item.title() + " ,bad fruit!")

item = 'apple'
if item in fruits:
    print(item.title() + " ,good fruit!")
    

