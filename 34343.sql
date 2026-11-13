-- 1. Самый дешёвый товар
SELECT id, name, price
FROM products
ORDER BY price ASC, id ASC
LIMIT 1;

-- 2. Топ-5 по рейтингу
SELECT name, rating, price
FROM products
ORDER BY rating DESC, price ASC
LIMIT 5;

-- 3. Поиск по слову
SELECT name, price
FROM products
WHERE name LIKE '%мышь%'
ORDER BY name;

-- 4. Товары дешевле 20000
SELECT name, price
FROM products
WHERE price < 20000
ORDER BY price ASC;

-- 5. Повторяющиеся URL
SELECT url, COUNT(*) AS count
FROM products
GROUP BY url
HAVING COUNT(*) > 1;

-- Дополнительное задание
SELECT id, name, price, rating, url
FROM products
WHERE price <= 30000
ORDER BY rating DESC
LIMIT 3;