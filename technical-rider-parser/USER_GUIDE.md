# USER GUIDE 📖
## Technical Rider Parser - Complete Instructions

---

## Table of Contents
1. [Installation](#installation)
2. [Starting the App](#starting-the-app)
3. [Using the App](#using-the-app)
4. [Understanding Results](#understanding-results)
5. [Exporting Reports](#exporting-reports)
6. [Tips & Tricks](#tips--tricks)
7. [Troubleshooting](#troubleshooting)

---

## Installation

### Requirements
- **Python 3.8+** (Check: `python3 --version`)
- **pip** (Python package manager)
- **Modern web browser** (Chrome, Firefox, Safari, Edge)

### Step-by-Step Setup

1. **Download the Application**
   - Extract the `technical-rider-parser` folder

2. **Open Terminal/Command Prompt**
   ```bash
   cd path/to/technical-rider-parser
   ```

3. **Install Dependencies**
   
   **Mac/Linux:**
   ```bash
   ./start.sh
   ```
   
   **Windows:**
   ```bash
   pip install -r requirements.txt
   python app.py
   ```

4. **Verify Installation**
   - You should see: "Running on http://127.0.0.1:5000"

---

## Starting the App

### Quick Start

**Mac/Linux:**
```bash
./start.sh
```

**Windows:**
```bash
python app.py
```

**Alternative (all platforms):**
```bash
python3 app.py
```

### What You'll See
```
========================================
  Technical Rider Parser - Starting...
========================================

✓ Python found: Python 3.12.0
✓ All dependencies installed

========================================
  Starting Application...
========================================

🌐 Access the app at: http://localhost:5000

Press Ctrl+C to stop the server
```

### Opening the Interface
1. Open your web browser
2. Navigate to: **http://localhost:5000**
3. You should see the upload screen

---

## Using the App

### Step 1: Upload Document

**Method A: Drag & Drop**
1. Drag your technical rider file
2. Drop it onto the upload area
3. Processing begins automatically

**Method B: Click to Select**
1. Click the upload area
2. Browse to your file
3. Select and open
4. Processing begins automatically

**Supported Files:**
- ✓ PDF (.pdf)
- ✓ Word Documents (.docx, .doc)
- ✓ Text Files (.txt)
- ✗ Images, Excel, PowerPoint (not supported)

**File Size Limit:** 16MB

### Step 2: Processing

**What Happens:**
1. File is uploaded to temporary storage
2. Text is extracted from document
3. Pattern matching identifies equipment
4. Brands are detected and counted
5. Data is aggregated and organized
6. Results are displayed

**Processing Time:**
- Small files (< 5 pages): 1-2 seconds
- Medium files (5-20 pages): 2-5 seconds
- Large files (> 20 pages): 5-10 seconds

### Step 3: Review Results

The results page shows:

**Summary Dashboard** (Top)
- Total microphone count
- Total DI boxes
- Total floor monitors
- Total IEMs

**Detailed Sections:**
1. Microphones (by brand)
2. DI Boxes
3. Floor Monitors
4. In-Ear Monitors
5. Backline Equipment

---

## Understanding Results

### Microphones Section

**What You'll See:**
```
🎤 Microphones

[Shure]          [Sennheiser]     [AKG]
   14               11              6
 UNITS            UNITS           UNITS
```

**Interpretation:**
- Each card shows a brand
- Number = total quantity detected
- Includes all models from that brand

**Details Included:**
- Brand name (Shure, Sennheiser, AKG, DPA, etc.)
- Total count of that brand's microphones
- Aggregated from all mentions in the document

### DI Boxes Section

**What You'll See:**
```
🔌 DI Boxes

[Total DI Boxes]    [Radial]
       8               4
    UNITS           UNITS
```

**Interpretation:**
- First card = total count
- Additional cards = specific brands
- Useful for verifying brand requirements

### Floor Monitors Section

**What You'll See:**
```
🔊 Floor Monitors

[Total Monitors]    [L'Acoustic]
       4                2
    UNITS            UNITS
```

**Interpretation:**
- Shows stage wedges/monitors
- Brand breakdown helps verify specs
- Total useful for quick assessment

### In-Ear Monitors Section

**What You'll See:**
```
🎧 In-Ear Monitors

[Total IEMs]      [Sennheiser]
      8                8
   UNITS            UNITS
```

**Interpretation:**
- IEM pack/bodypack counts
- Brand-specific for compatibility
- Helps rental/inventory planning

### Backline Section

**What You'll See:**
```
🥁 Backline Equipment

🥁 Drums
• 5-piece drum kit                    [1]
• Kick drum (22")                     [1]
• Snare (14")                         [1]

🎹 Keyboards
• Yamaha Montage M8X                  [1]
• Double tier keyboard stand          [1]

🎸 Guitar/Bass
• Bass amplifier                      [1]
```

**Interpretation:**
- Organized by instrument type
- Specific models listed
- Quantities in brackets
- Accessories included

---

## Exporting Reports

### Creating a Word Document

1. **Click "Download Word Report"**
   - Button at bottom of results page
   - Green with download icon

2. **Processing**
   - Button shows "⏳ Generating..."
   - Takes 1-3 seconds

3. **Download**
   - File automatically downloads
   - Named: `Equipment_List_[timestamp].docx`
   - Opens in Microsoft Word or compatible

### Report Contents

**Header:**
```
TECHNICAL EQUIPMENT LIST
Equipment Breakdown - Parsed from Technical Rider

Source Document: [filename] | Generated: [date/time]
```

**Table Format:**
| CATEGORY | EQUIPMENT | SPECIFICATION/MODEL | QTY | REMARKS |
|----------|-----------|---------------------|-----|---------|
| MICROPHONES | Shure Microphones | Shure | 14 | |
| DI BOXES | Active DI Boxes | Radial/BSS | 8 | |
| ... | ... | ... | ... | |

**Features:**
- ✓ Professional formatting
- ✓ Styled table with headers
- ✓ Organized by category
- ✓ Empty "Remarks" column for notes
- ✓ Ready to share with team/venue

### Using the Report

**Best Practices:**
1. Add notes in "Remarks" column
2. Highlight items you need to rent/source
3. Share with venue/rental company
4. Keep for records/documentation

---

## Tips & Tricks

### Getting Best Results

**1. Use Standard Formats**
   - Follow typical technical rider structure
   - Use section headers (Microphones, DI, etc.)
   - Include quantities with "x" notation

**2. Clear Specifications**
   - Include brand names
   - Specify model numbers
   - Use full equipment names

**3. Consistent Notation**
   - Good: "04 x Shure SM58"
   - Good: "6 x Active DI boxes (Radial)"
   - Avoid: "some microphones"
   - Avoid: "various DI boxes"

### Common Patterns Recognized

**Quantity Indicators:**
- `04 x` → "04 x Shure SM58"
- `6 pcs` → "6 pcs DI boxes"
- `8 units` → "8 units IEM"
- `2 x` → "2 x Floor monitors"

**Brand Detection:**
- Microphones: Shure, Sennheiser, AKG, DPA, Audix, Neumann
- DI: Radial, BSS, Klarkteknik
- Monitors: L'Acoustic, Meyer Sound, d&b
- IEM: Sennheiser, Shure PSM

### Maximizing Accuracy

**Do:**
- ✓ Upload original technical riders
- ✓ Ensure text is searchable (not scanned images)
- ✓ Use standard equipment names
- ✓ Review results for accuracy

**Don't:**
- ✗ Use vague descriptions
- ✗ Scan documents as images only
- ✗ Mix multiple riders in one file
- ✗ Rely 100% without review

---

## Parsing Another Document

**To Process Next Rider:**

1. Click "🔄 Parse Another Document"
2. Upload area reappears
3. Previous data is cleared
4. Upload next file

**Important:**
- Results are NOT saved between uploads
- Download report before clearing
- Each upload is independent

---

## Troubleshooting

### Upload Issues

**Problem: "No file provided"**
- Solution: Ensure file is properly selected
- Check: File isn't corrupted

**Problem: "Invalid file type"**
- Solution: Only use PDF, DOCX, or TXT
- Check: File extension is correct

**Problem: "File too large"**
- Solution: File must be under 16MB
- Try: Compress PDF or split large riders

### Processing Issues

**Problem: "Error processing file"**
- Solution: File might be corrupted
- Try: Re-export from original source
- Check: File isn't password-protected

**Problem: No equipment detected**
- Solution: Document might not contain standard patterns
- Try: Check if text is searchable
- Verify: Equipment lists are clearly formatted

### Results Issues

**Problem: Incorrect counts**
- Reason: Non-standard formatting
- Solution: Review source document
- Note: Parser uses pattern matching

**Problem: Missing brands**
- Reason: Brand not in database
- Solution: Brand may not be recognized
- Workaround: Manually add to report

**Problem: Duplicate counts**
- Reason: Equipment listed multiple times
- Solution: Review source for duplicates
- Note: Parser counts all matches

### Technical Issues

**Problem: App won't start**
```
Solution 1: Check Python version
→ python3 --version
→ Should be 3.8 or higher

Solution 2: Reinstall dependencies
→ pip install -r requirements.txt --force-reinstall

Solution 3: Check port availability
→ Port 5000 might be in use
→ Change in app.py: app.run(port=5001)
```

**Problem: Can't access http://localhost:5000**
```
Solution 1: Check if app is running
→ Look for "Running on http://127.0.0.1:5000" message

Solution 2: Try alternative URL
→ http://127.0.0.1:5000
→ http://0.0.0.0:5000

Solution 3: Check firewall
→ Firewall might be blocking
→ Allow Python through firewall
```

**Problem: Download button doesn't work**
```
Solution 1: Check browser compatibility
→ Use modern browser (Chrome, Firefox, Edge)
→ Enable JavaScript

Solution 2: Check pop-up blocker
→ Disable pop-up blocker for localhost
→ Allow downloads

Solution 3: Try different browser
→ Test in another browser
→ Clear browser cache
```

---

## Advanced Usage

### Custom Port

**To run on different port:**

Edit `app.py`:
```python
# Change this line:
app.run(debug=True, host='0.0.0.0', port=5000)

# To:
app.run(debug=True, host='0.0.0.0', port=8080)
```

Then access at: http://localhost:8080

### Network Access

**To access from other devices:**

1. Find your IP address:
   ```bash
   # Mac/Linux
   ifconfig | grep inet
   
   # Windows
   ipconfig
   ```

2. Other devices can access at:
   ```
   http://[YOUR-IP]:5000
   ```

3. Ensure firewall allows connections

### Batch Processing

**To process multiple files:**

1. Process first file
2. Download report
3. Click "Parse Another"
4. Process next file
5. Repeat

**Note:** No built-in batch mode yet

---

## Keyboard Shortcuts

While in the app:
- **Tab**: Navigate between elements
- **Enter**: Activate buttons/links
- **Ctrl/Cmd + R**: Refresh page
- **Ctrl/Cmd + W**: Close tab

In terminal:
- **Ctrl + C**: Stop the server

---

## Support Resources

**Documentation:**
- README.md - Complete documentation
- QUICKSTART.md - Quick setup guide
- DEMO.md - Feature overview

**Help:**
- Check Troubleshooting section above
- Review example documents
- Verify file format compatibility

---

## Privacy Notice

**Your Data:**
- ✓ Processed locally on your machine
- ✓ No data sent to external servers
- ✓ Files automatically deleted after processing
- ✓ No tracking or analytics
- ✓ No data stored between sessions

**Security:**
- All processing happens in your browser and on your machine
- No cloud uploads
- No account required
- No data retention

---

**Happy Parsing! 🎉**

For more information, see README.md or contact support.

---

**Version**: 1.0.0
**Last Updated**: October 2025
