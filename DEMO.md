# Technical Rider Parser - Application Demo

## 📋 Overview

This application has been specifically designed for live sound engineers and event production professionals to automatically extract equipment information from technical riders.

## 🎯 What It Does

### Automated Equipment Detection

The app analyzes technical rider documents and automatically extracts:

1. **Microphones** - Counts and identifies by brand
   - Detects: Shure, Sennheiser, AKG, DPA, Audix, Neumann, Rode, Earthworks
   - Recognizes model numbers (SM57, SM58, Beta91, e904, C414, 4099, etc.)
   - Aggregates total counts per brand

2. **DI Boxes** - Counts total and identifies brands
   - Detects: Radial, BSS, Klarkteknik, Countryman
   - Distinguishes between active and passive

3. **Floor Monitors** - Stage wedge detection
   - Detects: L'Acoustic, Meyer Sound, d&b, Outline, DAS
   - Counts total stage monitors/wedges

4. **In-Ear Monitors (IEM)** - IEM system counting
   - Detects: Sennheiser (2050, EW300, G4), Shure (PSM1000, ULXD, Axient)
   - Counts total IEM packs

5. **Backline Equipment** - Instruments and gear
   - Drums: Kits, cymbals, hardware (Pearl, Tama, DW, Yamaha)
   - Keyboards: Synths, pianos, stands (Yamaha, Nord, Korg, Roland)
   - Amplifiers: Guitar/bass amps (Fender, Marshall, Mesa, Ampeg)

## 📊 Sample Output

### Input: Swanand Kirkire Technical Rider 2025

**Detected Equipment:**

```
MICROPHONES
├─ Shure: 14 units (SM57, SM58, Beta91, Axient)
├─ Sennheiser: 11 units (e901, e902, e904, e914, e614)
├─ AKG: 6 units (C411, C414)
├─ DPA: 2 units (4099)
└─ Audix: 2 units (D6)

DI BOXES
└─ Total: 8 units (Radial/BSS/Klarkteknik)

FLOOR MONITORS
└─ Total: 4 stage wedges (L'Acoustic/Meyer Sound/d&b)

IN-EAR MONITORS
└─ Total: 8 IEM systems (Sennheiser 2050/Shure PSM1000)

BACKLINE
├─ Drums: 5-piece kit (Pearl Reference/Tama/DW)
│   ├─ Kick drum (22")
│   ├─ Snare (14")
│   ├─ Rack toms (10", 12")
│   ├─ Floor toms (14", 16")
│   └─ Cymbals (Zildjian K Dark/A Custom)
└─ Keyboards: Yamaha Montage M8X
```

## 🔄 Workflow

```
Upload Document → Parse Content → Display Results → Export Report
     ↓                  ↓               ↓              ↓
  PDF/DOCX         Extract Text    Show Breakdown   DOCX File
                   Pattern Match   Brand Summary    Professional
                   Brand Detect    In-App View      Format
```

## ✨ Key Features

### 1. Multi-Format Support
- PDF documents
- Microsoft Word (DOCX)
- Plain text files

### 2. Intelligent Parsing
- Regex-based pattern matching
- Context-aware brand detection
- Quantity aggregation
- Handles various formatting styles

### 3. Professional Output
- **In-App Display**: Beautiful, organized breakdown
- **Word Export**: Industry-standard formatted report
- **Clear Categories**: Easy to review and share

### 4. User-Friendly Interface
- Drag & drop upload
- Clean, modern design
- Instant results
- One-click export

## 🎨 User Interface

### Main Screen
- Large upload area with drag-and-drop support
- File type indicators (PDF, DOCX, TXT)
- Progress indicator during processing

### Results View
- Summary dashboard with total counts
- Categorized sections for each equipment type
- Brand-specific breakdowns
- Visual cards for easy scanning

### Action Buttons
- Download Word Report
- Parse Another Document
- Clear and reset

## 📤 Export Format

The Word document export includes:

