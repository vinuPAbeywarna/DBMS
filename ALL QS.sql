
USE Library_Managment_System;

-------------------create branch table-----------------------
CREATE TABLE Branch
(
	Branch_ID char(10) NOT NULL,
	Branch_Name varchar(50) NOT NULL,
	Branch_Address varchar(100) NOT NULL,
	CONSTRAINT PK_BRANCHID_BR PRIMARY KEY (Branch_ID),
);

----------------------INSERT BRANCH TABLE VALUES---------------
INSERT INTO Branch
VALUES (1,'Colombo','No.1,Colombo Road,Colombo1.'),
       (2,'Kottawa','No.2,Kottawa Road,Kottawa.'),
	   (3,'Maharagama','No.3,Colombo Road,Maharagama.'),
	   (4,'Rajagiriya','No.4,Colombo Road,Rajagiriya.'),
	   (5,'Nittabuwa','No.5,Colombo Road,Nittabuwa.'),
	   (6,'Dehiwala','No.6,Colombo Road,Dehiwala.'),
	   (7,'Rathmalana','No.7,Colombo Road,Rathmalana.'),
	   (8,'Maradana','No.8,Colombo Road,Maradana.'),
	   (9,'Kaluthara','No.9,Colombo Road,Kaluthara.'),
	   (10,'Mathara','No.10,Tangalle Road,Mathara.'),
	   (11,'Mathugama','No.10,Galle Road,Mathugama.');

	   SELECT*FROM Branch;                                                                                             



--------------------create staff table------------------------------
CREATE TABLE Staff
(
	Stfu_ID char(10) NOT NULL,
	StfName varchar(50) NOT NULL,
	Branch_ID char(10) NOT NULL,
	Designation varchar(10) NOT NULL,
	CONSTRAINT PK_STAFFID_S PRIMARY KEY (Stfu_ID),
	CONSTRAINT FK_BRANCHID_S FOREIGN KEY (Branch_ID) REFERENCES Branch (Branch_ID),
);

---------------------------insert staff table value-----------------------
INSERT INTO Staff
VALUES (01,'A.Vinuri Prabodhya',1,'Admin'),
       (02,'S.Sachintha siriwardhana',1,'Admin'),
	   (03,'M.Vinethra Danajani',2,'Admin'),
	   (04,'T.Chanu yasasmi',3,'Librarian'),
	   (05,'K.Sachintha Desilva',4,'Librarian'),
	   (06,'Y.Nimali Tharaka',5,'Assistant'),
	   (07,'H.Udayanga Rathnayaka',6,'Librarian'),
	   (08,'S.Sunil Karunasena',7,'Admin'),
	   (09,'A.Amal Priyantha',8,'Admin'),
	   (10,'L.Lalith Kumara ',9,'Admin'),
	   (11,'L.Sisira Kumara ',10,'Admin');

	   SELECT*FROM Staff;



---------------------------------create location table-------------------
CREATE TABLE Location
(
	Location_ID char(10) NOT NULL,
	Rack char(50) NOT NULL,
	L_Floor char(50) NOT NULL,
	Branch_ID char(10) NOT NULL,
	CONSTRAINT Pk_LOCATIONID_L PRIMARY KEY (Location_ID),
	CONSTRAINT FK_BRANCHID_L FOREIGN KEY (Branch_ID) REFERENCES Branch (Branch_ID),

);

------------------------------insert location table value-----------------
INSERT INTO Location
VALUES (101,50,1,1),
       (102,100,2,2),
	   (103,150,2,3),
	   (104,200,3,4),
	   (105,100,1,5),
	   (106,150,2,6),
	   (107,100,1,7),
	   (108,300,3,8),
	   (109,100,2,9),
	   (110,100,1,10),
	   (111,100,1,1);

	   SELECT*FROM Location;





------------------------------------create category table------------------------------------
CREATE TABLE Category
(
	Cat_ID char(10) NOT NULL,
	Cat_Name varchar(50) NOT NULL,
	Quantity char(50) NOT NULL,
	CONSTRAINT PK_CATID_C PRIMARY KEY (Cat_ID),
);

---------------------------------------insert values category-----------------------

