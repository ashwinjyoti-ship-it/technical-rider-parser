# Technical Rider Parser App 🎤

## Professional Live Sound Equipment Analyzer

A web-based application designed for live sound engineers and event production teams to automatically parse technical riders and extract equipment counts with brand recognition.

---

## Features ✨

### Automated Equipment Detection
- **Microphones**: Brand-specific detection (Shure, Sennheiser, AKG, DPA, Audix, Neumann, etc.)
- **DI Boxes**: Count and brand identification (Radial, BSS, Klarkteknik, etc.)
- **Floor Monitors**: Stage wedge detection with brand recognition
- **In-Ear Monitors (IEM)**: IEM system counting with model identification
- **Backline Equipment**: Drums, keyboards, guitar/bass amplifiers, and accessories

### Supported File Formats
- PDF (.pdf)
- Microsoft Word (.docx, .doc)
- Plain Text (.txt)

### Output Options
1. **In-App Display**: Beautiful, organized view with brand breakdown
2. **Word Document Export**: Professional formatted report matching industry standards

---

## Installation 🚀

### Prerequisites
- Python 3.8 or higher
- pip (Python package manager)

### Setup Steps

1. **Install Required Packages**
```bash
pip install flask python-docx pdfplumber --break-system-packages
```

2. **Download Application Files**
Ensure you have:
- `app.py` (main application)
- `templates/index.html` (web interface)

3. **Run the Application**
```bash
python3 app.py
```

4. **Access the App**
Open your browser and navigate to:
```
http://localhost:5000
```

---

## Usage 📖

### Step 1: Upload Document
- Click the upload area or drag & drop your technical rider
- Supported formats: PDF, DOCX, TXT
- Maximum file size: 16MB

### Step 2: Review Results
The app automatically extracts and displays:
- **Summary Dashboard**: Total counts for each equipment category
- **Microphones Section**: Breakdown by brand (Shure, Sennheiser, AKG, etc.)
- **DI Boxes**: Total count and brand distribution
- **Floor Monitors**: Stage wedge counts
- **IEMs**: In-ear monitor system counts
- **Backline**: Drums, keyboards, and amplifiers

### Step 3: Export Report
- Click "Download Word Report" to generate a professional DOCX file
- The report includes:
  - Formatted table with all equipment
  - Brand specifications
  - Quantity breakdowns
  - Timestamp and source document reference

### Step 4: Parse Next Document
- Click "Parse Another Document" to reset
- Upload your next rider

---

## Technical Details 🔧

### Brand Recognition Database

**Microphones**:
- Shure (SM57, SM58, Beta, KSM, Axient, ULXD, PSM, ADX series)
- Sennheiser (Evolution 900 series, e901, e902, e904, e914, D6000)
- AKG (C411, C414, C451, C12)
- DPA (4099, 4011, 4021)
- Audix (D6, i5, OM5)
- Neumann (U87, U89, KM184)
- Earthworks, Rode, Audio-Technica

**DI Boxes**:
- Radial, BSS, Klarkteknik, Countryman, Avalon

**Monitors**:
- L'Acoustic, Meyer Sound, d&b, Outline, DAS, JBL, QSC

**IEMs**:
- Sennheiser (2050, EW300, G4)
- Shure (PSM1000, PSM900, ULXD, Axient)

### Parsing Algorithm
1. **Text Extraction**: Converts PDF/DOCX to plain text
2. **Pattern Matching**: Regex-based extraction of quantities and equipment
3. **Brand Detection**: Context-aware brand identification
4. **Aggregation**: Combines duplicate entries and sums quantities
5. **Output Formatting**: Generates structured data for display/export

### File Structure
```
technical-rider-parser/
├── app.py                 # Flask application (main backend)
├── templates/
│   └── index.html         # Web interface (frontend)
├── /tmp/uploads/          # Temporary file storage
└── README.md              # This file
```

---

## Example Input/Output

### Input Document Structure
```
5. Microphones:
• 04 x Wireless vocal microphones – Shure Axient (Beta58)
• 04 x AKG C411 contact pickup mic
• 06 x Shure SM58 (With Switch)
• 04 x Shure SM57

4. Artist Monitoring:
• 04 x Stage wedges (L'ACOUSTIC, MEYER SOUND)
• 08 x In Ear Monitor (Sennheiser 2050)

DI & miscellaneous:
• 08 x Active DI boxes (Radial/BSS/Klarkteknik)
```

### Output Summary
```
Microphones:
  • Shure: 14 units
  • AKG: 4 units

DI Boxes:
  • Total: 8 units (Radial/BSS/Klarkteknik)

Floor Monitors:
  • Total: 4 units (L'Acoustic, Meyer Sound)

In-Ear Monitors:
  • Total: 8 units (Sennheiser)
```

---

## Troubleshooting 🛠️

### Common Issues

**"No file provided" error**
- Ensure file is properly selected before upload
- Check file size is under 16MB

**"Invalid file type" error**
- Only PDF, DOCX, and TXT files are supported
- Check file extension

**Incorrect counts**
- The parser uses pattern matching and may miss unconventional formatting
- Ensure technical rider follows standard formats
- Contact support for custom parsing rules

**App won't start**
- Verify all dependencies are installed: `pip list | grep -E "flask|docx|pdfplumber"`
- Check Python version: `python3 --version` (should be 3.8+)
- Ensure port 5000 is not in use: `lsof -i :5000`

---

## Future Enhancements 🚀

Planned features:
- [ ] AI-powered parsing for non-standard formats
- [ ] Multi-document batch processing
- [ ] Excel export option
- [ ] Cloud storage integration
- [ ] Custom brand database editor
- [ ] Stage plot visualization
- [ ] Input channel list extraction
- [ ] Rental cost estimation

---

## Developer Information 👨‍💻

### Technology Stack
- **Backend**: Python 3, Flask
- **PDF Processing**: pdfplumber
- **Document Creation**: python-docx
- **Frontend**: HTML5, CSS3, Vanilla JavaScript

### API Endpoints

**POST /upload**
- Accepts: multipart/form-data with 'file' field
- Returns: JSON with parsed equipment data

**POST /download**
- Accepts: JSON with equipment data
- Returns: DOCX file (application/vnd.openxmlformats...)

### Contributing
Contributions welcome! Areas for improvement:
- Enhanced parsing algorithms
- Additional equipment categories
- Support for more file formats
- UI/UX enhancements

---

## License

MIT License - Free to use and modify

---

## Support

For issues, questions, or feature requests:
1. Check the Troubleshooting section
2. Review example documents
3. Contact: support@technicalriderparser.com

---

## Credits

Developed for live sound engineers and event production professionals.

Special thanks to the audio engineering community for feedback and testing.

---

**Version**: 1.0.0  
**Last Updated**: October 2025  
**Compatibility**: Python 3.8+, All modern browsers
