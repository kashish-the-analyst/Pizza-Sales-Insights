# Pizza-Sales-Insights

Analyzed pizza sales data using SQL to uncover sales patterns, product performance, and customer ordering behavior.Performed data exploration, aggregation, and joins across multiple tables to generate key business metrics.
Translated raw transactional data into meaningful insights to support data-driven decision making.


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Table of Content
1. Overview
2. Project Objective
3. Dataset Description
        (i) Main Table
4. Tools & Technologies Used
5. Data Relationship
6. Key bUsiness Questions
        (i) Basci Analysis
        (ii) Product Performance
        (iii) Customer Behaviour
7. Sample SQL Query
8. Key Insights
9. Business Recommendations
10. Skill Demonstrated
11. Conclusion


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Overview

The Pizza Sales Insights project focuses on analyzing transactional pizza sales data using SQL to understand business performance and customer ordering patterns. The dataset consists of multiple relational tables containing information about orders, pizza types, quantities, and pricing.

Through structured SQL queries, the project explores key business metrics such as total revenue, order volume, popular pizza categories, and customer demand trends. The analysis is organized into three main phases: 
𝟏. 𝐅𝐨𝐮𝐧𝐝𝐚𝐭𝐢𝐨𝐧 & 𝐈𝐧𝐬𝐩𝐞𝐜𝐭𝐢𝐨𝐧 
𝟐. 𝐅𝐢𝐥𝐭𝐞𝐫𝐢𝐧𝐠 & 𝐄𝐱𝐩𝐥𝐨𝐫𝐚𝐭𝐢𝐨𝐧 
𝟑. 𝐒𝐚𝐥𝐞𝐬 𝐏𝐞𝐫𝐟𝐨𝐫𝐦𝐚𝐧𝐜𝐞 𝐀𝐧𝐚𝐥𝐲𝐬𝐢𝐬
allowing a systematic approach to understanding the dataset.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Project Objective 

The main goals of this analysis are:

* Understand overall 𝐬𝐚𝐥𝐞𝐬 𝐩𝐞𝐫𝐟𝐨𝐫𝐦𝐚𝐧𝐜𝐞 of the pizza business
* Identify 𝐭𝐨𝐩-𝐬𝐞𝐥𝐥𝐢𝐧𝐠 𝐚𝐧𝐝 𝐥𝐞𝐚𝐬𝐭-𝐬𝐞𝐥𝐥𝐢𝐧𝐠 𝐩𝐢𝐳𝐳𝐚𝐬
* Analyze 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫 𝐨𝐫𝐝𝐞𝐫𝐢𝐧𝐠 𝐩𝐚𝐭𝐭𝐞𝐫𝐧𝐬
* Examine 𝐫𝐞𝐯𝐞𝐧𝐮𝐞 𝐜𝐨𝐧𝐭𝐫𝐢𝐛𝐮𝐭𝐢𝐨𝐧 𝐛𝐲 𝐩𝐢𝐳𝐳𝐚 𝐜𝐚𝐭𝐞𝐠𝐨𝐫𝐲 𝐚𝐧𝐝 𝐬𝐢𝐳𝐞
* Discover 𝐩𝐞𝐚𝐤 𝐨𝐫𝐝𝐞𝐫 𝐡𝐨𝐮𝐫𝐬 𝐚𝐧𝐝 𝐛𝐮𝐬𝐢𝐞𝐬𝐭 𝐝𝐚𝐲𝐬
* Generate insights that can support 𝐛𝐮𝐬𝐢𝐧𝐞𝐬𝐬 𝐝𝐞𝐜𝐢𝐬𝐢𝐨𝐧 𝐦𝐚𝐤𝐢𝐧𝐠
  
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Dataset Description

The dataset consists of multiple relational tables representing different aspects of pizza sales transactions.

### Main Table

𝟏. 𝐨𝐫𝐝𝐞𝐫𝐬
Contains details about each order placed by customers.

Columns include:

* order_id
* order_date
* order_time


𝟐. 𝐨𝐫𝐝𝐞𝐫_𝐝𝐞𝐭𝐚𝐢𝐥𝐬
Contains information about the quantity of pizzas ordered in each order.

Columns include:

* order_details_id
* order_id
* pizza_id
* quantity


𝟑. 𝐩𝐢𝐳𝐳𝐚𝐬
Contains details about pizza size and price.

Columns include:

* pizza_id
* pizza_type_id
* size
* price


