<----- 1 task ----- >

USE db_theme_3;
SELECT id,
date,
YEAR(date) AS year,
MONTH(date) AS month,
DAY(date) AS day
FROM orders;

<----- 2 task ----- >

USE db_theme_3;
SELECT id,
date,
DATE_ADD(date, INTERVAL 1 DAY) AS updated_date
FROM orders;

<----- 3 task ----- >

USE db_theme_3;
SELECT id,
date,
UNIX_TIMESTAMP(date) AS seconds
FROM orders;

<----- 4 task ----- >

USE db_theme_3;
SELECT COUNT(*) AS total_rows
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';


<----- 5 task ----- >

USE db_theme_3;
SELECT id,
       date,
       JSON_OBJECT('id', id, 'date', date) AS json_object
FROM orders;