
--insert to customer moive Theater


insert into customer_movietheater (
Customer_id,
first_name,
last_name,
email,


)values(
2,
'Biniam',
'Gusee',
'binijegna@gmail.com'
);

insert into customer_movietheater (
Customer_id,
first_name,
last_name,
email,


)values(
2,
'lili',
'legese',
'liliijegna@gmail.com'
);

insert into customer_movietheater (
Customer_id,
first_name,
last_name,
email
)values(
3,
'Samri',
'Kidane',
'samrijegna@gmail.com'
);


insert into customer_movietheater(
Customer_id,
first_name,
last_name,
email
)values(
4,
'Henok',
'Abraha',
'henokjegna@gmail.com'
);

--insert to tickets


insert into Moive_Tickets(
Ticket_id,
Customer_id
)values(
1,
1
);

insert into Moive_Tickets(
Ticket_id,
Customer_id
)values(
2,
2
);

insert into Moive_Tickets(
Ticket_id,
Customer_id
)values(
3,
3
);

insert into Moive_Tickets(
Ticket_id,
Customer_id
)values(
4,
4
);


--insert in to concession table 

insert into concessions_Moive(
concession_id,
Customer_id,
concession_price

)values(
1,
1,
4.50
)


insert into concessions_Moive(
concession_id,
Customer_id,
concession_price

)values(
2,
2,
5.50);


insert into concessions_Moive(
concession_id,
Customer_id,
concession_price

)values(
3,
3,
8.00);

insert into concessions_Moive(
concession_id,
Customer_id,
concession_price

)values(
4,
4,
7.09)

--insert into Moive table


insert into Moive(
moive_id,
Title
)values(
1,
'Titanic'
);

insert into Moive(
moive_id,
Title
)values(
2,
'The Notebook'
);

insert into Moive(
moive_id,
Title
)values(
3,
'Sweet November'
);

insert into Moive(
moive_id,
Title
)values(
4,
'Cinderella'
);





