-- TOTAL CUSTOMERS
SELECT COUNT(*) AS TOTAL_CUSTOMERS
FROM telco_customers;


-- CHURN COUNT
SELECT churn, COUNT(*) AS customer_count
FROM telco_customers
GROUP BY churn
ORDER BY churn DESC;


-- AVERAGE MONTHLY CHARGES FOR EACH CHURN CATEGORY
SELECT churn, ROUND(AVG(monthlycharges), 2) AS average_monthlycharges
FROM telco_customers
GROUP BY churn;


-- HOW MANY CUSTOMERS BELONG TO EACH CONTRACT TYPE
SELECT contract, COUNT(*) AS customer_count
FROM telco_customers
GROUP BY contract
ORDER BY customer_count;


-- AVERAGE TENURE OF CHURNED VS NON-CHURNED CUSTOMERS
SELECT churn, ROUND(AVG(tenure), 2) AS avg_tenure
FROM telco_customers
GROUP BY churn;


-- TOP 10 CUSTOMERS WITH THE HIGHEST TOTAL CHARGES
SELECT customerid, totalcharges
FROM telco_customers
ORDER BY totalcharges DESC
LIMIT 10;


-- COUNT CUSTOMERS FOR EACH INTERNET SERVICE TYPE
SELECT internetservice, COUNT(*) AS customer_count
FROM telco_customers
GROUP BY internetservice;


-- HOW MANY CHURNED CUSTOMERS ARE PRESENT IN EACH CONTRACT TYPE
SELECT contract, COUNT(*) AS customer_count
FROM telco_customers
WHERE churn = 'Yes'
GROUP BY contract
ORDER BY customer_count DESC;


-- AVERAGE LTV FOR CHURNED AND NON-CHURNED CUSTOMERS
SELECT churn, ROUND(AVG(ltv), 2) AS avg_ltv
FROM telco_customers
GROUP BY churn
ORDER BY churn DESC;


-- CUSTOMERS WHOSE TENURE IS GREATER THAN 50 MONTHS
SELECT customerid, tenure, contract, churn
FROM telco_customers
WHERE tenure > 50;