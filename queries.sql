<----- 1 task ----- >

use db_theme_3;

SELECT *,
     (SELECT customer_id 
	 FROM orders
	 WHERE id = order_details.order_id) AS customer_id
FROM order_details;

<----- 2 task ----- >

SELECT *
FROM order_details
WHERE order_id IN (SELECT id FROM orders WHERE shipper_id = 3);

<----- 3 task ----- >

SELECT order_id, AVG(quantity) as avg_quantity
FROM (SELECT * FROM order_details WHERE quantity > 10) AS temp_table
GROUP BY order_id;

<----- 4 task ----- >

WITH TemporalTable AS (
  SELECT * 
  FROM order_details 
  WHERE quantity > 10)
SELECT order_id, AVG(quantity) as avg_quantity
FROM TemporalTable
GROUP BY order_id;

<----- 5 task ----- >

DROP FUNCTION IF EXISTS Division_function;

DELIMITER //

CREATE FUNCTION Division_function(number1 FLOAT, number2 FLOAT)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
    DECLARE result FLOAT;
    SET result = number1 / number2;
    RETURN result;
END //

DELIMITER ;

SELECT *, Division_function(quantity, 2.0) AS divided_quantity
FROM order_details;

