# E-Commerce Project

This project was developed in MySQL Workbench as part of the [Database Experience](https://www.dio.me/bootcamp/database-experience) bootcamp from Digital Innovation One (DIO). It was intended to create an E-Commerce Entity-Relationship Model and improve it, answering some questions.

## Main entities:

- Clients (divided into Natural Person and Legal Person)
- Seller (Third parties that sells the products. E.g. a website)
- Supplier
- Products
- Stock
- Orders

## Context:

- Customer may have more than one payment method;
- Customer may have more than one order;
- Customer can check the price of the product;
- At any time the customer can check the status of the order and delivery;
- Third parties may use the site to make sales;
- Indication of who sells and delivers the product;
- Product indication available.

## Challenge:

- Payment – You may have registered more than one payment method:
  - A table with of paymment methods was created
  - Each client can have one or more paymment methods
- Delivery – There are status and tracking code:
  - An entity with the information of the order was created with the status and tracking code
- Create the SQL Script of the Conceptual Model
- Insert data into the tables
- Retrieve information through SQL Statements
  - SELECT
  - WHERE
  - Create expressions to generate derived attributes
  - Use ORDER BY
  - Use HAVING
  - Join tables with JOIN

The model can be seen below and downloaded above. If you find that this model should pass through updates, feel free to recommend it.

## Model:

<p align="center">
  <img src="https://github.com/thaynanff/Databases-and-SQL/blob/main/1.%20E-Commerce%20Model/E-Commerce%20Project%20v2.png?raw=true">
</p>


## Some questions that were answered with queries

PS: more can be seen in the SQL Script that is available in the files.

- How many men and women we have as clients?

```
SELECT sex, count(1) AS Qty
FROM personclient
GROUP BY sex
ORDER BY Qty desc;
```

- What are the products that each supplier provides?

```
SELECT s.registeredname, p.category, p.price
FROM supplier s JOIN ecommerce.`making a product available` m
ON 
	s.idSupplier = m.idSupplier
JOIN product p
ON
	m.idProduct = p.idProduct;
```

- What are the average price that each supplier provides?

```
SELECT s.registeredname, p.category, ROUND(AVG(p.price),2) as avg_price
FROM supplier s JOIN ecommerce.`making a product available` m
ON 
	s.idSupplier = m.idSupplier
JOIN product p
ON
	m.idProduct = p.idProduct
GROUP BY 
	s.registeredname;
```
- What are the products tha each client bought?

```
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
```

- What are the total spent of each client?

```
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
```