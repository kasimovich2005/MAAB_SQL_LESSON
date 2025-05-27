create database lesson10
use lesson10


CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    JoinDate DATE
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50)
);

CREATE TABLE Borrowings (
    BorrowID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);



-- Members
INSERT INTO Members VALUES
(1, 'Alice', 'Walker', '2022-01-10'),
(2, 'Bob', 'Marley', '2022-03-15'),
(3, 'Clara', 'Oswald', '2023-06-01');

-- Books
INSERT INTO Books VALUES
(1, '1984', 'George Orwell', 'Dystopian'),
(2, 'The Alchemist', 'Paulo Coelho', 'Fiction'),
(3, 'To Kill a Mockingbird', 'Harper Lee', 'Classic');

-- Borrowings
INSERT INTO Borrowings VALUES
(1, 1, 1, '2023-01-01', '2023-01-15'),
(2, 2, 2, '2023-02-10', NULL),
(3, 3, 3, '2023-03-05', '2023-03-20');



select * from Members
select * from Books
select * from Borrowings

----1usul
select Mem.FirstName,mem.LastName,books.Title,
books.Author, Bor.BorrowDate,
case when bor.ReturnDate is null then 'Not returned'
   else 'Returned' end as ReturnStatus
from Members as Mem
INNER JOIN Borrowings as Bor
on mem.MemberID=Bor.MemberID
INNER JOIN Books
on Bor.BookID=books.BookID

--- 2usul
SELECT 
    m.FirstName,
    m.LastName,
    b.Title AS BookTitle,
    b.Author AS BookAuthor,
    br.BorrowDate,
    CASE 
        WHEN br.ReturnDate IS NULL THEN 'Not Returned'
        ELSE 'Returned'
    END AS ReturnStatus
FROM Borrowings br
JOIN Members m ON br.MemberID = m.MemberID
JOIN Books b ON br.BookID = b.BookID;


 










---		LEFT OUTER JOINS bn RIGHT OUTER JOIN keyin  FULL OUTER JOIN



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


----- faqat ma'lumotlari tuliq kirilgan odamlarni ma'lumotlarini chiqarish

select * from Employee as Emp
INNER JOIN Department as Dep
on emp.DepartmentId=Dep.Id

---- hamma ishchilarni chiqarish ma'lumoti yug'iga NULL quyib chiqaradi

select * from Employee as Emp
LEFT  JOIN Department as Dep
on emp.DepartmentId=Dep.Id






create table t_1 (
	NUM varchar(max)
)

create table t_2 (
	NUM varchar(max)
)


insert into t_1  values
(1),(1),(2), (3), (3) , (4), (5)

insert into t_2 values
(1),(2), (2), (5), (6)


select * from T_1  
INNER JOIN t_2  on t_2.NUM=t_1.NUM


select * from T_1
LEFT JOIN t_2  on t_2.NUM=t_1.NUM








CREATE TABLE Employee_ (
    EmplyId INT PRIMARY KEY,
    Name VARCHAR(50),
    ManagerId INT,
    FOREIGN KEY (ManagerId) REFERENCES Employee_(EmplyId)
);

-- Insert data
INSERT INTO Employee_ (EmplyId, Name, ManagerId) VALUES (1, 'Alice', NULL);
INSERT INTO Employee_ (EmplyId, Name, ManagerId) VALUES (2, 'Bob', 1);
INSERT INTO Employee_ (EmplyId, Name, ManagerId) VALUES (3, 'Charlie', 1);
INSERT INTO Employee_ (EmplyId, Name, ManagerId) VALUES (4, 'David', 2);
INSERT INTO Employee_ (EmplyId, Name, ManagerId) VALUES (5, 'Emma', 2);
INSERT INTO Employee_ (EmplyId, Name, ManagerId) VALUES (6, 'Frank', 3);


SELECT e.EmplyId, e.name as name, m.name as	managerName
from Employee_ e 
left join  Employee_ m  on e.ManagerId=m.EmplyId






select * from Employee

select * from Department

---- departamanentdagi hamma ma'lumotni chiqaradi

select * from Employee as Emp
Right JOIN Department as Dep
on emp.DepartmentId=Dep.Id


-- ikkita jadvaldagi ma'lumotlarni chiqaradi

select * from Employee as Emp
Full JOIN Department as Dep
on emp.DepartmentId=Dep.Id






create table OnlineSales
(Product varchar(30),
Price int,
qty int)

create table StoreSales
(product varchar(30),price int,qty int)

insert into onlinesales values ('Iphone',1000,3),('samsung',1000,2),('airpod',1000,3)
insert into storesales values ('Iphone',1000,2),('ipad',1000,4),('charger',100,2)


select * from OnlineSales

select * from storesales


SELECT
    ISNULL(online.product, store.product) AS products,
    ISNULL(online.price * online.qty, 0) AS Online,
    ISNULL(store.price * store.qty, 0) AS Store,
    ISNULL(online.price * online.qty, 0) + ISNULL(store.price * store.qty, 0) AS Total
FROM OnlineSales AS online
FULL JOIN StoreSales AS store ON online.product = store.product
ORDER BY products;








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
select * from OrderDetails
select * from Orders
select * from Products


SELECT Distinct  c.CustomerName, p.ProductName
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Laptop';





CREATE TABLE Numbers (
    Number INT
);

INSERT INTO Numbers (Number)
VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9);


select * from numbers

SELECT (a.Number * 10 + b.Number) AS Number
FROM Numbers a
CROSS JOIN Numbers b
WHERE (a.Number * 10 + b.Number) BETWEEN 1 AND 101
ORDER BY Number;


