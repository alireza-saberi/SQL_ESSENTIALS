## Equi Joins

#### Q29. Display the employee names as well as the names of the departments that they work for.

##### Standard Syntax

```
Select employees.last_name Name, departments.department_name Department
from employees, departments
where employees.department_id = departments.department_id;
```

##### Standard Syntax using aliases

```
Select e.last_name Name, d.department_name Department
from employees e, departments d
where e.department_id = d.department_id;
```

##### Syntax 1999

```
Select e.last_name Name, d.department_name Department
from employees e JOIN departments d
ON e.department_id = d.department_id;
```

#### Q30.Display department id, department name , location id and city where thew department is located.

##### Standard syntax
```
select d.department_id Id, d.department_name Department, d.location_id Location, l.city City
from departments d, locations l
where d.location_id = l.location_id;
```

##### Syntax 1999
```
select d.department_id Id, d.department_name Department, d.location_id Location, l.city City
from departments d JOIN locations l
ON d.location_id = l.location_id;
```

#### Q31.Display department id, department name , location id and city where thew department is located.
##### Standard syntax

```
Select d.department_name Department, e.last_name Manager
From employees e, departments d
where e.department_id = d.department_id AND e.employee_id = d.manager_id;
```

##### Syntax 1999
```
Select d.department_name Department, e.last_name Manager
From employees e JOIN departments d
ON e.department_id = d.department_id
Where e.employee_id = d.manager_id;
```

#### Q32. Display the names of employees that work for the Accounting department.
##### Standard syntax
```
select e.last_name Name, d.department_name Department
from employees e, departments d
where e.department_id = d.department_id AND d.department_name = 'Accounting';
```

##### Syntax 1999
```
select e.last_name Name, d.department_name Department
from employees e JOIN departments d
ON e.department_id = d.department_id
where d.department_name = 'Accounting';
```

#### Q33. Who works for the Admin department?
Admin is not the name of the Department [Name is: Administration]

##### Standard syntax
```
Select e.last_name Name
From employees e, departments d
Where e.department_id = d.department_id AND d.department_name = 'Administration';
```

##### Syntax 1999
```
Select e.last_name Name
From employees e JOIN departments d
ON e.department_id = d.department_id
Where d.department_name = 'Administration';
```

##### Example of failing to join the tables 

```
select e.last_name Name, d.department_name Department
from employees e, departments d
where d.department_name = 'Administration';
```

##### Example of a Cartesian Product 

```
select e.last_name Name, d.department_name Department
from employees e, departments d;
```

#### Q34. Display the country name where the city of Toronto is located.
##### Standard syntax
```
Select c.country_name Country
From locations l, countries c
where l.country_id = c.country_id AND l.city = 'Toronto';
```
##### Syntax 1999
```
Select c.country_name Country
From locations l JOIN countries c
ON l.country_id = c.country_id 
Where l.city = 'Toronto';
```
