**Rule of thuumb avoid like statements**


#### Q40. Find last name and first name of those employees whose last names start with the letter k.

```
Select last_name, first_name
from employees
where LEFT(last_name,1) =  'k';
```

or 

```
Select last_name, first_name
from employees
Where Last_name LIKE 'k%';
```

#### Q41. Find last name and first name of those employees whose last name's 3 characters are "ing".
```
Select last_name, first_name
from employees
where RIGHT(last_name,3) = 'ing';
```

or

```
Select last_name, first_name
from employees
Where last_name LIKE '%ing';
```

#### Q42. Find last name and first name of those employees whose second letter of their last name is the letter o.

```
Select last_name, first_name
from employees
Where SUBSTR(last_name,2,1) = 'o';
```
or

```
Select last_name, first_name
from employees
Where SUBSTRING(last_name,2,1) = 'o';
```
***Looks like the SUBSTR, SUBSTRING are same***

or

```
Select last_name, first_name
from employees
Where last_name LIKE '_o%';
```

### OUTER JOINS

#### Q43. Display the names of employees that work for a department and those departments that do not have any employees assigned to.

```
Select e.last_name, d.department_name "Works for"
from employees e RIGHT OUTER JOIN departments d
ON e.department_id = d.department_id 
order by e.last_name;
```

#### Q44. Display the employees that work for a department a those employees that are not assigned to any department.
```
Select e.last_name, d.department_name "Works for"
from employees e LEFT OUTER JOIN departments d
ON e.department_id = d.department_id
Order by d.department_name;
```

### NON Equi joins

#### Q45. Find the grade level corresponding to the salary of each employee. Display last name, salary and grade level.

##### Standard Syntax

```
Select e.last_name Name, e.salary Salary, jb.grade_level "Grade"
from employees e, job_grades jb
where e.salary BETWEEN jb.lowest_sal AND jb.highest_sal
Order by 3;
```

##### Syntax 1999
```
Select e.last_name Name, e.salary Salary, jb.grade_level "Grade"
from employees e INNER JOIN  job_grades jb
ON  e.salary BETWEEN jb.lowest_sal AND jb.highest_sal
Order by 3;
```
