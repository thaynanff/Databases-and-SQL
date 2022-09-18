-- Using SQL Statements:

SELECT * FROM personclient;

SELECT * FROM supplier;

SELECT * FROM seller;

-- Using WHERE clause

SELECT firstname, lastname, bdate, city
FROM personclient
WHERE sex = 'M';

SELECT firstname, lastname, bdate, city
FROM personclient
WHERE sex = 'F';

-- Create expressions to generate Derived Attributes

SELECT firstname, lastname, (year(CURDATE()) - year(bdate)) as age
FROM personclient;

SELECT firstname, lastname, (year(CURDATE()) - year(bdate)) as age
FROM personclient
WHERE sex = 'M';

SELECT firstname, lastname, (year(CURDATE()) - year(bdate)) as age
FROM personclient
WHERE sex = 'F';

SELECT sex, avg((year(CURDATE()) - year(bdate))) as avg_age
FROM personclient
GROUP BY sex;

SELECT (year(CURDATE()) - year(bdate)) AS age, count(1)
FROM personclient
GROUP BY age;

-- Ordering with ORDER BY

SELECT firstname, lastname, (year(CURDATE()) - year(bdate)) as age
FROM personclient
ORDER BY firstname;

SELECT firstname, lastname, (year(CURDATE()) - year(bdate)) as age
FROM personclient
ORDER BY age;

SELECT (year(CURDATE()) - year(bdate)) AS age, count(1) AS Qty
FROM personclient
GROUP BY age
ORDER BY Qty desc;

SELECT sex, count(1) AS Qty
FROM personclient
GROUP BY sex
ORDER BY Qty desc;

-- Grouping and using HAVING

SELECT (year(CURDATE()) - year(bdate)) AS age, count(1) AS Qty
FROM personclient
GROUP BY age
HAVING qty > 1;

-----------------
-- Using JOIN
-----------------

-- Selecting all suppliers and the products each of them sell with its price

SELECT s.registeredname, p.category, p.price
FROM supplier s JOIN ecommerce.`making a product available` m
ON 
	s.idSupplier = m.idSupplier
JOIN product p
ON
	m.idProduct = p.idProduct;

-- Selecting all suppliers and the average price of all products each of them sell
    
SELECT s.registeredname, p.category, ROUND(AVG(p.price),2) as avg_price
FROM supplier s JOIN ecommerce.`making a product available` m
ON 
	s.idSupplier = m.idSupplier
JOIN product p
ON
	m.idProduct = p.idProduct
GROUP BY 
	s.registeredname;

-- Selecting what each client bought with the price and quantity

SELECT p.firstname, p.city, pr.category, pr.price, pr.quantity
FROM
	personclient p JOIN ecommerce.order o
ON
	p.idClient = o.idClient
JOIN
	productorder po
ON
	o.idOrder = po.idOrder
JOIN
	product pr
ON
	po.idProduct = pr.idProduct;

-- Selecting the sum of money each client spent

SELECT p.firstname, round(sum(pr.price),2) AS total, sum(pr.quantity) as total_qty
FROM
	personclient p JOIN ecommerce.order o
ON
	p.idClient = o.idClient
JOIN
	productorder po
ON
	o.idOrder = po.idOrder
JOIN
	product pr
ON
	po.idProduct = pr.idProduct
GROUP BY p.firstname;
