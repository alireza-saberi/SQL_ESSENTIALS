Drop table Employees;
Drop table Departments;
Drop Table Locations;
Drop Table Countries;
Drop Table Regions;

Drop table Job_Grades;
Drop Table Jobs;
Drop Table Job_History;



Create Table Regions
 (Region_Id Numeric(2) Primary Key,
  Region_Name Varchar(25));

Create Table Countries
 (Country_Id Char(2) Primary Key,
  Country_Name varchar(40),
  Region_Id Numeric(2),
  Foreign key (Region_id) References Regions(Region_id));  
  
Create Table Locations
 (Location_Id Numeric(4) Primary Key,
  Street_Address Varchar(40),
  Postal_Code Varchar(12),
  City Varchar(30) not null,
  State_Province Varchar(25),
  Country_Id Char(2),
  Foreign key (Country_id) References Countries(Country_id));

Create Table Departments
 (Department_Id Numeric(4) Primary Key,
  Department_Name Varchar(30) Not null,
  Manager_Id Numeric(6),
  Location_Id Numeric(4),
  Foreign key (Location_id) References Locations(Location_id));
  
Create Table Employees
 (Employee_id Numeric(6) PRIMARY KEY,
  First_Name Varchar(20),
  Last_Name Varchar(25) NOT NULL,
  Email Varchar(20),
  Phone_Number Varchar(20),
  Hire_Date Date NOT NULL,
  Job_Id Varchar(10),
  Salary Numeric(8,2),
  Commission_Pct Numeric(2,2),
  Manager_Id Numeric(6),
  Department_Id Numeric(4),
  Foreign key (Department_id) References Departments(Department_id));
  

Create Table Job_Grades
   (Grade_Level Varchar(3),
    Lowest_Sal Numeric(6),
    Highest_Sal Numeric(6));

Create Table Jobs
 (Job_Id Varchar(10) not null,
  Job_Title Varchar(35) not null,
  Min_Salary Numeric(6),
  Max_Salary Numeric(6));
  
Create Table Job_History
 (Employee_Id Numeric(6) not null,
  Start_Date Date Not null,
  End_Date Date Not null,
  Job_Id Varchar(10) not null,
  Department_Id Numeric(4));




-- Populate Regions

Insert Into Regions(Region_Id,Region_Name)
Values (1,'Europe');

Insert Into Regions(Region_Id,Region_Name)
Values (2,'Americas');

Insert Into Regions(Region_Id,Region_Name)
Values (3,'Asia');

Insert Into Regions(Region_Id,Region_Name)
Values (4,'Middle East and Africa');


-- Populate Countries

Insert Into Countries(Country_Id,Country_Name,Region_Id)
Values ('US','United States of America',2);

Insert Into Countries(Country_Id,Country_Name,Region_Id)
Values ('CA','Canada',2);

Insert Into Countries(Country_Id,Country_Name,Region_Id)
Values ('DE','Germany',1);

Insert Into Countries(Country_Id,Country_Name,Region_Id)
Values ('UK','United Kingdom',1);

-- Populate Locations

