INSERT INTO `challenge_db`.`employees`
(`Emp_id`,
`First_name`,
`Last_name`,
`Email`,
`Job_Title`,
`Hire_date`,
`Salary`)
VALUES
(220,"Peter","Brown","Brownbrown@email.com","HR","2015-01-15",45000);
select * from employees;
SELECT ROUND(AVG(salary)) FROM challenge_db.employees;
update employees
set email="gmail@email.com"
where salary=40000;



