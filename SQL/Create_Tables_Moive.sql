--Using lucidchart and POSTGRESQL create an ERD for a movie theater
-- (customers,tickets, concessions, movies at minimum but you can have more) afterward create the tables.
--Inside of your ERD please backup the reasoning behind why you decided to use the relationships you chose. You can do so by adding text to the bottom of the ERD.

--Also insert data into the 4 tables that you create.

--Included as attachments are examples for a mock Amazon site; your project will look very similar, but you will make a Movie Theater rather than an e-commerce site such as Amazon.

--NOTE: For an added challenge, feel free to also play around with changing/altering the database tables.

--In total for this homework assignment, you should have 3 - 4 files inside of your github repo.

--Once done, commit the ERD as a PDF and the SQL file to GitHub and submit the link to the assignment

CREATE TABLE customer_MovieTheater(
Customer_id SERIAL PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
email  VARCHAR(150),
);

create table Moive_Tickets(

Ticket_id SERIAL primary key,
customer_id Integer not null,
foreign key(Customer_id) references customer_MovieTheater(Customer_id)


);


create table concessions_Moive(
concession_id SERIAL primary key,
Customer_id Integer not null,
foreign key(Customer_id) references customer_MovieTheater(Customer_id)


);

create table Moive (
moive_id SERIAL primary key,
Title VARCHAR(200)

); 
