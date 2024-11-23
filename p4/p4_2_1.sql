USE hw4;

SELECT COUNT(*) 
FROM
  orders
  LEFT JOIN order_details ON order_details.order_id = orders.id
  INNER JOIN employees ON employees.employee_id = orders.employee_id
  INNER JOIN customers ON customers.id = orders.customer_id
  LEFT JOIN products ON products.id = order_details.product_id
  LEFT JOIN categories ON categories.id = products.category_id
  LEFT JOIN suppliers ON suppliers.id = products.supplier_id
  INNER JOIN shippers ON shippers.id = orders.shipper_id;
  