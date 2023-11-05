//Task_01:

SELECT Customers.id, Customers.name, Customers.email, Customers.location, COUNT(Orders.id) AS total_orders
FROM Customers
LEFT JOIN Orders ON Customers.id = Orders.customer_id
GROUP BY Customers.id
ORDER BY total_orders DESC;

//Task_02:

SELECT OrderItems.order_id, Products.name AS product_name, OrderItems.quantity, (OrderItems.quantity * OrderItems.unit_price) AS total_amount
FROM OrderItems
INNER JOIN Products ON OrderItems.product_id = Products.id
ORDER BY OrderItems.order_id ASC;

//Task_03:

SELECT Categories.category_name, SUM(OrderItems.quantity * OrderItems.unit_price) AS total_revenue
FROM Categories
INNER JOIN Products ON Categories.id = Products.category_id
INNER JOIN OrderItems ON Products.id = OrderItems.product_id
GROUP BY Categories.category_name
ORDER BY total_revenue DESC;

//Task_04

SELECT Customers.name, SUM(Orders.total_amount) AS total_purchase_amount
FROM Customers
LEFT JOIN Orders ON Customers.id = Orders.customer_id
GROUP BY Customers.id
ORDER BY total_purchase_amount DESC
LIMIT 5;







