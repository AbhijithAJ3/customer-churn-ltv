# Customer Churn Prediction & LTV Analysis

A telecom customer analytics project focused on **customer churn analysis** and **lifetime value (LTV) analysis** using **Python, PostgreSQL, and SQL**.

---

## 📌 Project Objective

- Analyze customer churn behavior
- Identify high-risk customer segments
- Perform SQL-based business analysis
- Create a foundation for EDA, Power BI, and Machine Learning

---

## 🛠 Tech Stack

- Python
- Pandas
- NumPy
- PostgreSQL
- SQL
- Git & GitHub

---

## 📂 Project Structure

```text
customer-churn-ltv/
├── data/
│   ├── raw/
│   │   └── Telco-Customer-Churn.csv
│   └── processed/
│       └── telco_customer_churn_cleaned.csv
│
├── notebooks/
│   └── 01_data_loading.ipynb
│
├── sql/
│   ├── create_tables.sql
│   └── analysis_queries.sql
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

## ✅ Work Completed

### 1. Data Loading & Cleaning

- Loaded the IBM Telco Customer Churn dataset
- Removed duplicate records
- Handled missing values
- Converted numeric columns
- Standardized column names
- Created the **LTV** column
- Exported the cleaned dataset

### 2. PostgreSQL Setup

- Created the **customer_churn_ltv** database
- Created the **telco_customers** table
- Imported the cleaned CSV file successfully

### 3. SQL Analysis Completed

The following analyses were performed:

- Total customer count
- Churn distribution
- Average monthly charges by churn
- Contract type distribution
- Average tenure by churn
- Top customers by total charges
- Internet service distribution
- Churn by contract type
- Average LTV by churn
- Tenure > 50 months churn analysis

---

## 📊 Current Insights

| Metric | Result |
|--------|--------|
| Total Customers | 7043 |
| Churned Customers | 1869 |
| Churn Rate | ~26.5% |
| Highest Risk Segment | Month-to-month |
| Highest Internet Service Segment | Fiber optic |

Additional findings:

- Churned customers have **higher average monthly charges**.
- Retained customers have **longer average tenure**.
- Retained customers generate **higher lifetime value (LTV)** than churned customers.

---

## 🔄 Current Status

| Task | Status |
|------|--------|
| Project Setup | ✅ |
| Data Cleaning | ✅ |
| PostgreSQL Setup | ✅ |
| SQL Analysis | ✅ |
| EDA Notebook | 🔄 In Progress |
| Feature Engineering | ⏳ Pending |
| Machine Learning | ⏳ Pending |
| Power BI Dashboard | ⏳ Pending |

---

## 🚀 Next Step

The next milestone is to complete **`notebooks/02_eda.ipynb`** with:

- Visualizations using **Matplotlib** and **Seaborn**
- Churn analysis charts
- Business insights
- Key findings and recommendations

---

## 👨‍💻 Author

**Abhijith**  
B.Tech Computer Science Engineering  
Data Analyst Portfolio Project
