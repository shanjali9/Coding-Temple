colors = ['lilac','pink','black','orange']
print(colors)
print(colors[0])
print(colors[0].title())
print(colors[1])
print(colors[2])
print(colors[-1])
message  = "My favorite color is " + colors[0].title() + "."
print(message)
colors[0] = 'mauve'
print(colors)
colors.append('lilac')
print(colors)
colors.insert(0, 'teal')
print(colors)
del colors[1]
print(colors)
popped_color = colors.pop()
print(colors)
print(popped_color)
least_favorite = colors.pop(1)
print("My least favorite color is " + least_favorite.title() + '.')
colors.remove('orange')
print(colors)
colors = ['lilac','pink','black','orange']
colors.sort()
print(colors)
colors.sort(reverse=True)
print(colors)
print(sorted(colors))
colors.reverse()
print(colors)
len(colors)
print(len(colors))



