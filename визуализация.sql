--Динамика ежедневных продаж (для прогноза временных рядов)
SELECT
    DATE(sales_transaction_date) AS sales_date,
    SUM(sales_amount) AS daily_revenue,
    COUNT(*) AS total_orders,
    AVG(sales_amount) AS avg_order_value
FROM public.sales
GROUP BY sales_date
ORDER BY sales_date;




--Анализ продаж по продуктам
SELECT
    p.model,
    p.year,
    p.product_type,
    COUNT(*) AS units_sold,
    SUM(s.sales_amount) AS total_revenue,
    AVG(p.base_msrp) AS avg_msrp,
    AVG(s.sales_amount) AS avg_selling_price
FROM public.sales s
JOIN public.products p ON s.product_id = p.product_id
GROUP BY p.model, p.year, p.product_type
ORDER BY total_revenue DESC;


--Географический анализ продаж
SELECT
    c.state,
    c.city,
    COUNT(*) AS total_sales,
    SUM(s.sales_amount) AS total_revenue,
    COUNT(DISTINCT s.customer_id) AS unique_customers
FROM public.sales s
JOIN public.customers c ON s.customer_id = c.customer_id
GROUP BY c.state, c.city
ORDER BY total_revenue DESC;



--Эффективность дилерских центров
SELECT
    d.dealership_id,
    d.city AS dealership_city,
    d.state AS dealership_state,
    COUNT(*) AS total_sales,
    SUM(s.sales_amount) AS total_revenue,
    COUNT(DISTINCT sp.salesperson_id) AS salespeople_count,
    SUM(s.sales_amount) / COUNT(DISTINCT sp.salesperson_id) AS revenue_per_salesperson
FROM public.sales s
JOIN public.dealerships d ON s.dealership_id = d.dealership_id
LEFT JOIN public.salespeople sp ON d.dealership_id = sp.dealership_id
GROUP BY d.dealership_id, d.city, d.state
ORDER BY total_revenue DESC;







--Анализ распределения продаж по каналам
SELECT
  channel,
  COUNT(*) AS total_orders,
  SUM(sales_amount) AS total_revenue,
  ROUND(
    (SUM(sales_amount) * 100.0 / (SELECT SUM(sales_amount) FROM sales))::numeric,
    2
  ) AS revenue_percent
FROM public.sales
GROUP BY channel
ORDER BY total_revenue DESC;



--Анализ клиентской активности
SELECT
  EXTRACT(YEAR FROM date_added) AS join_year,
  COUNT(*) AS new_customers,
  SUM(CASE WHEN s.customer_id IS NOT NULL THEN 1 ELSE 0 END) AS active_customers,
  ROUND(AVG(s.sales_amount)::numeric, 2) AS avg_spent
FROM public.customers c
LEFT JOIN public.sales s ON c.customer_id = s.customer_id
GROUP BY join_year
ORDER BY join_year;




