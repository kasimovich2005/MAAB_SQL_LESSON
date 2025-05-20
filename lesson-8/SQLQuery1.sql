--- lesson 8    20.05.2025 

--Aggregate function, group by, having,where clause, top, dml vs ddl command, case,iif()

create database lesson8
use lesson8

CREATE TABLE Sales1 (
    OrderID INT PRIMARY KEY,
    Customer VARCHAR(50),
    Amount DECIMAL(10, 2)
);

GO

INSERT INTO Sales1 (OrderID, Customer, Amount)
VALUES
(1, 'Ali', 100.00),
(2, 'Diyor', 200.00),
(3, 'Aziza', 150.00),
(4, 'Ali', 250.00),
(5, 'Aziza', 200.00),
(6, 'Diyor', 150.00);

--Shart: Har bir customer uchun umumiy savdo hajmi va o'rtacha savdo hajmi topilishi lozim

select Customer avg(Amount) as avg_sale_per_customer, Sum(Amount) as Total_sales_per_cust
from Sales1
group by Customer



CREATE TABLE EmployeeNumber
(
     EmpId INT
    ,EmpName VARCHAR(10)
    ,EmpMobileNumber VARCHAR(100)
    ,EmpResidenceNumber VARCHAR(100)
)
GO
 
INSERT INTO EmployeeNumber VALUES
(1,'Avtaar','9873686533',NULL),
(2,'Kishan',NULL,'9873686513'),
(3,'Chander','9873682233','9873680233'),
(4,'Sharlee','9873111133','7873682233'),
(5,'Ishu',NULL,'9873686598'),
(6,'Ram','9873761211',NULL),
(7,'Vaibhav',NULL,NULL),
(8,'Mayank',NULL,'8761231231')
GO


/******************************************
EmpId  EmpName  Nums
1  Avtaar  9873686533 MobileNumber
2  Kishan  9873686513 ResidenceNumber
3  Chander  9873682233 MobileNumber
4  Sharlee  9873111133 MobileNumber
5  Ishu  9873686598 ResidenceNumber
6  Ram  9873761211 MobileNumber
7  Vaibhav  NULL
8  Mayank  8761231231 ResidenceNumber
******************************************/


SELECT   EmpId, EmpName,
    CASE 
        WHEN EmpMobileNumber IS NOT NULL THEN EmpMobileNumber + ' MobileNumber'
        WHEN EmpResidenceNumber IS  NULL THEN EmpResidenceNumber + ' ResidenceNumber'
        ELSE NULL
    END AS ContactInfo
FROM EmployeeNumber;

--- IIF() bilan 

Select EmpId, EmpId,
iif(EmpMobileNumber is not null, EmpMobileNumber+' MobileNumber', EmpResidenceNumber + ' ResidenceNumber') as Nums
from EmployeeNumber

---3) ISNULL bilan


select empid,EmpName,
isnull(EmpMobileNumber+' Mobilenumber',EmpResidenceNumber+' Residencenumber') as Nums
from EmployeeNumber







Create Table Movie (movie_length int, movie_name nvarchar(25))
go
Insert Movie values (45, 'Movie1'), (50, 'Movie2'), (76, 'Movie3'), (88, 'Movie4'),
          (122, 'Movie5'), (164, 'Movie6'), (142, 'Movie7'), (120, 'Movie8'), 
          (166, 'Movie9'), (204, 'Movie10')

		  /*** AGAR uzunlik 100dan kichik bo'lsa Short
		  100 dan 150gacha bo'lsa Long
		  150dan baland bo'lsa Epic

		  short nechta?
		  Long nechta?
		  Epic Nechta?

		  **/

		  SELECT 
    CASE 
        WHEN movie_length < 100 THEN 'Short'
        WHEN movie_length BETWEEN 100 AND 150 THEN 'Long'
        ELSE 'Epic' 
    END AS Status,
    COUNT(*) AS MovieCount
FROM Movie
GROUP BY 
    CASE 
        WHEN movie_length < 100 THEN 'Short'
        WHEN movie_length BETWEEN 100 AND 150 THEN 'Long'
        ELSE 'Epic' 
    END;




create table city_population ( district_id int, district_name varchar(30),population decimal(10,2),year varchar(20))
go

insert into city_population values 
(1,'Chilonzor',2500,2012),
(2,'Yakkasaroy',1500,2012),
(3,'Mirobod',3000,2012),
(4,'Yashnobod',1000,2012),
(5,'Bektemir',2000,2012),
(1,'Chilonzor',2800,2013),
(2,'Yakkasaroy',1900,2013),
(3,'Mirobod',2000,2013),
(4,'Yashnobod',5000,2013),
(5,'Bektemir',1500,2013)


select district_name,[2012],[2013] into new_dis_table from city_population
PIVOT
(
SUM(Population) for year in([2012],[2013])
) as Pivoted_table

select district_name, population, year from  new_dis_table
UNPIVOT(
Population for year in([2012],[2013])

) as Unpivoted_table















CREATE TABLE StudentGrades (
    Student VARCHAR(50),
    Subject VARCHAR(50),
    Grade INT
);

INSERT INTO StudentGrades (Student, Subject, Grade) VALUES
('Aziza', 'Math', 85),
('Aziza', 'English', 90),
('Aziza', 'Science', 88),
('Diyor', 'Math', 78),
('Diyor', 'English', 82),
('Diyor', 'Science', 91);


select Student, [math] ,[English],[Science] from StudentGrades
PIVOT
(
	sum(grade) for Subject in([Math] , [English], [Science])
) as Pivoted_table


