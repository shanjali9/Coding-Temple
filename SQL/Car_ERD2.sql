-- Creation of source function
CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id,first_name,last_name)
	VALUES(_customer_id, _first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

-- Using the source function to add two points of data
SELECT add_customer(1, 'John', 'Wick');
SELECT add_customer(2, 'Jimi', 'Hendrix');

-- Query to make sure my additions were successful.
SELECT *
FROM customer;

-- Insertion test of CURRENT_DATE into service ticket.
INSERT INTO service_ticket(
		service_ticket_id,
		vin_number,
		part_number,
		service_date,
		part_cost,
		labor_cost,
		total_cost_service,
		mechanic_id
) VALUES(
		1,
		1,
		1,
		CURRENT_DATE,
		50.00,
		75.00,
		125.00,
		1
);

-- Test of insertions into service_ticket.
SELECT *
FROM service_ticket;

-- Insert into salesperson using another source function.
CREATE OR REPLACE FUNCTION add_salesperson(_first_name VARCHAR, _last_name VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO salesperson(first_name,last_name)
	VALUES(_first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

-- Using the source function to add two points of data
-- (I had better get a laugh from my grader out of this one...)
SELECT add_salesperson('Phil', 'Swift');
SELECT add_salesperson('Billy', 'Mays');

SELECT *
FROM salesperson;

-- Insertion statements for mechanic.
INSERT INTO mechanic(
		first_name,
		last_name
) VALUES(
		'Cliff',
		'Burton'
);

INSERT INTO mechanic(
		first_name,
		last_name
) VALUES(
		'Liam',
		'Neeson'
);

-- Insertion statements for parts.
INSERT INTO parts_inventory(
		part_cost,
		part_name
) VALUES(
		50.00,
		'filter'
);

INSERT INTO parts_inventory(
		part_cost,
		part_name
) VALUES(
		350.00,
		'alternator'
);

-- Insert into car
INSERT INTO car(
		salesperson_id,
		customer_id,
		car_price
)VALUES (
		1,
		1,
		10000.00
);

INSERT INTO car(
		salesperson_id,
		customer_id,
		car_price
)VALUES (
		2,
		2,
		50000.00
);

SELECT *
FROM car;

-- Insert into service_ticket
INSERT INTO service_ticket(
		vin_number,
		part_number,
		service_date,
		labor_cost,
		total_cost_service,
		mechanic_id
) VALUES(
		1,
		1,
		CURRENT_DATE,
		75.00,
		125.00,
		1
);

INSERT INTO service_ticket(
		vin_number,
		part_number,
		service_date,
		labor_cost,
		total_cost_service,
		mechanic_id
) VALUES(
		2,
		2,
		CURRENT_DATE,
		75.00,
		425.00,
		2
);

SELECT *
FROM service_ticket;

INSERT INTO "service history"(
		mechanic_id,
		vin_number,
		service_ticket_id
) VALUES(
		1,
		1,
		1
);

INSERT INTO "service history"(
		mechanic_id,
		vin_number,
		service_ticket_id
) VALUES(
		2,
		2,
		2
);

SELECT *
FROM "service history";

INSERT INTO invoice(
		customer_id,
		salesperson_id,
		invoice_date,
		invoice_total_cost,
		total_cost_service
) VALUES(
		1,
		1,
		CURRENT_DATE,
		12000.00,
		2000.00
);

INSERT INTO invoice(
		customer_id,
		salesperson_id,
		invoice_date,
		invoice_total_cost,
		total_cost_service
) VALUES(
		2,
		2,
		CURRENT_DATE,
		52000.00,
		2000.00
);

SELECT *
FROM invoice;

-- Test queries for all tables below.

SELECT *
FROM car;

SELECT *
FROM mechanic;

SELECT *
FROM customer;

SELECT *
FROM salesperson;

SELECT *
FROM parts_inventory;

SELECT *
FROM service_ticket;

SELECT *
FROM "service history";

SELECT *
FROM invoice;