Create database Project
Use project

Create table Role
(
Id int Primary key,
Role_name varchar(100),
)
Insert into Role values (1, 'Role1'),(2, 'Role2'),(3, 'Role3')

Select * from role

------------------------------------------------------------------------------

Create table User_Account
(	
 Id int Primary key,
 User_Name varchar(100),
 Email varchar(254),
 password varchar(200),
 password_salt varchar(50),
 password_hash_algorithm varchar(50),
)
Insert into User_Account values ( 1, 'User1', 'a@gmail.com','a', 'a1' ,'#a#' ),
( 2, 'User2', 'b@gmail.com','b', 'b1' ,'#b#' ),
( 3, 'User3', 'c@gmail.com','c', 'c1' ,'#c#' )

Select * from User_Account

--------------------------------------------------------------------------------------------
Create Table User_has_Role
(
Id int Primary key,
Role_start_time datetime,
Role_end_time datetime ,
User_account_id int Foreign key references User_Account(Id),
Role_Id int Foreign Key References Role(Id)
)

Insert into User_has_Role values ( 1, '2020-01-01 10:10:10',' 2020-01-01 15:10:10', 1, 1),
( 2, '2020-01-01 13:10:10 ',' 2020-01-01 18:10:10', 2, 2),
( 3, '2020-01-01 18:10:10 ',' 2020-01-01 23:10:10', 3, 3)

Select * from User_has_Role

-------------------------------------------------------------------------------------------

Create table Status
(
Id int Primary key,
Stauts_name varchar(100),
Is_User_working bit
)
Insert into Status values (1, 'Status1', 1),(2, 'Status2', 0),(3, 'Status3', 1)
Select * from Status

--------------------------------------------------------------------------------------------------
Create Table User_has_Status
(
Id int Primary key,
Status_start_time datetime,
Status_end_time datetime ,
User_account_id int Foreign key references User_Account(Id),
Status_Id int Foreign Key References Status(Id)
)

Insert into User_has_status values ( 1, '2020-01-01 10:10:10',' 2020-01-01 15:10:10', 1, 1),
( 2, '2020-01-01 13:10:10 ',' 2020-01-01 18:10:10', 2, 2),
( 3, '2020-01-01 18:10:10 ',' 2020-01-01 23:10:10', 3, 3)

Select * from User_has_Status


----------------------------------------------------
-----------------------------------------------------
-----------------------------------------------------

--Table 1
Delete from Role

Alter table User_has_role 
Drop Constraint FK__User_has___Role___412EB0B6
--Now,
Delete from Role

--Table 2
Delete from User_has_Role

--Table 3
Delete from User_Account

Alter table User_has_Status
Drop constraint FK__User_has___User___4AB81AF0
--Now,
Delete from User_Account

--Table 4
Delete from Status 

Alter table User_has_Status
Drop constraint FK__User_has___Statu__4BAC3F29
--Now,
Delete from Status 

--Table 5 
Delete from User_has_Status