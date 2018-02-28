### To create a database

`Create database Jan2018Hr;`

### To Mount a database

`Use Jan2018Hr;`

### Now run the script to create and populate the objects in the database

- Open the script [text file from course website]
- select [block] all the lines in the script
- select File
- select Copy
- Point the mouse [focus] on the Mysql command line
- paste operation will take place and the execution of the script will begin

### To display the table objects created
`show tables;`

### To display the table objects structure
`describe countries;`

`describe employees;`

### Q1. Display the information about countries that we have in the database.

```
select *
from countries; 
```

### Q2. Display only the country names that we have in the database.

```
select country_name
from countries;
```
    
### Q3. Same as Q2 but using Aliases.

``` 
select country_name Name
from countries;
```

### Q4. Display the names of employees working in the company.

```
select last_name Last, first_name First
from employees;
```

### Q5. Same as Q4 but now display the output in column format only.
 
 ```
 Select concat(last_name,"  ",first_name) "List of Names" 
from employees;
```

### Q6. Display the names of employees that earn more than 4000.

```
select last_name Name, salary
from employees
where salary > 4000;
```
    
### Q7. Display the salary of King.

```
select last_name Name, salary
from employees
where last_name = 'king';
```

__MySql is not case sensitive but if it was the match could be found using funcions to change the case.__

Functions such as **lower() - upper()** 

```
select last_name Name, salary
from employees
where lower(last_name) = 'king';
```
    
    

