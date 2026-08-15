# Week 1 Progress Report

## Project: Customer Churn Prediction & Lifetime Value (LTV) Engine



---

## 1. Week 1 Objective

The objective of Week 1 was to establish the **data ingestion and exploratory data analysis (EDA) pipeline** for the Telco Customer Churn project. The focus was on preparing a cleaned dataset and identifying customer behavior patterns associated with churn using **Python, Pandas, Seaborn, and PostgreSQL**.

---

## 2. Work Completed

### 2.1 PostgreSQL Database Setup

- Installed and configured **PostgreSQL**.
- Created the project database for churn analysis.
- Imported the **Telco Customer Churn dataset** into PostgreSQL.
- Executed basic SQL queries for data validation and exploratory analysis.

---

### 2.2 Data Ingestion & Cleaning

The following preprocessing tasks were completed in **`01_data_loading.ipynb`**:

- Loaded the raw Telco dataset.
- Inspected dataset structure and column information.
- Converted `TotalCharges` from text to numeric format.
- Identified and handled missing values.
- Checked for duplicate records.
- Saved the cleaned dataset for further analysis.

**Output:**

- `data/processed/telco_customer_churn_cleaned.csv`

---

### 2.3 Exploratory Data Analysis (EDA)

Comprehensive EDA was performed in **`02_eda.ipynb`** using **Pandas** and **Seaborn**.

The following analyses were completed:

| Analysis | Purpose |
|----------|---------|
| Churn Count & Churn Rate | Understand overall customer attrition |
| Contract Type Distribution | Analyze customer contract preferences |
| Contract Type vs Churn | Identify contract-related churn patterns |
| Internet Service vs Churn | Compare churn across service types |
| Payment Method vs Churn | Analyze payment behavior and churn |
| Tenure Group vs Churn | Identify churn concentration by customer age |
| Average Monthly Charges by Churn | Compare pricing between retained and churned customers |
| Average Tenure by Contract Type | Understand customer longevity by contract |
| Correlation Heatmap | Examine relationships among numerical variables |

Each analysis includes **visualizations, numerical summaries, and business insights**.

---

## 3. Key Findings

### Churn Overview

- Overall churn rate: **26.54%**
- Approximately **1 in 4 customers have churned**.

### Contract Analysis

- **Month-to-month contracts** show the highest churn levels.
- **Two-year contracts** have the lowest churn, indicating stronger customer retention.

### Tenure Analysis

- Customers in the **0–12 month tenure group** exhibit the highest churn.
- Customer retention improves significantly after the first year of service.

### Pricing Analysis

| Churn Status | Average Monthly Charges |
|--------------|-------------------------|
| No | **61.27** |
| Yes | **74.44** |

This indicates that **customers who churn tend to pay higher monthly charges**, suggesting that pricing may influence customer attrition.

### Service & Payment Behavior

- **Fiber Optic** customers display relatively higher churn compared with DSL users.
- Customers using **Electronic Check** show higher churn counts than customers using automatic payment methods.

### Correlation Analysis

| Variables | Correlation |
|-----------|-------------|
| Tenure ↔ TotalCharges | **0.83** |
| MonthlyCharges ↔ TotalCharges | **0.65** |
| Tenure ↔ MonthlyCharges | **0.25** |

The strongest relationship is between **Tenure and TotalCharges**, indicating that long-term customers generate substantially higher revenue.

---

## 4. Deliverables Completed

### Notebooks

- `notebooks/01_data_loading.ipynb`
- `notebooks/02_eda.ipynb`

### Data Files

- `data/raw/Telco-Customer-Churn.csv`
- `data/processed/telco_customer_churn_cleaned.csv`

### SQL Work Completed

- PostgreSQL database setup
- Dataset import into PostgreSQL
- Basic SQL validation and exploratory queries

---


---

## 5. Alignment with Project Plan

| Week 1 Requirement | Status |
|--------------------|--------|
| PostgreSQL setup | ✅ Completed |
| Load Telco dataset | ✅ Completed |
| Handle missing values | ✅ Completed |
| Create cleaned dataset | ✅ Completed |
| Perform extensive EDA with Pandas | ✅ Completed |
| Perform visual analysis with Seaborn | ✅ Completed |
| Analyze contract type, tenure, and churn relationships | ✅ Completed |
| Establish baseline analytical insights | ✅ Completed |

---


---

## 6. Current Project Status

### Completed

- Data ingestion pipeline
- Data cleaning and preprocessing
- Processed dataset creation
- PostgreSQL database setup and dataset import
- Exploratory Data Analysis with business insights
- Correlation and churn factor analysis



---

## 7. Conclusion

Week 1 objectives have been **successfully achieved**. A cleaned Telco customer dataset has been prepared, stored, and analyzed using **Pandas, Seaborn, and PostgreSQL**. The analysis identified **contract type, tenure, monthly charges, internet service type, and payment behavior** as important factors associated with customer churn.

The project now has a **stable analytical foundation**, including a cleaned dataset, structured EDA notebook, business insights, and a documented baseline understanding of churn behavior.

---

**Week 1 Completion Status:** **Completed Successfully** ✅
