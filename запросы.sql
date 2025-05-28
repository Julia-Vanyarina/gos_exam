  
   
ALTER TABLE public.sales ADD COLUMN order_id SERIAL;

  -- Для таблицы sales
CREATE INDEX idx_sales_product_id ON public.sales(product_id);
CREATE INDEX idx_sales_order_id ON public.sales(order_id);


--Запрос 1: Без INNER JOIN (с использованием подзапроса)
SELECT 
    s.order_id,
    s.sales_transaction_date AS order_date,
    (
        SELECT p.base_msrp 
        FROM public.products p 
        WHERE p.product_id = s.product_id
    ) AS unit_price
FROM 
    public.sales s
ORDER BY 
    s.order_id;
    
   
   
--Запрос 2: С использованием INNER JOIN
SELECT 
    s.order_id,
    s.sales_transaction_date AS order_date,
    p.base_msrp AS unit_price
FROM 
    public.sales s
INNER JOIN 
    public.products p ON s.product_id = p.product_id
ORDER BY 
    s.order_id;
    
   
   
--Ключевые отличия:
--Подзапросный метод:
--Для каждой строки в sales выполняется отдельный подзапрос к таблице products
--Нет явного соединения таблиц
--Может быть менее эффективен на больших объемах данных
--INNER JOIN метод:
--Соединяет таблицы один раз перед обработкой
--Более эффективен для больших наборов данных
--Читабельнее и проще для понимания
   
   
-- Для подзапросного метода
EXPLAIN ANALYZE
SELECT 
    s.order_id,
    s.sales_transaction_date AS order_date,
    (
        SELECT p.base_msrp 
        FROM public.products p 
        WHERE p.product_id = s.product_id
    ) AS unit_price
FROM 
    public.sales s
ORDER BY 
    s.order_id;

-- Для INNER JOIN метода
EXPLAIN ANALYZE
SELECT 
    s.order_id,
    s.sales_transaction_date AS order_date,
    p.base_msrp AS unit_price
FROM 
    public.sales s
INNER JOIN 
    public.products p ON s.product_id = p.product_id
ORDER BY 
    s.order_id;
    
   
   
   -- это можно выполнить в зпфвьшт чтобы вышел график
   
   EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT 
    s.order_id,
    s.sales_transaction_date AS order_date,
    (
        SELECT p.base_msrp 
        FROM public.products p 
        WHERE p.product_id = s.product_id
    ) AS unit_price
FROM 
    public.sales s
ORDER BY 
    s.order_id;
   
   
   
  EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT 
    s.order_id,
    s.sales_transaction_date AS order_date,
    p.base_msrp AS unit_price
FROM 
    public.sales s
INNER JOIN 
    public.products p ON s.product_id = p.product_id
ORDER BY 
    s.order_id;