Drop Table Inventory;
Drop Table Items;
Drop Table Sales;
Drop Table Staff;


Create Table Staff
 (StaffNo  varchar(6) Primary Key,
  Lastname  varchar(30),
  Firstname varchar(25),
  Hire_date  date,
  Location  varchar(30),
  SupervisorNo  varchar(6),
  Salary  numeric(8,2),
  Commission  numeric(4,2));

Create Table Inventory
 (PartNo  varchar(6) Primary Key,
  Descript varchar(40),
  OnHand  numeric(4),
  Location varchar(20),
  UnitCost numeric(6,2),
  SalePrice numeric(6,2),
  Discontinue  numeric(2));


Create Table Sales
  (OrderNo  varchar(6) Primary Key,
   SaleDate  date,
   StaffNo  varchar(6) References Staff(StaffNo),
   CustNo   varchar(6),
   Invoiced  numeric(2));


  Create table Items
   (OrderNo  varchar(6) References Sales(OrderNo),
    PartNo  varchar(6) References Inventory(PartNo),
    Qty      numeric(5),
    Shipped  numeric(2),
    Constraint Items_pk Primary Key (OrderNo,PartNo));
  
  
 
 
  
 -- Populate Inventory Table -------------------------------------------
 
  Insert into Inventory
    values('001001','WORKSTATION-ELECTRONIC OFFICE',2,'CHICAGO',1296.29,1790.99,0);
  
    Insert into Inventory
    values('001002','HOME OFFICE SUITE',2.,'LOS ANGELES',1395.49,1850.70,0);
    
    Insert into Inventory
    values('001005','EXECUTIVE SUITE ENSEMBLE',1,'CHICAGO',2125.79,3000.90,0);
    Insert into Inventory
    values('001007','WOOD DESK-SINGLE PEDESTAL',29,'NEW YORK',736.21,1038.20,0);
    Insert into Inventory
    values('001008','WORKSTATION-STAND',22,'LOS ANGELES',275.66,350.16,0);
    Insert into Inventory
    values('001009','CHAIR-ADJUSTABLE SWIVEL',124,'CHICAGO',245.38,370.18,1);
    Insert into Inventory
    values('001015','CREDENZA-OAK SLIDING DOOR',15,'NEW YORK',745.00,1116.20,1);
    Insert into Inventory
    values('001019','TABLE-BOARD ROOM',12,'NEW YORK',4250.00,5650.30,0);
    Insert into Inventory
    values('001021','MANAGERS OFFICE ENSEMBLE',3,'NEW YORK',2380.79,3150.45,0);
    Insert into Inventory
    values('001022','TABLE-WALNUT OCCASIONAL',5,'NEW YORK',414.95,650.30,0);
    Insert into Inventory
    values('001024','LAMP-BRASS TABLE',140,'CHICAGO',230.79,350.30,0);
    Insert into Inventory
    values('001025','DESK-EXECUTIVE-5 FOOT',63,'LOS ANGELES',985.00,1530.30,0);
    Insert into Inventory
    values('001029','FILE CABINET-2 DRAWER',200,'NEW YORK',89.95,114.20,1);
    Insert into Inventory
    values('001031','CHAIR-EXECUTIVE SWIVEL/TILT',79,'LOS ANGELES',420.00,620.50,0);
    Insert into Inventory
    values('001032','FILE CABINET-4 DRAWER',15,'CHICAGO',134.69,192.50,0);
    Insert into Inventory
    values('001033','CHAIR-TRADITIONAL ARM',20,'CHICAGO',125.00,185.30,1);
    Insert into Inventory
    values('001038','LAMP-DRAFTING SWING ARM',169,'LOS ANGELES',149.59,210.40,0);
    Insert into Inventory
    values('001039','LAMP-DRAFTING SWING ARM small',47,'NEW YORK',149.59,210.40,0);
    Insert into Inventory
    values('001017','WOOD DESK-SINGLE PEDESTAL',35,'CHICAGO',736.21,1210.30,0);
    Insert into Inventory
    values('001018','WOOD DESK-DOUBLE PEDESTAL',62,'LOS ANGELES',736.21,1210.30,0);
    Insert into Inventory
    values('001013','CHAIR-MODERN PNEUMATIC',115,'CHICAGO',275.80,380.20,0);
    Insert into Inventory
    values('001014','CHAIR-MODERN PNEUMATIC small',35,'LOS ANGELES',275.80,375.16,0);
    Insert into Inventory
    values('001092','FILE CABINET-4 DRAWER',71,'LOS ANGELES',134.69,191.20,0);
    Insert into Inventory
    values('001041','LAMP-DRAFTING SWING ARM medium',89,'CHICAGO',149.59,210.10,0);
    Insert into Inventory
    values('001027','DESK-EXECUTIVE-6 FOOT',20,'CHICAGO',1475.00,2100.60,0);
    Insert into Inventory
    values('001028','DESK-EXECUTIVE-8 FOOT',56,'NEW YORK',1475.00,2100.60,0);
    Insert into Inventory
    values('001071','CHAIR-EXECUTIVE SWIVEL/TILT',44,'CHICAGO',420.00,650.60,0);
    Insert into Inventory
    values('001073','CHAIR-EXECUTIVE SWIVEL/TILT large',76,'NEW YORK',420.00,670.30,0);
    Insert into Inventory
    values('001054','LAMP-BRASS TABLE',56,'NEW YORK',230.79,390.50,0);
    Insert into Inventory
    values('001055','DESK-EXECUTIVE-5 FOOT',47,'NEW YORK',985.00,1580.10,0);
    Insert into Inventory
    values('001091','WORKSTATION-ELECTRONIC OFFICE',3,'LOS ANGELES',1296.29,1910.20,0);
    Insert into Inventory
    values('001065','EXECUTIVE SUITE ENSEMBLE',0,'NEW YORK',2125.79,3100.25,0);
    Insert into Inventory
    values('001049','FILE CABINET-2 DRAWER',145,'LOS ANGELES',89.95,130.20,1);

