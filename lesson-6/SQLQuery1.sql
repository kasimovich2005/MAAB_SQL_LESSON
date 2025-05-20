create database lesson5
use lesson5

CREATE TABLE Products (
    ProductCode VARCHAR(20),
    ProductName VARCHAR(255),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductCode, ProductName, Price)
VALUES
('FR-R92B-58', 'HL Road Frame - Black, 58', 1431.50),
('FR-R92R-58', 'HL Road Frame - Red, 58', 1431.50),
('HL-U509-R', 'Sport-100 Helmet, Red', 34.99),
('HL-U509', 'Sport-100 Helmet, Black', 34.99),
('SO-B909-M', 'Mountain Bike Socks, M', 9.50),
('SO-B909-L', 'Mountain Bike Socks, L', 9.50),
('HL-U509-B', 'Sport-100 Helmet, Blue', 34.99),
('CA-1098', 'AWC Logo Cap', 8.99),
('LJ-0192-S', 'Long-Sleeve Logo Jersey, S', 49.99),
('LJ-0192-M', 'Long-Sleeve Logo Jersey, M', 49.99),
('LJ-0192-L', 'Long-Sleeve Logo Jersey, L', 49.99),
('LJ-0192-X', 'Long-Sleeve Logo Jersey, XL', 49.99),
('FR-R92R-62', 'HL Road Frame - Red, 62', 1431.50),
('FR-R92R-44', 'HL Road Frame - Red, 44', 1431.50),
('FR-R92R-48', 'HL Road Frame - Red, 48', 1431.50),
('FR-R92R-52', 'HL Road Frame - Red, 52', 1431.50),
('FR-R92R-56', 'HL Road Frame - Red, 56', 1431.50),
('FR-R38B-58', 'LL Road Frame - Black, 58', 337.22),
('FR-R38B-60', 'LL Road Frame - Black, 60', 337.22),
('FR-R38B-62', 'LL Road Frame - Black, 62', 337.22),
('FR-R38R-44', 'LL Road Frame - Red, 44', 337.22),
('FR-R38R-48', 'LL Road Frame - Red, 48', 337.22),
('FR-R38R-52', 'LL Road Frame - Red, 52', 337.22),
('FR-R38R-58', 'LL Road Frame - Red, 58', 337.22),
('FR-R38R-60', 'LL Road Frame - Red, 60', 337.22),
('FR-R38R-62', 'LL Road Frame - Red, 62', 337.22),
('FR-R72R-44', 'ML Road Frame - Red, 44', 594.83),
('FR-R72R-48', 'ML Road Frame - Red, 48', 594.83),
('FR-R72R-52', 'ML Road Frame - Red, 52', 594.83),
('FR-R72R-58', 'ML Road Frame - Red, 58', 594.83),
('FR-R72R-60', 'ML Road Frame - Red, 60', 594.83),
('FR-R38B-44', 'LL Road Frame - Black, 44', 337.22),
('FR-R38B-48', 'LL Road Frame - Black, 48', 337.22),
('FR-R38B-52', 'LL Road Frame - Black, 52', 337.22),
('FR-M94S-42', 'HL Mountain Frame - Silver, 42', 1364.50),
('FR-M94S-44', 'HL Mountain Frame - Silver, 44', 1364.50),
('FR-M94S-52', 'HL Mountain Frame - Silver, 48', 1364.50),
('FR-M94S-46', 'HL Mountain Frame - Silver, 46', 1364.50),
('FR-M94B-42', 'HL Mountain Frame - Black, 42', 1349.60),
('FR-M94B-44', 'HL Mountain Frame - Black, 44', 1349.60),
('FR-M94B-48', 'HL Mountain Frame - Black, 48', 1349.60),
('FR-M94B-46', 'HL Mountain Frame - Black, 46', 1349.60),
('FR-M94B-38', 'HL Mountain Frame - Black, 38', 1349.60),
('FR-M94S-38', 'HL Mountain Frame - Silver, 38', 1364.50),
('BK-R93R-62', 'Road-150 Red, 62', 3578.27),
('BK-R93R-44', 'Road-150 Red, 44', 3578.27),
('BK-R93R-48', 'Road-150 Red, 48', 3578.27),
('BK-R93R-52', 'Road-150 Red, 52', 3578.27),
('BK-R93R-56', 'Road-150 Red, 56', 3578.27),
('BK-R68R-58', 'Road-450 Red, 58', 1457.99),
('BK-R68R-60', 'Road-450 Red, 60', 1457.99),
('BK-R68R-44', 'Road-450 Red, 44', 1457.99),
('BK-R68R-48', 'Road-450 Red, 48', 1457.99),
('BK-R68R-52', 'Road-450 Red, 52', 1457.99),
('BK-R50R-58', 'Road-650 Red, 58', 782.99),
('BK-R50R-60', 'Road-650 Red, 60', 782.99),
('BK-R50R-62', 'Road-650 Red, 62', 782.99),
('BK-R50R-44', 'Road-650 Red, 44', 782.99),
('BK-R50R-48', 'Road-650 Red, 48', 782.99),
('BK-R50R-52', 'Road-650 Red, 52', 782.99),
('BK-R50B-58', 'Road-650 Black, 58', 782.99),
('BK-R50B-60', 'Road-650 Black, 60', 782.99),
('BK-R50B-62', 'Road-650 Black, 62', 782.99),
('BK-R50B-44', 'Road-650 Black, 44', 782.99),
('BK-R50B-48', 'Road-650 Black, 48', 782.99),
('BK-R50B-52', 'Road-650 Black, 52', 782.99),
('BK-M82S-38', 'Mountain-100 Silver, 38', 3399.99),
('BK-M82S-42', 'Mountain-100 Silver, 42', 3399.99),
('BK-M82S-44', 'Mountain-100 Silver, 44', 3399.99),
('BK-M82S-48', 'Mountain-100 Silver, 48', 3399.99),
('BK-M82B-38', 'Mountain-100 Black, 38', 3374.99),
('BK-M82B-42', 'Mountain-100 Black, 42', 3374.99),
('BK-M82B-44', 'Mountain-100 Black, 44', 3374.99),
('BK-M82B-48', 'Mountain-100 Black, 48', 3374.99),
('BK-M68S-38', 'Mountain-200 Silver, 38', 2319.99),
('BK-M68S-42', 'Mountain-200 Silver, 42', 2319.99),
('BK-M68S-46', 'Mountain-200 Silver, 46', 2319.99),
('BK-M68B-38', 'Mountain-200 Black, 38', 2294.99),
('BK-M68B-42', 'Mountain-200 Black, 42', 2294.99),
('BK-M68B-46', 'Mountain-200 Black, 46', 2294.99);


