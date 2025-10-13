CREATE OR REPLACE TABLE `saas-data-474609.1.customer_summary` AS
SELECT
  customer_id,
  COUNT(subscription_id) AS total_subscriptions,
  SUM(amount) AS total_revenue
FROM
  `saas-data-474609.1.revenue`
GROUP BY
  customer_id;
