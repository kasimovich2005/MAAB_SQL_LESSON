create database lesson11
use lesson11

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50)
);



-- Customers (10 rows)
INSERT INTO Customers VALUES 
(1, 'Alice'), (2, 'Bob'), (3, 'Charlie'), (4, 'David'), (5, 'Eva'),
(6, 'Frank'), (7, 'Grace'), (8, 'Hannah'), (9, 'Ian'), (10, 'Jane');

-- Orders (10 rows)
INSERT INTO Orders VALUES 
(101, 1, '2024-01-01'), (102, 1, '2024-02-15'),
(103, 2, '2024-03-10'), (104, 2, '2024-04-20'),
(105, 3, '2024-05-05'), (106, 4, '2024-06-10'),
(107, 5, '2024-07-15'), (108, 6, '2024-08-20'),
(109, 7, '2024-09-25'), (110, 8, '2024-10-30');

-- Products (10 rows)
INSERT INTO Products VALUES 
(1, 'Laptop', 'Electronics'), 
(2, 'Mouse', 'Electronics'),
(3, 'Book', 'Stationery'),
(4, 'Pen', 'Stationery'),
(5, 'Tablet', 'Electronics'),
(6, 'Notebook', 'Stationery'),
(7, 'Charger', 'Electronics'),
(8, 'Backpack', 'Accessories'),
(9, 'Headphones', 'Electronics'),
(10, 'Desk Lamp', 'Furniture');

-- OrderDetails (10 rows)
INSERT INTO OrderDetails VALUES
(11,101,3,5,15.00),
(1, 101, 1, 2, 10.00), 
(2, 101, 2, 1, 20.00),
(3, 102, 1, 3, 10.00), 
(4, 103, 3, 5, 15.00),
(5, 104, 1, 1, 10.00), 
(6, 104, 2, 2, 20.00),
(7, 105, 4, 1, 2.00), 
(8, 106, 5, 1, 200.00),
(9, 107, 6, 3, 5.00), 
(10, 108, 7, 1, 15.00);


select * from Customers
select * from Products
select * from OrderDetails
select * from Orders


select customername,
count(distinct Category) as dis_category,max(prod.Category) as category 
from customers as cust
JOIN Orders as Ord
on cust.CustomerID=  ORD.CustomerID
join OrderDetails AS ordd
on ord.OrderID=ordd.OrderID
JOIN Products as Prod
on prod.ProductID=ordd.ProductID
group by customername
having count(distinct Category)=1 and max(prod.Category)='Electronics'

 



 CREATE TABLE Family (
    parent_name VARCHAR(50),
    child_name VARCHAR(50),
    gender VARCHAR(10)
);
GO
INSERT INTO Family (parent_name, child_name, gender) VALUES
('Otabek Karimov', 'Jasur', 'Male'),
('Otabek Karimov', 'Dilnoza', 'Female'),
('Lola Tursunova', 'Aziza', 'Female'),
('Lola Tursunova', 'Shahnoza', 'Female'),
('Javlon Berdiev', 'Diyor', 'Male'),
('Javlon Berdiev', 'Sayyora', 'Female'),
('Zuhra Yo‘ldosheva', 'Olim', 'Male'),
('Kamoliddin Ortiqov', 'Malika', 'Female'),
('Kamoliddin Ortiqov', 'Akmal', 'Male'),
('Zaynab Usmonova', 'Shaxzoda', 'Female');


select * from Family

---  ham qiz ham o'g'il farzandi bo'lgan ota onalarning to'liq ma'lumotlari chiqishi lozim

----- oson usuli
SELECT fam1.parent_name ,fam1.child_name
FROM Family fam1
JOIN Family fam2 ON fam1.parent_name = fam2.parent_name
WHERE fam1.gender = 'Male' and fam2.gender = 'Female';

---murakkab 

select fam1.* from Family as fam1
join family as fam2
on fam1.parent_name=fam2.parent_name 
and fam1.gender<>fam2.gender

-- fam1.gender='Female' and fam2.gender='Male'








------ ikkinchi topshiriq



create table family_ (id int,name varchar(25),parentid int)
insert into family_ values (1,'Grandfather',NULL),(2,'Father',1),
(3,'Uncle',1),(4,'Me',2),(5,'My Son',4),(6,'Cousin',3),(7,'Cousin son',6)

select * from family_

----- faqat father 

SELECT  child.id, child.name AS person, parent.name AS father
FROM  family_ child
LEFT JOIN  family_ parent ON child.parentid = parent.id;

---- ham father ham grantfather 
select child.name as child,parent.name as parent,grand.name as grandfather from family_ as child
LEFT JOIN family_ as parent
on child.parentid=parent.id
LEFT JOIN family_ as grand
on parent.parentid=grand.id




CREATE TABLE Department (
    Id INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50),
    DepartmentHead VARCHAR(50)
);

CREATE TABLE Employee (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Salary INT,
    DepartmentId INT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Department(Id)
);



INSERT INTO Department (Id, DepartmentName, Location, DepartmentHead) VALUES
(1, 'IT', 'London', 'Rick'),
(2, 'Payroll', 'Delhi', 'Ron'),
(3, 'HR', 'New York', 'Christie'),
(4, 'Other Department', 'Sydney', 'Cindrella');


INSERT INTO Employee (Id, Name, Gender, Salary, DepartmentId) VALUES
(1, 'Tom', 'Male', 4000, 1),
(2, 'Pam', 'Female', 3000, 3),
(3, 'John', 'Male', 3500, 1),
(4, 'Sam', 'Male', 4500, 2),
(5, 'Todd', 'Male', 2800, 2),
(6, 'Ben', 'Male', 7000, 1),
(7, 'Sara', 'Female', 4800, 3),
(8, 'Valarie', 'Female', 5500, 1),
(9, 'James', 'Male', 6500, NULL),
(10, 'Russell', 'Male', 8800, NULL);

select * from Department
select * from Employee



-------  CROS APPLY AND OUTHER APPLY



create table recipe (foodname varchar(20),ingredient_id int,ingredient varchar(20))
create table fridge (ingredient_id int, ingredientname varchar(20))

insert into recipe values 
('HOTDOG',1,'SAUSAGE'),('HOTDOG',2,'BREAD'),
('PILOV',3,'RICE'),('PILOV',4,'CARROT'),('PILOV',5,'MEAT'),
('PIZZA',6,'FLOUR'),('PIZZA',7,'TOMATO'),('PIZZA',8,'CHEESE')

insert into fridge values (1,'SAUSAGE'),(2,'BREAD'),(3,'RICE'),(4,'CARROT'),
(6,'FLOUR')

select * from recipe
select * from fridge

---- Muzlatgichdagi mahsulotlardan foydalanib qanaqa ovqat tayyorlasa buladi

SELECT r.foodname
FROM recipe as r
GROUP BY r.foodname
HAVING COUNT(*) = (
    SELECT COUNT(*) 
    FROM recipe r2 
    INNER JOIN fridge f ON r2.ingredient_id = f.ingredient_id
    WHERE r2.foodname = r.foodname
);


select recipe.foodname, count(recipe.ingredient) as cnt_ingr_for_each_food,
COUNT(fridge.ingredientname) as cnt_ing_in_my_fridge
from recipe
LEFT JOIN fridge
on recipe.ingredient_id = fridge.ingredient_id
group by recipe.foodname
having COUNT(recipe.ingredient) = COUNT(fridge.ingredientname)





