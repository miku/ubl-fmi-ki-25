SHELL = /bin/bash
TARGETS = slides.pdf

.PHONY: all
all: $(TARGETS)

slides.pdf: slides.md
	pandoc --template=leipzigChemiePandoc.tex --pdf-engine=xelatex -f markdown -t beamer slides.md -o slides.pdf -V documentclass=beamer --verbose

slides.html: slides.md
	pandoc --template=leipzigChemiePandoc.tex --pdf-engine=xelatex -f markdown -t s5 slides.md -o slides.html

.PHONY: clean
clean:
	rm -f $(TARGETS)
