CREATE DATABASE lesson7
use lesson7

---- 1- masala : 1970-YIL BO'YICHA MA'LUMOTLAR CHIQSIN, FAQAT ECONOMICS YOKI CHEMISTRY YO'NALISHI BO'YICHA YUTGANLAR BO'LSA ULAR JADVAL OXIRIDA CHIQSIN


 create table nobel_win(YEAR int, SUBJECT varchar(50), WINNER varchar(50),COUNTRY varchar(50), JOB_TITLE VARCHAR(50))
  go
insert into nobel_win values
(1970, 'Physics'   , 'Hannes Alfven'         , 'Sweden' , 'Scientist'        ),
(1970, 'Physics'   , 'Louis Neel'            , 'France' , 'Scientist'     ),
(1970, 'Chemistry' , 'Luis Federico Leloir'  , 'France' , 'Scientist'     ),
(1970, 'Physiology', 'Ulf von Euler'         , 'Sweden' , 'Scientist'     ),
(1970, 'Physiology', 'Bernard Katz'          , 'Germany', 'Scientist'     ),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia' , 'Linguist'     ),
(1970, 'Economics' , 'Paul Samuelson'        , 'USA'    , 'Economist'     ),
(1970, 'Physiology', 'Julius Axelrod'        , 'USA'    , 'Scientist'     ),
(1971, 'Physics'   , 'Dennis Gabor'          , 'Hungary', 'Scientist'     ),
(1971, 'Chemistry' , 'Gerhard Herzberg'      , 'Germany', 'Scientist'     ),
(1971, 'Peace'     , 'Willy Brandt'          , 'Germany', 'Chancellor'     ),
(1971, 'Literature', 'Pablo Neruda'          , 'Chile'  , 'Linguist'     ),
(1971, 'Economics' , 'Simon Kuznets'         , 'Russia' , 'Economist'     ),
(1978, 'Peace'     , 'Anwar al-Sadat'        , 'Egypt'  , 'President'     ),
(1978, 'Peace'     , 'Menachem Begin'        , 'Israel' , 'Prime Minister'   ),
(1987, 'Chemistry' , 'Donald J. Cram'        , 'USA'    , 'Scientist'     ),
(1987, 'Chemistry' , 'Jean-Marie Lehn'       , 'France' , 'Scientist'     ),
(1987, 'Physiology', 'Susumu Tonegawa'       , 'Japan'  , 'Scientist'     ),
(1994, 'Economics' , 'Reinhard Selten'       , 'Germany', 'Economist'     ),
(1994, 'Peace'     , 'Yitzhak Rabin'         , 'Israel' , 'Prime Minister'   ),
(1987, 'Physics'   , 'Johannes Georg Bednorz', 'Germany', 'Scientist'     ),
(1987, 'Literature', 'Joseph Brodsky'        , 'Russia' , 'Linguist'     ),
(1987, 'Economics' , 'Robert Solow'          , 'USA'    , 'Economist'     ),
(1994, 'Literature', 'Kenzaburo Oe'          , 'Japan'  , 'Linguist'     )


select * 
,
 case when Subject='Physics' or subject = 'Economics' then 2
 else 1 end as flag
from nobel_win
order by case when Subject='Physics' or subject = 'Economics' then 2
	else 1 end

	-- tugallanmadi ^^^^^^






















--lesson 7
	create table employees (
    ID int,
    Name varchar(50),
    Gender varchar(10),
    Salary int,
    City varchar(50)
);
go
insert into employees values
(1, 'Tom', 'Male', 4000, 'London'),
(2, 'Pam', 'Female', 3000, 'New York'),
(3, 'John', 'Male', 3500, 'London'),
(4, 'Sam', 'Male', 4500, 'London'),
(5, 'Todd', 'Male', 2800, 'Sydney'),
(6, 'Ben', 'Male', 7000, 'New York'),
(7, 'Sara', 'Female', 4800, 'Sydney'),
(8, 'Valarie', 'Female', 5500, 'New York'),
(9, 'James', 'Male', 6500, 'London'),
(10, 'Russell', 'Male', 8800, 'London');

--MAX MIN COUNT AVG SUM

insert into employees values (NULL,NULL,NULL,NULL,NULL)

select count(name) from employees
select count (*) from employees

select * from employees

select sum(salary) from employees