𝟒. 𝐩𝐢𝐳𝐳𝐚_𝐭𝐲𝐩𝐞𝐬
Contains descriptive information about each pizza type.

Columns include:

* pizza_type_id
* name
* category
* ingredients

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Tools & Technologies Used

* 𝐒𝐐𝐋 – Data querying and analysis
* 𝐌𝐲𝐒𝐐𝐋 – Database management system
* 𝐆𝐢𝐭𝐇𝐮𝐛 – Project documentation and version control

SQL was used extensively for:

* Data aggregation
* Table joins
* Filtering and grouping
* Business metric calculations.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Data Relationship

The tables are connected using 𝐩𝐫𝐢𝐦𝐚𝐫𝐲 𝐚𝐧𝐝 𝐟𝐨𝐫𝐞𝐢𝐠𝐧 𝐤𝐞𝐲𝐬:

* orders.order_id → order_details.order_id
* order_details.pizza_id → pizzas.pizza_id
* pizzas.pizza_type_id → pizza_types.pizza_type_id

These relationships allow the dataset to be combined and analyzed effectively.


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


 ## Key Business Questions

The following analytical questions were explored using SQL queries:

### Basic Analysis

1. What is the 𝐭𝐨𝐭𝐚𝐥 𝐧𝐮𝐦𝐛𝐞𝐫 𝐨𝐟 𝐨𝐫𝐝𝐞𝐫𝐬 𝐩𝐥𝐚𝐜𝐞𝐝?
2. What is the 𝐭𝐨𝐭𝐚𝐥 𝐫𝐞𝐯𝐞𝐧𝐮𝐞 𝐠𝐞𝐧𝐞𝐫𝐚𝐭𝐞𝐝* 𝐟𝐫𝐨𝐦 𝐩𝐢𝐳𝐳𝐚 𝐬𝐚𝐥𝐞𝐬?
3. What is the 𝐚𝐯𝐞𝐫𝐚𝐠𝐞 𝐨𝐫𝐝𝐞𝐫 𝐯𝐚𝐥𝐮𝐞?

### Product Performance

4. Which pizza has the 𝐡𝐢𝐠𝐡𝐞𝐬𝐭 𝐩𝐫𝐢𝐜𝐞?
5. What are the 𝐭𝐨𝐩 𝟓 𝐦𝐨𝐬𝐭 𝐨𝐫𝐝𝐞𝐫𝐞𝐝 𝐩𝐢𝐳𝐳𝐚𝐬?
6. Which pizza category generates the 𝐡𝐢𝐠𝐡𝐞𝐬𝐭 𝐬𝐚𝐥𝐞𝐬 𝐯𝐨𝐥𝐮𝐦𝐞?
7. Which pizza types generate the 𝐡𝐢𝐠𝐡𝐞𝐬𝐭 𝐫𝐞𝐯𝐞𝐧𝐮𝐞?

### Customer Behavior

8. What is the 𝐦𝐨𝐬𝐭 𝐜𝐨𝐦𝐦𝐨𝐧 𝐩𝐢𝐳𝐳𝐚 𝐬𝐢𝐳𝐞 𝐨𝐫𝐝𝐞𝐫𝐞𝐝?
9. What are the 𝐩𝐞𝐚𝐤 𝐨𝐫𝐝𝐞𝐫𝐢𝐧𝐠 𝐡𝐨𝐮𝐫𝐬 𝐝𝐮𝐫𝐢𝐧𝐠 𝐭𝐡𝐞 𝐝𝐚𝐲?
10. Which 𝐝𝐚𝐲𝐬 𝐨𝐟 𝐭𝐡𝐞 𝐰𝐞𝐞𝐤 𝐫𝐞𝐜𝐞𝐢𝐯𝐞 𝐭𝐡𝐞 𝐦𝐨𝐬𝐭 𝐨𝐫𝐝𝐞𝐫𝐬?

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Sample SQL Query

Example query to Price differences between different sizes of the same pizza

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


This query compare different 𝐬𝐢𝐳𝐞 𝐨𝐟 𝐭𝐡𝐞 𝐬𝐚𝐦𝐞 𝐩𝐢𝐳𝐳𝐚 𝐭𝐲𝐩𝐞 to calculate the 𝐩𝐫𝐢𝐜𝐞 𝐝𝐢𝐟𝐟𝐞𝐫𝐞𝐧𝐜𝐞 𝐛𝐞𝐭𝐰𝐞𝐞𝐧 𝐡𝐢𝐠𝐡𝐞𝐫-𝐩𝐫𝐢𝐜𝐞𝐝 𝐚𝐧𝐝 𝐥𝐨𝐰𝐞𝐫 𝐩𝐫𝐢𝐜𝐞𝐝 𝐩𝐢𝐳𝐳𝐚𝐬.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Key Insights

