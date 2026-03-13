/*                                                                 Pizza sales Project

- Database creation & table design
- Filtering & operators (`WHERE`, `IN`, `BETWEEN`, `LIKE`, `AND/OR/NOT`)
- Aggregations (`SUM`, `AVG`, `COUNT`, `MIN`, `MAX`, `GROUP BY`, `HAVING`)
- Joins (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`, `SELF JOIN`)
- Data cleaning (`DISTINCT`, `COALESCE`, handling NULLs)
*/

USE PizzaInsights;
-- ------------------------------------------- START with Phase - 1 ------------------------------------------------- --

# Questions
-- Phase 1: Foundation & Inspection 

# 1. List all unique pizza categories (`DISTINCT`).

SELECT DISTINCT 
     category 
FROM 
    pizza_types;

/* 2. display `pizza_type_id`, `name`, and ingredients, 
replacing NULL ingredients with `"Missing Data"`. Show first 5 rows. */


SELECT 
    pizza_type_id,
    name,
    COALESCE(ingredients, "Missing Data") AS ingredients
FROM 
    pizza_types
LIMIT 5;
    
# 3. Check for pizzas missing a price (`IS NULL`).

SELECT *
FROM pizzas
WHERE price IS NULL;

-- --------------------------------------END with Phase - 1 -------------------------------------------------- --

-- -----------------------------------------SATRT with Phase -2 ------------------------------------------------  --
#Questions
-- Phase 2: Filtering & Exploration

-- 1. Orders placed on `'2015-01-01'` (`SELECT` + `WHERE`).

SELECT *
FROM orders
WHERE date = '2015-01-01';



-- 2. List pizzas with `price` descending.

SELECT *
FROM pizzas
ORDER BY  price DESC;


-- 3. Pizzas sold in sizes `'L'` or `'XL'`.

SELECT *
FROM pizzas
WHERE size = 'L' OR 'XL';


-- 4. Pizzas priced between $15.00 and $17.00.

SELECT * 
FROM pizzas
WHERE price BETWEEN 15.00 AND 17.00;


-- 5. Pizzas with `"Chicken"` in the name.

SELECT 
    pizza_type_id,
    name
FROM pizza_types
WHERE name LIKE '%Chicken%';


-- 6. Orders on `'2015-02-15'` or placed after 8 PM.

SELECT*
FROM orders
WHERE date = '2015-02-15'AND
      time >  '20:00:00';
-- -------------------------------------------- END with Phase 2 -------------------------------- --

-- ---------------------------------------------START with Phase 3 ------------------------------- --

#Questions

-- Phase 3: Sales Performance

-- 1. Total quantity of pizzas sold (`SUM`).



SELECT  
   SUM(quantity) AS total_pizza_sold
FROM  order_details;



-- 2. Average pizza price (`AVG`).

SELECT
    ROUND(AVG(price),2) AS avg_pizza_price
FROM pizzas;


-- 3. Total order value per order (`JOIN`, `SUM`, `GROUP BY`).

SELECT 
    od.order_id,
    SUM(od.quantity*p.price) AS per_order_value
FROM pizzas AS p
JOIN order_details AS od
     ON od.pizza_id = p.pizza_id
GROUP BY od.order_id; 


-- 4. Total quantity sold per pizza category (`JOIN`, `GROUP BY`).

SELECT 
     pt.category AS pizza_category,
    SUM(od.quantity) AS total_quantity_sold
FROM pizzas AS p
   JOIN order_details AS od 
        ON od.pizza_id = p.pizza_id
     JOIN pizza_types AS pt
       ON pt.pizza_type_id = p.pizza_type_id
GROUP BY  pt.category;



-- 5. Categories with more than 5,000 pizzas sold (`HAVING`).

 SELECT 
     pt.category AS pizza_category,
    SUM(od.quantity) AS total_quantity_sold
FROM pizzas AS p
JOIN order_details AS od 
        ON od.pizza_id = p.pizza_id
JOIN pizza_types AS pt
       ON pt.pizza_type_id = p.pizza_type_id
GROUP BY  pt.category
HAVING   SUM(od.quantity) > 5000;
  

-- 6. Pizzas never ordered (`LEFT/RIGHT JOIN`).

SELECT 
    p.pizza_id,
    pt.name,
    p.size,
    p.price,
    od.quantity AS total_quantity_sold
FROM pizzas AS p
LEFT JOIN order_details AS od 
        ON od.pizza_id = p.pizza_id
LEFT JOIN pizza_types AS pt
       ON pt.pizza_type_id = p.pizza_type_id
WHERE od.pizza_id IS NULL;

-- 7. Price differences between different sizes of the same pizza (`SELF JOIN`).

SELECT 
     p1.pizza_type_id AS id_1,
     pt.name AS pizza_name,
     p1.size AS size_1,
     p1.price AS price_1,
     p2.size AS size_2,
     p2.price AS price_2,
     (p1.price - p2.price) AS price_imbalance
FROM pizzas AS p1
JOIN pizzas AS p2
   ON p1.pizza_type_id = p2.pizza_type_id
   AND p1.price > p2.price 
JOIN pizza_types AS pt 
   ON p1.pizza_type_id = pt.pizza_type_id;
   