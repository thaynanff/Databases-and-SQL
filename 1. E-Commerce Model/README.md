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


