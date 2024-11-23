USE hw4;

SELECT
  order_details.order_id AS order_id,
  orders.date AS order_date,
  order_details.quantity,
  employees.first_name AS employee_first_name,
  employees.last_name AS employee_last_name,
  customers.name AS customer_name,
  customers.country AS customer_country,
  categories.name AS category_name,
  products.name AS product_name,
  products.price AS product_price,
  suppliers.name AS supplier_name,
  suppliers.country AS supplier_country,
  shippers.name AS shipper_name
FROM
  orders
  INNER JOIN order_details ON order_details.order_id = orders.id
  INNER JOIN employees ON employees.employee_id = orders.employee_id
  INNER JOIN customers ON customers.id = orders.customer_id
  INNER JOIN products ON products.id = order_details.product_id
  INNER JOIN categories ON categories.id = products.category_id
  INNER JOIN suppliers ON suppliers.id = products.supplier_id
  INNER JOIN shippers ON shippers.id = orders.shipper_id
WHERE
  orders.employee_id > 3
  AND orders.employee_id <= 10;