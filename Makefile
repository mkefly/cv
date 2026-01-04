PDF=resume/resume.pdf
MD=resume/resume.md
CSS=resume/resume-stylesheet.css

build:
	pandoc $(MD) \
		-f markdown \
		-t pdf \
		--pdf-engine=weasyprint \
		-c $(CSS) \
		-s \
		-o $(PDF)

clean:
	rm -f $(PDF)
