-- decimal (yaxlitlab yozish uchun

	declare @son decimal(6,4)=12.18
	select @son

--float qanaqa yozilsa shunaqa yozib beradi

	declare @num float=12.987
	select @num


-----------         08.05.2025  -----------------------

create database class3
use  class3


-- 1. Create the table
CREATE TABLE [Products] (
    ProductID     INT           PRIMARY KEY,
    ProductName   VARCHAR(100)  NOT NULL,
    Category      VARCHAR(50)   NOT NULL,
    Price         FLOAT         NOT NULL,
    InStock       VARCHAR(3)    NOT NULL  -- values 'Yes' or 'No'
);
GO

-- 2. Insert sample rows
INSERT INTO [Products] (ProductID, ProductName, Category, Price, InStock) VALUES
 (101, 'Mouse',      'Electronics', 19.99, 'Yes'),
 (102, 'Keyboard',   'Electronics', 49.50, 'Yes'),
 (103, 'Notebook',   'Stationery',    3.75, 'Yes'),
 (104, 'Desk Lamp',  'Home',         22.00, 'No'),
 (105, 'Water Bottle','Outdoor',     10.00, 'Yes'),
 (106, 'Charger',    'Electronics', 25.00, 'No'),
 (107, 'Backpack',   'Accessories', 55.00, 'Yes'),
 (108, 'Pen',        'Stationery',    1.20, 'Yes'),
 (109, 'Headphones', 'Electronics', 75.00, 'Yes'),
 (110, 'Stapler',    'Office',        5.50, 'No');
GO

-- Telegramdagi 1chi topshiriq

ALTER TABLE Products
ALTER COLUMN Price DECIMAL(10,2)

-- 2-topshiriq

ALTER TABLE Products
DROP COLUMN InStock

-- 3-topshiriq
exec sp_rename 'Products.Productname', 'Name', 'column'

--4-topshiriq

update products
set price=price*1.10
where category='Electronics'

--5-topshiriq

delete from products
where price>50


select * from Products



CREATE TABLE [employees] (
    EmployeeID     INT,
    FirstName   VARCHAR(100),  
    LastName      VARCHAR(50),
    Email        VARCHAR(50),   
    Salary       VARCHAR(50)   
)



bulk insert [class3].[dbo].[employees]
from 'C:\Users\user\Documents\SQL Server Management Studio\lesson-3\darsda\employees_.csv'
with(
	firstrow = 2,
	fieldterminator = ',',
	rowterminator = '\n'
	)

select * from employees




create table teachers(
	id int primary key,
	name varchar(max) not null,
	email varchar(max),
	JSHIR int unique
)
go

select * from teachers

insert into teachers(id, name, email, JSHIR) values
	(1, 'Jahongir', Null , '504090'),
	(2, 'Olim', Null , '505040')


create table orders(
	OrderID  INT IDENTITY(1,1)  PRIMARY KEY,
	CustomerName  VARCHAR(100)  NOT NULL,
	OrderNumber  CHAR(8)  UNIQUE,
	Quantity  INT  CHECK (Quantity > 0)
)

INSERT INTO dbo.Orders (CustomerName,OrderNumber, Quantity) 
VALUES ('Sardor', 'D0000004', 3); -- customer name qushildi

INSERT INTO dbo.Orders (CustomerName, OrderNumber, Quantity) 
VALUES ('David', 'A0000001', 2) -- bunda yuq

INSERT INTO dbo.Orders (CustomerName, OrderNumber, Quantity) 
VALUES ('Eva', 'E0000005', 5)  -- quantity 0dan kotta

    
INSERT INTO dbo.Orders ( CustomerName, OrderNumber, Quantity) 
VALUES ( 'Grace', 'G0000007', 7) -- identity yoqilgani uchun


select * from orders
