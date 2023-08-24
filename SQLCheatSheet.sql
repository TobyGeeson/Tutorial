-- SELECT statement: Retrieve data from a table
SELECT column1, column2
FROM table_name
WHERE condition;

-- DISTINCT keyword: Retrieve unique values
SELECT DISTINCT column1
FROM table_name;

-- WHERE clause: Filter rows based on conditions
SELECT *
FROM table_name
WHERE column1 > 100 AND column2 = 'value';

-- LIKE Operator: Pattern matching in string values
SELECT *
FROM table_name
WHERE column3 LIKE 'abc%';

-- ORDER BY clause: Sort the result set
SELECT *
FROM table_name
ORDER BY column1 DESC;

-- LIMIT clause: Limit the number of rows returned
SELECT *
FROM table_name
LIMIT 10;

-- JOIN operations: Combine data from multiple tables
SELECT t1.column, t2.column
FROM table1 t1
JOIN table2 t2 ON t1.key = t2.key;

-- INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN

-- Aggregation functions: Perform calculations on groups of data
SELECT COUNT(*), AVG(column1), SUM(column2)
FROM table_name
GROUP BY column3;

-- HAVING clause: Filter the result of GROUP BY
SELECT column1, AVG(column2)
FROM table_name
GROUP BY column1
HAVING AVG(column2) > 50;

-- Subqueries: Embed queries within other queries
SELECT column1
FROM table_name
WHERE column2 IN (SELECT column2 FROM other_table);

-- CASE statement: Perform conditional logic
SELECT column1,
       CASE
           WHEN column2 > 50 THEN 'High'
           ELSE 'Low'
       END AS column2_category
FROM table_name;

-- NULL handling: IS NULL, IS NOT NULL
SELECT column1
FROM table_name
WHERE column2 IS NULL;

-- UNION and UNION ALL: Combine results from multiple queries
SELECT column1 FROM table1
UNION
SELECT column1 FROM table2;

-- Create a new table
CREATE TABLE new_table (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- INSERT statement: Add new rows to a table
INSERT INTO new_table (id, name, age)
VALUES (1, 'Alice', 25), (2, 'Bob', 30);

-- UPDATE statement: Modify existing data
UPDATE table_name
SET column1 = 'new_value'
WHERE condition;

-- DELETE statement: Remove rows from a table
DELETE FROM table_name
WHERE condition;

-- Data Types:
-- Common data types include INT, VARCHAR, DATE, FLOAT, BOOLEAN, etc.

-- Creating a table with different data types
CREATE TABLE data_types_table (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary FLOAT,
    is_active BOOLEAN
);

-- Dealing with Date Columns:

-- Create a table with a DATE column
CREATE TABLE sales (
    id INT PRIMARY KEY,
    sale_date DATE,
    amount DECIMAL(10, 2)
);

-- Filter rows based on date conditions
SELECT id, sale_date, amount
FROM sales
WHERE sale_date BETWEEN '2023-08-01' AND '2023-08-15';
