-------------------- SQLite (store.db) --------------------

-- #1 Names and emails of customers who signed up in 2025
SELECT name, email FROM customers
WHERE signupDate BETWEEN '2025-01-01' AND '2025-12-31';

-- #2 Distinct product categories, A-Z
SELECT DISTINCT category FROM products
ORDER BY category ASC;

-- #3 Names and prices of the 3 most expensive products
SELECT name, unitPrice FROM products
ORDER BY unitPrice DESC LIMIT 3;

-- #4 Orders that are neither CANCELLED nor PENDING, newest first
SELECT * FROM orders
WHERE status NOT IN ('CANCELLED', 'PENDING')
ORDER BY orderDate DESC;

-- Mini challenge: page 3, page size 4 -> OFFSET = (3 - 1) * 4 = 8
-- id is the tie-breaker: orders on the same date always come back in the same order.
-- Large OFFSETs are costly because the database still reads and discards every skipped row,
-- so the work grows with the page number even though only 4 rows are returned.
SELECT * FROM orders
ORDER BY orderDate DESC, id DESC
LIMIT 4 OFFSET 8;


-------------------- PostgreSQL (camelCase columns quoted) --------------------

-- -- #1
-- SELECT name, email FROM customers
-- WHERE "signupDate" BETWEEN '2025-01-01' AND '2025-12-31';

-- -- #2
-- SELECT DISTINCT category FROM products
-- ORDER BY category ASC;

-- -- #3
-- SELECT name, "unitPrice" FROM products
-- ORDER BY "unitPrice" DESC LIMIT 3;

-- -- #4
-- SELECT * FROM orders
-- WHERE status NOT IN ('CANCELLED', 'PENDING')
-- ORDER BY "orderDate" DESC;


-------------------- BigQuery (backticked project.dataset.table) --------------------

-- -- #1
-- SELECT name, email FROM `project.dataset.customers`
-- WHERE signupDate BETWEEN '2025-01-01' AND '2025-12-31';

-- -- #2
-- SELECT DISTINCT category FROM `project.dataset.products`
-- ORDER BY category ASC;

-- -- #3
-- SELECT name, unitPrice FROM `project.dataset.products`
-- ORDER BY unitPrice DESC LIMIT 3;

-- -- #4
-- SELECT * FROM `project.dataset.orders`
-- WHERE status NOT IN ('CANCELLED', 'PENDING')
-- ORDER BY orderDate DESC;
