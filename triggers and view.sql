USE Library_Managment_System;

-----------CREATE TRIGGER BRANCH(INSERT)---------------------------
        CREATE TRIGGER Branch_InsertValues
		ON Branch
		AFTER INSERT
		AS 
		BEGIN
	      SELECT*FROM inserted
	    END
		SELECT * FROM Branch
		WHERE Branch_ID=11

		INSERT INTO Branch VALUES (11,'Mathugama','No.10,Galle Road,Mathugama.')
	    SELECT*FROM Branch;
		

------------------------CREATE TRIGGER BRANCH(UPDATE)-------
	    CREATE TRIGGER Branch_Update
        ON Branch
        AFTER UPDATE
        AS
		BEGIN
        SELECT * FROM inserted
		END

		UPDATE Branch SET Branch_Name ='Galle', Branch_Address= 'No.11,Mathara Road,Galle.'WHERE Branch_ID =11
		SELECT*FROM Branch;

----------------------------------create delete branch trigger---------------

CREATE TRIGGER Branch_Delete
        ON Branch
        AFTER DELETE
        AS
		BEGIN
        SELECT * FROM deleted
		END

		DELETE  FROM Branch  WHERE Branch_ID in (11)
		SELECT*FROM Branch;

-------------------Create View Branch table------------------------
CREATE VIEW View_Branch
AS
SELECT *
FROM Branch
--WHERE Branch_ID = 5

SELECT * FROM View_Branch

-------------------------------CREATE TRIGGER STAFF(INSERT)----------------
    CREATE TRIGGER Staff_Insert
		ON Staff
		AFTER INSERT
		AS 
		BEGIN
	      SELECT*FROM inserted
	    END
		

		INSERT INTO Staff VALUES (12,'L.Udaya Kumara ',3,'Librarian')
		INSERT INTO Staff VALUES (13,'Y.Kumara Liyanapathirana ',4,'Librarian')
	    SELECT*FROM Staff;

----------------------------------create update staff trigger----------------------
CREATE TRIGGER Staff_Update
        ON Staff
        AFTER UPDATE
        AS
		BEGIN
        SELECT * FROM inserted
		END

		UPDATE Staff SET  Branch_ID= 11, Designation='Admin' WHERE Stfu_ID =12
		SELECT*FROM Staff;

-------------------------------Create delete staff trigger---------------
CREATE TRIGGER Staff_Delete
        ON Staff
        AFTER DELETE
        AS
		BEGIN
        SELECT * FROM deleted
		END

		DELETE  FROM Staff  WHERE Stfu_ID in (12,13)
		SELECT*FROM Staff;

-------------------Create View staff table------------------------
CREATE VIEW View_Staff
AS
SELECT *
FROM Staff
--WHERE Stfu_ID = 12

SELECT * FROM View_Staff

---------------------------CREATE VIEW LOCATION TABLE---------------
CREATE VIEW View_Location
AS
SELECT *
FROM Location
--WHERE Location_ID = 110

SELECT * FROM View_Location

---------------------------CREATE VIEW CATEGORY TABLE---------------
CREATE VIEW View_Category
AS
SELECT *
FROM Category
--WHERE Cat_ID = 0008

SELECT * FROM View_Category


-------------------Create View from book table------------------------
CREATE VIEW View_Book
AS
SELECT *
FROM Book
--WHERE Book_ID = 115

SELECT * FROM View_Book

---------------------------CREATE VIEW AUTHOR TABLE---------------
CREATE VIEW View_Author
AS
SELECT *
FROM Author
--WHERE Author_ID = 10

SELECT * FROM View_Author


---------------------------CREATE VIEW BOOKCOPY TABLE---------------
CREATE VIEW View_Book_Copy
AS
SELECT *
FROM Book_Copy
--WHERE Bookcopy_ID = 15

SELECT * FROM View_Book_Copy

---------------------------CREATE VIEW BOOK_ORDER TABLE---------------
CREATE VIEW View_Book_Order
AS
SELECT *
FROM Book_Order
--WHERE Order_ID = 1111

SELECT * FROM View_Book_Order


---------------------------CREATE VIEW BRANCH_ORDER TABLE---------------
CREATE VIEW View_Branch_Order
AS
SELECT *
FROM Branch_Order
--WHERE Order_ID = 1114

SELECT * FROM View_Branch_Order
	   

-------------------Create View from Borrower table------------------------
CREATE VIEW View_Borrower
AS
SELECT *
FROM Borrower
--WHERE Borrower_ID = 125

SELECT * FROM View_Borrower



-------------------Create View Burrower_Borrow table------------------------
CREATE VIEW View_Burrower_Borrow
AS
SELECT *
FROM Burrower_Borrow
--WHERE Issue_NO = 30

SELECT * FROM View_Burrower_Borrow

