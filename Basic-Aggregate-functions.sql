Q.620. Not Boring Movies
Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
Return the result table ordered by rating in descending order.
Table: Cinema
+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| id             | int      |
| movie          | varchar  |
| description    | varchar  |
| rating         | float    |
+----------------+----------+
Solution: 
          select * from Cinema
          where description!='boring' and id%2!=0
          order by rating desc;
/*********************************************************************************************************************/
Q.
