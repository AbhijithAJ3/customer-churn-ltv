# Customer Churn Prediction & LTV Engine

An end-to-end customer analytics and machine learning project designed to identify churn risk, estimate remaining customer lifetime, and predict survival-derived Customer Lifetime Value (LTV).

The project combines **Python, SQL, PostgreSQL, Machine Learning, Survival Analysis, SHAP, FastAPI, Metabase, and Docker** to transform customer data into actionable business insights.

---

## Dashboard Preview

![Customer Churn & LTV Dashboard](dashboard/dashboard.jpeg)

The interactive **Customer Churn & LTV Dashboard** provides a business-level view of customer churn and customer value.

It includes:
- Total Customers
- Churned Customers
- Churn Rate
- Average Predicted Total LTV
- LTV Segmentation
- Churn by Contract
- Churn by Internet Service
- Churn Rate by Contract
- Contract and Internet Service filters

---

## Business Problem

Customer churn reduces recurring revenue and increases customer acquisition costs. At the same time, customers have different levels of potential value.

This project aims to answer:

- Which customers are more likely to churn?
- What factors are associated with churn?
- How long are active customers expected to remain?
- What is the estimated value of active customers?
- Which customer segments should receive higher retention priority?

---

## Project Workflow

```text
Customer Data
     |
     v
Data Cleaning & EDA
     |
     +----------------------+
     |                      |
     v                      v
Churn Prediction     Survival Analysis
     |                      |
     v                      v
Logistic Regression   Remaining Lifetime
                            |
                            v
                    Survival-derived LTV
                            |
                            v
                     Tuned XGBoost
                            |
                            v
                         FastAPI
                            |
                            v
                      PostgreSQL
                            |
                            v
                        Metabase