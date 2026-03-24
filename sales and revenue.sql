CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    product VARCHAR(50),
    category VARCHAR(50),
    price INT,
    quantity INT,
    order_date DATE
);
INSERT INTO orders VALUES
(1, 101, 'Laptop', 'Electronics', 60000, 1, '2024-01-10'),
(2, 102, 'Phone', 'Electronics', 20000, 2, '2024-01-12'),
(3, 103, 'Shoes', 'Fashion', 3000, 1, '2024-02-05'),
(4, 101, 'Headphones', 'Electronics', 2000, 3, '2024-02-10'),
(5, 104, 'T-shirt', 'Fashion', 800, 2, '2024-03-01'),
(6, 105, 'Watch', 'Accessories', 5000, 1, '2024-03-05'),
(7, 102, 'Laptop', 'Electronics', 60000, 1, '2024-03-15'),
(8, 106, 'Shoes', 'Fashion', 3000, 2, '2024-04-01');
SELECT SUM(price * quantity) AS total_revenue FROM orders;
SELECT product, SUM(quantity) AS total_sold
FROM orders
GROUP BY product
ORDER BY total_sold DESC;
SELECT category, SUM(price * quantity) AS revenue
FROM orders
GROUP BY category;
SELECT MONTH(order_date) AS month, SUM(price * quantity) AS revenue
FROM orders
GROUP BY month
ORDER BY month;
SELECT customer_id, SUM(price * quantity) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;
SELECT category, SUM(price * quantity) AS revenue
FROM orders
GROUP BY category
ORDER BY revenue DESC;
SELECT MONTH(order_date) AS month, SUM(price * quantity) AS revenue
FROM orders
GROUP BY month
ORDER BY month;
SELECT product, SUM(price * quantity) AS revenue
FROM orders
GROUP BY product
ORDER BY revenue DESC;
SELECT category, SUM(price * quantity) AS revenue
FROM orders
GROUP BY category;
SELECT MONTH(order_date) AS month, SUM(price * quantity) AS revenue
FROM orders
GROUP BY month
ORDER BY month;
SELECT product, SUM(price * quantity) AS revenue
FROM orders
GROUP BY product
ORDER BY revenue DESC;
