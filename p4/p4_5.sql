USE hw4;

SELECT
  categories.name as category,
  COUNT(*) as total_rows,
  AVG(order_details.quantity) as average_quantity
FROM
  orders
  INNER JOIN order_details ON order_details.order_id = orders.id
  INNER JOIN employees ON employees.employee_id = orders.employee_id
  INNER JOIN customers ON customers.id = orders.customer_id
  INNER JOIN products ON products.id = order_details.product_id
  INNER JOIN categories ON categories.id = products.category_id
  INNER JOIN suppliers ON suppliers.id = products.supplier_id
  INNER JOIN shippers ON shippers.id = orders.shipper_id
GROUP BY categories.name
HAVING average_quantity > 21
ORDER BY categories.name

  