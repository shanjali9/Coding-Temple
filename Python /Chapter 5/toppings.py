requested_topping = 'mushrooms'
if requested_topping != 'anchovies':
    print("Hold the anchovies!")

requested_toppings = ['mushrooms','extra cheese','green peppers']

if 'mushrooms' in requested_toppings:
    print("Adding mushrooms")
if 'pepperoni'in requested_toppings:
    print("Adding pepperoni")
if 'extra cheese' in requested_toppings:
    print("Adding extra cheese")
print("n\Finished making your pizza!")

for requested_topping in requested_toppings:
    print("Adding" + requested_topping + ".")

print("n\Finished making your pizza!") 

for requested_topping in requested_toppings:
    if requested_topping == 'green peppers':
        print("Sorry, we are out of green peppers right now.")
    else:
        print("Adding " + requested_topping + ".")

print("\nFinished making your pizza")

requested_toopings = []
if requested_toopings:
    for requested_topping in requested_toppings:
        print("Adding" + requested_topping + ".")
else:
    print("Are you sure you want a plain pizza?")

available_toppings = ['mushrooms', 'olives', 'green peppers', 'pepperoni', 'pineapple', 'extra cheese']
requested_toppings = ['mushrooms', 'french fries', 'extra cheese']
for requested_topping in requested_toopings:
    if requested_topping in available_toppings:
        print("Adding" + requested_topping + ".")
    else:
        print("Sorry, we don't have " + requested_topping + ".")
print("\nFinished making your pizza!")


