def build_profile(first, last, age, education, **user_info):
    """Build a dictionary containing everything we know about a user."""
    profile = {}
    profile['first_name'] = first
    profile['last_name'] = last
    profile['age'] = age
    profile['education'] = education
    for key, value in user_info.items():
        profile[key] = value
    return profile

user_profile = build_profile('Shanjali', 'Arul', '25','DePaul',location='Chicago',field='Healthcare Market and Analytics')
print(user_profile)