select *from Products
where ProductName like '[^M]%'


-- 1-masala
-- Product code BK- bn boshlansin undan keyingi harf R bo'lmasin, oxiri istalgan ikkita raqam bilan tugasin
--top 5 ta mahsulot narxga ko'ra eng qimmatidan eng arzoniga qarab sort qilinsin

select *from Products
where ProductCode like 'BK-[^R]%[0-9][0-9]'

CREATE TABLE People (
    FirstName VARCHAR(50),
    MiddleInitial VARCHAR(5),
    LastName VARCHAR(50)
);
GO
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('John', 'A.', 'Beaver');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Jean', 'P.', 'Handley');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Jinghao', NULL, 'Liu');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Linda', 'E.', 'Burnett');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Kerim', NULL, 'Hanif');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Kevin', NULL, 'Liu');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Donald', 'L.', 'Blanton');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Jackie', 'E.', 'Blackwell');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Bryan', NULL, 'Hamilton');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Todd', 'R.', 'Logan');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Barbara', 'J.', 'German');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Jim', NULL, 'Geist');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Betty', 'M.', 'Haines');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Sharon', 'J.', 'Looney');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Darren', NULL, 'Gehring');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Erin', 'M.', 'Hagens');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Jeremy', NULL, 'Los');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Elsa', NULL, 'Leavitt');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('David', 'O', 'Lawrence');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Hattie', 'J.', 'Haemon');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Anita', 'R.', 'Lucerne');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Rebecca', NULL, 'Laszlo');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Eric', NULL, 'Lang');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Brian', NULL, 'Groth');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Judy', 'R.', 'Lundahl');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Peter', NULL, 'Kurniawan');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Douglas', NULL, 'Groncki');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Sean', 'J.', 'Lunt');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Jeffrey', NULL, 'Kurtz');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Vamsi', NULL, 'Kuppa');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Jane', 'P.', 'Greer');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Alexander', 'J.', 'Deborde');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Deepak', NULL, 'Kumar');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Margaret', 'T.', 'Krupka');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Christopher', 'M.', 'Bright');
INSERT INTO People (FirstName, MiddleInitial, LastName) VALUES ('Aidan', NULL, 'Delaney');