CREATE TABLE employees (
    employee_id INT,           -- Unique identifier for each employee
    employee_name VARCHAR(100),            -- Name of the employee
    department VARCHAR(50),                -- Department the employee belongs to (e.g., IT, HR, Marketing)
    project_id VARCHAR(10),                -- Project identifier that the employee is working on
    is_manager CHAR(3) CHECK (is_manager IN ('Yes', 'No'))  -- Whether the employee is a manager ('Yes' or 'No')
);

go

INSERT INTO employees (employee_id, employee_name, department, project_id, is_manager)
VALUES 
(1, 'Alice', 'IT', 'P001', 'Yes'),
(1, 'Alice', 'Marketing', 'P003', 'No'),
(1, 'Alice', 'IT', 'P006', 'No'),
(2, 'Bob', 'HR', 'P002', 'No'),
(2, 'Bob', 'IT', 'P004', 'Yes'),
(2, 'Bob', 'Marketing', 'P007', 'No'),
(3, 'Charlie', 'HR', 'P005', 'Yes'),
(3, 'Charlie', 'Marketing', 'P008', 'No'),
(4, 'David', 'Finance', 'P009', 'Yes'),
(5, 'Emma', 'IT', 'P010', 'No'),
(6, 'Frank', 'HR', 'P011', 'Yes'),
(7, 'Grace', 'Marketing', 'P012', 'No'),
(8, 'Harry', 'IT', 'P013', 'No'),
(9, 'Ivy', 'HR', 'P014', 'Yes'),
(10, 'Jack', 'Finance', 'P015', 'No'),
(11, 'Kevin', 'IT', 'P016', 'Yes'),
(12, 'Liam', 'Marketing', 'P017', 'No'),
(13, 'Mia', 'HR', 'P018', 'Yes'),
(14, 'Noah', 'Finance', 'P019', 'No'),
(15, 'Olivia', 'IT', 'P020', 'No'),
(16, 'Paul', 'Marketing', 'P021', 'No'),
(17, 'Quinn', 'HR', 'P022', 'Yes'),
(18, 'Rachel', 'IT', 'P023', 'Yes'),
(19, 'Steve', 'Marketing', 'P024', 'No'),
(20, 'Tracy', 'HR', 'P025', 'No'),
(21, 'Ursula', 'Finance', 'P026', 'Yes'),
(22, 'Victor', 'IT', 'P027', 'No'),
(23, 'Wendy', 'Marketing', 'P028', 'No'),
(24, 'Xander', 'Finance', 'P029', 'Yes'),
(25, 'Yara', 'HR', 'P030', 'No'),
(26, 'Zack', 'IT', 'P031', 'Yes'),
(27, 'Amy', 'Marketing', 'P032', 'No'),
(28, 'Ben', 'Finance', 'P033', 'No'),
(29, 'Chloe', 'IT', 'P034', 'No'),
(30, 'Dylan', 'HR', 'P035', 'Yes'),
(31, 'Eva', 'Finance', 'P036', 'Yes'),
(32, 'Finn', 'Marketing', 'P037', 'No'),
(33, 'Gina', 'IT', 'P038', 'No'),
(34, 'Hank', 'HR', 'P039', 'Yes'),
(35, 'Irene', 'Finance', 'P040', 'No'),
(36, 'Jake', 'IT', 'P041', 'Yes'),
(37, 'Kara', 'Marketing', 'P042', 'No'),
(38, 'Leo', 'Finance', 'P043', 'Yes'),
(39, 'Megan', 'HR', 'P044', 'No'),
(40, 'Nina', 'Marketing', 'P045', 'No'),
(41, 'Oscar', 'IT', 'P046', 'Yes'),
(42, 'Penny', 'HR', 'P047', 'Yes'),
(43, 'Quincy', 'Finance', 'P048', 'No'),
(44, 'Rita', 'Marketing', 'P049', 'No'),
(45, 'Sam', 'IT', 'P050', 'No');

select * from employees


select * from employees
where (department='IT' and is_manager='Yes')or (department='Marketing' and is_manager='No')
group by employee_name
having COUNT(distinct department)>1


SELECT  employee_name
FROM employees
WHERE (department = 'IT' AND is_manager = 'Yes') 
   OR (department = 'Marketing' AND is_manager = 'No')
GROUP BY employee_name
HAVING COUNT(DISTINCT department) > 1;


CREATE TABLE sales (
    salesperson_name VARCHAR(100),
    region VARCHAR(100),
    sales_amount DECIMAL(10, 2),
    quarter INT
)
go
INSERT INTO sales (salesperson_name, region, sales_amount, quarter)
VALUES 
('Alice', 'North', 5000.00, 1),
('Alice', 'North', 7000.00, 2),
('Alice', 'South', 8000.00, 3),
('Bob', 'North', 4000.00, 1),
('Bob', 'West', 5000.00, 2),
('Bob', 'South', 6000.00, 3),
('Charlie', 'East', 9000.00, 1),
('Charlie', 'East', 12000.00, 2),
('Charlie', 'West', 11000.00, 3),
('David', 'South', 3000.00, 1),
('David', 'South', 5000.00, 2),
('David', 'South', 5000.00, 2),
('David', 'East', 4000.00, 3)


SELECT salesperson_name
FROM sales
GROUP BY salesperson_name
HAVING 
    SUM(CASE WHEN quarter IN (1, 2) THEN sales_amount ELSE 0 END) > 10000
    AND
    SUM(CASE WHEN region = 'South' THEN 1 ELSE 0 END) > 0

            
            
      
