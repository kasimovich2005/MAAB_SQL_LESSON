create database lesson9
use lesson9

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    employee_id INT,
    sale_amount DECIMAL(10,2),
    sale_date DATE
);

INSERT INTO sales (sale_id, employee_id, sale_amount, sale_date) VALUES
(1, 101, 100.00, '2024-01-01'),
(2, 102, 200.00, '2024-01-02'),
(3, 101, 300.00, '2024-01-03'),
(4, 103, 400.00, '2024-01-04'),
(5, 102, 500.00, '2024-01-05'),
(6, 101, 150.00, '2024-01-06'),
(7, 103, 600.00, '2024-01-07'),
(8, 104, 250.00, '2024-01-08'),
(9, 105, 300.00, '2024-01-09'),
(10, 104, 350.00, '2024-01-10'),
(11, 102, 150.00, '2024-01-11'),
(12, 105, 450.00, '2024-01-12'),
(13, 101, 200.00, '2024-01-13'),
(14, 103, 300.00, '2024-01-14'),
(15, 104, 400.00, '2024-01-15');

--- Umumiy miqdorda 800 dollardan ortiq savdo qilgan ishchilarni topish lozim

SELECT employee_id, SUM(sale_amount) AS sales
FROM sales
GROUP BY employee_id
HAVING SUM(sale_amount) >= 800;







--- relationships
------ cross joins bn innner joins


create table T_1(
 num  int
);

insert into T_1 (num) values
(1),(2),(4),(6),(1)

select * from T_1



create table T_2(
 num  int
);

insert into T_2 (num) values
(2),(3),(1),(5)


--- birinchi jadvaldagi barcha raqamlarni ikkinchi jadvaldagi raqamlarni barcha kambinatsiyalarini aniqlaydi

select t_1.num, t_2.num from t_1
cross join t_2
order by t_1.num






create table sizes(
	size varchar(max)
)
;

insert into sizes values ('X'),('XL'),('XXL')



CREATE TABLE COLORS (
	COLOR varchar(max)
);

	insert into COLORS values
('red'),('blue'),('white')

select sizes.size, colors.color from sizes
cross join COLORS
order by sizes.size




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


select Emp.Id,Emp.Name,Emp.Salary,
dep.departmentname
from Employee as Emp
Inner join Department as Dep
on Emp.DepartmentId=dep.Id




------------------------------------------- /\/\/\/\/\\/\/\/\/\/\/\/\ ------------------

drop table Department
drop  table Employee


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


create table payments (payerid int,payment_amount int,payment_date date)
insert into payments values 
(1,1000,'2019-01-01'),
(1,1800,'2019-02-07'),
(1,1500,'2019-03-11'),
(2,1700,'2019-01-01'),
(2,180,'2019-02-07'),
(2,15750,'2019-03-11'),
(3,1050,'2019-01-01'),
(3,2100,'2019-02-07'),
(3,1300,'2019-03-11')

create table payer (payerid int,name varchar(20))
insert into payer values (1,'Sam'),(2,'Nancy'),(3,'Rocky'),(4,'Bek')



SELECT p.name, SUM(pay.payment_amount) AS total_payment
FROM payments pay
JOIN payer p ON pay.payerid = p.payerid
GROUP BY p.name;













CREATE TABLE salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(4,2)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    city VARCHAR(50),
    grade INT,
    salesman_id INT,
    FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
);

INSERT INTO salesman (salesman_id, name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);


INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidore', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', 100, 5005);



----From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.


select *from salesman
select  * from customer
inner join 
salesman
on customer.salesman_id=salesman.salesman_id and customer.city=salesman.city











create table doctor
(
doctor_id int,
doctor_name varchar(50),
hospital varchar(50)
)

create table doctor_to_patient
(
record_id int identity,
min_patient_id int,
max_patient_id int,
doctor_id int
)

create table patient
(
patient_id int,
patient_name varchar(100),
patient_city varchar(100)
)

insert into doctor values (100,'Smith','Saint Lukes'),
(101,'John','Children''s mercy'),
(102,'Alex','North KC Hospital')

insert into doctor_to_patient values (1,100,100),(101,200,101),(201,300,102)
insert into patient values (55,'Max','KC'),(33,'Anna','Tell Aviv'),
(255,'Borat','Astana'),(233,'Jim','NYC'),(44,'Josh','Casa Blanka'),(244,'Tom','Miami'),
(122,'Molly','Jerusalem'),(133,'Kiril','Moscow'),(144,'Albert','St Louis')




select * from doctor
select * from doctor_to_patient
select * from patient

SELECT  p.patient_name, d.doctor_name, d.hospital  FROM  patient p
JOIN  doctor_to_patient dp ON p.patient_id BETWEEN dp.min_patient_id and dp.max_patient_id
JOIN  doctor d ON dp.doctor_id = d.doctor_id;
