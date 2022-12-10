CREATE DATABASE homework_1;

USE homework_1;

/*
1.	Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ
*/
CREATE TABLE phones
(
	Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(45),
    Manufacturer VARCHAR(45),
    PruductCount INT,
    Price INT
);

INSERT phones(ProductName, Manufacturer, PruductCount, Price)
VALUES
	("iPhone X", "Apple", 3, 76000),
    ("iPhone 8", "Apple", 2, 51000),
    ("Galaxy S9", "Samsung", 2, 56000),
    ("Galaxy S8", "Samsung", 1, 41000),
    ("P20 Pro", "Huawei", 5, 36000);
    
SELECT *
FROM phones;

/*
2. 	Выведите название, производителя и цену для товаров, 
количество которых превышает 2 (SQL - файл, скриншот, либо сам код)
*/
SELECT ProductName, Manufacturer, Price
FROM phones
WHERE PruductCount > 2;

/*
3.  Выведите весь ассортимент товаров марки “Samsung”
*/
SELECT *
FROM phones
WHERE Manufacturer = "Samsung";

/*
4.*** С помощью регулярных выражений найти 
(можно использовать операторы “LIKE”, “RLIKE”):
*/
-- 4.1. Товары, в которых есть упоминание "Iphone"
SELECT *
FROM phones
WHERE ProductName LIKE "%iphone%";

-- 4.2. "Galaxy"
SELECT *
FROM phones
WHERE ProductName LIKE "%galaxy%";

-- 4.3.  Товары, в которых есть ЦИФРЫ
SELECT *
FROM phones
WHERE ProductName RLIKE "[0-9]";

-- 4.4.  Товары, в которых есть ЦИФРА "8"  
SELECT *
FROM phones
WHERE ProductName LIKE "%8%";
