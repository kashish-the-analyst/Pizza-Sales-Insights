# Pizza-Sales-Insights

Analyzed pizza sales data using SQL to uncover sales patterns, product performance, and customer ordering behavior.Performed data exploration, aggregation, and joins across multiple tables to generate key business metrics.
Translated raw transactional data into meaningful insights to support data-driven decision making.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Table of Content
1. Overview
2. Project Objective
3. Dataset Description






---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Overview

The Pizza Sales Insights project focuses on analyzing transactional pizza sales data using SQL to understand business performance and customer ordering patterns. The dataset consists of multiple relational tables containing information about orders, pizza types, quantities, and pricing.

Through structured SQL queries, the project explores key business metrics such as total revenue, order volume, popular pizza categories, and customer demand trends. The analysis is organized into three main phases: 
𝟏. 𝐅𝐨𝐮𝐧𝐝𝐚𝐭𝐢𝐨𝐧 & 𝐈𝐧𝐬𝐩𝐞𝐜𝐭𝐢𝐨𝐧 
𝟐. 𝐅𝐢𝐥𝐭𝐞𝐫𝐢𝐧𝐠 & 𝐄𝐱𝐩𝐥𝐨𝐫𝐚𝐭𝐢𝐨𝐧 
𝟑. 𝐒𝐚𝐥𝐞𝐬 𝐏𝐞𝐫𝐟𝐨𝐫𝐦𝐚𝐧𝐜𝐞 𝐀𝐧𝐚𝐥𝐲𝐬𝐢𝐬
allowing a systematic approach to understanding the dataset.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Project Objective 

The main goals of this analysis are:

* Understand overall 𝐬𝐚𝐥𝐞𝐬 𝐩𝐞𝐫𝐟𝐨𝐫𝐦𝐚𝐧𝐜𝐞 of the pizza business
* Identify 𝐭𝐨𝐩-𝐬𝐞𝐥𝐥𝐢𝐧𝐠 𝐚𝐧𝐝 𝐥𝐞𝐚𝐬𝐭-𝐬𝐞𝐥𝐥𝐢𝐧𝐠 𝐩𝐢𝐳𝐳𝐚𝐬
* Analyze 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫 𝐨𝐫𝐝𝐞𝐫𝐢𝐧𝐠 𝐩𝐚𝐭𝐭𝐞𝐫𝐧𝐬
* Examine 𝐫𝐞𝐯𝐞𝐧𝐮𝐞 𝐜𝐨𝐧𝐭𝐫𝐢𝐛𝐮𝐭𝐢𝐨𝐧 𝐛𝐲 𝐩𝐢𝐳𝐳𝐚 𝐜𝐚𝐭𝐞𝐠𝐨𝐫𝐲 𝐚𝐧𝐝 𝐬𝐢𝐳𝐞
* Discover 𝐩𝐞𝐚𝐤 𝐨𝐫𝐝𝐞𝐫 𝐡𝐨𝐮𝐫𝐬 𝐚𝐧𝐝 𝐛𝐮𝐬𝐢𝐞𝐬𝐭 𝐝𝐚𝐲𝐬
* Generate insights that can support 𝐛𝐮𝐬𝐢𝐧𝐞𝐬𝐬 𝐝𝐞𝐜𝐢𝐬𝐢𝐨𝐧 𝐦𝐚𝐤𝐢𝐧𝐠
  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Tools & Technologies Used

* 𝐒𝐐𝐋 – Data querying and analysis
* 𝐌𝐲𝐒𝐐𝐋 – Database management system
* 𝐆𝐢𝐭𝐇𝐮𝐛 – Project documentation and version control

SQL was used extensively for:

* Data aggregation
* Table joins
* Filtering and grouping
* Business metric calculations.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Data Relationship



