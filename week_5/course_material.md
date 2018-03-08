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
