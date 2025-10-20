# SaaS Customer Insights Dashboard
A data analytics project delivering actionable insights into customer behavior, subscription trends, and revenue growth for a SaaS-based business.
This dashboard evaluates performance stability and customer engagement to support data-driven decision-making. using **Google BigQuery, SQL, and Power BI**.

## 🔧 Tools & Technologies

- **Google BigQuery + SQL** – Exploratory Data Analysis (EDA)

- **Power BI** – Dashboard design and visualization

- **DAX Measures** – Calculations for key SaaS metrics: MRR, ARR, Customer Churn Rate, Revenue Churn Rate, CAC, CLTV


## 📈 Key Metrics & Insights

The dashboard provides dynamic insights into **customer behavior, subscription patterns, and revenue performance** using **DAX measures in Power BI**. Key metrics include **MRR, ARR, churn rates, CAC, CLTV**.


## 📁 Project Structure
- `/sql` → BigQuery scripts for data aggregation 
- `/powerbi` → Dashboard (.pbix) + Exported PDF + DAX calculations
- `/dataset` → Synthetic CSV data + notebook for data generation

## 🚀 Insights & Recommendations
### Insights

**Revenue Performance**:
Revenue showed consistent growth through 2024, peaking in early 2025 before a noticeable decline in Q2 2025 (–26% to –64% MoM).
This suggests potential issues in customer retention or pricing strategy during that period.

**Customer Base**:
Out of 1000 registered customers, only 16.8% are active subscribers — indicating room for conversion improvement.

**Plan Performance**:
Revenue is dominated by Enterprise plans (≈67%), followed by Pro and Basic tiers, showing reliance on high-value customers.

**Churn Rates**:
Both Revenue Churn (100%) and Customer Churn (16.8%) highlight instability in recurring revenue streams — possibly due to cancellations or poor retention in lower-tier plans.

**Customer Value**:
The CLTV ($3K) and CAC ($110) suggest healthy acquisition efficiency, though sustainability depends on maintaining lower churn.

### Recommendations

**Retention Focus**:
Introduce loyalty programs or discounts for long-term subscriptions to reduce churn and stabilize MRR.

**Upsell Strategy**:
Encourage Pro and Basic customers to upgrade to Enterprise by showcasing added value and ROI benefits.

**Pricing Review**:
Reevaluate pricing for lower tiers to balance affordability with profitability — the steep mid-2025 drop might indicate price sensitivity.

**Customer Engagement**:
Monitor inactive users and trigger personalized reactivation campaigns based on usage patterns.

**Performance Tracking**:
Add metrics such as ARPU (Average Revenue Per User) and CAC Payback Period to measure long-term efficiency and profitability.

---
  ### 📊 Dataset Source

The dataset used for this analysis is available on **Kaggle**:
👉  (https://www.kaggle.com/datasets/halaturkialotaibi/saas-business-metrics-customers-plans-and-revenue)

