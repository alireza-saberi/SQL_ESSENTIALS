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

#### Q46. Display employee name, department name and city where the department name is located.

##### Standard Syntax

```
Select e.employee_id ID, d.department_name Department, l.city City
From employees e, departments d, locations l
Where e.department_id = d.department_id AND d.location_id = l.location_id;
```

##### Syntax 1999
```
Select e.employee_id ID, d.department_name Department, l.city City
from employees e JOIN departments d
ON e.department_id = d.department_id
JOIN Locations l
ON d.location_id = l.location_id
Order by 3;
```

#### Q47. Display the name(s) of employees that work in Seattle.

##### Standard Syntax
```
Select e.last_name Name
from employees e, departments d, Locations l
Where e.department_id = d.department_id AND
d.location_id = l.location_id
AND l.city = 'Seattle';

```
##### Syntax 1999

```
mysql> Select e.last_name Name
from employees e JOIN departments d
ON e.department_id = d.department_id
JOIN Locations l
ON d.location_id = l.location_id
where l.city = 'Seattle'
Order by 1;
```

#### Q47a. How many employees work in Seattle?

##### Standard Syntax
```
Select count(e.last_name) "Number of Employees"
from employees e, departments d, Locations l
Where e.department_id = d.department_id AND
d.location_id = l.location_id
AND l.city = 'Seattle';
```
##### Syntax 1999
```
Select count(e.last_name) "Number of Employees"
from employees e JOIN departments d
ON e.department_id = d.department_id
JOIN Locations l
ON d.location_id = l.location_id
where l.city = 'Seattle';
```

#### Q48. Display the country name where Matos works.

##### Standard Syntax
```
Select c.country_name "Country"
from employees e, Departments d, Locations l, Countries c
Where e.department_id = d.department_id AND
d.location_id = l.location_id  AND 
l.country_id = c.country_id AND 
e.last_name = 'Matos';
```
##### Syntax 1999

```
Select c.country_name "Country"
from employees e JOIN Departments d
ON e.department_id = d.department_id
JOIN Locations l
ON d.location_id = l.location_id
JOIN Countries c
ON l.country_id = c.country_id
Where e.last_name = 'Matos';
```


### Note
### If n tables to join, there will be n-1 conditions

#### Q49. Display the names of employees working in Canada

##### Standard Syntax

```
Select e.last_name Name
From employees e, departments d, locations l, countries c
Where e.department_id = d.department_id 
AND d.location_id = l.location_id
AND l.country_id = c.country_id
AND l.country_name = 'Canada';
```

##### Syntax 1999

```
Select e.last_name Name
From employees e JOIN departments d  
ON e.department_id = d.department_id 
JOIN locations l
ON d.location_id = l.location_id
JOIN countries c
AND l.country_id = c.country_id
AND c.country_name = 'Canada';
```

#### Q50. How many employees work in each country?

##### Standard Syntax

```
Select c.country_name Country, count(e.last_name) "Number of Employees"
From employees e, Departments d, locations l, countries c
Where  e.department_id = d.department_id AND
d.location_id = l.location_id  AND 
l.country_id = c.country_id
Group by c.country_name;
```

##### Syntax 1999

```
Select c.country_name Country, count(e.last_name) "Number of Employees"
From employees e INNER JOIN Departments d
ON e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id
JOIN countries c
ON l.country_id = c.country_id
Group by c.country_name;
```

#### Q51. Find the employees who had previous jobs in the company. Display last Name, job title(s), starting date and ending date.

##### Standard Syntax
```
Select e.last_name Name, j.job_title Title, jh.start_date "Start Date", jh.end_date "End Date"
from employees e, job_history jh, jobs j
Where e.employee_id = jh.employee_id AND jh.job_id = j.job_id;
```

##### Syntax 1999

```
Select e.last_name Name, j.job_title Title, jh.start_date "Start Date", jh.end_date "End Date"
from employees e JOIN job_history jh
ON e.employee_id = jh.employee_id
JOIN jobs j
ON jh.job_id = j.job_id;
```
