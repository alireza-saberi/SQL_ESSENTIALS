Drop table books;
Create Table Books
(ISBN varchar(10) Primary key,
 Title varchar(80),
 Author varchar(60),
 Publisher varchar(60),
 PubDate date,
 Language varchar(20),
 Category varchar(25),
 PaperB varchar(1),
 PBsalePrice decimal(5.2),
 DigitF varchar(1),
 DigsalePrice decimal(5.2),
 NumPages integer);




Insert Into Books
values(6071133483,'Ser Feliz Era Esto','Eduardo Sacheri', 'Alfaguara', '2015/3/17', 'Spanish','Fiction','P',15.25, 'D', 7.21, 248);

Insert Into Books
values(6071127661,'La vida que Pensamos','Eduardo Sacheri', 'Alfaguara','2014/1/30','Spanish','Fiction','P',18.28, null, null, 540);

Insert Into Books
values('843231255X','El futbol a sol y sombra', 'Eduardo Galeano','Siglo XXI', '2006/1/11', 'Spanish','Fiction','P',16.95,null, null, 414);

Insert Into Books
values(8432311456,'Las venas abiertas de America Latina', 'Eduardo Galeano','Siglo XXI', '2006/1/11', 'Spanish','Fiction','P',24.48,'D',7.05,380);

Insert Into Books
values(0307474720,'Cien aÒos de Soledad','Gabriel Garcia Marquez','Vintage EspaÒol','2009/9/22','Spanish','Fiction','P',10.15,'D',10.57,496);

Insert Into Books
values(0307387267,'El amor en los tiempos del colera','Gabriel Garcia Marquez','Vintage EspaÒol','2007/10/9','Spanish','Fiction','P',12.78,'D',11.38,464);

Insert Into Books
values(0062511408,'El Alquimista', 'Paulo Coelho', 'Rayo','2002/1/22', 'Spanish','Fiction','P',8.46,'D',5.03,192);

Insert Into Books
values('607429223X', 'Once minutos','Paulo Coelho','Debolsillo','2012/8/10','Spanish','Fiction', 'P',8.46,null,null ,296);

Insert Into Books
values(0061829684, 'El vencedor esta solo','Paulo Coelho', 'Rayo','2010/8/31', 'Spanish','Fiction',null,null,'D',9.89,416);

Insert Into Books
values(0060883286,'One Hundred Years of Solitude','Gabriel Garcia Marquez','Harper Perennial Modern Classics','2009/8/31','English','Fiction','P',9.57,null,null,417);

Insert Into Books
values(0062315005,'The Alchemist', 'Paulo Coelho', 'HarperOne','2014/4/15', 'English','Fiction','P',16.98,'D',9.67,208);

Insert Into Books
values(0853459916,'Open Veins of Latin America','Eduardo Galeano',' Monthly Review Press','1997/11/25','English','Politics','P',12.52,'D',7.05,317);

Insert Into Books
values('073607483X','Periodization Training:Theory and Methodology','Tudor Bompa','Human Kinetics', '2009/6/22', 'English','Sports','P',66.35,null, null, 424);

Insert Into Books
values(0736058036,'Essentials of strength training','Thomas R. Baechle & Roger W. Earle','Human Kinetics', '2008/6/2', 'English','Sports','P',42.41,null,null,656);

Insert Into Books
values(0736092269,'Strength Training Anatomy','FrÈdÈric Delavier','Human Kinetics', '2010/3/9', 'English','Sports','P',11.35,null, null,192);

Insert Into Books
values(1450413994,'Core Training Anatomy','FrÈdÈric Delavier','Human Kinetics', '2011/10/10', 'English','Sports',null,null,'D',14.92,144);

Insert Into Books
values(1591640253,'Soccer modern tactics','Alessandro Zauli','Reedswain Books & Videos','2002/8/1','English','Coaching',null,null,'D',7.03,128);

Insert Into Books
values(1890946737,'Teambuilding: the road to success','Rinus Michels','Reedswain Books & Videos','2002/8/1','English','Coaching','P',16.12,null,null,218);

Insert Into Books
values(1890946710, 'Attacking Soccer','Massimo Lucchesi','Reedswain Books & Videos','2001/12/1','English','Coaching',null,null,'D',7.19,224);

Insert Into Books
values(1890946036,'The Coaching Philosophies of Louis van Gaal and the Ajax Coaches','Henny Kormelink','Reedswain Books & Videos','2001/12/1','English','Coaching','P',12.65,'D',7.19,224);

Insert Into Books
values(9896551979,'Jose Mourinho: Special Leadership','Luis Lourenco','Prime Books','2014/4/18','English','Sports','P',9.78,'D',7.15,164);

Insert Into Books
values(1408843501,'The Manager','Mike Carson','Bloomsbury USA','2014/10/28','English','Sports','P',12.42,'D',7.05,320);

Insert Into Books
values(1409129462,'Pep Guardiola: Another Way of Winning', 'Guillem Balague','Orion Publishing','2013/12/1','English','Sports','P',17.06,'D',10.23,362);

Insert Into Books
values(1909430161,'I Think Therefore I Play','Andrea Pirlo','BackPage Press','2015/10/1','English','Sports','P',11.21,'D',5.64,200);

Insert Into Books
values(1472224272,'Luis Suarez: Crossing the Line - My Story','Luis Suarez','Headline Book Publishing','2015/8/1','English','Sports','P',16.95,null,null,288);

Insert Into Books
values(1938591097,'The Flea - The Amazing Story of Leo Messi','Michael Part','Sole Books','2013/8/1','English','Sports','P',8.99,'D',4.24,160);

Insert Into Books
values(1845967100,'Red Men: Liverpool Football Club The Biography','John Williams',' Mainstream Publishing','2011/11/28','English','Sports','P',18.40,'D',14.08,317);

Insert Into Books
values('147221398X','Steven Gerrard: My Liverpool Story','Steven Gerrard','Headline Book Publishing','2015/4/1','English','Sports','P',18.68,'D',17.54,304);

Insert Into Books
values(1780228821,'The Second Half','Roddy Doyle','Orion Publishing','2015/9/15','English','Sports','P',11.99,'D',6.47,320);

Insert Into Books
values(0718193997,'Keane: The Autobiography','Roy Keane', 'Penguin Global','2012/1/18','English','Sports','P',11.99,null,null,336);

Show tables;

select title,author
from books;

