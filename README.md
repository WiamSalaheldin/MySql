Task 1:
Create two new tables: - Employees Table: Contains the following fields
o Emp ID ➔ Primary Key, Auto incremented by MySQL
o First Name ➔ Variable Character of maximum 40 and Not Null
o Last Name ➔ Variable Character of maximum 40 and Not Null
o Email ➔ Variable Character of maximum 50 and Not Null and Unique
o Job Title ➔ Variable Character of maximum 40 and Not Null
o Hire Date ➔ Date and Not Null
o Salary ➔ Float Number (Decimal) and value has to be between (15,000 and 50,000)

*********************************************************
- Customers Table:
o Cust ID ➔ Primary Key, Auto incremented by MySQL
o First Name ➔ Variable Character of maximum 40 and Not Null
o Last Name ➔ Variable Character of maximum 40 and Not Null
o Email ➔ Variable Character of maximum 50 and Not Null and Unique
o Province ➔ Variable Character of maximum 40 and Not Null and Default value of “Ontario”
o City ➔ Variable Character of maximum 40 and Not Null Save this script as task1.sql


mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| challenge          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use challenge;
Database changed

mysql> show tables;
+---------------------+
| Tables_in_challenge |
+---------------------+
| customers           |
| employees           |
+---------------------+
2 rows in set (0.00 sec)

mysql> describe customers;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| Cust ID      | int         | NO   | PRI | NULL    | auto_increment |
| First Name   | varchar(40) | NO   |     | NULL    |                |
| Last Name    | varchar(40) | NO   |     | NULL    |                |
| Email        | varchar(50) | NO   | UNI | NULL    |                |
| Province     | varchar(40) | NO   |     | Ontario |                |
| City         | varchar(40) | NO   |     | NULL    |                |
| customerscol | varchar(45) | NO   | UNI | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
7 rows in set (1.02 sec)

mysql> select * from employees;
+--------+------------+-----------+------------------+-----------+------------+--------+
| Emp ID | First Name | Last Name | Email            | Job Title | Hire Date  | Salary |
+--------+------------+-----------+------------------+-----------+------------+--------+
|    215 | Martha     | Mark      | Martha@email.com | Admin     | 2019-08-10 |  40000 |
|    216 | Peter      | Brown     | brown@email.com  | HR        | 2020-01-15 |  45000 |
|    217 | Tania      | Barak     | tania@email.com  | Developer | 2018-03-24 |  60000 |
+--------+------------+-----------+------------------+-----------+------------+--------+
3 rows in set (0.00 sec)
*******************************************************************
Task 2:
- Insert at least 3 records in each table with any values (You might need to more records for learning)
- Table Employee: Use SELECT statements to do:
o All the records
o The average of the employees’ salaries
o Grouped by “Job Title” ➔ GROUP BY filed_name
- Table Customers:
o Update one of the records (any field in that specific record) based on its id number
o HINT: Using WHERE clause with the value of id field

mysql> SELECT ROUND(AVG(salary)) FROM challenge.employees;
+--------------------+
| ROUND(AVG(salary)) |
+--------------------+
|              48333 |
+--------------------+
1 row in set (0.00 sec)

****Use SELECT statements to do all the records****

mysql> select * from employees;
+--------+------------+-----------+------------------+-----------+------------+--------+
| Emp ID | First Name | Last Name | Email            | Job Title | Hire Date  | Salary |
+--------+------------+-----------+------------------+-----------+------------+--------+
|    215 | Martha     | Mark      | Martha@email.com | Admin     | 2019-08-10 |  40000 |
|    216 | Peter      | Brown     | brown@email.com  | HR        | 2020-01-15 |  45000 |
|    217 | Tania      | Barak     | tania@email.com  | Developer | 2018-03-24 |  60000 |
+--------+------------+-----------+------------------+-----------+------------+--------+
3 rows in set (0.00 sec)

mysql> update employees
    -> set email="gmail@email.com"
    -> where salary=40000;
Query OK, 1 row affected (0.24 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employees;
+--------+------------+-----------+-----------------+-----------+------------+--------+
| Emp ID | First Name | Last Name | Email           | Job Title | Hire Date  | Salary |
+--------+------------+-----------+-----------------+-----------+------------+--------+
|    215 | Martha     | Mark      | gmail@email.com | Admin     | 2019-08-10 |  40000 |
|    216 | Peter      | Brown     | brown@email.com | HR        | 2020-01-15 |  45000 |
|    217 | Tania      | Barak     | tania@email.com | Developer | 2018-03-24 |  60000 |
+--------+------------+-----------+-----------------+-----------+------------+--------+
3 rows in set (0.00 sec)

