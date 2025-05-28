
-- 1. Исправление типа данных в sales.dealership_id для согласованности
ALTER TABLE public.sales 
ALTER COLUMN dealership_id TYPE int8 
USING dealership_id::int8;

-- 2. Добавление первичных ключей (где отсутствуют)
ALTER TABLE public.customers ADD PRIMARY KEY (customer_id);
ALTER TABLE public.dealerships ADD PRIMARY KEY (dealership_id);
ALTER TABLE public.products ADD PRIMARY KEY (product_id);
ALTER TABLE public.salespeople ADD PRIMARY KEY (salesperson_id);

-- 3. Создание внешних ключей
-- closest_dealerships -> customers
ALTER TABLE public.closest_dealerships 
ADD CONSTRAINT fk_closest_dealerships_customers 
FOREIGN KEY (customer_id) 
REFERENCES public.customers(customer_id);

-- closest_dealerships -> dealerships
ALTER TABLE public.closest_dealerships 
ADD CONSTRAINT fk_closest_dealerships_dealerships 
FOREIGN KEY (dealership_id) 
REFERENCES public.dealerships(dealership_id);

-- emails -> customers
ALTER TABLE public.emails 
ADD CONSTRAINT fk_emails_customers 
FOREIGN KEY (customer_id) 
REFERENCES public.customers(customer_id);

-- sales -> customers
ALTER TABLE public.sales 
ADD CONSTRAINT fk_sales_customers 
FOREIGN KEY (customer_id) 
REFERENCES public.customers(customer_id);

-- sales -> products
ALTER TABLE public.sales 
ADD CONSTRAINT fk_sales_products 
FOREIGN KEY (product_id) 
REFERENCES public.products(product_id);

-- sales -> dealerships
ALTER TABLE public.sales 
ADD CONSTRAINT fk_sales_dealerships 
FOREIGN KEY (dealership_id) 
REFERENCES public.dealerships(dealership_id);

-- salespeople -> dealerships
ALTER TABLE public.salespeople 
ADD CONSTRAINT fk_salespeople_dealerships 
FOREIGN KEY (dealership_id) 
REFERENCES public.dealerships(dealership_id);





--увидеть внешние ключи в бд
SELECT 
    conname AS constraint_name,
    conrelid::regclass AS table_name,
    pg_get_constraintdef(oid) AS constraint_definition
FROM 
    pg_constraint
WHERE 
    contype = 'f'
    AND connamespace = 'public'::regnamespace;
   
   