```
┌─────────────────────────────────────────────┐
│   TECHNICAL EQUIPMENT LIST                  │
│   Equipment Breakdown                       │
└─────────────────────────────────────────────┘

╔═══════════════════════════════════════════════════════════╗
║ CATEGORY    │ EQUIPMENT  │ SPECIFICATION  │ QTY │ REMARKS ║
╠═══════════════════════════════════════════════════════════╣
║ MICROPHONES │ Shure Mics │ SM57/SM58/Beta │ 14  │         ║
║ MICROPHONES │ AKG Mics   │ C411/C414      │ 6   │         ║
║ DI BOXES    │ Active DI  │ Radial/BSS     │ 8   │         ║
║ FLOOR MON   │ Wedges     │ L'Acoustic     │ 4   │         ║
║ IEM         │ IEM System │ Sennheiser     │ 8   │         ║
║ BACKLINE    │ Drum Kit   │ Pearl/Tama/DW  │ 1   │         ║
║ BACKLINE    │ Keyboard   │ Yamaha Montage │ 1   │         ║
╚═══════════════════════════════════════════════════════════╝
```

## 🛠️ Technical Implementation

### Architecture
```
┌──────────────┐
│   Browser    │
│  (Frontend)  │
└──────┬───────┘
       │ HTTP
       ↓
┌──────────────┐
│    Flask     │
│  (Backend)   │
└──────┬───────┘
       │
   ├───┴────┬───────────┐
   ↓        ↓           ↓
┌──────┐ ┌──────┐ ┌─────────┐
│ PDF  │ │ DOCX │ │  Text   │
│Parser│ │Parser│ │ Parser  │
└──────┘ └──────┘ └─────────┘
       │
       ↓
┌──────────────┐
│   Pattern    │
│   Matching   │
└──────┬───────┘
       │
       ↓
┌──────────────┐
│    Brand     │
│  Detection   │
└──────┬───────┘
       │
       ↓
┌──────────────┐
│  Word Doc    │
│  Generator   │
└──────────────┘
```

### Technologies Used
- **Flask**: Web framework
- **pdfplumber**: PDF text extraction
- **python-docx**: Word document creation/parsing
- **Regular Expressions**: Pattern matching
- **HTML/CSS/JavaScript**: User interface

## 📈 Use Cases

### 1. Event Production Companies
- Quickly assess equipment needs from artist riders
- Generate standardized equipment lists
- Compare requirements across multiple events

### 2. Venue Sound Engineers
- Verify available equipment against rider requirements
- Create rental lists for missing gear
- Archive equipment requirements

### 3. Equipment Rental Companies
- Parse incoming rider requirements
- Generate quotes based on detected equipment
- Track popular equipment requests

### 4. Tour Managers
- Validate riders before sending to venues
- Ensure consistency across tour stops
- Quick equipment overviews

## 🎓 Best Practices

### For Best Results:
1. Use standard technical rider formats
2. Include quantity indicators (e.g., "04 x", "6 pcs")
3. Specify brands and models
4. Use clear section headers (Microphones, DI Boxes, etc.)

### Supported Formats:
- "04 x Shure SM58"
- "6 x Active DI boxes (Radial)"
- "8 IEM systems - Sennheiser 2050"
- "Stage wedges: 4 units (L'Acoustic)"

## 🔒 Privacy & Security
- All processing happens locally on your machine
- No data is sent to external servers
- Files are automatically deleted after processing
- No persistent storage of uploaded documents

## 📞 Support

**Getting Started:**
1. See QUICKSTART.md for installation
2. See README.md for detailed documentation

**Common Questions:**
- Works with standard technical rider formats
- Handles PDF, DOCX, and TXT files
- Exports to professional Word documents
- Clears data between uploads

---

## 🎬 Demo Video Script

*If creating a video demonstration:*

1. **Introduction** (0:00-0:15)
   - "Welcome to the Technical Rider Parser"
   - "Designed for live sound engineers"

2. **Upload** (0:15-0:30)
   - Show drag-and-drop of sample PDF
   - "Upload any technical rider"

3. **Processing** (0:30-0:35)
   - Show loading animation
   - "Automatic parsing in seconds"

4. **Results** (0:35-1:00)
   - Highlight equipment sections
   - "Brand-specific counts"
   - "Clear categorization"

5. **Export** (1:00-1:15)
   - Click download button
   - Open Word document
   - "Professional formatted report"

6. **Reset** (1:15-1:30)
   - Click "Parse Another Document"
   - "Ready for next rider"

---

**Version**: 1.0.0
**Status**: Production Ready
**Last Updated**: October 2025
