from fastapi import FastAPI
import joblib
from pathlib import Path
from pydantic import BaseModel
import pandas as pd

app = FastAPI(
    title="Customer LTV Prediction API",
    description="API for predicting customer remaining and total LTV",
    version="1.0.0"
)

# Load trained LTV model
BASE_DIR = Path(__file__).resolve().parent.parent
MODEL_PATH = BASE_DIR / "models" / "ltv_xgboost_model.pkl"

model = joblib.load(MODEL_PATH)

class CustomerData(BaseModel):
    Gender: str
    SeniorCitizen: int
    Partner: str
    Dependents: str
    Tenure: int
    PhoneService: str
    MultipleLines: str
    InternetService: str
    OnlineSecurity: str
    OnlineBackup: str
    DeviceProtection: str
    TechSupport: str
    StreamingTV: str
    StreamingMovies: str
    Contract: str
    PaperlessBilling: str
    PaymentMethod: str
    MonthlyCharges: float
    ServiceCount: int


@app.get("/health")
def health_check():
    return {"status": "healthy"}

@app.post("/predict")
def predict_ltv(customer: CustomerData):
    customer_data = customer.model_dump()
    # Match the data type used by the trained preprocessing pipeline
    customer_data["SeniorCitizen"] = str(customer_data["SeniorCitizen"])

    customer_df = pd.DataFrame([customer_data])

    prediction = model.predict(customer_df)[0]

    remaining_ltv = max(0, float(prediction))

    return {
        "predicted_remaining_ltv": remaining_ltv
    }

@app.post("/predict/batch")
def predict_ltv_batch(customers: list[CustomerData]):
    customer_data = [customer.model_dump() for customer in customers]

    for data in customer_data:
        data["SeniorCitizen"] = str(data["SeniorCitizen"])

    customer_df = pd.DataFrame(customer_data)

    predictions = model.predict(customer_df)

    results = []

    for prediction in predictions:
        remaining_ltv = max(0, float(prediction))

        results.append({
            "predicted_remaining_ltv": remaining_ltv
        })

    return results