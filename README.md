## 🛠 Local Build

You can build the resume locally or inside GitHub Codespaces.
The workflow uses **Pandoc** for conversion and **WeasyPrint** for high-quality PDF output via CSS.

### Prerequisites

* Python 3.9+
* Pandoc
* WeasyPrint and its system dependencies

If you are using **GitHub Codespaces**, all dependencies are installed automatically.

---

### Install Python dependencies

```bash
pip install -r requirements.txt
```

---

## 🌐 Generate HTML (Preview-Friendly)

Generating HTML first is useful for:

* Fast iteration
* Browser preview
* Debugging CSS

```bash
pandoc resume/resume.md \
  -c resume/resume.css \
  -s \
  -o resume/resume.html
```

Open the file in your browser or use the VS Code Markdown / HTML preview.

---

## 📄 Generate PDF (Two-Step)

This method gives you the **best CSS fidelity** and is easier to debug.

```bash
weasyprint resume/resume.html resume/resume.pdf
```

---

## ⚡ Generate PDF (Single Command)

For quick builds, you can generate the PDF directly from Markdown:

```bash
pandoc resume/resume.md \
  -f markdown \
  -t pdf \
  --pdf-engine=weasyprint \
  -c resume/resume-stylesheet.css \
  -s \
  -o resume/resume.pdf
```

---

## ✅ Recommended Workflow

1. Edit `resume/resume.md`
2. Generate HTML to preview layout
3. Fix CSS if needed
4. Generate final PDF
5. Commit both Markdown and PDF to Git

---

If you want, I can also:

* Add a **Makefile section** to the README
* Document the **Codespaces setup** explicitly
* Add **CI instructions** for auto-building the PDF on push
* Include **multiple resume variants** (short / long / academic)

Just tell me how polished you want this repo to be.
