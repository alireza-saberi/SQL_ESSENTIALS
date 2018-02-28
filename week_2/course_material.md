#### Other Operators

- Between   --- Not Between
- IN ---- NOT IN
- IS --- IS NOT

#### FUNCTIONS
- Format(ColumnName, #D)
- Concat("$ ",Format(ColumnName, #D))

#### Date type 

- string of
```
"yyyy-mm-dd"
"mm-dd-yyyy"
"dd-mm-yyyy"
```
#### Q8. Display the names of employees that earn less than 1000.
```
select last_name Name, salary
from employees
where salary < 100;
```

#### Q9. Display last name and salary of employees that earn more than 4000 that work for department 60.
```
Select last_name Name, Salary, department_id Department
from employees
where salary > 4000 AND department_id = 60;
```

#### Q10. Display the names and salary of employees earning between 6000 and 9000
```
select last_name Name, salary
from employees
where salary > 6000 and salary < 9000;
```

#### Q11. Same as Q10 but using the Between operator Not the same — the operator Between is inclusive
```
select last_name Name, salary
from employees
where salary BETWEEN 6000 and 9000;
```

#### Q11a. Emulates the Between operator
```
select last_name Name, salary
from employees
where salary >= 6000 and salary <= 9000;
```

#### Q12. Display the names of employees working for department 10 and department 60 
```
select last_name Name, department_id "Works for"
from employees
where department_id = 10 OR department_id = 60;
```

#### Q12a. Using the IN operator
```
select last_name Name, department_id "Works for"
from employees
where department_id IN (10,60);
```

#### Q13. Display the names of employees not assigned to any department.

```
Select last_name "Not Assigned"
from employees
where department_id IS null;
```

#### Q14. Display the names of employees that are assigned to departments as well as the departments that they are assigned to.
```
select last_name Name, department_id "Assigned to"
from employees
where department_id IS NOT NULL;
 ```
 
 ### Calculated Fields
 
#### Q15. Calculate a 20% salary increase to employees that earn less than 4000. Display last name, salary and salary Increase.

```
select last_name Name, salary, salary * .2 Increase
from employees
where salary < 4000;
```

#### Q15a. Display only 2 decimal places on Increase amount.
```
select last_name Name, salary, Format(salary * .2,2)  Increase
from employees
where salary < 4000;
```

#### Q15b. Add leading $ sign to the Increase amount.
```
select last_name Name, salary, Concat("$ ",Format(salary * .2,2))  Increase
from employees
where salary < 4000;
```

#### Q16. Same as Q15 but now display the new salary as well.
```
select last_name Name, salary, Concat("$ ",Format(salary * .2,2))  Increase, Format(salary * 1.2,2) "New Salary"
from employees
 where salary < 4000;
```

#### Q16a. Add a leading $ sign to New Salary and only 2 decimal places.

```
select last_name Name, salary, Concat("$ ",Format(salary * .2,2))  Increase, Concat("$ ",Format(salary * 1.2,2)) "New Salary"
from employees
where salary < 4000;
```

### Comparing Date types.

#### Q17. Display the names of employees that got hired before 1999.
```
select last_name Name, hire_date
from employees
where hire_date < '1999/1/1';
```

#### Q17a. Using the Year() function

```
select last_name Name, hire_date
from employees
where year(hire_date) < '1999';
```

#### Q18. Display the names of employees that got hired during the period of July 4, 1997 and July 4, 1999.
```
select last_name Name,  hire_date
from employees
where hire_date Between '1997/7/4' AND '1999/7/4';
```

#### Q19. Who was hired on the the month of May?
```
select last_name Name,  hire_date
from employees
where monthname(hire_date) = 'May';
```

#### Q19a. Using the month() function
```
select last_name Name,  hire_date
from employees
 where month(hire_date) = 5;
```

#### Q20. Who was hired on the 21st of the month?
```
select last_name Name,  hire_date
from employees
where dayofmonth(hire_date) = 21;
```

### Aggregation

***Aggregated functions: Avg(), Min(), Max(), Sum(), Count()***

#### Q21. Display the salary average in the company.
```
select avg(salary) "Salary Average"
from employees;
```

#### Q22. Display the minimum salary in the company.
```
select min(salary) "Minimum Salary"
from employees;
```

#### Q23. Display the highest salary in the company.

```
select max(salary) "Highest Salary"
from employees;
```

#### Q24. Display the total amount on salaries paid by the company.

```
select sum(salary) "Total Amount"
from employees;
```

#### Q25. How many employees work in the company?
```
select count(*) "Number of Employees"
from employees;
```

#### Q26. Display how many employees have been assigned to departments.
```
select count(department_id) "Number of Employees Assigned"
from employees;
```

or better

```
select count(*) "Number of employees"
from employees
Group by department_id;
```

#### Q27. How many employees there are per department?
```
select Department_id Department,count(*) "Number of employees"
from employees
Group by department_id;
```

#### Q27a. Adding the department_id to the output to qualify the Number of Employees
```
select Department_id Department,count(*) "Number of employees"
from employees
where department_id IS NOT null
Group by department_id;
```

or 

```
select Department_id Department,count(department_id) "Number of employees"
from employees
where department_id IS NOT null
Group by department_id;
```

#### Q27b. Adding to display in numerical order Ascending by number of employees.

```
select Department_id Department,count(department_id) "Number of employees"
from employees
where department_id IS NOT null
Group by department_id
Order by 2;
```

####  Q27c. Adding to display in numerical order Descending by number of employees.
```
select Department_id Department,count(department_id) "Number of employees"
from employees
where department_id IS NOT null
Group by department_id
Order by 2 DESC;
```