-- Populate Items Table ------------------------------------------------

Insert into items
values('020002','001032',2,0);
Insert into items
values('020002','001025',3,0);
Insert into items
values('020002','001013',3,0);
Insert into items
values('020003','001021',4,0);
Insert into items
values('020003','001005',2,0);
Insert into items
values('020004','001027',5,0);
Insert into items
values('020004','001038',5,0);
Insert into items
values('020004','001013',5,0);
Insert into items
values('020005','001019',2,0);
Insert into items
values('020006','001007',25,0);
Insert into items
values('020006','001031',25,0);
Insert into items
values('020007','001022',3,0);
Insert into items
values('020007','001033',3,0);
Insert into items
values('020008','001007',3,0);
Insert into items
values('020009','001029',31,0);
Insert into items
values('020010','001005',5,0);
Insert into items
values('020010','001021',2,0);
Insert into items
values('020011','001029',7,0);
Insert into items
values('020011','001025',4,0);
Insert into items
values('020011','001031',7,0);
Insert into items
values('020012','001015',5,0);
Insert into items
values('020013','001022',2,0);
Insert into items
values('020013','001019',1,0);
Insert into items
values('020014','001021',2,0);
Insert into items
values('020015','001025',15,0);
Insert into items
values('020016','001031',4,0);
Insert into items
values('020016','001025',2,0);
Insert into items
values('020017','001029',6,0);
Insert into items
values('020018','001038',4,0);
Insert into items
values('020019','001027',3,0);
Insert into items
values('020020','001024',7,0);
Insert into items
values('020020','001032',4,0);
Insert into items
values('020021','001013',8,0);
Insert into items
values('020021','001025',8,0);
Insert into items
values('020021','001024',6,0);
Insert into items
values('020022','001015',1,0);
Insert into items
values('020023','001024',12,0);
Insert into items
values('020024','001009',3,0);
Insert into items
values('020024','001027',3,0);
Insert into items
values('020025','001019',1,0);
Insert into items
values('020026','001007',9,0);
Insert into items
values('020026','001013',9,0);
Insert into items
values('020026','001024',5,0);

