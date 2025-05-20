create database lesson4
use lesson2

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100) UNIQUE NOT NULL
)

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100) NOT NULL,
    Age INT CHECK (Age >= 18),
    Salary DECIMAL(10,2) CHECK (Salary >= 300),
    Email VARCHAR(100) UNIQUE,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
)
INSERT INTO Departments (DeptID, DeptName)
VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT');


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (104, 'Sardorbek', 22, 900.00, 'david@example.com', 1); -- Not null bergandan keyin Null berilgan 


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (105, 'Eve', 26, 1100.00, 'alice@example.com', 2)


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (106, 'Frank', 19, 950.00, 'frank@example.com', 3);   -- YOSHI KOTTA BULISHI KERAK


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (107, 'Grace', 29, 500.00, 'grace@example.com', 1); -- oylik 


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (108, 'Henry', 32, 1300.00, 'henry@example.com', 2); -- departament id


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (101, 'Ivy', 27, 1050.00, 'ivy@example.com', 2);



----------------------lesson-4 10.05.2025 ---------------


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT,
    Description VARCHAR(255)
);

INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (1, 'Laptop', 'Electronics', 1113.62, 71, 'Detachable keyboard');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (2, 'Smartphone', 'Electronics', 820.32, 16, '15-inch screen');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (3, 'Chair', 'Furniture', 760.51, 45, 'Ergonomic office chair');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (4, 'Desk', 'Furniture', 819.69, 20, 'Wooden with drawers');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (5, 'Book', 'Stationery', 243.69, 142, 'Hardcover textbook');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (6, 'Pen', 'Stationery', 1.25, 500, 'Blue ink ballpoint');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (7, 'Monitor', 'Electronics', 299.99, 30, '24-inch LED');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (8, 'Tablet', 'Electronics', 420.00, 28, '10-inch screen');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (9, 'Sofa', 'Furniture', 650.00, 12, '3-seater fabric');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (10, 'Notebook', 'Stationery', 2.99, 300, 'A4 ruled pages');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (11, 'Mouse', 'Electronics', 25.50, 200, 'Wireless optical');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (12, 'Keyboard', 'Electronics', 40.00, 180, 'Mechanical, backlit');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (13, 'Lamp', 'Electronics', 19.99, 80, 'LED desk lamp');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (14, 'Router', 'Electronics', 59.99, 75, 'Dual-band Wi-Fi');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (15, 'Camera', 'Electronics', 299.00, 40, 'DSLR 18MP');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (16, 'Speaker', 'Electronics', 45.00, 60, 'Bluetooth enabled');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (17, 'Cabinet', 'Furniture', 120.00, 25, '2-door wooden');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (18, 'Whiteboard', 'Furniture', 65.00, 15, 'Magnetic surface');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (19, 'Stapler', 'Stationery', 3.50, 100, 'Mini stapler');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (20, 'Ruler', 'Stationery', 0.99, 250, '30 cm plastic');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (21, 'Printer', 'Electronics', 150.00, 35, 'Laser printer');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (22, 'Scanner', 'Electronics', 120.00, 30, 'Flatbed type');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (23, 'Headphones', 'Electronics', 79.99, 150, 'Noise cancelling');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (24, 'TV', 'Electronics', 499.00, 20, '40-inch LED');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (25, 'Projector', 'Electronics', 220.00, 10, 'HD ready');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (26, 'Charger', 'Electronics', 18.00, 90, 'USB-C fast charger');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (27, 'Glasses', 'Stationery', 12.00, 60, 'Reading glasses');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (28, 'Clock', 'Stationery', 9.50, 45, 'Analog desk clock');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (29, 'Fan', 'Stationery', 15.00, 35, 'Mini USB fan');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (30, 'Calculator', 'Electronics', 8.99, 120, 'Scientific calculator');


-- birinchi

SELECT TOP 3
    ProductName, 
    Price
FROM
    Products
ORDER BY 
    price DESC;

	-- ikkinchi
select * from Products
order by price desc offset 10 rows fetch next 10 rows only


select * from Products
where price between 120 and 200




-- birinchi

select * from Products
where Category='Electronics' and price>=1000

--ikkinchisi

select * from Products
where Price between 100 and 800 and Category in('Electronics','Stationery');


-- like operatori  /  -- filtrlash uchun ishlatiladi
select * from Products
where ProductName like '%A%'

 select * from Products
where ProductName like '_V%' ---- { _  } joy tashlashni bildiradi

-- agar foiz ishlatilgan yozuvlarni filtlamoqchi bulsak [] ni ichida yozamiz



-- Topshiriq
-- 1)

select * from Products
where ProductName like 'P%'


--2)
select * from Products
where ProductName like '%R'

--3)
select * from Products
where ProductName like '__[E,R]%'

select * from Products
where ProductName like '__[^E,R]%'  -- ^ bu belgi shulardan tashqari qolgan hammasini belgilash


select * from Products

WHERE ProductName like '%R'  or Description like '%R';