After analyzing the dataset using SQL queries, several important insights were discovered:

𝟏. 𝐏𝐞𝐚𝐤 𝐎𝐫𝐝𝐞𝐫𝐢𝐧𝐠 𝐓𝐢𝐦𝐞
Most pizza orders occur during 𝐥𝐮𝐧𝐜𝐡 𝐡𝐨𝐮𝐫𝐬 𝐚𝐧𝐝 𝐞𝐯𝐞𝐧𝐢𝐧𝐠 𝐡𝐨𝐮𝐫𝐬, indicating high demand during meal times.

𝟐. 𝐏𝐨𝐩𝐮𝐥𝐚𝐫 𝐏𝐢𝐳𝐳𝐚 𝐒𝐢𝐳𝐞𝐬
Large size pizzas contribute significantly to total sales, suggesting that customers prefer larger portions.

𝟑. 𝐁𝐞𝐬𝐭-𝐒𝐞𝐥𝐥𝐢𝐧𝐠 𝐏𝐢𝐳𝐳𝐚𝐬
A small number of pizza types account for a large share of total orders, indicating strong customer preference for certain menu items.

𝟒. 𝐂𝐚𝐭𝐞𝐠𝐨𝐫𝐲 𝐏𝐞𝐫𝐟𝐨𝐫𝐦𝐚𝐧𝐜𝐞
Some pizza categories consistently generate higher sales compared to others.

𝟓. 𝐑𝐞𝐯𝐞𝐧𝐮𝐞 𝐂𝐨𝐧𝐜𝐞𝐧𝐭𝐫𝐚𝐭𝐢𝐨𝐧
Top performing pizzas generate a large portion of the total revenue, which highlights the importance of focusing on high-performing products.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Business Recommendations

Based on the analysis, the following recommendations can help improve business performance:

* Promote 𝐭𝐨𝐩-𝐬𝐞𝐥𝐥𝐢𝐧𝐠 𝐩𝐢𝐳𝐳𝐚𝐬 through targeted marketing campaigns
* Offer 𝐛𝐮𝐧𝐝𝐥𝐞 𝐝𝐞𝐚𝐥𝐬 𝐨𝐫 𝐜𝐨𝐦𝐛𝐨𝐬 during peak ordering hours
* Optimize menu offerings by focusing on 𝐡𝐢𝐠𝐡-𝐫𝐞𝐯𝐞𝐧𝐮𝐞 𝐩𝐢𝐳𝐳𝐚 𝐜𝐚𝐭𝐞𝐠𝐨𝐫𝐢𝐞𝐬
* Introduce promotions for 𝐥𝐞𝐬𝐬 𝐩𝐨𝐩𝐮𝐥𝐚𝐫 𝐩𝐢𝐳𝐳𝐚𝐬 to increase their sales
* Improve inventory planning based on 𝐩𝐨𝐩𝐮𝐥𝐚𝐫 𝐩𝐢𝐳𝐳𝐚 𝐬𝐢𝐳𝐞𝐬 𝐚𝐧𝐝 𝐜𝐚𝐭𝐞𝐠𝐨𝐫𝐢𝐞𝐬

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Skills Demonstrated

This project demonstrates several important 𝐝𝐚𝐭𝐚 𝐚𝐧𝐚𝐥𝐲𝐬𝐭 𝐬𝐤𝐢𝐥𝐥𝐬:

* SQL querying and data manipulation
* Data exploration and analysis
* Business problem solving
* Analytical thinking
* Translating data into business insights

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Conclusion

This project shows how SQL can be used to analyze transactional sales data and extract meaningful insights for business decision-making.

By analyzing pizza sales data, I'm able to understand customer behavior, identify high-performing products, and discover patterns that can help improve overall sales strategy.

The analysis highlights the importance of 𝐝𝐚𝐭𝐚-𝐝𝐫𝐢𝐯𝐞𝐧 𝐝𝐞𝐜𝐢𝐬𝐢𝐨𝐧 𝐦𝐚𝐤𝐢𝐧𝐠 𝐢𝐧 𝐭𝐡𝐞 𝐫𝐞𝐬𝐭𝐚𝐮𝐫𝐚𝐧𝐭 𝐢𝐧𝐝𝐮𝐬𝐭𝐫y.


