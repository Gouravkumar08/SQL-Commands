Q.1378. Replace Employee ID With The Unique Identifier
Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
Return the result table in any order.
Table: Employees
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
  
Solution:
          select unique_id, name from
          Employees left join EmployeeUNI
          on Employees.id=EmployeeUNI.id; 

/*****************************************************************************************************************************************/
Q.1068. Product Sales Analysis I
Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
Return the resulting table in any order.
Table: Sales
+-------------+-------+
| Column Name | Type  |
+-------------+-------+
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |
+-------------+-------+
  
Table: Product
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
+--------------+---------+
  
Solution:
          select product_name, year, price 
          from Sales s
          join Product p
          on s.product_id=p.product_id;

/******************************************************************************************************************************************/
Q.1581. Customer Who Visited but Did Not Make Any Transactions
Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
Return the result table sorted in any order.
Table: Visits
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+

Table: Visits
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+

Solution:
          select customer_id, count(*) as count_no_trans
          from Visits v
          left join Transactions t
              on v.visit_id=t.visit_id
          where t.transaction_id is null
          group by v.customer_id;

/******************************************************************************************************************************************/
Q.197. Rising Temperature
Write a solution to find all dates id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.
Table: Weather
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+|

Solution:
          SELECT w1.id
          FROM Weather w1
          JOIN Weather w2
              ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
          WHERE w1.temperature > w2.temperature;

/******************************************************************************************************************************************/
/******************************************************************************************************************************************/
/******************************************************************************************************************************************/
/******************************************************************************************************************************************/
/******************************************************************************************************************************************/
/******************************************************************************************************************************************/
/******************************************************************************************************************************************/
/******************************************************************************************************************************************/