--------------------------create insert trigger------------
	CREATE TRIGGER Burrower_Borrow_Insert_Value
	ON Burrower_Borrow
	INSTEAD OF INSERT
	AS
	BEGIN
	  SELECT*FROM inserted
	END

	INSERT INTO Burrower_Borrow VALUES (30,3,19,122,'2020.11.10','2020.11.15',null,null)
	SELECT*FROM Burrower_Borrow;

	INSERT INTO Burrower_Borrow VALUES (31,3,19,122,'2020.11.09','2020.11.14',null,null)
	SELECT*FROM Burrower_Borrow;

-------------------Create trigger(UPDATE)-----------------
	    CREATE TRIGGER Burrower_Borrow_Update
        ON Burrower_Borrow
        AFTER UPDATE
        AS
		BEGIN
        SELECT * FROM inserted
		END

--		UPDATE Burrower_Borrow SET Return_Date ='2020.05.28', Due_Dates_Amount=2 WHERE Issue_NO =26
--		SELECT*FROM Burrower_Borrow;

--		UPDATE Burrower_Borrow SET Burrow_Date='2020.11.15',Due_Date='2020.11.20', Return_Date =null, Due_Dates_Amount=null WHERE Issue_NO =29
--		SELECT*FROM Burrower_Borrow;



----		 UPDATE Burrower_Borrow SET Burrow_Date='2020.11.01',Due_Date='2020.11.07', Return_Date ='2020.11.20', Due_Dates_Amount=13 WHERE Issue_NO =11
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.02',Due_Date='2020.11.08', Return_Date ='2020.11.20', Due_Dates_Amount=12 WHERE Issue_NO =12
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.01',Due_Date='2020.11.07', Return_Date ='2020.11.20', Due_Dates_Amount=13 WHERE Issue_NO =13
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.03',Due_Date='2020.11.09', Return_Date ='2020.11.20', Due_Dates_Amount=11 WHERE Issue_NO =14
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.04',Due_Date='2020.11.10', Return_Date ='2020.11.20', Due_Dates_Amount=10 WHERE Issue_NO =15
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.03',Due_Date='2020.11.09', Return_Date ='2020.11.20', Due_Dates_Amount=11 WHERE Issue_NO =16
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.05',Due_Date='2020.11.11', Return_Date ='2020.11.20', Due_Dates_Amount=9 WHERE Issue_NO =17
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.04',Due_Date='2020.11.10', Return_Date ='2020.11.20', Due_Dates_Amount=10 WHERE Issue_NO =18
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.05',Due_Date='2020.11.11', Return_Date ='2020.11.20', Due_Dates_Amount=9 WHERE Issue_NO =19
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.06',Due_Date='2020.11.12', Return_Date ='2020.11.20', Due_Dates_Amount=8 WHERE Issue_NO =20
----		SELECT*FROM Burrower_Borrow;


----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.15',Due_Date='2020.11.20', Return_Date =null, Due_Dates_Amount=null WHERE Issue_NO =21
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.14',Due_Date='2020.11.20', Return_Date =null, Due_Dates_Amount=null WHERE Issue_NO =22
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.12',Due_Date='2020.11.19', Return_Date =null, Due_Dates_Amount=null WHERE Issue_NO =23
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.15',Due_Date='2020.11.22', Return_Date =null, Due_Dates_Amount=null WHERE Issue_NO =24
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.11',Due_Date='2020.11.25', Return_Date =null, Due_Dates_Amount=null WHERE Issue_NO =25
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.15',Due_Date='2020.11.25', Return_Date =null, Due_Dates_Amount=null WHERE Issue_NO =26
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.10',Due_Date='2020.11.20', Return_Date =null, Due_Dates_Amount=null WHERE Issue_NO =27
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.09',Due_Date='2020.11.20', Return_Date =null, Due_Dates_Amount=null WHERE Issue_NO =28
----		SELECT*FROM Burrower_Borrow;

----UPDATE Burrower_Borrow SET Burrow_Date='2020.11.14',Due_Date='2020.11.20', Return_Date =null, Due_Dates_Amount=null WHERE Issue_NO =29
----		SELECT*FROM Burrower_Borrow;

		








------------------------create delete values trigger------------------
 
 CREATE TRIGGER Burrower_Borrow_Delete
        ON Burrower_Borrow
        AFTER DELETE
        AS
		BEGIN
        SELECT * FROM deleted
		END

		DELETE  FROM Burrower_Borrow  WHERE Issue_NO in (30)
		SELECT*FROM Burrower_Borrow;
		

---------------------------CREATE VIEW FINE TABLE---------------
CREATE VIEW View_Fine
AS
SELECT *
FROM Fine
--WHERE Fine_ID = 3003

SELECT * FROM View_Fine

----------------------------CREATE VIEW FOR CALCULATE DUEDATE AMOUNT(borrower_borrow)----------------
CREATE VIEW View_Burrower_Borrow_Duedate_amountcalculate
AS
SELECT DATEDIFF(DD,Due_Date,GETDATE()) AS Due_Dates_Amount,Issue_NO,Borrower_ID
FROM Burrower_Borrow
WHERE Issue_NO IN (11)

