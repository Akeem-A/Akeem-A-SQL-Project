/* MySQL Assignment 1 Part 1 Queries */


/* Task 1 - Showing the points multipled by 10 & added by 100 */
SELECT 
    last_name, first_name, points, points * 10, points + 100
FROM
    CUSTOMERS;
/* Task 1 Including a header on one of the columns to showcase discount factor  */
SELECT 
    last_name, first_name, points, (points + 10) * 100 'discount_factor'
FROM
    CUSTOMERS;
    
/* Task 2 - We're showing the original price of the products and the new 
price of the products which have a 10% increase on the original product price*/

 SELECT 
    product_id,
    name,
    quantity_in_stock,
    unit_price,
    unit_price * 1.1 'new_price'
FROM
    products;
    
  /* Task 3 - Here we're finding the customers with a birth date after 1990-01-01. I also implemented the use of deleting
tables which I added to the Schema ealier and deleting a column that I added in the customer table*/
DROP TABLE discount_factor;
ALTER TABLE Customers  DROP COLUMN discount_factor;
SELECT 
    *
FROM
    customers
WHERE
    birth_date > '1990-01-01';
/* Task 4 - In the sql Inventory Schema we're finding out the name of the product which has
the most amount in stock which is "Sweet Pea Sprouts" */

SELECT 
    *
FROM
    products
WHERE
    quantity_in_stock IN (SELECT 
            MAX(quantity_in_stock)
        FROM
            products); 
/* Task 5 - We're finding out the name of the most expensive product in the SQL Inventory */

SELECT 
    *
FROM
    products
WHERE
    unit_price IN (SELECT 
            MAX(unit_price)
        FROM
            products);
/* Task 6 - We're finding out the customer with the oldest birthdate with the first name, last name 
address and the birthdate displayed */

SELECT * FROM customers

WHERE birth_date IN (SELECT MIN(birth_date) FROM customers);