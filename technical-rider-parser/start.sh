#!/bin/bash

echo "=========================================="
echo "  Technical Rider Parser - Starting..."
echo "=========================================="
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

echo "✓ Python found: $(python3 --version)"
echo ""

# Check if required packages are installed
echo "Checking dependencies..."
python3 -c "import flask, docx, pdfplumber" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "⚠️  Missing dependencies. Installing..."
    pip install -r requirements.txt --break-system-packages
    echo ""
fi

echo "✓ All dependencies installed"
echo ""
echo "=========================================="
echo "  Starting Application..."
echo "=========================================="
echo ""
echo "🌐 Access the app at: http://localhost:5000"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Start the Flask app
python3 app.py
