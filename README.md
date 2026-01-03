## **Local Build**

### Generate HTML

```bash
pandoc resume/resume.md \
  -c resume/resume.css \
  -s -o resume/resume.html
```

### Generate PDF

```bash
weasyprint resume/resume.html resume/resume.pdf
```

### Single liner PDF

```bash
pandoc resume/resume.md -f markdown -t pdf --pdf-engine=weasyprint -c resume/resume-stylesheet.css -s -o resume/resume.pdf
```
