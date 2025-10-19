# 🚀 Quick Start Guide - AI Phishing Shield

## 🎯 **Option 1: Automatic Startup (Recommended)**

Double-click the `start.bat` file in the project root. This will:
- Start the backend API server
- Start the frontend web application  
- Build the browser extension
- Show you all the URLs and instructions

## 🎯 **Option 2: Manual Startup**

### **Step 1: Start Backend API**
```bash
# Activate Python environment
.venv\Scripts\activate

# Start backend server
cd web-application/backend
python app.py
```
**Backend will run on:** http://localhost:5000

### **Step 2: Start Frontend (New Terminal)**
```bash
cd web-application/frontend
npm run dev
```
**Frontend will run on:** http://localhost:3000

### **Step 3: Build Browser Extension**
```bash
cd browser-extension
npm run build
```

### **Step 4: Load Extension in Chrome**
1. Open Chrome and go to `chrome://extensions/`
2. Enable "Developer mode" (toggle in top-right)
3. Click "Load unpacked"
4. Select the `browser-extension/dist` folder
5. Extension icon should appear in toolbar

## 🧪 **Testing the System**

### **Test Backend Health**
Visit: http://localhost:5000/health
Should return: `{"status": "ok", "database": {...}}`

### **Test Frontend**
Visit: http://localhost:3000
Should show the AI Phishing Shield dashboard

### **Test Browser Extension**
1. Click the extension icon in Chrome toolbar
2. Enter a URL like `https://www.google.com`
3. Click "Scan URL"
4. Should show analysis results

### **Test URL Scanner**
1. Go to http://localhost:3000/scanner
2. Enter a URL and click "Scan URL Security"
3. Watch the progressive scanning animation
4. View detailed results

## 🎯 **Test URLs**

### **Safe URLs**
- `https://www.google.com`
- `https://github.com`
- `https://www.microsoft.com`

### **Suspicious URLs** (for testing)
- `https://paypal-security-update.suspicious-domain.com`
- `https://amazon-account-verify.fake-site.net`

## 🔧 **Troubleshooting**

### **Backend Issues**
- Check if port 5000 is available
- Ensure Python virtual environment is activated
- Check console for error messages

### **Frontend Issues**
- Check if port 3000 is available
- Ensure Node.js dependencies are installed
- Check browser console for errors

### **Extension Issues**
- Make sure extension is loaded in Chrome
- Check Chrome's extension page for errors
- Try reloading the extension

## 📱 **Features to Test**

### **Browser Extension**
- ✅ URL scanning with progressive feedback
- ✅ Color-coded results (green/red/yellow)
- ✅ Detailed explanations
- ✅ Scan history
- ✅ Settings configuration
- ✅ Educational content

### **Web Application**
- ✅ Dynamic URL scanner with animations
- ✅ Real-time progress indicators
- ✅ Comprehensive results display
- ✅ Scan history with local storage
- ✅ Educational sections
- ✅ Responsive design

## 🎉 **Success Indicators**

You'll know everything is working when:
1. ✅ Backend health check returns OK
2. ✅ Frontend loads without errors
3. ✅ Extension popup opens and scans URLs
4. ✅ URL scanner shows progressive loading
5. ✅ Results display with confidence scores
6. ✅ No console errors in browser

## 🆘 **Need Help?**

- Check the main README.md for detailed documentation
- Look at console logs for error messages
- Ensure all dependencies are installed
- Try restarting the services

---

**🛡️ AI Phishing Shield - Advanced Real-time Protection**
