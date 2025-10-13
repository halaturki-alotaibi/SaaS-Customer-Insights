-- عدد العملاء الكلي
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM `saas-data-474609.1.customers`;

-- عدد الاشتراكات الكلي
SELECT COUNT(*) AS total_subscriptions
FROM `saas-data-474609.1.subscriptions`;

--عدد العملاء الجدد شهريًا
SELECT 
  FORMAT_DATE('%Y-%m', DATE(signup_date)) AS signup_month,
  COUNT(DISTINCT customer_id) AS new_customers
FROM `saas-data-474609.1.customers`
GROUP BY signup_month
ORDER BY signup_month;

--متوسط عمر العميل (منذ التسجيل)
SELECT 
  ROUND(AVG(DATE_DIFF(CURRENT_DATE(), signup_date, DAY)), 1) AS avg_days_since_signup
FROM `saas-data-474609.1.customers`;


-- الإيراد الشهري (MRR)
SELECT 
  FORMAT_DATE('%Y-%m', DATE(CONCAT(month, '-01'))) AS month,
  SUM(amount) AS monthly_revenue
FROM `saas-data-474609.1.revenue`
GROUP BY month
ORDER BY month;

--لإيراد السنوي (ARR)
SELECT 
  SUBSTR(month, 1, 4) AS year,
  SUM(amount) AS annual_revenue
FROM `saas-data-474609.1.revenue`
GROUP BY year
ORDER BY year;

--الإيراد لكل عميل
SELECT 
  customer_id,
  SUM(amount) AS total_revenue_per_customer
FROM `saas-data-474609.1.revenue`
GROUP BY customer_id
ORDER BY total_revenue_per_customer DESC
LIMIT 10;

--متوسط الإيراد لكل عميل
SELECT 
  ROUND(AVG(customer_total), 2) AS avg_revenue_per_customer
FROM (
  SELECT customer_id, SUM(amount) AS customer_total
  FROM `saas-data-474609.1.revenue`
  GROUP BY customer_id
);

-- أعلى 10 عملاء من حيث الإيرادات
SELECT 
  customer_id,
  SUM(amount) AS total_revenue
FROM `saas-data-474609.1.revenue`
GROUP BY 1
ORDER BY total_revenue DESC
LIMIT 10;

--نمو الإيراد شهريًا (Month-over-Month Growth)
WITH monthly_revenue AS (
  SELECT 
    FORMAT_DATE('%Y-%m', DATE(CONCAT(month, '-01'))) AS month,
    SUM(amount) AS revenue
  FROM `saas-data-474609.1.revenue`
  GROUP BY month
)
SELECT 
  month,
  revenue,
  ROUND(((revenue - LAG(revenue) OVER (ORDER BY month)) / LAG(revenue) OVER (ORDER BY month)) * 100, 2) AS mom_growth_percent
FROM monthly_revenue
ORDER BY month;


