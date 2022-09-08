SELECT COUNT(*)
FROM customers;

SELECT 
'customers' tablename, 
 COUNT(*) AS amount
FROM customers 
UNION 
SELECT 
'orders' tablename, 
COUNT(*) as amount
FROM orders;

SELECT 
    table_name
FROM
    information_schema.tables
WHERE
    table_schema = 'classicmodels'
        AND table_type = 'BASE TABLE';

WITH table_list AS (
SELECT
    table_name
  FROM information_schema.tables 
  WHERE table_schema = 'classicmodels' AND
        table_type = 'BASE TABLE'
) 
SELECT CONCAT(
            GROUP_CONCAT(CONCAT("SELECT '",table_name,"' table_name,COUNT(*) rows FROM ",table_name) SEPARATOR " UNION "),
            ' ORDER BY table_name'
        )
INTO @sql
FROM table_list; 

SELECT 
    table_name, 
    table_rows
FROM
    information_schema.tables
WHERE
    table_schema = 'classicmodels'
ORDER BY table_name;


