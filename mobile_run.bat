@echo off
echo 🚀 Starting AI Cybersecurity Threat Detection App for Mobile Access
echo.

echo 📱 Installing ngrok (if not already installed)...
pip install pyngrok --quiet

echo.
echo 🔗 Starting ngrok tunnel...
echo This will create a secure URL that you can access from your mobile device
echo.

python -c "
from pyngrok import ngrok
import time
import subprocess
import sys

# Kill any existing ngrok processes
ngrok.kill()

# Start Streamlit in background
print('🎯 Starting Streamlit app...')
streamlit_process = subprocess.Popen([sys.executable, '-m', 'streamlit', 'run', 'src/app.py'], 
                                   stdout=subprocess.PIPE, stderr=subprocess.PIPE)

# Wait a moment for Streamlit to start
time.sleep(3)

# Create ngrok tunnel
print('🌐 Creating secure tunnel...')
public_url = ngrok.connect(8501)
print(f'\\n✅ Mobile Access URL: {public_url}')
print('\\n📱 Open this URL on your mobile device!')
print('🔒 This is a secure HTTPS connection')
print('\\n⚠️  Press Ctrl+C to stop the server\\n')

# Keep running
try:
    streamlit_process.wait()
except KeyboardInterrupt:
    print('\\n🛑 Stopping servers...')
    ngrok.kill()
    streamlit_process.terminate()
"