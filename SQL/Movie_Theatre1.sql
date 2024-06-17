-- Customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100)
);

-- Movies table
CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100)
);

-- Snacks table
CREATE TABLE snacks (
    snack_id SERIAL PRIMARY KEY,
    snack_name VARCHAR(40)
);

-- Tickets table
CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES movies(movie_id),
    customer_id INTEGER REFERENCES customers(customer_id),
    date_time TIMESTAMP
);