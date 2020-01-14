# Список ставок данного пользователя
USE internet_auction;
SELECT * FROM bids WHERE users_user_id = 1;

# Список лотов данного пользователя
USE internet_auction;
SELECT * FROM items WHERE users_user_id = 1;

# Поиск лотов по подстроке в описании
USE internet_auction;
SELECT * FROM items WHERE title LIKE '%car%';

# Поиск лотов по подстроке в описании
USE internet_auction;
SELECT * FROM items WHERE description LIKE '%car%';

# Средняя цена лотов каждого пользователя
USE internet_auction;
SELECT Users.user_id, users.full_name, AVG(items.start_price) FROM items
JOIN users ON users.user_id = items.users_user_id
GROUP BY items.users_user_id;

# Максимальный размер имеющихся ставок на каждый лот
USE internet_auction;
SELECT items.item_id, MAX(bids.bid_value) as max_bid FROM items
LEFT JOIN bids ON items.item_id = bids.items_item_id
GROUP BY items.item_id;

# Список действующих лотов данного пользователя
USE internet_auction;
SELECT * FROM items WHERE by_it_now = 1 AND users_user_id = 1;

# Добавить нового пользователя
USE internet_auction;
INSERT users VALUES(6, 'Aleksandrov N.A.', '9583 8349 1823 0231', 'ana007', 'nikita007');

# Добавить новый лот
USE internet_auction;
INSERT items VALUES(100, 'house', 'big house', 500000, 10000, '2020.01.01', '2020.01.10', 0, 1);

# Удалить ставки данного пользователя
USE internet_auction;
DELETE FROM bids WHERE users_user_id = 1;

# Удалить лоты данного пользователя
USE internet_auction;
DELETE FROM items WHERE users_user_id = 1;

# Увеличить стартовые цены товаров данного пользователя вдвое
USE internet_auction;
UPDATE items
SET start_price = start_price*2 WHERE users_user_id = 1; 