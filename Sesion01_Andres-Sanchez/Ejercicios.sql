USE classicmodels;
SHOW tables;
DESCRIBE employees;
SELECT lastName 
FROM employees;
SELECT lastName, firstName, jobTitle 
FROM employees;
SELECT * 
FROM employees;
SELECT lastName, firstName, jobTitle 
FROM employees 
WHERE jobTitle = 'Sales Rep';
SELECT lastName, firstName, jobTitle, officeCode 
FROM employees 
WHERE jobTitle = 'Sales Rep' AND officeCode = 1;
SELECT lastName, firstName, jobTitle, officeCode 
FROM employees 
WHERE jobTitle = 'Sales Rep' OR officeCode = 1;
SELECT lastName, firstName, officeCode 
FROM employees 
WHERE officeCode IN (1, 2, 3);
SELECT lastName, firstName, jobTitle 
FROM employees 
WHERE jobTitle != 'Sales Rep';
SELECT lastName, firstName, officeCode 
FROM employees 
WHERE officeCode > 5;
SELECT lastName, firstName, officeCode 
FROM employees 
WHERE officeCode <= 4;
DESCRIBE customers;
SELECT customerName, country, state
FROM customers
WHERE country = 'USA' AND state = 'CA';
SELECT customerName, country, state, creditLimit
FROM customers
WHERE country = 'USA' AND state = 'CA' AND creditLimit > 100000;
SELECT customerName, country
FROM customers
WHERE country IN ('USA', 'France'); 
SELECT customerName, country, creditLimit
FROM customers
WHERE country IN ('USA', 'France') AND creditLimit > 100000;
DESCRIBE offices;
SELECT officeCode, city, phone, country
FROM offices
WHERE country IN ('USA', 'France');
SELECT officeCode, city, phone, country
FROM offices
WHERE country NOT IN ('USA', 'France');
DESCRIBE orders;
SELECT orderNumber, customerNumber, status, shippedDate
FROM orders
WHERE orderNumber IN (10165, 10287, 10310);
SELECT contactLastName, contactFirstName
FROM customers
ORDER BY contactLastName;
SELECT contactLastName, contactFirstName
FROM customers
ORDER BY contactLastName DESC;
SELECT contactLastName, contactFirstName
FROM customers
ORDER BY contactLastName DESC, contactFirstName ASC;
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC LIMIT 5;
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit LIMIT 5;
