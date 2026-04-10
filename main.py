from sklearn.model_selection import train_test_split
import joblib

from src.data_preprocessing import load_and_preprocess
from src.model_training import train_model, train_anomaly_model
from src.model_evaluation import evaluate_model, evaluate_anomaly

# Load data
X, y, scaler, feature_names = load_and_preprocess("data/CICIDS2017.csv")

# Split
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)

# Train classification model
model = train_model(X_train, y_train)

# Evaluate classification
evaluate_model(model, X_test, y_test)

# Train anomaly model
anomaly_model = train_anomaly_model(X_train)

# Evaluate anomaly detection
evaluate_anomaly(anomaly_model, X_test)

# Save models
joblib.dump(model, "models/random_forest.pkl")
joblib.dump(anomaly_model, "models/isolation_forest.pkl")
joblib.dump(scaler, "models/scaler.pkl")
joblib.dump(feature_names, "models/feature_names.pkl")

print("✅ Models trained & saved successfully!")