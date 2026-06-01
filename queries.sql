-- DATA QUERY LANGUAGE (DQL)
-- NOTE: Query structure scales in complexity from fundamentals to advanced relational aggregations, set operations and subqueries.



-- 1. Dynamically calculates employee age profiles from stored birthdates and orders them from oldest to youngest.

SELECT emp_name, expertise, TIMESTAMPDIFF(YEAR, emp_birth, SYSDATE()) AS Age

FROM Employees

ORDER BY Age DESC;



-- 2. Combines fragmented geographic attributes into a unified string and aligns them alphabetically (A-Z) by client name.

SELECT cusomer_name, CONCAT_WS(" ", country, city, postal_Code) AS Full_Address

FROM Customers

ORDER BY cusomer_name ASC;



-- 3. Filters out employees with sales expertise by using a wild-card scan to match substring variations.

SELECT emp_id AS ID, emp_name AS Sales_Related_Majors

FROM Employees

WHERE expertise LIKE "%sales%";



-- 4. Identifies categories missing descriptions by using a wild-card scan to filter out that The second character must be 'e' meanwhile the third character couldn't be 's'.

SELECT category_id, category_name

FROM Categories

WHERE Description IS NULL AND category_name LIKE "_e%" AND category_name NOT LIKE "__s%";



-- 5. Filters out supplier name and email for specific international address strings and Order them in reverse order (Newest to Oldest Supplier ID).

SELECT supplier_name, email 

FROM suppliers

WHERE  address IN("Nantes France 44000", "Bracke Sweden 84467")

Order by supplier_id DESC;



-- 6. Extracts unique catalog selections under specific menu categories and Excludes 'Döner Kebabı' and Avoids specific shipper IDs(92, 95).

SELECT DISTINCT item_name AS Kebap_Menu, price AS Price_in_TL, shipper_name

FROM Items
JOIN Shippers

WHERE category_id=102 AND item_name<>"Döner Kebabı" AND shipper_id NOT BETWEEN 92 AND 95;




-- 7. Extracts unique dessert selections and pairs them with supplier metadata and Orders items by price in descending order (Highest to Lowest Cost) and Links items directly to their verified supplier source with an INNER JOIN.

SELECT DISTINCT item_name AS Cake_Menu, price AS Price_in_USD, supplier_name, suppliers.phone

FROM Items INNER JOIN suppliers ON Items.supplier_id=suppliers.supplier_id

WHERE category_id=104 

Order by price DESC;



-- 8. Extracts unique categories and Converting them into uppercase and Excludes shipper name ("Peter Griffin") and Ordered by Category ID in ascending order.

SELECT DISTINCT category_id, UPPER(category_name) "UPPER_CATEGORY_NAME", UPPER(shipper_name) "UPPER_SHIPPER_NAME"
  
FROM Categories JOIN Shippers
  
WHERE shipper_name<>"Peter Griffin"
  
order by category_id ASC;



-- 9. Aggregates client geographic to extract total user volume in France and Compute target counts by grouping (matching) country keys.

SELECT country, COUNT(customer_id) "French Customers"
  
FROM Customers
  
where country="fr"
  
GROUP by country;



-- 10. Computes total billing value per customer transaction by connecting 4 distinct relational tables and Adds order tracking dates and Grouping them by (customer_name).

SELECT cusomer_name, order_date , SUM(price*amount) "Total Cost"
  
FROM Customers INNER JOIN Orders ON Customers.customer_id=Orders.customer_id
  
INNER JOIN OrderDetails ON Orders.order_id=OrderDetails.order_id

INNER JOIN Items ON OrderDetails.item_id=Items.item_id
  
GROUP by cusomer_name;



-- 11. Evaluates high-value transactions (>100 TL) to apply a 10% discount and Rounds to the nearest integer value and Prioritizes customers in descending order (Highest to Lowest).

SELECT cusomer_name, price*amount*0.1 AS Discount, ROUND(((price*amount)-(price*amount*0.1)),0) "Total Cost with Discount"
  
FROM Customers INNER JOIN Orders ON Customers.customer_id=Orders.customer_id
  
INNER JOIN OrderDetails ON Orders.order_id=OrderDetails.order_id
  
INNER JOIN Items ON OrderDetails.item_id=Items.item_id
  
WHERE price*amount>100 
  
GROUP by cusomer_name
  
order by SUM(price*amount) DESC;



-- 12. Identifies categories whose average product price is greater than or equal the global average price across the entire items and Implements subquery inside the HAVING filter where average price is calculated/rounded to 2 decimal places.

SELECT c.category_name, ROUND(AVG(i.price), 2) AS Average_Category_Price
  
FROM Categories c
  
INNER JOIN Items i ON c.category_id = i.category_id
  
GROUP BY c.category_id, c.category_name
  
HAVING AVG(i.price) >= (SELECT AVG(price) FROM Items;



-- 13. Unifies two distinct customer transactions into a single view Isolates premium high-value orders (>500 TL) and budget-friendly orders (<50 TL) and Implements UNION to merge the result sets.

SELECT DISTINCT c.cusomer_name AS "Customer Names", o.order_id, i.item_name, i.price * od.Amount AS Total_Customer_Cost
  
FROM Customers c
  
INNER JOIN Orders o ON c.customer_id = o.customer_id
  
INNER JOIN OrderDetails od ON o.order_id = od.order_id
  
INNER JOIN Items i ON od.item_id = i.item_id
  
WHERE (i.price * od.Amount) > 500 -- Rich

  
UNION

  
SELECT DISTINCT c.cusomer_name, o.order_id, i.item_name, i.price * od.Amount AS Total_Customer_Cost
  
FROM Customers c
  
INNER JOIN Orders o ON c.customer_id = o.customer_id
  
INNER JOIN OrderDetails od ON o.order_id = od.order_id
  
INNER JOIN Items i ON od.item_id = i.item_id
  
WHERE (i.price * od.Amount) < 50; -- Poor



-- 14. Extracts item transactions linked to categories missing documentation and Converts raw timestamps into readable strings (e.g: 'Tuesday 2nd June 2026') and Combines 4 tables with joins (RIGHT and LEFT Joins).

SELECT i.item_id,i.item_name, i.category_id, s.supplier_name, DATE_FORMAT(o.order_date, '%W %D %M %Y') AS ordered_on, Description
  
FROM suppliers s JOIN Items i on s.supplier_id=i.supplier_id
  
Right JOIN OrderDetails od ON i.item_id = od.item_id
  
LEFT JOIN Orders o ON od.order_id = o.order_id
  
WHERE i.category_id IN (SELECT category_id FROM Categories WHERE Description IS NULL)
  
GROUP by supplier_name    
  
ORDER BY o.order_date DESC;
