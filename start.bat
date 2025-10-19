@echo off
echo 🛡️ Starting AI Phishing Shield...
echo.

echo 📦 Activating Python virtual environment...
call .venv\Scripts\activate

echo 🚀 Starting Backend API Server...
start "Backend API" cmd /k "cd /d %~dp0 && .venv\Scripts\activate && cd web-application/backend && python app.py"

echo ⏳ Waiting for backend to start...
timeout /t 5 /nobreak > nul

echo 🌐 Starting Frontend Web Application...
start "Frontend App" cmd /k "cd /d %~dp0 && cd web-application/frontend && npm run dev"

echo ⏳ Waiting for frontend to start...
timeout /t 3 /nobreak > nul

echo 🔧 Building Browser Extension...
cd browser-extension
npm run build
cd ..

echo.
echo ✅ AI Phishing Shield is starting up!
echo.
echo 📍 URLs:
echo    • Backend API: http://localhost:5000
echo    • Frontend App: http://localhost:3000
echo    • Health Check: http://localhost:5000/health
echo.
echo 🔧 Browser Extension:
echo    1. Open Chrome and go to chrome://extensions/
echo    2. Enable "Developer mode"
echo    3. Click "Load unpacked"
echo    4. Select the "browser-extension/dist" folder
echo.
echo 🎯 Test URLs:
echo    • Safe: https://www.google.com
echo    • Suspicious: https://paypal-security-update.suspicious-domain.com
echo.
echo Press any key to exit...
pause > nul
