create table EMPLOYEES (
EMP_ID INT NOT NULL,
Name VARCHAR(50) NOT NULL,
Departmen varchar(25) NOT NULL,
salary int NOT NULL,
Joining_date DATE NOT NULL,
Manager_ID int NOT NULL
CONSTRAINT pr_EMP_ID PRIMARY KEY (EMP_ID)
)

--------------------------------------------------------------

INSERT INTO EMPLOYEES
(EMP_ID, NAME, DEPARTMENT, SALARY, JOINING_DATE, MANAGER_ID)
VALUES
(103, 'Charlie', 'IT',      55000, '2023-05-20', 202);


INSERT INTO EMPLOYEES
(EMP_ID, NAME, DEPARTMENT, SALARY, JOINING_DATE, MANAGER_ID)
VALUES
(101, 'Alice',   'HR',      45000, '2022-01-10', 201),
(102, 'Bob',     'IT',      60000, '2021-03-15', 202),
(103, 'Charlie', 'IT',      55000, '2023-05-20', 202),
(104, 'David',   'Finance', 70000, '2020-08-12', 203),
(105, 'Eva',     'HR',      48000, '2022-11-25', 201);

---------------------------------------------------------------------------------------
Select * from EMPLOYEES;
--select name, salary from EMPLOYEES;
--select * from EMPLOYEES where Department = 'IT';
--select * from EMPLOYEES where salary>50000;
--select * from EMPLOYEES where name LIKE 'A%';
--select * from EMPLOYEES where name LIKE '%e';
--select * from EMPLOYEES order by salary DESC;
--select count(*) from EMPLOYEES;
--SELECT MAX(SALARY) AS HIGHEST_SALARY FROM EMPLOYEES;
--select * from employees where salary = ( SELECT MAX(SALARY) AS HIGHEST_SALARY FROM EMPLOYEES);
--select min(salary) as least from EMPLOYEES;
--select * from employees where salary = ( SELECT Min(SALARY) AS Lowest_SALARY FROM EMPLOYEES);
--select * from EMPLOYEES where salary>=45000 and salary <=60000;
--select * from EMPLOYEES where salary between 45000 and 60000;
--select * from employees where joining_date>'2022-01-01';
--select * from employees order by joining_date ASC;
--select * from employees where Department='HR' or Department='Finance';
--select DISTINcT Department from employees;

--select TOP 3 * from employees order by salary DESC;
--select Department, AVG(salary) as AVG_salary from employees Group by Department;
--select Department, count(emp_id) as count from employees GROUP BY Department order by count DESC;
--select Department, max(salary) as max_sal from employees GROUP BY Department;
--select Department, count(emp_id) as number from employees GROUP BY Department HAVING count(emp_id)>1;
--select Department, AVG(salary) as AVG_salary from employees Group by Department HAVING AVG(salary)>50000;

/*SELECT YEAR(JOINING_DATE) AS JOINING_YEAR,
       COUNT(*) AS EMPLOYEE_COUNT
FROM EMPLOYEES
GROUP BY YEAR(JOINING_DATE) order by joining_year;*/

--select Top 1 Department, AVG(salary) as AVG_salary from employees Group by Department  order by AVG(salary) DESC;