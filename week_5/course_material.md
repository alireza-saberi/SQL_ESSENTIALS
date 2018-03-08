#### Q51. Display the employees whose job id is the same as the employee whose id is 141.
```
Select last_name Name, Job_id, employee_id Id
From employees
where job_id = (Select job_id
                from employees
                where employee_id = 141)
AND Employee_id <> 141;
```

#### Q52. Display the last name and salary of every employee that reports to King.
```
Select last_name Name, Salary, Manager_Id Manager
From employees
where manager_id = (Select employee_id
                    from employees
                    where last_name = 'King');
```

#### Q53. Display the department number, employee last name, and job id of every employee in the Executive department.
```
Select Last_name Name, Job_id Job, Department_id Department
From employees
where department_id = (Select department_id
                       from departments
                       where department_name = 'Executive');
```

or 

```
Select e.Last_name Name, e.Job_id Job, d.Department_id Department
From employees e, departments d 
Where e.department_id = d.department_id
AND d.department_name = 'Executive';
```

#### Q54. Display the names of employees that do not have any subordinates.
```
Select last_name Name
from employees
where employee_id NOT IN (Select manager_id
                          from employees
                          Where manager_id is not null);
```

#### Q55. Find the last names of employees that earn more than Matos.
```
Select last_name Name
from employees
where salary >  (Select salary
                 from employees
                 where last_name = 'Matos');
```


#### Q56. Display the last name, salary, and job id of all employees that their salary is less than any of the salaries of employees with job id SA_REP.
```
Select last_name Name, salary, job_id
From employees
where salary < ANY  (Select salary
                     from employees
                     where job_id = 'SA_REP')
AND job_id <> 'SA_REP';
```

#### Q57. Display the names of employees that are managers.
```

```
