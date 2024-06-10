item = {'first_name':'Kate',
'last_name':'Jackson',
'age':'24',
'city':'paris'
}

for item1, item2 in item.items():
    print(item1.title() + " " + item2.title())

favorite_numbers = {'Dawson':'69',
'Natasha':'333',
'Tanner':'100',
'Konkana':'99',
'Piper':'0'
}

for person, number in favorite_numbers.items():
    print(person.title() + " " + number.title())

glossary = {
    'append':'add',
    'del':'delete',
    'str':'text',
    'int':'number',
    'len':'length',
    'value':'dictionary left',
    'keys':'dictionary right',
    'title':'capitalize',
    'set':'unique values',
    'iteration':'first loop line',
}

for term, meaning in glossary.items():
    print(term.title() + " " + meaning.title())

