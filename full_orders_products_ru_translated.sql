
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;

CREATE TABLE orders (
    order_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_date DATE NOT NULL
);

CREATE TABLE products (
    product_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_name TEXT NOT NULL,
    unit_price NUMERIC(10, 2) NOT NULL
);

CREATE TABLE order_details (
    order_detail_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES orders(order_id),
    product_id INTEGER NOT NULL REFERENCES products(product_id),
    quantity INTEGER NOT NULL,
    product_name_ru TEXT,
    price_rub NUMERIC(10,2)
);

-- Orders
INSERT INTO orders (order_date) VALUES ('2025-03-21');
INSERT INTO orders (order_date) VALUES ('2024-11-23');
INSERT INTO orders (order_date) VALUES ('2024-07-26');
INSERT INTO orders (order_date) VALUES ('2025-03-19');
INSERT INTO orders (order_date) VALUES ('2024-12-30');
INSERT INTO orders (order_date) VALUES ('2024-07-02');
INSERT INTO orders (order_date) VALUES ('2024-09-24');
INSERT INTO orders (order_date) VALUES ('2024-12-16');
INSERT INTO orders (order_date) VALUES ('2025-01-25');
INSERT INTO orders (order_date) VALUES ('2024-08-11');
INSERT INTO orders (order_date) VALUES ('2024-10-19');
INSERT INTO orders (order_date) VALUES ('2025-04-14');
INSERT INTO orders (order_date) VALUES ('2024-10-12');
INSERT INTO orders (order_date) VALUES ('2024-09-19');
INSERT INTO orders (order_date) VALUES ('2025-02-08');
INSERT INTO orders (order_date) VALUES ('2025-02-12');
INSERT INTO orders (order_date) VALUES ('2024-11-14');
INSERT INTO orders (order_date) VALUES ('2024-10-20');
INSERT INTO orders (order_date) VALUES ('2025-01-13');
INSERT INTO orders (order_date) VALUES ('2025-03-26');
INSERT INTO orders (order_date) VALUES ('2025-02-17');
INSERT INTO orders (order_date) VALUES ('2025-02-12');
INSERT INTO orders (order_date) VALUES ('2024-06-29');
INSERT INTO orders (order_date) VALUES ('2025-04-13');
INSERT INTO orders (order_date) VALUES ('2025-02-09');
INSERT INTO orders (order_date) VALUES ('2025-01-06');
INSERT INTO orders (order_date) VALUES ('2025-01-06');
INSERT INTO orders (order_date) VALUES ('2025-02-23');
INSERT INTO orders (order_date) VALUES ('2024-12-28');
INSERT INTO orders (order_date) VALUES ('2024-08-20');
INSERT INTO orders (order_date) VALUES ('2024-09-30');
INSERT INTO orders (order_date) VALUES ('2025-03-26');
INSERT INTO orders (order_date) VALUES ('2024-09-01');
INSERT INTO orders (order_date) VALUES ('2024-09-08');
INSERT INTO orders (order_date) VALUES ('2024-11-19');
INSERT INTO orders (order_date) VALUES ('2024-07-08');
INSERT INTO orders (order_date) VALUES ('2025-03-29');
INSERT INTO orders (order_date) VALUES ('2024-10-19');
INSERT INTO orders (order_date) VALUES ('2024-08-31');
INSERT INTO orders (order_date) VALUES ('2024-08-15');
INSERT INTO orders (order_date) VALUES ('2025-04-01');
INSERT INTO orders (order_date) VALUES ('2024-11-26');
INSERT INTO orders (order_date) VALUES ('2024-10-02');
INSERT INTO orders (order_date) VALUES ('2025-05-17');
INSERT INTO orders (order_date) VALUES ('2025-03-02');
INSERT INTO orders (order_date) VALUES ('2024-10-30');
INSERT INTO orders (order_date) VALUES ('2024-07-31');
INSERT INTO orders (order_date) VALUES ('2024-09-12');
INSERT INTO orders (order_date) VALUES ('2024-11-06');
INSERT INTO orders (order_date) VALUES ('2024-07-17');
INSERT INTO orders (order_date) VALUES ('2025-03-03');
INSERT INTO orders (order_date) VALUES ('2024-12-08');
INSERT INTO orders (order_date) VALUES ('2025-04-22');
INSERT INTO orders (order_date) VALUES ('2024-11-28');
INSERT INTO orders (order_date) VALUES ('2024-08-23');
INSERT INTO orders (order_date) VALUES ('2024-10-17');
INSERT INTO orders (order_date) VALUES ('2024-08-02');
INSERT INTO orders (order_date) VALUES ('2024-12-24');
INSERT INTO orders (order_date) VALUES ('2024-06-22');
INSERT INTO orders (order_date) VALUES ('2024-09-07');
INSERT INTO orders (order_date) VALUES ('2024-10-16');
INSERT INTO orders (order_date) VALUES ('2025-03-11');
INSERT INTO orders (order_date) VALUES ('2025-05-10');
INSERT INTO orders (order_date) VALUES ('2024-06-22');
INSERT INTO orders (order_date) VALUES ('2025-04-06');
INSERT INTO orders (order_date) VALUES ('2024-10-16');
INSERT INTO orders (order_date) VALUES ('2025-04-05');
INSERT INTO orders (order_date) VALUES ('2025-05-07');
INSERT INTO orders (order_date) VALUES ('2025-02-19');
INSERT INTO orders (order_date) VALUES ('2024-06-29');
INSERT INTO orders (order_date) VALUES ('2024-12-13');
INSERT INTO orders (order_date) VALUES ('2024-11-15');
INSERT INTO orders (order_date) VALUES ('2024-05-26');
INSERT INTO orders (order_date) VALUES ('2025-02-15');
INSERT INTO orders (order_date) VALUES ('2024-08-22');
INSERT INTO orders (order_date) VALUES ('2024-09-05');
INSERT INTO orders (order_date) VALUES ('2024-10-25');
INSERT INTO orders (order_date) VALUES ('2024-10-15');
INSERT INTO orders (order_date) VALUES ('2024-08-18');
INSERT INTO orders (order_date) VALUES ('2024-10-18');
INSERT INTO orders (order_date) VALUES ('2025-05-04');
INSERT INTO orders (order_date) VALUES ('2025-01-21');
INSERT INTO orders (order_date) VALUES ('2024-10-08');
INSERT INTO orders (order_date) VALUES ('2024-10-03');
INSERT INTO orders (order_date) VALUES ('2025-04-28');
INSERT INTO orders (order_date) VALUES ('2025-04-07');
INSERT INTO orders (order_date) VALUES ('2024-07-19');
INSERT INTO orders (order_date) VALUES ('2024-07-23');
INSERT INTO orders (order_date) VALUES ('2024-12-10');
INSERT INTO orders (order_date) VALUES ('2024-10-26');
INSERT INTO orders (order_date) VALUES ('2024-07-08');
INSERT INTO orders (order_date) VALUES ('2024-11-10');
INSERT INTO orders (order_date) VALUES ('2024-10-18');
INSERT INTO orders (order_date) VALUES ('2024-09-11');
INSERT INTO orders (order_date) VALUES ('2025-01-27');
INSERT INTO orders (order_date) VALUES ('2024-06-06');
INSERT INTO orders (order_date) VALUES ('2025-02-03');
INSERT INTO orders (order_date) VALUES ('2024-11-01');
INSERT INTO orders (order_date) VALUES ('2024-10-03');
INSERT INTO orders (order_date) VALUES ('2024-10-14');

