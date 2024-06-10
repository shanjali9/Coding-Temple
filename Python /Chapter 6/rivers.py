rivers = {
    'nile':'egypt',
    'ganges':'india',
    'amazon':'south america',
}

for river, country in rivers.items():
    print(river.title() + " runs through " + country.title())

for river in rivers.keys():
    print(river)

for country in rivers.values():
    print(country)