select * from People

/* 3-column sifatida FullName chiqsin
Agar Middle name null bo'lsa Faqat Ism keyin Familiya agar null bo'lmasa to'liq ism chiqsin

*/ 





SELECT *, 
    CASE 
        WHEN MiddleInitial IS NULL 
            THEN FirstName + ' ' + LastName
        ELSE FirstName + ' ' + MiddleInitial + ' ' + LastName 
    END AS FullName
FROM People;


select CONCAT_ws(' ', FirstName,MiddleInitial,LastName)

from People

select CONCAT(' ', FirstName,MiddleInitial,LastName)

from People



--- 3-mashq 

-- Agar hamma ustundagi son 0 bo'lsa o'sha ustun result setda chiqmasin


CREATE TABLE [dbo].[TestMultipleZero]
(
    [A] [int] NULL,
    [B] [int] NULL,
    [C] [int] NULL,
    [D] [int] NULL
);
GO

INSERT INTO [dbo].[TestMultipleZero](A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);

-- 1-usul
	select * from [TestMultipleZero]
	where A<>0 or B<>0 or C<>0 or D<>0


---2-usul
	select * from [TestMultipleZero]
	where not(A=0 and B=0 and C=0 and D=0)

-- 3-usul
	select * from [TestMultipleZero]
	where A+B+C+D>0



-- 4-topshiriq

CREATE TABLE TestMax
(
    Year1 INT
    ,Max1 INT
    ,Max2 INT
    ,Max3 INT
);
GO
 
INSERT INTO TestMax 
VALUES
    (2001,10,101,87)
    ,(2002,103,19,88)
    ,(2003,21,23,89)
    ,(2004,27,28,91);

select * from TestMax


-- Yil yonida Max nomli ustunlardan eng kattasi chiqsin
--Case when hamda IIF orqali ishlansin
 -- 1-usul

select * , 
case when Max1>Max2 and Max1>Max3 then Max1
	 when Max2>Max1 and Max2>Max3 then Max2
	 else Max3 end as maxall
from TestMax
 
 -- 2-usul

select * , iif(Max1>Max2 and Max1>Max3, Max1, iif(Max2>Max1 and Max2>Max3,Max2,Max3)) as maxall from TestMax

-- 3-usul ( faqat 2022 dan chiqarilgan versiyalarda bu

select *, GREATEST(Max1,Max2,Max3) as max_all from TestMax



--- 5- topshiriq

CREATE TABLE agents (
    name VARCHAR(20),
    office VARCHAR(3),
    IsHeadOffice CHAR(3)
);

INSERT INTO agents VALUES
    ('Rich', 'UK', 'yes'),
    ('Rich', 'US', 'no'),
    ('Rich', 'NZ', 'no'),
    
    ('Brandy', 'US', 'yes'),
    ('Brandy', 'UK', 'no'),
    ('Karen', 'AUS', 'no'),
    ('Karen', 'RUS', 'no'),
    
    ('Karen', 'NZ', 'yes'),
    
    ('Mary', 'US', 'yes'),
    ('Mary', 'UK', 'no'),
    ('Mary', 'CAN', 'no'),
    
    ('Charles', 'US', 'yes'),
    ('Charles', 'UZB', 'no'),
    ('Charles', 'AUS', 'no');


select * from agents
where office='US' and IsHeadOffice='Yes'

-- union all
intersect
select * from agents
where office='UK' and IsHeadOffice='No'


