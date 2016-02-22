-- 1.Get all customers and their addresses.

SELECT  *
FROM addresses
INNER JOIN customers
ON addresses.customer_id=customers.id;

--2. Get all orders and their line items.
SELECT  *
FROM orders
INNER JOIN line_items
ON orders.id=line_items.order_id;

--3  Which warehouses have cheetos?
SELECT  warehouse.warehouse
FROM warehouse
JOIN warehouse_product
ON warehouse_id=warehouse.id
JOIN products
ON product_id=products.id
WHERE products.description = 'cheetos';

--4. Which warehouses have diet pepsi?
SELECT  warehouse.warehouse
FROM warehouse
JOIN warehouse_product
ON warehouse_id=warehouse.id
JOIN products
ON product_id=products.id
WHERE products.description = 'diet pepsi';

--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT  orders.total
FROM orders
JOIN addresses
ON address_id=addresses.id
JOIN customers
ON addresses.customer_id=customers.id;

--6. How many customers do we have?
SELECT COUNT(*) FROM customers

--7. How many products do we carry?
SELECT COUNT(*) FROM products

--8. What is the total available on-hand quantity of diet pepsi?
SELECT  warehouse_product.on_hand
FROM warehouse_product
INNER JOIN products
ON warehouse_product.product_id=products.id
WHERE products.description='diet pepsi';