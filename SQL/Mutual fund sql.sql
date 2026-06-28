# SQL Queries for Mutual Fund Analytics Project

## 1. Top 10 Fund Houses by Assets Under Management (AUM)

```sql
SELECT fund_house,
       SUM(aum) AS total_aum
FROM public_aum_fund_house_features
GROUP BY fund_house
ORDER BY total_aum DESC
LIMIT 10;
```

---

## 2. Category-wise Total SIP Inflow

```sql
SELECT category,
       SUM(sip_inflow) AS total_sip_inflow
FROM public_category_inflows
GROUP BY category
ORDER BY total_sip_inflow DESC;
```

---

## 3. Average Returns by Mutual Fund Category

```sql
SELECT category,
       ROUND(AVG(return_3yr),2) AS avg_3yr_return
FROM public_scheme_performance
GROUP BY category
ORDER BY avg_3yr_return DESC;
```

---

## 4. Top 10 Mutual Fund Schemes by 3-Year Return

```sql
SELECT scheme_name,
       category,
       return_3yr
FROM public_scheme_performance
ORDER BY return_3yr DESC
LIMIT 10;
```

---

## 5. Total Investment by State

```sql
SELECT state,
       SUM(investment_amount) AS total_investment
FROM public_investor_transactions_features
GROUP BY state
ORDER BY total_investment DESC;
```

---

## 6. Investor Distribution by Gender

```sql
SELECT gender,
       COUNT(*) AS total_investors
FROM public_investor_transactions_features
GROUP BY gender;
```

---

## 7. Payment Mode-wise Investment

```sql
SELECT payment_mode,
       SUM(investment_amount) AS total_investment
FROM public_investor_transactions_features
GROUP BY payment_mode
ORDER BY total_investment DESC;
```

---

## 8. Monthly SIP Trend

```sql
SELECT month_year,
       SUM(sip_inflow) AS total_sip
FROM public_monthly_sip_features
GROUP BY month_year
ORDER BY month_year;
```

---

## 9. Average Alpha and Sharpe Ratio by Fund House

```sql
SELECT fund_house,
       ROUND(AVG(alpha),2) AS avg_alpha,
       ROUND(AVG(sharpe_ratio),2) AS avg_sharpe_ratio
FROM public_scheme_performance
GROUP BY fund_house
ORDER BY avg_alpha DESC;
```

---

## 10. Top 10 Cities by Investment Amount

```sql
SELECT city,
       SUM(investment_amount) AS total_investment
FROM public_investor_transactions_features
GROUP BY city
ORDER BY total_investment DESC
LIMIT 10;
```
