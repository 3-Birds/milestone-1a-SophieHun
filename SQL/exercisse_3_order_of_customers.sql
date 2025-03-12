/*
Question 1: Total Orders Per Customer

Write a query to display the total number of orders placed by each customer, 
along with their name and the date they joined. Sort the results by the total number of orders in descending order.
*/

SELECT customer_name, Count(order_id) AS Qty from customers 
    JOIN Ordres ON Customers.customer_id=Orders.customer_id
    JOIN OrderItems ON Orders.order_id=OrderItems.order_id
    group by customer_name;
     


/*
Question 2: Rank Customers by Spending

For each customer, calculate their total spending (sum of the total amounts from the `Orders` table) 
and rank them by total spending within their respective country. 
Use a **window function** to rank the customers.
*/