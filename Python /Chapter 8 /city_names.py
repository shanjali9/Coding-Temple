def city_country(city_name, country_name):
    """Return well defined name of city and country."""
    full_name = city_name + ', ' + country_name
    return full_name.title()

name = city_country('Berlin','Germany')
print(name)
name = city_country('Toronto','Canada')
print(name)
name = city_country('Tokyo','Japan')
print(name)
