


select * from customer_movietheater  
select * from Moive_Tickets
select * from concessions_Moive 
select * from Moive





alter table customer_movietheater 
alter column phone type VARCHAR(15);

alter table concessions_Moive
add column concession_price Numeric(6,2);


alter table customer_movietheater 
drop column phone;

alter table Moive_Tickets
add column moive_id SERIAL not null; 

alter table Moive_Tickets
drop column moive_id; 

alter table Moive_Tickets
add constraint fk
foreign key (moive_id) 
references Moive(moive_id);