USE restaurant_db;

-- View the menu_items table 
SELECT * 
FROM menu_items;

-- Number of items on the menu
SELECT COUNT(*) 
FROM menu_items;

-- Least and most expensive items on the menu?
SELECT * 
FROM menu_items  
WHERE category ='Italian' 
ORDER BY price ASC;
            
SELECT * 
FROM menu_items 
WHERE category ='Italian' 
ORDER BY price DESC;

-- Least and most expensive italian dishes
SELECT * 
FROM menu_items 
ORDER BY price ASC;

SELECT * 
FROM menu_items 
ORDER BY price DESC;

-- Dishes in each category
SELECT  category, COUNT(menu_item_id) AS num_of_dishes 
FROM menu_items 
GROUP BY category;

-- Average dish price within each category
SELECT  category, AVG(price) AS avg_price 
FROM menu_items 
GROUP BY category;

-- View order_details table
SELECT * 
FROM order_details;

-- DATE RANGE OF TABLE
SELECT MIN(order_date) AS min_date , MAX(order_date) AS max_date 
FROM order_details;

-- orders made within this date range
SELECT  COUNT(DISTINCT order_id)  
FROM order_details;

-- items ordered within the date range
SELECT COUNT(order_details_id) AS num_of_items 
FROM order_details;

-- orders having most number of items
SELECT order_id, COUNT(item_id) AS num_of_items 
FROM order_details 
GROUP BY order_id 
ORDER BY num_of_items DESC;


-- orders more than 12 items
SELECT COUNT(*) FROM
	(SELECT order_id, COUNT(item_id) AS num_of_items 
    FROM order_details 
    GROUP BY order_id 
    HAVING num_of_items > 12) AS num_orders;


-- combine menu_items and order_details into single table
SELECT * 
FROM order_details AS od 
LEFT JOIN menu_items AS mi ON od.item_id = mi.menu_item_id ;

-- Least and most ordered items
SELECT item_name, COUNT(order_details_id) AS num_purchases 
FROM order_details AS od LEFT JOIN menu_items AS mi ON od.item_id = mi.menu_item_id  
GROUP BY item_name 
ORDER BY num_purchases ASC ;

SELECT item_name, COUNT(order_details_id) AS num_purchases 
FROM order_details AS od 
LEFT JOIN menu_items AS mi ON od.item_id = mi.menu_item_id  
GROUP BY item_name 
ORDER BY num_purchases DESC ;

-- categories they were in 
SELECT item_name, COUNT(order_details_id) AS num_purchases, category 
FROM order_details AS od LEFT JOIN menu_items AS mi ON od.item_id = mi.menu_item_id  
GROUP BY item_name, category 
ORDER BY num_purchases ASC ;

SELECT item_name, COUNT(order_details_id) AS num_purchases, category 
FROM order_details AS od LEFT JOIN menu_items AS mi ON od.item_id = mi.menu_item_id  
GROUP BY item_name, category 
ORDER BY num_purchases DESC ;

-- Top 5 orders that spent the most money
SELECT order_id, SUM(price) AS total_price 
FROM order_details AS od 
LEFT JOIN menu_items AS mi ON od.item_id = mi.menu_item_id 
GROUP BY order_id
ORDER BY total_price DESC 
LIMIT 5;

-- View the details of the highest spend order. Which specific items were purchased?
SELECT category, COUNT(item_id) AS num_items, SUM(price) AS price 
FROM order_details AS od 
LEFT JOIN menu_items AS mi ON od.item_id = mi.menu_item_id 
WHERE order_id = 440 
GROUP BY category ;

-- View the details of the top 5 highest spend orders
SELECT order_id, category, COUNT(item_id) AS num_items, SUM(price) AS price 
FROM order_details AS od 
LEFT JOIN menu_items AS mi ON od.item_id = mi.menu_item_id 
WHERE order_id IN (440, 2075, 1957, 330, 2675) 
GROUP BY category, order_id ;