INSERT INTO Category
VALUES (0001,'Science',20000),
	   (0002,'Novel',30000),
	   (0003,'Mathamatical',20000),
	   (0004,'Programming',50000),
	   (0005,'dictionary',20000),
	   (0006,'Low',10000),
	   (0007,'Referance',20000),
	   (0008,'Medical',50000),
	   (0009,'Art',20000),
	   (0010,'Reserch',20000);

	   Select*from Category;




-------------------------------------------create book table-------------------------
CREATE TABLE Book
(
	Book_ID char(10) NOT NULL,
	Title varchar(50) NOT NULL,
	ISBN char(10) NOT NULL,
	Price smallmoney NOT NULL,
	Cat_ID char(10) NOT NULL,
	CONSTRAINT PK_BOOKID_B PRIMARY KEY (Book_ID),
	CONSTRAINT FK_CATID_B FOREIGN KEY (Cat_ID) REFERENCES Category (Cat_ID),
);

-----------------------insert values book table------------------------
INSERT INTO Book
VALUES (111,'Northanger Abbey',45661,'500',0002),
       (112,'War and Peace',45721,'530',0002),
	   (113,'Malalasekara dictionary',49621,'2030',0005),
	   (114,'Java Programming',45221,'800',0004),
	   (115,'COMA',45331,'430',0007),
	   (116,'Circuler motions',11121,'530',0003),
	   (117,'War and Peace',45201,'530',0002),
	   (118,'Low Acts',45001,'930',0006),
	   (119,'Lord of the Rings',11221,'430',0002),
	   (120,'One Hundred Years of Solitude',11111,'330',0002),
	   (121,'Sherlock Hormes',22211,'460',0002),
	   (122,'Java and J2EE',15551,'490',0004),
	   (123,'The Hours',22111,'380',0002),
	   (124,'Harry Potter',66111,'480',0002),
	   (125,'Hamlet',66221,'880',0002),
	   (126,'Bleak House',88221,'380',0002),
	   (127,'The Hours',88311,'280',0002),
	   (128,'Java basics',99111,'580',0004),
	   (129,'C# basics',88881,'680',0004),
	   (130,'Tom Sawyer',88333,'680',0002);
   

	Select*from Book;  
	

-----------------------------create author table--------------------------------
CREATE TABLE Author
(
	Author_ID char(10) NOT NULL,
	Author_Name varchar(50) NOT NULL,
	Book_ID char(10) NOT NULL,
	CONSTRAINT PK_AUTHERID_A PRIMARY KEY (Author_ID),
	CONSTRAINT FK_BOOKID_A FOREIGN KEY (Book_ID) REFERENCES Book (Book_ID),
);

------------------------------insert author table value----------------
INSERT INTO Author
VALUES (5,'Jane Austen',111),
       (10,'Leo Tolstoy',112),
	   (15,'Malalasekara',113),
	   (20,'Willium J.Curray',114),
	   (25,'Charles Nicales',115),
	   (30,'Henri Barvana',116),
	   (35,'Leo Tolstoy',117),
	   (40,'Nikalas jems',118),
	   (45,'J.R.Tolkien',119),
	   (50,'Marquez',120);

	   SELECT*FROM Author;





-------------------------------CREAT BOOKCOPY TABLE----------------------------
CREATE TABLE Book_Copy
(
	Bookcopy_ID char(10) NOT NULL,
	Book_ID char(10) NOT NULL,
	Branch_ID char(10) NOT NULL,
	CONSTRAINT PK_BookID_CP PRIMARY KEY (Bookcopy_ID),
	CONSTRAINT FK_bookID_CP FOREIGN KEY (Book_ID) REFERENCES Book (Book_ID),
	CONSTRAINT FK_BRANCHID_CP FOREIGN KEY (Branch_ID) REFERENCES Branch (Branch_ID),
);

---------------------------insert bookcopy table value------------------------------
INSERT INTO Book_Copy
VALUES (1,112,1),
       (2,117,2),
	   (3,113,5),
	   (4,114,7),
	   (5,115,3),
	   (6,116,1),
	   (7,118,3),
	   (8,120,8),
	   (9,119,9),
	   (10,111,1),
	   (11,121,5),
	   (12,122,3),
	   (13,123,4),
	   (14,124,6),
	   (15,125,7),
	   (16,126,5),
	   (17,127,9),
	   (18,128,5),
	   (19,129,3),
	   (20,130,5);

	   SELECT*FROM Book_Copy;




