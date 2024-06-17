-- Insert into customers table
INSERT INTO customers (customer_name) VALUES ('John Doe'), ('Jane Smith');

-- Insert into movies table
INSERT INTO movies (movie_name) VALUES ('Movie 1'), ('Movie 2');

-- Insert into snacks table
INSERT INTO snacks (snack_name) VALUES ('Popcorn'), ('Soda');

-- Get IDs of inserted data
DO $$ 
DECLARE 
    john_id INTEGER;
    jane_id INTEGER;
    movie1_id INTEGER;
    movie2_id INTEGER;
    popcorn_id INTEGER;
    soda_id INTEGER;
BEGIN
    SELECT customer_id INTO john_id FROM customers WHERE customer_name = 'John Doe';
    SELECT customer_id INTO jane_id FROM customers WHERE customer_name = 'Jane Smith';
    SELECT movie_id INTO movie1_id FROM movies WHERE movie_name = 'Movie 1';
    SELECT movie_id INTO movie2_id FROM movies WHERE movie_name = 'Movie 2';
    SELECT snack_id INTO popcorn_id FROM snacks WHERE snack_name = 'Popcorn';
    SELECT snack_id INTO soda_id FROM snacks WHERE snack_name = 'Soda';

    -- Insert into tickets table
    INSERT INTO tickets (movie_id, customer_id, date_time) VALUES (movie1_id, john_id, NOW()), (movie2_id, jane_id, NOW());
END $$;
