# goit-rdb-hw-07

## Working with time. Additional built-in SQL functions.

### TASKS

1. Write an SQL query that selects the year, month, and day from the date
   attribute in the orders table.
   Display them as three separate attributes alongside the id attribute and the
   original date attribute (total of 5 attributes).

2. Write an SQL query that adds one day to the date attribute in the orders table.
   Display the id attribute, the original date attribute, and the result of the addition.

3. Write an SQL query that displays the number of seconds from the start of the epoch for the date attribute in the orders table (showing its timestamp value). Find and apply the necessary function. Display the id attribute, the original date attribute, and the result of the function.

4. Write an SQL query that counts the rows in the orders table with a date attribute between '1996-07-10 00:00:00' and '1996-10-08 00:00:00'.

5. Write an SQL query that displays the id attribute, the date attribute, and a JSON object {"id": <id attribute of the row>, "date": <date attribute of the row>} for the orders table. Use a function to create the JSON object.