-- Populate Sales Table ----------------------------------------------

Insert into sales
Values ('020002',Date('2014-9-21'),'000008','100025',0);
Insert into sales
Values ('020003',Date('2014-9-21'),'000006','100043',0);
Insert into sales
Values ('020004',Date('2014-9-21'),'000019','100034',0);
Insert into sales
Values ('020005',Date('2014-9-21'),'000001','100016',0);
Insert into sales
Values ('020006',Date('2014-9-21'),'000012','100036',0);
Insert into sales
Values ('020007',Date('2014-9-22'),'000015','100019',0);
Insert into sales
Values ('020008',Date('2014-9-22'),'000003','100011',0);
Insert into sales
Values ('020009',Date('2014-9-22'),'000012','100018',0);
Insert into sales
Values ('020010',Date('2014-9-22'),'000011','100031',0);
Insert into sales
Values ('020011',Date('2014-9-22'),'000015','100040',0);
Insert into sales
Values ('020012',Date('2014-9-22'),'000008','100027',0);
Insert into sales
Values ('020013',Date('2014-9-23'),'000012','100036',0);
Insert into sales
Values ('020014',Date('2014-9-23'),'000001','100001',0);

Insert into sales
Values ('020015',Date('2014-9-23'),'000015','100019',0);
Insert into sales
Values ('020016',Date('2014-9-23'),'000015','100011',0);
Insert into sales
Values ('020017',Date('2014-9-24'),'000006','100032',0);
Insert into sales
Values ('020018',Date('2014-9-24'),'000011','100038',0);
Insert into sales
Values ('020019',Date('2014-9-24'),'000013','100016',0);
Insert into sales
Values ('020020',Date('2014-9-24'),'000013','100031',0);
Insert into sales
Values ('020021',Date('2014-9-25'),'000008','100046',0);
Insert into sales
Values ('020022',Date('2014-9-25'),'000004','100027',0);
Insert into sales
Values ('020023',Date('2014-9-25'),'000003','100040',0);
Insert into sales
Values ('020024',Date('2014-9-25'),'000012','100045',0);
Insert into sales
Values ('020025',Date('2014-9-25'),'000003','100019',0);
Insert into sales
Values ('020026',Date('2014-9-25'),'000004','100017',0);


-- Populate Staff Table ------------------------------------------

Insert Into Staff
Values('000001','Zambini','Rick',Date('1980-2-15'),'LOS ANGELES','000000',6000.00,5.00);
Insert Into Staff
Values('000003','Vidoni','Cheryl',Date('1980-3-6'),'NEW YORK','000000',5780.00,5.00);
Insert Into Staff
Values('000004','Coudray','Sandy',Date('1980-6-6'),'LOS ANGELES','000001',6237.00,5.00);
Insert Into Staff
Values('000006','Thomas','Pat',Date('1991-1-8'),'NEW YORK','000003',5875.00,5.00);
Insert Into Staff
Values('000008','McLester','Debbie',Date('1981-4-12'),'LOS ANGELES','000001',4792.00,5.00);
Insert Into Staff
Values('000011','Michaels','Delores',Date('1982-5-5'),'CHICAGO','000012',4927.00,7.00);
Insert Into Staff
Values('000012','Charles','Ted',Date('1983-2-2'),'CHICAGO','000000',5945.00,5.00);
Insert Into Staff
Values('000013','Marin','Mark',Date('1983-6-5'),'LOS ANGELES','000001',4802.00,11.00);
Insert Into Staff
Values('000015','Roddick','Mary',Date('1984-2-13'),'NEW YORK','000003',5493.00,8.00);
Insert Into Staff
Values('000016','Long','Nicole',Date('1984-8-18'),'NEW YORK','000003',5190.00,7.00);
Insert Into Staff
Values('000019','Rolfes','Chuck',Date('1984-9-9'),'LOS ANGELES','000001',4586.00,6.00);
Insert Into Staff
Values('000020','Sanders','Kathy',Date('1985-3-23'),'CHICAGO','000012',3783.00,5.00);


COMMIT;