----------------------------------------create order table-------------------------------
CREATE TABLE Book_Order
(
	Order_ID char(10) NOT NULL,
	O_Price smallmoney NOT NULL,
	Quantity char(50) NOT NULL,
	O_Date char(10) NOT NULL,
	CONSTRAINT PK_ORDER_ID_BO PRIMARY KEY (Order_ID),
);

---------------------------insert order table values--------------------------
INSERT INTO Book_Order
VALUES (1111,20000,50,'2019.03.13'),
       (1112,50000,100,'2019.08.11'),
	   (1113,10000,10,'2020.03.13'),
	   (1114,60000,30,'2019.05.13'),
	   (1115,20000,50,'2019.06.25'),
	   (1116,40000,40,'2019.08.23'),
	   (1117,20000,20,'2020.04.16'),
	   (1118,30000,50,'2019.03.19'),
	   (1119,10000,20,'2020.06.16'),
	   (1120,20000,50,'2020.06.14');

	   SELECT*FROM Book_Order;




----------------------------------------CREATE BRANCH ORDER TABLE-----------------------
CREATE TABLE Branch_Order
(
	Branch_ID char(10) NOT NULL,
	Order_ID char(10)NOT NULL,
	Bookcopy_ID char(10) NOT NULL,
	
	CONSTRAINT PK_BRANCH_O PRIMARY KEY (branch_ID,Order_ID,Bookcopy_ID),
);

-------------------------insert values Branch-Order table-----------------------------
INSERT INTO Branch_Order
VALUES (1,1111,1),
       (1,1111,10),
	   (2,1111,2),
	   (5,1113,3),
	   (7,1112,4),
	   (3,1115,5),
	   (1,1113,6),
	   (3,1111,7),
	   (8,1114,8),
	   (9,1111,9);

	   SELECT*FROM Branch_Order;





-------------------------------create borrower table--------------------------------
CREATE TABLE Borrower
(
	Borrower_ID char(10) NOT NULL,
	Borrower_Name varchar(50) NOT NULL,
	Borrower_Address varchar(100) NOT NULL,
	Gender varchar(10) NOT NULL,
	Designation varchar(10) NOT NULL,
	Email varchar(30) NOT NULL,
	Telephone_No char(15) NOT NULL,
	Branch_ID char(10) NOT NULL,
	CONSTRAINT PK_BORROWER_ID PRIMARY KEY (Borrower_ID),
	CONSTRAINT CK_GENDER CHECK (Gender in ('M' , 'F')),
	CONSTRAINT FK_BRANCHID_BORROWER FOREIGN KEY (Branch_ID) REFERENCES Branch (Branch_ID),
);

-------------------------------insert Borrower table values----------------------
INSERT INTO Borrower
VALUES (115,'Prabodhya Nimali','115/1,Colombo Road,Colombo','F','Student','pn@gmail.com',0114569789,1),
       (116,'kanchana Vitharana','116/1,Kottawa Road,Colombo','F','Student','kk@gmail.com',0112229789,1),
	   (117,'Kamal priyantha','117/1,Colombo Road,Nittabuwa','M','Teacher','Kp@gmail.com',0114569222,2),
	   (118,'Vihanga Malsra','118/2,Colombo Road,Rajagiriya','M','Student','Vm@gmail.com',0114564578,3),
	   (119,'Disni Meshala','119/3,Colombo Road,Maharagama','F','Student','Dm@gmail.com',0114569711,4),
	   (120,'Nilu kumara','120/1,Colombo Road,Horana','M','Student','Nk@gmail.com',0114566689,5),
	   (121,'deshini Nihara','120/5,Colombo Road,Ingiriya','F','Student','Dn@gmail.com',0111119789,6),
	   (122,'Supun Chathuranga','122/2,Colombo Road,kaluthara','M','Student','SC@gmail.com',0112229789,7),
	   (123,'Nimal kumara','123/1,Colombo Road,Colombo','M','Student','NK@gmail.com',0114333789,8),
	   (124,'Sumali Chethna','124/1,Colombo Road,Kottawa','F','Student','SSc@gmail.com',0114567779,9),
	   (125,'Krishan Prabodha','125/5,Colombo Road,maharagama','M','Student','KKP@gmail.com',0114555589,10);

       SELECT*FROM Borrower;



