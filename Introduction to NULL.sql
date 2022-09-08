update leads
set phone = NULL 
where id = 3;

SELECT *
FROM leads
ORDER BY phone;

SELECT *
FROM leads
ORDER BY phone DESC;

SELECT *
FROM leads
WHERE phone IS NULL;

SELECT *
FROM leads
WHERE email IS NOT NULL;

SELECT id, first_name, last_name, email, phone
FROM leads
GROUP BY email;

SELECT id, 
first_name, 
last_name, 
IFNULL(phone, 'N/A') phone
FROM leads;

SELECT id,
first_name,
last_name,
COALESCE(phone, email, 'N/A') contact
FROM leads;