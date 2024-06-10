
# Question 1
# Write a function to print "hello_USERNAME!" USERNAME is the input of the function. The first line of the code has been defined as below.

def hello_name(user_name):
    """Print a simple message."""
    print("hello" + "_" + user_name + "!")

hello_name('USERNAME')

               
# Question 2
# Write a python function, first_odds that prints the odd numbers from 1-100 and returns nothing

def first_odds():
    for i in range(1,100):
        if i % 2 == 0:
            continue
        else:
            print(i)

first_odds()

               
# Question 3
# Please write a Python function, max_num_in_list to return the max number of a given list. The first line of the code has been defined as below.

def max_num_in_list(a_list):
    for i in a_list:
        print(max(a_list))

list = [1,2,3,4,5,6,7,8,9]
max_num_in_list(list)
             
# Question 4
# Write a function to return if the given year is a leap year. A leap year is divisible by 4, but not divisible by 100, unless it is also divisible by 400. The return should be boolean Type (true/false).

def is_leap_year(a_year):
    leap = False

    if a_year % 4 == 0 and a_year % 100 != 0:
        leap = True
    elif a_year % 100 == 0 and a_year % 400 != 0:
        leap = False
    elif a_year % 400 == 0:
        leap = True
    else:
        leap = False
        
    return leap 

a_year = int(2005)
print(is_leap_year(a_year))

# Question 5
# Write a function to check to see if all numbers in list are consecutive numbers. For example, [2,3,4,5,6,7] are consecutive numbers, but [1,2,4,5] are not consecutive numbers. The return should be boolean Type.


a_list = [1,2,3,4]

def is_consecutive(a_list):
   consecutive: False
   for n in range(1, len(a_list)):
      if (a_list[n]) != a_list[n-1]:
         consecutive = True
      else:
         consecutive = False
   return consecutive 

print(is_consecutive(a_list))





       

