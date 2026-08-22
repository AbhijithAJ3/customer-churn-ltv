# Week 2 Progress Report
## Feature Engineering & Predictive Modeling

### Objective

The objective of Week 2 was to prepare customer data for machine learning, build churn prediction models, evaluate their performance, and use SHAP to explain the model's predictions.

---

## 1. Feature Engineering

The cleaned customer dataset was transformed into a machine-learning-ready feature dataset.

### Completed Tasks

- Created relevant engineered features
- Applied one-hot encoding to categorical variables
- Prepared the final feature dataset
- Final encoded dataset size: **7,043 rows × 35 features**

---

## 2. Train/Test Split

The feature dataset was divided into training and testing sets.

Stratified splitting was used to maintain a similar proportion of churn and non-churn customers in both datasets.

---

## 3. Feature Scaling

Feature scaling was applied to numerical features so that variables with different numerical ranges could be used effectively by the machine-learning models.

---

## 4. Churn Prediction Models

Three classification models were trained:

1. **Logistic Regression**
2. **Random Forest**
3. **XGBoost**

These models were trained to predict whether a customer is likely to churn.

---

## 5. Model Evaluation

The models were evaluated using:

- Precision
- Recall
- F1-score

### Model Comparison

| Model | F1-Score |
|---|---:|
| Logistic Regression | **60.89%** |
| XGBoost | **57.10%** |
| Random Forest | **55.49%** |

Based on the F1-score, **Logistic Regression was selected as the current best-performing model**.

---

## 6. SHAP Explainability

SHAP was implemented to explain the predictions made by the selected Logistic Regression model.

The SHAP summary plot was used to identify the features that had the greatest influence on churn predictions.

### Important Features

The most influential features included:

- Tenure
- Internet Service
- Monthly Charges
- Annual Charges
- Total Charges
- Contract Type

### Key Insights

- **Tenure** was the most influential feature in the SHAP analysis.
- Higher tenure generally pushed predictions toward **No Churn**.
- Lower tenure generally pushed predictions toward **Churn**.
- Having a **two-year contract** tended to push predictions toward **No Churn**.

SHAP helps explain how customer features influence the model's churn predictions and makes the model's results easier to understand for business stakeholders.

---

## 7. Week 2 Outcome

The complete churn prediction workflow was successfully implemented:

**Feature Engineering → Data Preparation → Model Training → Model Evaluation → Model Selection → SHAP Explainability**

The selected Logistic Regression model will provide the churn prediction component for the later stages of the project.

---

## Status

### Week 2 — COMPLETED ✅

The notebook was successfully executed from beginning to end without errors.