-- Products
INSERT INTO products (product_name, unit_price) VALUES ('Ноутбук 1', 657.46);
INSERT INTO products (product_name, unit_price) VALUES ('Смартфон 2', 73.76);
INSERT INTO products (product_name, unit_price) VALUES ('Планшет 3', 311.28);
INSERT INTO products (product_name, unit_price) VALUES ('Монитор 4', 262.05);
INSERT INTO products (product_name, unit_price) VALUES ('Клавиатура 5', 749.65);
INSERT INTO products (product_name, unit_price) VALUES ('Мышь 6', 692.86);
INSERT INTO products (product_name, unit_price) VALUES ('Принтер 7', 897.57);
INSERT INTO products (product_name, unit_price) VALUES ('Роутер 8', 132.59);
INSERT INTO products (product_name, unit_price) VALUES ('Веб-камера 9', 450.83);
INSERT INTO products (product_name, unit_price) VALUES ('Колонка 10', 78.31);
INSERT INTO products (product_name, unit_price) VALUES ('Ноутбук 11', 257.71);
INSERT INTO products (product_name, unit_price) VALUES ('Смартфон 12', 530.09);
INSERT INTO products (product_name, unit_price) VALUES ('Планшет 13', 75.21);
INSERT INTO products (product_name, unit_price) VALUES ('Монитор 14', 238.9);
INSERT INTO products (product_name, unit_price) VALUES ('Клавиатура 15', 667.39);
INSERT INTO products (product_name, unit_price) VALUES ('Мышь 16', 567.69);
INSERT INTO products (product_name, unit_price) VALUES ('Принтер 17', 259.42);
INSERT INTO products (product_name, unit_price) VALUES ('Роутер 18', 609.8);
INSERT INTO products (product_name, unit_price) VALUES ('Веб-камера 19', 818.96);
INSERT INTO products (product_name, unit_price) VALUES ('Колонка 20', 56.17);
INSERT INTO products (product_name, unit_price) VALUES ('Ноутбук 21', 815.53);
INSERT INTO products (product_name, unit_price) VALUES ('Смартфон 22', 713.23);
INSERT INTO products (product_name, unit_price) VALUES ('Планшет 23', 373.24);
INSERT INTO products (product_name, unit_price) VALUES ('Монитор 24', 197.71);
INSERT INTO products (product_name, unit_price) VALUES ('Клавиатура 25', 959.35);
INSERT INTO products (product_name, unit_price) VALUES ('Мышь 26', 369.76);
INSERT INTO products (product_name, unit_price) VALUES ('Принтер 27', 138.11);
INSERT INTO products (product_name, unit_price) VALUES ('Роутер 28', 141.88);
INSERT INTO products (product_name, unit_price) VALUES ('Веб-камера 29', 855.12);
INSERT INTO products (product_name, unit_price) VALUES ('Колонка 30', 623.54);
INSERT INTO products (product_name, unit_price) VALUES ('Ноутбук 31', 816.77);
INSERT INTO products (product_name, unit_price) VALUES ('Смартфон 32', 743.25);
INSERT INTO products (product_name, unit_price) VALUES ('Планшет 33', 559.42);
INSERT INTO products (product_name, unit_price) VALUES ('Монитор 34', 974.46);
INSERT INTO products (product_name, unit_price) VALUES ('Клавиатура 35', 409.61);
INSERT INTO products (product_name, unit_price) VALUES ('Мышь 36', 574.44);
INSERT INTO products (product_name, unit_price) VALUES ('Принтер 37', 837.93);
INSERT INTO products (product_name, unit_price) VALUES ('Роутер 38', 637.59);
INSERT INTO products (product_name, unit_price) VALUES ('Веб-камера 39', 868.62);
INSERT INTO products (product_name, unit_price) VALUES ('Колонка 40', 598.48);
INSERT INTO products (product_name, unit_price) VALUES ('Ноутбук 41', 719.34);
INSERT INTO products (product_name, unit_price) VALUES ('Смартфон 42', 93.53);
INSERT INTO products (product_name, unit_price) VALUES ('Планшет 43', 266.5);
INSERT INTO products (product_name, unit_price) VALUES ('Монитор 44', 324.92);
INSERT INTO products (product_name, unit_price) VALUES ('Клавиатура 45', 125.8);
INSERT INTO products (product_name, unit_price) VALUES ('Мышь 46', 271.15);
INSERT INTO products (product_name, unit_price) VALUES ('Принтер 47', 145.95);
INSERT INTO products (product_name, unit_price) VALUES ('Роутер 48', 314.07);
INSERT INTO products (product_name, unit_price) VALUES ('Веб-камера 49', 653.9);
INSERT INTO products (product_name, unit_price) VALUES ('Колонка 50', 396.59);
INSERT INTO products (product_name, unit_price) VALUES ('Ноутбук 51', 401.67);
INSERT INTO products (product_name, unit_price) VALUES ('Смартфон 52', 249.03);
INSERT INTO products (product_name, unit_price) VALUES ('Планшет 53', 303.63);
INSERT INTO products (product_name, unit_price) VALUES ('Монитор 54', 939.82);
INSERT INTO products (product_name, unit_price) VALUES ('Клавиатура 55', 665.63);
INSERT INTO products (product_name, unit_price) VALUES ('Мышь 56', 628.67);
INSERT INTO products (product_name, unit_price) VALUES ('Принтер 57', 212.58);
INSERT INTO products (product_name, unit_price) VALUES ('Роутер 58', 742.67);
INSERT INTO products (product_name, unit_price) VALUES ('Веб-камера 59', 205.23);
INSERT INTO products (product_name, unit_price) VALUES ('Колонка 60', 410.48);
INSERT INTO products (product_name, unit_price) VALUES ('Ноутбук 61', 990.05);
INSERT INTO products (product_name, unit_price) VALUES ('Смартфон 62', 658.0);
INSERT INTO products (product_name, unit_price) VALUES ('Планшет 63', 579.1);
INSERT INTO products (product_name, unit_price) VALUES ('Монитор 64', 700.38);
INSERT INTO products (product_name, unit_price) VALUES ('Клавиатура 65', 850.71);
INSERT INTO products (product_name, unit_price) VALUES ('Мышь 66', 787.2);
INSERT INTO products (product_name, unit_price) VALUES ('Принтер 67', 267.6);
INSERT INTO products (product_name, unit_price) VALUES ('Роутер 68', 80.5);
INSERT INTO products (product_name, unit_price) VALUES ('Веб-камера 69', 349.68);
INSERT INTO products (product_name, unit_price) VALUES ('Колонка 70', 304.35);
INSERT INTO products (product_name, unit_price) VALUES ('Ноутбук 71', 250.43);
INSERT INTO products (product_name, unit_price) VALUES ('Смартфон 72', 945.76);
INSERT INTO products (product_name, unit_price) VALUES ('Планшет 73', 882.55);
INSERT INTO products (product_name, unit_price) VALUES ('Монитор 74', 348.94);
INSERT INTO products (product_name, unit_price) VALUES ('Клавиатура 75', 672.67);
INSERT INTO products (product_name, unit_price) VALUES ('Мышь 76', 425.85);
INSERT INTO products (product_name, unit_price) VALUES ('Принтер 77', 918.82);
INSERT INTO products (product_name, unit_price) VALUES ('Роутер 78', 485.91);
INSERT INTO products (product_name, unit_price) VALUES ('Веб-камера 79', 301.64);
INSERT INTO products (product_name, unit_price) VALUES ('Колонка 80', 284.3);
INSERT INTO products (product_name, unit_price) VALUES ('Ноутбук 81', 583.3);
INSERT INTO products (product_name, unit_price) VALUES ('Смартфон 82', 299.6);
INSERT INTO products (product_name, unit_price) VALUES ('Планшет 83', 605.36);
INSERT INTO products (product_name, unit_price) VALUES ('Монитор 84', 902.93);
INSERT INTO products (product_name, unit_price) VALUES ('Клавиатура 85', 429.43);
INSERT INTO products (product_name, unit_price) VALUES ('Мышь 86', 258.35);
INSERT INTO products (product_name, unit_price) VALUES ('Принтер 87', 997.66);
INSERT INTO products (product_name, unit_price) VALUES ('Роутер 88', 534.05);
INSERT INTO products (product_name, unit_price) VALUES ('Веб-камера 89', 136.36);
INSERT INTO products (product_name, unit_price) VALUES ('Колонка 90', 94.76);
INSERT INTO products (product_name, unit_price) VALUES ('Ноутбук 91', 154.17);
INSERT INTO products (product_name, unit_price) VALUES ('Смартфон 92', 646.07);
INSERT INTO products (product_name, unit_price) VALUES ('Планшет 93', 802.48);
INSERT INTO products (product_name, unit_price) VALUES ('Монитор 94', 451.05);
INSERT INTO products (product_name, unit_price) VALUES ('Клавиатура 95', 110.35);
INSERT INTO products (product_name, unit_price) VALUES ('Мышь 96', 412.54);
INSERT INTO products (product_name, unit_price) VALUES ('Принтер 97', 996.32);
INSERT INTO products (product_name, unit_price) VALUES ('Роутер 98', 552.66);
INSERT INTO products (product_name, unit_price) VALUES ('Веб-камера 99', 972.52);
INSERT INTO products (product_name, unit_price) VALUES ('Колонка 100', 867.74);

