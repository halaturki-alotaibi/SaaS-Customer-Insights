SELECT *,
  CASE
    WHEN total_revenue >= 5000 THEN 'Platinum'
    WHEN total_revenue BETWEEN 2000 AND 4999 THEN 'Gold'
    WHEN total_revenue BETWEEN 1000 AND 1999 THEN 'Silver'
    WHEN total_revenue BETWEEN 500 AND 999 THEN 'Bronze'
    ELSE 'Basic'
  END AS customer_segment
FROM `saas-data-474609.1.customer_summary`;