-----------------------------------create Borrower_Borrow table-------------------------------------

CREATE TABLE Burrower_Borrow
(
    Issue_NO char(100) NOT NULL,
    Branch_ID char(10) NOT NULL,
	BookcopyID char(10) NOT NULL,
	Borrower_ID char(10) NOT NULL,
	Burrow_Date date NOT NULL,
	Due_Date date NOT NULL,
	Return_Date date NULL,
	Due_Dates_Amount char(50) NULL,
	CONSTRAINT PK_ISSUENO PRIMARY KEY (Issue_NO),
	CONSTRAINT FK_BRANCHID_Burrower_Borrow FOREIGN KEY (Branch_ID) REFERENCES Branch (Branch_ID),
	CONSTRAINT FK_BOOKCOPYID_Burrower_Borrow FOREIGN KEY (BookCopyID) REFERENCES Book_Copy (Bookcopy_ID),
	CONSTRAINT FK_BORROWERID_NO_Burrower_Borrow FOREIGN KEY (Borrower_ID) REFERENCES Borrower (Borrower_ID),
);




-------------------------------insert Borrower_Borrow table values----------------------
INSERT INTO Burrower_Borrow
VALUES (11,1,1,115,'2020.02.13','2020.02.20','2020.02.25',5),
       (12,1,10,116,'2020.03.16','2020.03.23','2020.03.28',5),
	   (13,2,2,117,'2020.04.14','2020.04.21','2020.04.23',2),
	   (14,3,5,118,'2020.05.13','2020.05.20','2020.05.23',3),
	   (15,4,7,119,'2020.08.11','2020.08.18','2020.08.23',5),
	   (16,5,3,120,'2020.06.12','2020.06.19','2020.06.23',4),
	   (17,1,6,121,'2020.02.10','2020.02.17','2020.02.20',3),
	   (18,3,7,122,'2020.01.14','2020.01.21','2020.01.22',1),
	   (19,8,8,123,'2020.09.11','2020.09.18','2020.09.21',3),
	   (20,9,9,123,'2020.06.19','2020.06.26','2020.06.27',1),
	   (21,1,10,122,'2020.05.19','2020.05.26','2020.05.26',null),
	   (22,5,11,121,'2020.04.19','2020.04.26','2020.04.25',null),
	   (23,3,12,122,'2020.05.19','2020.05.26','2020.05.26',null),
	   (24,4,13,120,'2020.03.19','2020.03.26','2020.03.25',null),
	   (25,6,14,116,'2020.05.19','2020.05.26','2020.05.26',null),
	   (26,7,15,117,'2020.05.19','2020.05.26',null,null),
	   (27,5,16,122,'2020.08.19','2020.08.26',null,null),
	   (28,9,17,123,'2020.05.19','2020.05.26',null,null),
	   (29,5,18,120,'2020.05.19','2020.05.26',null,null),
	   (30,3,19,122,'2020.01.19','2020.01.26',null,null);
	   


	   SELECT*FROM Burrower_Borrow;



-------------------------------------------- Create Fine table--------------------------
CREATE TABLE Fine
(
    Fine_ID char(10) NOT NULL,
    Issue_NO char(100) NOT NULL, 
	Cost_Per_Day smallmoney NOT NULL,
	Fine smallmoney NOT NULL,
	CONSTRAINT PK_FINEID PRIMARY KEY (Fine_ID),
	CONSTRAINT FK_ISSUNO_FINESS FOREIGN KEY (Issue_NO) REFERENCES Burrower_Borrow (Issue_NO),
);

-----------------------------------------INSERT FINE TABLE VALUES--------------------------------
INSERT INTO Fine
VALUES (3001,11,10,130),
	    (3002,12,10,120),
		(3003,13,10,130),
		(3004,14,10,110),
		(3005,15,10,110),
		(3006,16,10,110),
		(3007,17,10,90),
		(3008,18,10,100),
		(3009,19,10,90);
		--(3010,20,10,10);

  SELECT * FROM Fine;




