# Create a new database: “ChallengeDB” and make sure it’s active (in use):
Task 1:
Create two new tables: - Employees Table: Contains the following fields
o Emp ID ➔ Primary Key, Auto incremented by MySQL
o First Name ➔ Variable Character of maximum 40 and Not Null
o Last Name ➔ Variable Character of maximum 40 and Not Null
o Email ➔ Variable Character of maximum 50 and Not Null and Unique
o Job Title ➔ Variable Character of maximum 40 and Not Null
o Hire Date ➔ Date and Not Null
o Salary ➔ Float Number (Decimal) and value has to be between (15,000 and 50,000)
▪ Hint: using CHECK()
▪ Note: The comma for 15,000 is just to format the number, we can’t use it with our SQL statement
- Customers Table:
o Cust ID ➔ Primary Key, Auto incremented by MySQL
o First Name ➔ Variable Character of maximum 40 and Not Null
o Last Name ➔ Variable Character of maximum 40 and Not Null
o Email ➔ Variable Character of maximum 50 and Not Null and Unique
o Province ➔ Variable Character of maximum 40 and Not Null and Default value of “Ontario”
o City ➔ Variable Character of maximum 40 and Not Null Save this script as task1.sql
Task 2:
- Insert at least 3 records in each table with any values (You might need to more records for learning)
- Table Employee: Use SELECT statements to do:
o All the records
o The average of the employees’ salaries
Example from chinook database:
-- Find the average of the UnitPrice column (field) inside Track table:
SELECT AVG(unitprice) FROM Track;
o Grouped by “Job Title” ➔ GROUP BY filed_name
Example from chinook database:
- Table Customers:
o Update one of the records (any field in that specific record) based on its id number
o HINT: Using WHERE clause with the value of id field
Save this script as task2.sql