select sum( distinct salary) from employees

select avg(salary) from employees

select max(salary) from employees 

select min(salary) from employees




----- topshiriq : 
/*
1) Bizda nechta xaridor mavjud
2) Bizga baho qo'ygan xaridorlar soni nechta
3) Bizga eng past qo'yigan ball qaysi
4) Bizga eng baland qo'yilgan ball qaysi
5) Bizga qo'yilgan ballar yig'indisi qanday
6) qo'yilgan o'rtacha baho nechi
*/
create table customers (
    customer_id int,
    cust_name varchar(50),
    city varchar(50),
    grade int
);
go
insert into customers values
(3002, 'Nick Rimando', 'New York', 100),
(3007, 'Brad Davis', 'New York', 200),
(3005, 'Graham Zusi', 'California', 200),
(3008, 'Julian Green', 'London', 300),
(3004, 'Fabian Johnson', 'Paris', 300),
(3009, 'Geoff Cameron', 'Berlin', 100),
(3003, 'Jozy Altidor', 'Moscow', 200),
(3001, 'Brad Guzan', 'London', NULL);

-- select COUNT (cust_name), count (grade),min(grade), max(grade), sum(grade), AVG(grade)  from customers
 select COUNT(customer_id) as cust_qty, COUNT(grade) as graded_qty,
 min(grade), max(grade), sum(grade), AVG(grade)  from customers



 --- how to use group by
 -- sharlar buyicha eng kup oylik berillgan jadval

 select city,max(salary) as Max_for_each_city
 from employees
 where City is not null
 group by City

 -- ayollar va erkaklar buyicha eng kup oylik 

 select gender, max(salary) as max_sal from employees
 where Gender is not null
 group by Gender

 select city,gender, max(salary) as max_sal from employees
 where Gender is not null
 group by City,Gender
 order by City





CREATE TABLE orders (
    ord_no INT,
    purch_amt DECIMAL(10,2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);

go

INSERT INTO orders VALUES
    (70001, 150.50, '2012-10-05', 3005, 5002),
    (70009, 270.65, '2012-09-10', 3001, 5005),
    (70002,  65.26, '2012-10-05', 3002, 5001),
    (70004, 110.50, '2012-08-17', 3009, 5003),
    (70007, 948.50, '2012-09-10', 3005, 5002),
    (70005,2400.60, '2012-07-27', 3007, 5001),
    (70008,5760.00, '2012-09-10', 3002, 5001),
    (70010,1983.43, '2012-10-10', 3004, 5006),
    (70003,2480.40, '2012-10-10', 3009, 5003),
    (70012, 250.45, '2012-06-27', 3008, 5002),
    (70011,  75.29, '2012-08-17', 3003, 5007),
    (70013,3045.60, '2012-04-25', 3002, 5001);

select * from orders

/*
1) har bir xaridor umumiy qancha hajmda savdo qilgan
2) nechta marta savdo qilgan
3)eng ko'p miqdordagi xaridi miqdori qancha
4)eng kam miqdordagi xaridi miqdori qancha
5) o'rtacha savdo hajmi qanday
*/


--1
 select customer_id, sum(purch_amt) as all_purch_amt
 from orders
 where customer_id is not null
 group by customer_id




select  count(ord_no),max(purch_amt),min(purch_amt),avg(purch_amt)   from orders 
group by customer_id
having count(ord_no)>1




 
 create table students(
    name varchar(20),
    class varchar(10),
    grade char(1)
);
go

insert into students values
('Josh', 'Physics', 'A'),
('Josh', 'Accounting', 'A'),
('Josh', 'Law', 'A'),
('Karen', 'Physics', 'A'),
('Karen', 'Accounting', 'B'),
('Karen', 'Law', 'C'),
('Tom', 'Physics', 'B'),
('Tom', 'Accounting', 'B'),
('Tom', 'Law', 'C');

---- eng ko'p A ballini olgan student ismini toping

select top 1 name, count(grade) as cnt_gr from students
where grade = 'A'
group by name 
order by count(grade)desc



-----Ham ayol ham erkak jinsdagi farzandi bo'lgan ota yoki ona ismini chiqazing

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




SELECT parent_name
FROM Family
WHERE gender IN ('Male', 'Female')
GROUP BY parent_name
HAVING COUNT(DISTINCT gender) = 2;
