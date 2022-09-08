ALTER TABLE products 
ADD FULLTEXT(productline);

SELECT 
productName, 
productLine 
FROM products 
WHERE 
    MATCH(productLine) 
    AGAINST('Classic');
    
SELECT 
productName, 
productLine 
FROM products 
WHERE 
MATCH(productline) 
AGAINST('Classic,Vintage' IN NATURAL LANGUAGE MODE);

ALTER TABLE products 
ADD FULLTEXT(productName);

SELECT 
productName, 
productLine 
FROM products 
WHERE 
	MATCH(productName) 
    AGAINST('1932,Ford');
    
SELECT productName, productline
FROM products
WHERE MATCH(productName) 
      AGAINST('Truck' IN BOOLEAN MODE );
      
SELECT productName, productline
FROM products
WHERE MATCH(productName) AGAINST('Truck -Pickup' IN BOOLEAN MODE );





