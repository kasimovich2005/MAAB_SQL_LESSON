CREATE TABLE employees (
    id INT PRIMARY KEY,
    fullname VARCHAR(50),
    salary INT
);



INSERT INTO employees (id, fullname, salary) VALUES
(1, 'Ali Mamatqulov', 9000000),
(2, 'Dilshod Maxkamov', 8700000),
(3, 'Shahlo Muminova', 8700000),
(4, 'Otabek Mirzayev', 8200000),
(5, 'Sarvar Mahkamov', 7500000),
(6, 'Malika Matkarimova', 9100000),
(7, 'Bobur Aliyev', 7900000),
(8, 'Gulbahor Karimova', 8300000),
(9, 'Javlon Qodirov', 8800000),
(10, 'Aziza Murodova', 8700000);


SELECT * FROM employees
where fullname like '% M%' and salary>8000000
order by salary desc


--------- lesson 5 started 

------Union  ,  Case statement, IIF()


CREATE TABLE table_a (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE table_b (
    id INT,
    name VARCHAR(50)
);


INSERT INTO table_a (id, name) VALUES
(1, 'Aziz'),
(2, 'Dilshod'),
(3, 'Zarnigor'),
(4, 'Aziz'),
(5, 'Shahnoza');

-- Table B
INSERT INTO table_b (id, name) VALUES
(3, 'Zarnigor'),
(4, 'Aziz'),
(6, 'Javlon'),
(7, 'Shahlo'),
(2, 'Dilshod');

--- union all ishlashi ikkita jadvalni faqat bitta qilib beradi

select id, name  from table_a
union all
select id, name  from table_b

---unionni uzi id raqami birxillarini olib tashlaydi
select id, name  from table_a
union 
select id, name  from table_b

--takrorlangalarini olib tashlaydi

select id, name  from table_a
intersect 
select id, name  from table_b

select id, name  from table_a
except 
select id, name  from table_b


CREATE TABLE Purchases (
    name VARCHAR(50),
    purchase_year INT
);
GO
INSERT INTO Purchases (name, purchase_year) VALUES
('Ahmad Karimov', 2012),
('Ahmad Karimov', 2013),
('Malika Qodirova', 2012),
('Malika Qodirova', 2014),
('Javlon Shamsiev', 2012),
('Ziyoda Ergasheva', 2012),
('Kamoliddin Narziyev', 2012),
('Kamoliddin Narziyev', 2015),
('Diyora G‘ulomova', 2012),
('Diyora G‘ulomova', 2010),
('Ilyos To‘xtayev', 2012),
('Ilyos To‘xtayev', 2018),
('Zafar Turg‘unov', 2012);

select name from Purchases
where purchase_year=2012
except
select name from Purchases
where purchase_year<>2012




----

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

select*from Family

SELECT parent_name
FROM Family
GROUP BY parent_name
HAVING COUNT(DISTINCT gender) = 2;





----------------------------------------------



CREATE TABLE Students (
    student_id INT,
    student_name VARCHAR(50),
    score INT
);
GO
INSERT INTO Students (student_id, student_name, score) VALUES
(1, 'Javohir', 95),
(2, 'Dilnoza', 82),
(3, 'Sherzod', 68),
(4, 'Malika', 45),
(5, 'Olim', 78);


CREATE TABLE Pupils (
    student_id INT,
    full_name VARCHAR(100),
    math_score INT,
    english_score INT
);
GO
INSERT INTO Pupils (student_id, full_name, math_score, english_score) VALUES
(1, 'Ali Karimov', 78, 82),
(2, 'Diyora Tursunova', 45, 70),
(3, 'Shoxrux Ibrohimov', 60, 55),
(4, 'Nodira Abdullayeva', 40, 42),
(5, 'Javohir Rahmatullayev', 95, 88),
(6, 'Nilufar Ergasheva', 50, 35);


select * ,
case when math_score>=60 and english_score>=60 then 'O''tildi'
	 when math_score>=50 and english_score>=50 then 'Qayta topshirish'
	 else 'Yiqildi' end as Status

from Pupils




select * ,
case when math_score>=60 and english_score>=60 then 'O''tildi'
	 when math_score>=50 and english_score>=50 then 'Qayta topshirish'
	 when math_score>=40 and english_score>=40 then  'Oxirgi imkoniyat'
	 end as Status

from Pupils


--- tartiblab chiqish kerak yani birinchi hight/  mideum / low

CREATE TABLE SupportTickets (
    id INT,
    title VARCHAR(100),
    priority VARCHAR(10)
);
GO
INSERT INTO SupportTickets VALUES
(1, 'Login issue', 'Low'),
(2, 'Payment failed', 'High'),
(3, 'Password reset', 'Medium'),
(4, 'App crash', 'High'),
(5, 'Slow loading', 'Low');

select * from SupportTickets

select*
from SupportTickets 
order by case when priority='Hiht' then 1
	when priority='Medium'then 2
	else 3 end


CREATE TABLE Codes (
    code VARCHAR(50)
);
go

INSERT INTO Codes (code)
VALUES
('123ABFruit'),
('46XYOrange'),
('789PQBanana'),
('0081AZMelon'),
('555KLPeach'),
('777MNStrawberry'),
('8887OPPineapple'),
('1QRBlueberry'),
('65STGrapefruit'),
('9UVWatermelon');


SELECT *
FROM codes
WHERE code LIKE '[0-9][0-9][0-9][A-Z]%'
	

 


