Insert Into Locations(Location_ID,Street_Address,Postal_Code,City,State_Province,Country_Id)
Values (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');

Insert Into Locations(Location_ID,Street_Address,Postal_Code,City,State_Province,Country_Id)
Values (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');

Insert Into Locations(Location_ID,Street_Address,Postal_Code,City,State_Province,Country_Id)
Values (1700,'2004 Charade Rd','98199','Seattle','Washington','US');

Insert Into Locations(Location_ID,Street_Address,Postal_Code,City,State_Province,Country_Id)
Values (1800,'460 Bloor St W.','ON M5S 1X8','Toronto','Ontario','CA');
       
Insert Into Locations(Location_ID,Street_Address,Postal_Code,City,State_Province,Country_Id)
Values (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');


-- Populate Departments

Insert Into Departments(Department_Id,Department_Name,Manager_Id,Location_Id)
Values (190,'Contracting',null,1700);

Insert Into Departments(Department_Id,Department_Name,Manager_Id,Location_Id)
Values (10,'Administration',200,1700);

Insert Into Departments(Department_Id,Department_Name,Manager_Id,Location_Id)
Values (20,'Marketing',201,1800);

Insert Into Departments(Department_Id,Department_Name,Manager_Id,Location_Id)
Values (50,'Shipping',124,1500);

Insert Into Departments(Department_Id,Department_Name,Manager_Id,Location_Id)
Values (60,'IT',103,1400);

Insert Into Departments(Department_Id,Department_Name,Manager_Id,Location_Id)
Values (80,'Sales',149,2500);

Insert Into Departments(Department_Id,Department_Name,Manager_Id,Location_Id)
Values (90,'Executive',100,1700);

Insert Into Departments(Department_Id,Department_Name,Manager_Id,Location_Id)
Values (110,'Accounting',205,1700);


-- Populate table Employees

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values(100,'Steven','King','SKING','515.123.4567', DATE('1987-06-17'),'AD_PRES',24000,null,null,90);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (101,'Neena','Kochhar','NKOCHHAR','515.123.4568', Date('1989-09-21'),'AD_VP',17000,null,100,90);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (103,'Alexander','Hunold','AHUNOLD','590.423.4567', Date('1990-01-03'),'IT_PROG',9000,null,102,60);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (104,'Bruce','Ernst','BERNST','590.423.4568', Date('1991-05-21'),'IT_PROG',6000,null,103,60);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (107,'Diana','Lorentz','DLORENTZ','590.423.5567', Date('1999-02-07'),'IT_PROG',4200,null,103,60);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (124,'Kevin','Mourgos','KMOURGOS','650.123.5234', Date('1999-11-16'),'ST_MAN',5800,null,100,50);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (141,'Trenna','Rajs','TRAJS','650.121.8009', Date('1995-10-17'),'ST_CLERK',3500,null,124,50);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (142,'Curtis','Davies','CDAVIES','650.121.2994', Date('1997-01-29'),'ST_CLERK',3100,null,124,50);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (143,'Randall','Matos','RMATOS','650.121.2874', Date('1998-03-15'),'ST_CLERK',2600,null,124,50);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (144,'Peter','Vargas','PVARGAS','650.121.2004', Date('1998-07-09'),'ST_CLERK',2500,null,124,50);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018', Date('2000-01-29'),'SA_MAN',10500,.2,100,80);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (174,'Ellen','Abel','EABEL','011.44.1644.429267', Date('1996-05-11'),'SA_REP',11000,.3,149,80);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265', Date('1998-03-24'),'SA_REP',8600,.2,149,80);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (178,'Kimberely','Grant','KGRANT','011.44.1644.429263', Date('1999-05-24'),'SA_REP',7000,.15,149,null);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (200,'Jennifer','Whalen','JWHALEN','515.123.4444', Date('1987-09-17'),'AD_ASST',4400,null,101,10);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (201,'Michael','Hartstein','MHARTSTE','515.123.5555', Date('1996-02-17'),'MK_MAN',13000,null,100,20);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (202,'Pat','Fay','PFAY','603.123.6666',Date('1997-09-17'), 'MK_REP',6000,null,201,20);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (205,'Shelley','Higgins','SHIGGINS','515.123.8080', Date('1994-06-07'),'AC_MGR',12000,null,101,110);

Insert Into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id)
Values (206,'William','Gietz','WGIETZ','515.123.8181', Date('1994-06-07'),'AC_ACCOUNT',8300,null,205,110);


-- Populate Job_Grades

Insert Into Job_Grades(Grade_Level,Lowest_Sal,Highest_Sal)
Values ('A',1000,2999);
Insert Into Job_Grades(Grade_Level,Lowest_Sal,Highest_Sal)
Values ('B',3000,5999);
Insert Into Job_Grades(Grade_Level,Lowest_Sal,Highest_Sal)
Values ('C',6000,9999);
Insert Into Job_Grades(Grade_Level,Lowest_Sal,Highest_Sal)
Values ('D',10000,14999);
Insert Into Job_Grades(Grade_Level,Lowest_Sal,Highest_Sal)
Values ('E',15000,24999);
Insert Into Job_Grades(Grade_Level,Lowest_Sal,Highest_Sal)
Values ('F',25000,40000);

-- Populate Job_History

Insert Into Job_History(Employee_Id,Start_Date,End_Date,Job_Id,Department_Id)
Values(200,Date('1994-07-01'),Date('1998-12-31'),'AC_ACCOUNT',90);

 Insert Into Job_History(Employee_Id,Start_Date,End_Date,Job_Id,Department_Id)
 Values(102, Date('1993-01-13'), Date('1998-07-24'), 'IT_PROG',60);
 
 Insert Into Job_History(Employee_Id,Start_Date,End_Date,Job_Id,Department_Id)
 Values(101, Date('1989-09-21'), Date('1993-10-27'), 'AC_ACCOUNT',110);
 
 Insert Into Job_History(Employee_Id,Start_Date,End_Date,Job_Id,Department_Id)
 Values(101, Date('1993-10-28'), Date('1997-03-15'), 'AC_MGR',110);
 
 Insert Into Job_History(Employee_Id,Start_Date,End_Date,Job_Id,Department_Id)
 Values(201, Date('1996-02-17'), Date('1999-12-19'), 'MK_REP',20);
 
 Insert Into Job_History(Employee_Id,Start_Date,End_Date,Job_Id,Department_Id)
 Values(114, Date('1998-03-24'), Date('1999-12-31'), 'ST_CLERK',50);
 
 Insert Into Job_History(Employee_Id,Start_Date,End_Date,Job_Id,Department_Id)
 Values(122, Date('1999-01-01'), Date('1999-12-31'), 'ST_CLERK',50);
 
 Insert Into Job_History(Employee_Id,Start_Date,End_Date,Job_Id,Department_Id)
 Values(200, Date('1987-09-17'), Date('1993-06-17'), 'AD_ASST',90);
 
 Insert Into Job_History(Employee_Id,Start_Date,End_Date,Job_Id,Department_Id)
 Values(176, Date('1998-03-24'), Date('1998-12-31'), 'SA_REP',80);
 
 Insert Into Job_History(Employee_Id,Start_Date,End_Date,Job_Id,Department_Id)
 Values(176, Date('1999-01-01'), Date('1999-12-31'), 'SA_MAN',80);

-- Populate Jobs

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('AD_PRES','President',20000,40000);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('AD_VP','Administration Vice President',15000,30000);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('AD_ASST','Administration Assistant',3000,6000);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('AC_MGR','Accounting Manager',8200,16000);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('AC_ACCOUNT','Public Accountant',4200,9000);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('SA_MAN','Sales Manager',10000,20000);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('SA_REP','Sales Representative',6000,12000);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('ST_MAN','Stock Manager',5500,8500);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('ST_CLECK','Stock Clerk',2000,5000);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('IT_PROG','Programmer',4000,10000);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('MK_MAN','Marketing Manager',9000,15000);

Insert Into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary)
Values('MK_REP','Marketing Representative',4000,9000);


commit;  
