sandwich_orders = ['BLT','cheese','veggie']
finished_sandwiches = []

while sandwich_orders:
    finished_sandwich = sandwich_orders.pop()

    print("I made your " + finished_sandwich + " sandwich.")
    finished_sandwiches.append(finished_sandwich)

print("\nAll sandwiches have been made.")

for finished_sandwich in finished_sandwiches:
    print(finished_sandwich.title())
