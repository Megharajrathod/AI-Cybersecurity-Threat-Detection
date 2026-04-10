# 🔐 AI Cybersecurity Threat Detection System

An intelligent system for detecting cybersecurity threats using machine learning, featuring a web interface for file uploads and analysis.

## 🚀 Features

- **Real-time Threat Detection**: Uses Random Forest and Isolation Forest algorithms
- **Web Interface**: User-friendly Streamlit application for file uploads and analysis
- **Automated Preprocessing**: Handles missing data, feature mapping, and scaling
- **Data Quality Reporting**: Missing values, type validation, and data diagnostics
- **Exportable Results**: Download prediction output as CSV
- **Secure Export**: Encrypt exported results using password-based encryption
- **Feature Importance**: View model-driven feature ranking for explainability
- **Industry-ready Templates**: Download CSV templates with expected columns

## 📋 Requirements

- Python 3.8+
- Dependencies listed in `requirements.txt`

## 🛠️ Installation

1. **Clone or download the project**
2. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

## 🎯 Usage

### Web Interface (Streamlit App)

Run the interactive web application:

```bash
streamlit run src/app.py
```

- Open your browser to `http://localhost:8501`
- Upload a CSV file with network traffic data
- Use the sidebar to enable encrypted exports or decrypt encrypted uploads
- View real-time predictions and analysis

### 📱 Mobile Access

The app is fully mobile-compatible and can be accessed from smartphones and tablets!

#### Option 1: Local Network Access
If your mobile device is on the same Wi-Fi network:
1. Run the app: `streamlit run src/app.py`
2. Find your computer's local IP address
3. On your mobile device, visit: `http://[YOUR_IP]:8501`

#### Option 2: Secure Remote Access (Recommended)
For secure access from anywhere:

**Windows:**
```cmd
python mobile_access.py
```

**Or run the batch file:**
```cmd
mobile_run.bat
```

This will:
- ✅ Install ngrok automatically
- 🌐 Create a secure HTTPS tunnel
- 📱 Provide a mobile-friendly URL
- 🔒 Ensure encrypted connection

**Example Output:**
```
🎉 SUCCESS! Your app is now accessible from mobile devices!
📱 Mobile Access URL: https://abc123.ngrok.io
```

### 🖥️ Desktop Usage
- **Layout**: Responsive design adapts to screen size
- **Touch**: Touch-friendly buttons and controls
- **Performance**: Optimized for various devices

## 📊 Expected Features

The model expects exactly 5 features in this order:

1. **Flow Duration** - Duration of the network flow
2. **Total Fwd Packets** - Number of forward packets
3. **Total Backward Packets** - Number of backward packets
4. **Total Length of Fwd Packets** - Total bytes in forward direction
5. **Total Length of Bwd Packets** - Total bytes in backward direction

## 🏗️ Project Structure

```
├── src/
│   ├── app.py              # Streamlit web interface
│   ├── data_preprocessing.py
│   ├── model_training.py
│   └── model_evaluation.py
├── models/                 # Trained models and scalers
├── data/                   # Sample datasets
└── requirements.txt       # Python dependencies
```

## 🔧 Model Training

To retrain the models with new data:

```bash
python main.py
```

This will:
- Load and preprocess data from `data/CICIDS2017.csv`
- Train Random Forest and Isolation Forest models
- Save models, scaler, and feature names to `models/` directory

## 📈 Model Performance

- **Accuracy**: ~95% on test data
- **Anomaly Detection**: Effective at identifying unusual network patterns
- **Real-time Processing**: Handles large datasets efficiently

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is open-source. Feel free to use and modify.

## 🆘 Troubleshooting

### Common Issues:

1. **"Module not found" errors**: Run `pip install -r requirements.txt`
2. **Model loading errors**: Check that `models/` directory exists with trained models
3. **Feature mismatch**: Ensure uploaded CSV has the 5 required features

### Getting Help:

- Review the logs for detailed error messages
- Ensure your CSV data matches the expected format

---

**Built with ❤️ for cybersecurity professionals**"# AI-Cybersecurity-Threat-Detection" 
