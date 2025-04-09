Q-1757. Recyclable and Low Fat Products
Table: Products
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
Write a solution to find the ids of products that are both low fat and recyclable.
Solution :
          select product_id from Products
          where low_fats='Y' and recyclable='Y';
/*******************************************************************************************************************************/
Q-584. Find Customer Referee
Find the names of the customer that are not referred by the customer with id = 2.
Table: Customer
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
Solution:  
           select name from Customer
           where referee_id!=2 or referee_id is null;
/*******************************************************************************************************************************/
Q.595. Big Countries
Table: World
A country is big if:
it has an area of at least three million (i.e., 3000000 km2), or
it has a population of at least twenty-five million (i.e., 25000000).
Write a solution to find the name, population, and area of the big countries.
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+
Solution:
          select name, population, area from World
          where area>=3000000 or population>=25000000;
/*******************************************************************************************************************************/
Q.1148. Article Views I
Table: Views
Write a solution to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+
Solution:
            select viewer_id as id from Views
            where author_id=viewer_id
            group by viewer_id
            order by id asc;     
/********************************************************************************************************************************/
Q.1683. Invalid Tweets 
Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
Return the result table in any order.
Table: Tweets
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+
Solution:
          select tweet_id
          from tweets
          where length(content)>15;

