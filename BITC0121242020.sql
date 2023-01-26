
CREATE DATABASE IEBC_DATABASE
GO

USE IEBC_DATABASE

/*CREATING TABLES*/

CREATE TABLE Posts_Offered
(
  post_title CHAR(20) PRIMARY KEY ,
  salary INT NOT NULL,
  number_needed BIGINT NOT NULL,
);

CREATE TABLE Workforce
(
  workforce_id VARCHAR(20) PRIMARY KEY,
  workforce_name CHAR(50) NOT NULL,
  tel_no BIGINT NOT NULL,
  post_title CHAR(20) NOT NULL,
  salary INT NOT NULL,
  workforce_email VARCHAR(30) NOT NULL,
  KRA_pin VARCHAR(20) NOT NULL,
    FOREIGN KEY (post_title)
	REFERENCES posts_Offered(post_title),
);



CREATE TABLE Sector 
(
  sector_id VARCHAR(15) PRIMARY KEY,
  sector_name CHAR(30) NOT NULL,
);

CREATE TABLE Administration
( 
  sector_id VARCHAR(15) NOT NULL,
  workforce_name CHAR(40) NOT NULL,
  workforce_id VARCHAR(20) NOT NULL,
   FOREIGN KEY(sector_id)
   REFERENCES Sector(sector_id),
);

CREATE TABLE Wage 
(
  transaction_id VARCHAR(10) PRIMARY KEY,
  post_title CHAR(20) NOT NULL,
  salary INT NOT NUll,
  workforce_id VARCHAR(20) NOT NULL,
   FOREIGN KEY(workforce_id)
   REFERENCES Workforce (workforce_id),
);

/* INSERTING VALUES INTO THE TABLES */
/*Now the values are entered in the tables in the orders that the tables are created*/

INSERT INTO Posts_Offered
VALUES
('Human Resource Officer','80000','8'),
('Senior Procument Officer','25000','10'),
('Procurement officer','30000','47'),
('HR Database Management Officer','30000','4'),
('Constituency Office Clerk','20000','2'),
('Training Coordinator','15000','450'),
('Election Offenses Investigation Officer','23000','10'),
('Constituency Elections Coordinator','32000','47'),
('Voter Registration Clerk','40000','48');


INSERT INTO Workforce
VALUES 
('st001','Jeremy Kuni',0718902757,'Human Resource Officer','80000','kunijeremy@gmail.com','ASDF1234'),
('st002','Clinton Obado',0712334575,'Senior Procument Officer','25000','obadoclintonio@gmail.com','AWER2345'),
('st003','Joseph Brian',0734567654,'Procurement officer','30000','07josephbrian@gmail.com','AXCV3456'),
('st004','Vivian Wawira',0743476354,'Training Coordinator','15000','mwitiwawira@gmail.com','AGHJ4567'),
('st005','Doresi Trizzilah',0745867594,'Constituency Office Clerk','20000','doresitrizziallah@gmail.com','ATYU5678'),
('st006','Lucky Corrazon',0768549844,'HR Database Management Officer','30000','luckycorrazon@gmail.com','AVBN6789'),
('st007','Racheal osio',0723467543,'Human Resource Officer','80000','rachaleosio@gmail.com','ABNM7890'),
('st008','Mark Kipikuri',0744123456,'Election Offenses Investigation Officer','23000','kipikurimark@gmail.com','ADFG8901'),
('st009','Mercy Omondi',0724987654,'Constituency Office Clerk','20000','omondimercy567@gmail.com','AERT9012'),
('st010','Masoud Nderitu',0712986755,'Senior Procument Officer','25000','masoudnderitu@gmail.com','AFGH0123'),
('st011','Hakeem Rays',0709877809,'Constituency Office Clerk','20000','ryashakeemle@gmail.com','ARTY1357'),
('st012','Glen Aseda',0727123454,'Senior Procument Officer','25000','asedagleno@gmail.com','AGHJ2468'),
('st013','Carsons Ochieng',0709876123,'HR Database Management Officer','30000','ochibocarsons@gmail.com','AHJK3579'),
('st014','Nabley Nabshi',0734212123,'Human Resource Officer','80000','nableynabshi@gmail.com','AVBN4680'),
('st015','Kenneddy Omondi',0721234321,'Procurement officer','30000','omomndikennedy76@gmail.com','ABNMZ5791'),
('st016','Diana Daisy',0721456543,'Election Offenses Investigation Officer','23000','dianadaisy@gmail.com','AHJK6802'),
('st017','lilian Adhiambo',0787123432,'Training Coordinator','15000','adhiambolilly@gmail.com','ARTY7913'),
('st018','Cliff otieno',0756321233,'Human Resource Officer','80000','ceedocliff@gmail.com','AHJK8024'),
('st019','Dephine Das',0789765432,'Human Resource Officer','80000','bestidephine@gmail.com','AJKL9134'),
('st020','Karoli Jamtaa',0787678098,'Procurement officer','30000','karolijamtaaana@gmail.com','AKLAS0246'),
('st021','Chloe Otieno',0767342123,'HR Database Management Officer','30000','chloeolando@gmil.com','AYUI1470'),
('st022','Patricia Magoma',0787456567,'Election Offenses Investigation Officer','23000','magomaprincess@gmail.com','AUIO2581'),
('st023','Medusi Amina',078908890,'Human Resource Officer','80000','amimaedusi@mail.com','AKLAS3692'),
('st024','Cythia Wambua',0767567567,'Human Resource Officer','80000','cythiawambua@gmail.com','ALAS4703'),
('st025','Emmanuel Oeba',0712312322,'Human Resource Officer','80000','emmaoeba@gmail.com','AUIO5814'),
('st026','Laura Kubasu',0798098789,'Constituency Elections Coordinator','32000','laukabusa@gmail.com','AUIP6925'),
('st027','Esther Wangui',0712121221,'Human Resource Officer','80000','wanguieshter@gmail.com','AIOQ7036'),
('st028','Braitoone Liech',0756432234,'Constituency Elections Coordinator','32000','liechbrighton@gmail.com','AIOW8147'),
('st029','Joseph Mwangi',0723211223,'Human Resource Officer','80000','josemwangigmail.com','ALAS9258'),
('st030','Bolen Amimo',0721234543,'Training Coordinator','15000','aminobole@gmail.com','AMSA0369');

