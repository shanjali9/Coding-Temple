-- Theatre insertion query.

-- Insert statement for customer
INSERT INTO customer(
	customer_id
) VALUES(
	1
);

-- Insert statement for tickets
-- I had a hard time getting TIMESTAMP to work. 
-- I tried 2017-01-01 00:00:00 in VALUES and
-- date_name in INSERT INTO (under room_id)
-- I ended up just inserting the data as a string.
INSERT INTO tickets(
	ticket_id,
	movie_id,
	movie_name,
	room_id,
	date_time
) VALUES(
	1,
	1,
	'John Wick',
	1,
	'20170101 00:00:00 AM'
);

-- Insert statement for concessions
INSERT INTO concessions(
	snack_name,
	snack_id
) VALUES(
	'pizza',
	1
);

-- Insert statement for movies
-- Also tried timestamp here.
INSERT INTO movies(
	movie_id,
	movie_name,
	room_id,
	ticket_id,
	date_time
) VALUES(
	1,
	'John Wick',
	1,
	1,
	'20170101 00:00:00 AM'
)