-- Order Details
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (2, 88, 1, 'Роутер', 48064.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (88, 69, 3, 'Веб-камера', 31471.2);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (99, 83, 3, 'Планшет', 54482.4);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (15, 38, 4, 'Роутер', 57383.1);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (21, 59, 1, 'Веб-камера', 18470.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (93, 93, 3, 'Планшет', 72223.2);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (65, 98, 2, 'Роутер', 49739.4);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (65, 14, 3, 'Монитор', 21501.0);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (82, 65, 5, 'Клавиатура', 76563.9);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (26, 20, 3, 'Колонка', 5055.3);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (98, 21, 5, 'Ноутбук', 73397.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (100, 68, 1, 'Роутер', 7245.0);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (77, 42, 4, 'Смартфон', 8417.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (3, 15, 3, 'Клавиатура', 60065.1);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (40, 31, 1, 'Ноутбук', 73509.3);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (31, 73, 1, 'Планшет', 79429.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (11, 94, 4, 'Монитор', 40594.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (9, 98, 5, 'Роутер', 49739.4);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (99, 17, 2, 'Принтер', 23347.8);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (85, 61, 5, 'Ноутбук', 89104.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (22, 34, 5, 'Монитор', 87701.4);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (78, 55, 2, 'Клавиатура', 59906.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (70, 97, 2, 'Принтер', 89668.8);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (92, 40, 4, 'Колонка', 53863.2);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (86, 84, 3, 'Монитор', 81263.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (57, 67, 4, 'Принтер', 24084.0);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (16, 32, 2, 'Смартфон', 66892.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (9, 44, 1, 'Монитор', 29242.8);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (76, 71, 2, 'Ноутбук', 22538.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (76, 29, 1, 'Веб-камера', 76960.8);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (10, 91, 1, 'Ноутбук', 13875.3);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (30, 9, 1, 'Веб-камера', 40574.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (43, 10, 5, 'Колонка', 7047.9);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (31, 36, 4, 'Мышь', 51699.6);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (28, 70, 2, 'Колонка', 27391.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (93, 74, 5, 'Монитор', 31404.6);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (61, 32, 4, 'Смартфон', 66892.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (53, 25, 1, 'Клавиатура', 86341.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (13, 85, 4, 'Клавиатура', 38648.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (46, 55, 4, 'Клавиатура', 59906.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (60, 94, 1, 'Монитор', 40594.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (87, 84, 1, 'Монитор', 81263.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (8, 52, 3, 'Смартфон', 22412.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (14, 32, 2, 'Смартфон', 66892.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (25, 69, 4, 'Веб-камера', 31471.2);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (18, 55, 2, 'Клавиатура', 59906.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (36, 60, 2, 'Колонка', 36943.2);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (10, 57, 5, 'Принтер', 19132.2);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (13, 7, 5, 'Принтер', 80781.3);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (2, 12, 2, 'Смартфон', 47708.1);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (22, 53, 4, 'Планшет', 27326.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (62, 28, 4, 'Роутер', 12769.2);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (8, 22, 4, 'Смартфон', 64190.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (1, 50, 3, 'Колонка', 35693.1);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (59, 37, 4, 'Принтер', 75413.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (90, 94, 5, 'Монитор', 40594.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (85, 92, 4, 'Смартфон', 58146.3);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (20, 25, 3, 'Клавиатура', 86341.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (28, 8, 5, 'Роутер', 11933.1);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (95, 70, 1, 'Колонка', 27391.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (96, 41, 1, 'Ноутбук', 64740.6);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (7, 75, 4, 'Клавиатура', 60540.3);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (65, 68, 2, 'Роутер', 7245.0);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (8, 66, 1, 'Мышь', 70848.0);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (24, 9, 5, 'Веб-камера', 40574.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (9, 87, 2, 'Принтер', 89789.4);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (52, 16, 5, 'Мышь', 51092.1);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (32, 75, 5, 'Клавиатура', 60540.3);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (6, 80, 1, 'Колонка', 25587.0);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (54, 85, 5, 'Клавиатура', 38648.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (73, 67, 3, 'Принтер', 24084.0);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (34, 27, 3, 'Принтер', 12429.9);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (31, 34, 4, 'Монитор', 87701.4);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (17, 86, 3, 'Мышь', 23251.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (59, 41, 1, 'Ноутбук', 64740.6);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (2, 59, 5, 'Веб-камера', 18470.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (73, 13, 1, 'Планшет', 6768.9);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (69, 28, 5, 'Роутер', 12769.2);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (34, 17, 3, 'Принтер', 23347.8);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (9, 32, 3, 'Смартфон', 66892.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (37, 21, 4, 'Ноутбук', 73397.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (70, 91, 3, 'Ноутбук', 13875.3);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (79, 84, 5, 'Монитор', 81263.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (2, 86, 5, 'Мышь', 23251.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (39, 85, 1, 'Клавиатура', 38648.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (18, 34, 1, 'Монитор', 87701.4);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (14, 96, 5, 'Мышь', 37128.6);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (20, 35, 3, 'Клавиатура', 36864.9);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (78, 27, 3, 'Принтер', 12429.9);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (27, 88, 3, 'Роутер', 48064.5);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (65, 63, 3, 'Планшет', 52119.0);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (7, 12, 4, 'Смартфон', 47708.1);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (36, 6, 1, 'Мышь', 62357.4);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (43, 99, 2, 'Веб-камера', 87526.8);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (82, 34, 2, 'Монитор', 87701.4);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (95, 57, 5, 'Принтер', 19132.2);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (91, 55, 5, 'Клавиатура', 59906.7);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (2, 15, 1, 'Клавиатура', 60065.1);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (89, 20, 5, 'Колонка', 5055.3);
INSERT INTO order_details (order_id, product_id, quantity, product_name_ru, price_rub) VALUES (5, 48, 5, 'Роутер', 28266.3);


--Что делает этот запрос:
--Из таблицы order_details берём order_id и product_id.
--Через подзапрос (SELECT o.order_date FROM orders o WHERE o.order_id = od.order_id) получаем дату заказа.
--Из таблицы products получаем цену товара unit_price, сопоставляя product_id.
--Поскольку в одном order_id может быть несколько product_id, мы видим повторение order_id в разных строках.

SELECT 
    od.order_id,
    (SELECT o.order_date FROM orders o WHERE o.order_id = od.order_id) AS order_date,
    p.unit_price
FROM 
    order_details od,
    products p
WHERE 
    od.product_id = p.product_id
ORDER BY 
    od.order_id;
   

   
   
SELECT 
    od.order_id,
    o.order_date,
    p.unit_price
FROM 
    order_details od
INNER JOIN 
    orders o ON od.order_id = o.order_id
INNER JOIN 
    products p ON od.product_id = p.product_id
ORDER BY 
    od.order_id;

   
   
   
--   Почему order_id повторяются в выводе?
--Краткий ответ:
--Потому что в одном заказе может быть несколько товаров. Каждый товар имеет свою цену, и каждая строка в выводе — это одна позиция в заказе.
--
--📊 Пример:
--Посмотрим на order_id = 2:
--
--plaintext
--Копировать
--Редактировать
--2    2024-11-23    205.23
--2    2024-11-23    667.39
--2    2024-11-23    258.35
--2    2024-11-23    530.09
--2    2024-11-23    534.05
--Это означает, что заказ №2 включал 5 разных товаров, каждый со своей ценой за единицу (цена из products.unit_price), и все они оформлены в одну и ту же дату 2024-11-23.

  
   
   
 --ДОПОЛНИТЕЛЬНО  
--Дополнительно: Какие ещё можно составить запросы по товарам и ценам?
--Вот несколько полезных аналитических запросов:
--1. Общая сумма заказов по каждой дате 
   
   SELECT 
    o.order_date,
    SUM(od.quantity * p.unit_price) AS total_order_value
FROM 
    order_details od
JOIN 
    orders o ON od.order_id = o.order_id
JOIN 
    products p ON od.product_id = p.product_id
GROUP BY 
    o.order_date
ORDER BY 
    o.order_date;
   
--3. Самые дорогие заказы  
SELECT 
    od.order_id,
    SUM(od.quantity * p.unit_price) AS total_price
FROM 
    order_details od
JOIN 
    products p ON od.product_id = p.product_id
GROUP BY 
    od.order_id
ORDER BY 
    total_price DESC
LIMIT 10;


--самые популярные товары (по количеству проданных единиц)
SELECT 
    p.product_name,
    SUM(od.quantity) AS total_quantity_sold
FROM 
    order_details od
JOIN 
    products p ON od.product_id = p.product_id
GROUP BY 
    p.product_name
ORDER BY 
    total_quantity_sold DESC;

   
   
--Если интересует, в скольких заказах встречался товар, используем COUNT(DISTINCT order_id)
   
SELECT 
    p.product_name,
    COUNT(DISTINCT od.order_id) AS order_count
FROM 
    order_details od
JOIN 
    products p ON od.product_id = p.product_id
GROUP BY 
    p.product_name
ORDER BY 
    order_count DESC;