INSERT INTO Sector
VALUES
('dp001',' Commission Secretary/Chief Executive Officer (CS/CEO)'),
('dp002','Deputy Commission Secretary (DCS)'),
('dp003','Directors'),
('dp004','Managers'),
('dp005','County Election Managers'),
('dp006','Police Men'),
('dp007','Protocols'),
('dp008','Translators'),
('dp009','Special Nedds Managers');

INSERT INTO Administration
VALUES
('dp001','Jeremy Kuni','st001'),
('dp002','Racheal osio','st0007'),
('dp003','Nabley Nabshi','st0014'),
('dp004','Cliff otieno','st0018'),
('dp005','Dephine Das','st0019'),
('dp006','Medusi Amina','st0023'),
('dp007','Cythia Wambua','st0024'),
('dp008','Emmanuel Oeba','st0025'),
('dp009','Esther Wangui','st0027'),
('dp010','Joseph Mwangi','st0029');

INSERT INTO Wage 
VALUES
('trs001','Human Resource Officer',80000,'st0001'),
('trs002','Human Resource Officer',80000,'st0007'),
('trs003','Human Resource Officer',80000,'st0014'),
('trs004','Human Resource Officer',80000,'st0018'),
('trs005','Human Resource Officer',80000,'st0019'),
('trs006','Human Resource Officer',80000,'st0023'),
('trs007','Human Resource Officer',80000,'st0024'),
('trs008','Human Resource Officer',80000,'st0025'),
('trs009','Human Resource Officer',80000,'st0027'),
('trs010','Human Resource Officer',80000,'st0029'),
('trs011','Senior Procument Officer',20000,'st0002'),
('trs012','Senior Procument Officer',20000,'st0010'),
('trs013','Senior Procument Officer',20000,'st0012'),
('trs014','Procurement officerGuard',18000,'st0003'),
('trs015','Procurement officer',18000,'st0015'),
('trs016','Procurement officer',18000,'st0020'),
('trs017','Training Coordinator',10000,'st0004'),
('trs018','Training Coordinator',10000,'st0017'),
('trs019','Training Coordinator',10000,'st0030'),
('trs020','Constituency Office Clerk',15000,'st0005'),
('trs021','Constituency Office Clerk',15000,'st0009'),
('trs022','Constituency Office Clerk',15000,'st0011'),
('trs023','HR Database Management Officer',20000,'st0006'),
('trs024','HR Database Management Officer',20000,'st0013'),
('trs025','HR Database Management Officer',20000,'st0021'),
('trs026','Election Offenses Investigation Officer',23000,'st0008'),
('trs027','Election Offenses Investigation Officer',23000,'st0016'),
('trs028','Election Offenses Investigation Officer',23000,'st0022'),
('trs029','Constituency Elections Coordinator',30000,'st0026'),
('trs030','Constituency Elections Coordinator',30000,'st0028');


/*SYNTAX FOR QUERIES*/

/*The query gives describes the tables properties*/
 DESCRIBE sector
 /*The query is for update*/
 UPDATE Workforce
 SET workforce_name= 'Amina Meducia'
 WHERE workforce_id= 'dp001'; 
/*The query gives the number of post that are offered in the IEBC their 
salary is below 40000*/
SELECT 
     post_title, Salary
FROM
     Posts_Offered
WHERE 
     salary < 40000;


/*The query gives the posts offered in the IEBC and the salary is above 40000*/
SELECT 
     post_title, salary
FROM 
     Posts_Offered
WHERE 
     salary > 40000;


/*The query gives the sector_id and those who manage the whole sector*/
SELECT 
     sector_id, workforce_name
FROM 
     Administration;

/*This query gives all the vacant posts and the respective 
office names */
SELECT 
     post_title,sector_name,post_name
FROM 
     Posts_Offered
WHERE 
    post_name!='Not occupied';

/*This query gives all the number wanted per post */
SELECT 
     post_title,post_name,Workforce
FROM 
     Posts_Offered
WHERE 
    post_name!='total numbers of occupants needed';

/*This query removes the salary column in workforce table */
DELETE 
	 salary
FROM  
	 Workforce

/*This query gives groups workforce according their post title */
SELECT
      post_title, COUNT(*)
FROM 
      Workforce
GROUP BY post_title;

/*The query gives information of every workforce in respective sector*/
SELECT 
  sector_id, tel_no, workforce_email,
FROM 
    Sector, Workforce;

