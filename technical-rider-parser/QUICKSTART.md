# QUICK START GUIDE 🚀

## Get Started in 3 Easy Steps!

### Step 1: Install Dependencies
Open terminal/command prompt in the app folder and run:

**For Mac/Linux:**
```bash
./start.sh
```

**For Windows:**
```bash
pip install -r requirements.txt
python app.py
```

### Step 2: Open Your Browser
Navigate to: **http://localhost:5000**

### Step 3: Upload & Parse!
1. Drag & drop your technical rider (PDF, DOCX, or TXT)
2. Review the equipment breakdown
3. Download the Word report
4. Click "Parse Another Document" for the next rider

---

## That's It! 🎉

The app automatically detects:
- ✓ Microphones (with brands: Shure, Sennheiser, AKG, DPA, Audix, etc.)
- ✓ DI Boxes
- ✓ Floor Monitors/Wedges
- ✓ In-Ear Monitors (IEMs)
- ✓ Backline (Drums, Keyboards, Amps)

---

## Need Help?

**Common Issues:**

1. **"Port already in use" error**
   - Change port in app.py: `app.run(port=5001)`

2. **Dependencies won't install**
   - Use: `pip install --user -r requirements.txt`

3. **Can't find Python**
   - Download from: https://www.python.org/downloads/

---

## Example Technical Rider Format

Your rider should include sections like:

```
5. Microphones:
• 04 x Wireless vocal microphones – Shure Axient
• 06 x Shure SM58
• 02 x DPA 4099

4. Monitoring:
• 08 x In Ear Monitor (Sennheiser 2050)
• 04 x Stage wedges (L'Acoustic)

DI Boxes:
• 08 x Active DI boxes (Radial/BSS)
```

The parser is flexible and works with most standard technical rider formats!

---

For full documentation, see README.md
