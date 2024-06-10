-- Hello World SQL Query, SELECT all records from actor table
SELECT *
FROM actor;

-- Query for First_name and last_name in the actor table
SELECT first_name,last_name
FROM actor;

-- Query for a first_name that equals Nick using the WHERE clause
SELECT first_name,last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first_name that is equal to Nick using the LIKE and WHERE clauses
SELECT first_name,last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query for all first_name data that starts with a J using the LIKE and WHERE clauses -- using the wildcard
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

-- Query for all first_name data that starts with K and has 2 letters after the K using Like and WHERE clauses -- using underscore
SELECT first_name,actor_id
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all first_name data that starts with a K and ends with th
-- using the LIKE and WHERE clauses -- using BOTH wildcard AND underscore
SELECT first_name,last_name,actor_id
FROM actor
WHERE first_name LIKE 'K__%th';


-- Comparing operators are: 
-- Greater Than (>) -- Less Than (<)
-- Greater or Equal (>=) -- Less or Equal (<=)
-- Not Equal (<>)

-- Explore Data with SELECT All Query (Specific to changing into new table)
SELECT *
FROM payment;

-- Query for data that shows customers who paid 
-- an amount GREATER than $2
SELECT customer_id,amount
FROM payment
WHERE amount > 2.00;

-- Query for data that shows customers who paid
-- an amount LESS than $7.99
SELECT customer_id,amount
FROM payment
WHERE amount < 7.99;

-- Query for data that shows customers who paid
-- an amount LESS than or EQUAL to $7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;

-- Query for data that shows customers who paid
-- an amount GREATER than or EQUAL to $2.00
-- in Ascending order
SELECT customer_id,amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC;

-- Query for data that shows customers who paid
-- an amount BETWEEN $2.00 and $7.99
-- Using the BETWEEN with the AND clause
SELECT customer_id,amount
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99;

-- Query for data that shows customers who paid
-- an amount NOT EQUAL to $0.00
-- Ordered in DESCENDING Order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;


-- SQL Aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

-- Query to display sum of amounts payed that are greater than $5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display average of amounts payed that are greater than $5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the count of amounts payed that are greater than $5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the count of DISTINCT amounts payed that are greater than $5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- Query to display min amount greater than 7.99
SELECT MIN(amount) AS Min_Num_Payments
FROM payment
WHERE amount > 7.99;

-- Query to display max amount greater than 7.99
SELECT MAX(amount) AS Max_Num_Payments
FROM payment
WHERE amount > 7.99;

-- Query to display all amounts (quick demo of groupby)
SELECT amount
FROM payment
WHERE amount = 7.99;

-- Query to display different amounts grouped together
-- and count the amounts
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

-- Query to display customer_ids with the summed amounts for each customer_id
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;

-- Query to display customer_ids with the summed amounts for each customer_id -- Seperate example of 
-- a different way to use Group By
SELECT customer_id,amount
FROM payment
GROUP BY amount,customer_id
ORDER BY customer_id DESC;

-- Query to explore the data inside of the customer table
SELECT *
FROM customer;

-- Query to display customer_ids that show up more than 5 times
-- Grouping by the customer's email
SELECT COUNT(customer_id),email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email
HAVING COUNT(customer_id) > 0;

-- Number 1
select count(*) from actor
where last_name = 'Wahlberg';

--Number 2
select count(*) from payment
where amount between 3.99 and 5.99;

--Number 3
select film_id , count(*) from inventory
group by film_id
order by count(*) desc
limit 1;

--Number 4
select count(*) from customer
where last_name = 'William'

--Number 5
select staff.staff_id as emp, count(rental_id) as num_sold from staff
join rental on staff.staff_id = rental.staff_id
group by emp
order by num_sold desc
limit 1;

--Number 6
select count(distinct district) from address;

--Number 7
select count(distinct actor_id) as actors, film.film_id as movie from film_actor
join film on film.film_id = film_actor.film_id
group by movie
order by actors desc
limit 1;

--Number 8
select count(last_name) from customer
where store_id = 1
and last_name like '%es';

--Number 9
select amount, count(rental_id) from payment
where customer_id between 380 and 430
group by amount
having count(rental_id) > 250

--Number 10
select rating, count(*) from film
group by rating
order by count(*) desc
limit 1;