SELECT * FROM View_Burrower_Borrow_Duedate_amountcalculate


-----------------------------------CREATE  FINE TABLE OUTER  JOINNER------------------------

SELECT * FROM View_Burrower_Borrow_Duedate_amountcalculate

SELECT Borrower_ID,Due_Dates_Amount,Cost_Per_Day, Fine
FROM Fine
FULL OUTER JOIN Burrower_Borrow  ON Fine.Issue_NO= Burrower_Borrow.Issue_NO



--------------------------create insert trigger for fine table------------
	CREATE TRIGGER Fine_Insert_Value
	ON Fine
	INSTEAD OF INSERT
	AS
	BEGIN
	  SELECT*FROM inserted
	END

	INSERT INTO Fine VALUES (3010,20,10,10);
	SELECT*FROM Fine;



--------------------------Create delete trigger for fine table---------------------

CREATE TRIGGER Fine_Delete_Values
        ON Fine
        AFTER DELETE
        AS
		BEGIN
        SELECT * FROM deleted
		END

		DELETE  FROM Fine WHERE Fine_ID in (3010)
		SELECT*FROM Fine;


------------------------Fine calculate-----------------

SELECT B.Borrower_ID,B.Due_Dates_Amount,F.Cost_Per_Day,
B.Due_Dates_Amount*F.Cost_Per_Day AS Fine FROM
Burrower_Borrow B  JOIN Fine F ON
B.Issue_NO = F.Issue_NO

SELECT * FROM View_Burrower_Borrow_Duedate_amountcalculate


----------------------------------CREATE A FUNCTION FIND BORROWER NAME--------------------
CREATE FUNCTION FINE_BORROWER_NAME (@ID INT)
RETURNS varchar(50)
AS
BEGIN
	RETURN (
	SELECT Borrower_Name
	FROM Borrower
	WHERE Borrower_ID = @ID)
	
END

SELECT dbo.FINE_BORROWER_NAME(115)


---------------------CREATE FUNCTION INNER TABLE VALUED FOR BORROWER TABLE---------------------------

CREATE FUNCTION FN_GET_BORROWER_DETAILS()
RETURNS TABLE
AS
RETURN (SELECT Borrower_ID,Borrower_Name,Email,Branch_ID FROM Borrower)

SELECT*FROM dbo.FN_GET_BORROWER_DETAILS()


---------------------------------CREATE FUNCTION MULTI-STATMENT TABLE VALUED FUNCTIONS---------------------------

CREATE FUNCTION FN_GET_BORROWER_BORRROW_DETAILS()
RETURNS @TABLE TABLE (Issue_NO char(100),Branch_ID char(10),BookcopyID char(10),Borrower_ID char(10))
AS
BEGIN 
	INSERT INTO @TABLE
	SELECT Issue_NO,Branch_ID,BookcopyID,Borrower_ID FROM Burrower_Borrow
	RETURN
END

SELECT*FROM dbo.FN_GET_BORROWER_BORRROW_DETAILS()



--------------------------------CREATE A PROCEDR FOR INSERT BRANCH--------------------------
CREATE PROC INSERT_BRANCH(@branchid char(10), @branchname varchar(50),@branchaddress varchar(100))
AS
BEGIN
	INSERT INTO Branch VALUES (@branchid,@branchname,@branchaddress)
END

EXEC INSERT_BRANCH 15,'Dikwalla', 'No.1,Colombo Road,Colombo1.'
GO

SELECT*FROM Branch


-----------------------create date function-------------------
SELECT DATEDIFF(DD,Due_Date,GETDATE()) AS Due_Dates_Amount,Issue_NO,Borrower_ID
FROM Burrower_Borrow
WHERE Issue_NO IN (11)



SELECT * FROM View_Burrower_Borrow_Duedate_amountcalculate
SELECT*FROM dbo.FN_GET_BORROWER_DETAILS()


------------------------------- System Stored Procedures(print some text)-------------------------

CREATE PROCEDURE SayPayYourFind
AS
BEGIN
	DECLARE @NAME1 varchar(50), @NAME2 varchar(50),@NAME3 varchar(50)
	PRINT 'You Need To Pay A Fine'
	SET @NAME1 = 'Prabodhya Nimali'
	SET @NAME2 = 'kanchana Vitharana'
	SET @NAME3 = 'Kamal priyantha'
	PRINT @NAME1
	PRINT @NAME2
	PRINT @NAME3

	
END;

EXEC SayPayYourFind


-------------------------------CREATE SYSTEM STORED PROCEDURES-------------------------------
CREATE PROCEDURE LiFindStaffCount
@branchid char(10)
AS
BEGIN
DECLARE @StaffCount char
SELECT @StaffCount = COUNT(*)
FROM Staff
WHERE Branch_ID= @branchid
RETURN @StaffCount
END

DECLARE @sffCount int
EXEC @sffCount = LiFindStaffCount 1
SELECT @sffCount
