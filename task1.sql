create table challenge_db.Emplyees
(Emp_id int primary key auto_increment not null,
First_name varchar(40) not null,
Last_name varchar(40) not null,
Email varchar(50) not null unique,
Job_Title varchar(40) not null,
Hire_date date not null,
Salary decimal(15000,50000))

create table challenge_db.Customers
(Cust_id int primary key auto_increment not null,
First_name varchar(40) not null,
Last_name varchar(40) not null,
Email varchar(50) not null unique,
Province varchar(40) not null default("Ontario"),
City varchar(40) not null)









