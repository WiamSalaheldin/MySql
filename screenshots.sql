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
*** Get the avereage***
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
