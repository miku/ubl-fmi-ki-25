SHELL = /bin/bash

ubl-1920-lebensbild-dichterin.pdf:
	qpdf urn-nbn-de-bsz-15-0011-218803.pdf --pages . 2-7 -- ubl-1920-lebensbild-dichterin.pdf

tesseract.env:
	@echo "export TESSDATA_PREFIX=$$(dpkg -L tesseract-ocr-eng | grep tessdata$$)" > tesseract.env

.PHONY: tesseract
tesseract: tesseract.env
	sudo apt-get install --yes tesseract-ocr tesseract-ocr-eng libtesseract-dev libleptonica-dev pkg-config
	@echo
	@echo "Run 'source tesseract.env' to set the environment variables"

.PHONY: fmt
fmt:
	ruff format .

.PHONY: lint
lint:
	ruff check .

.PHONY: clean
clean:
	rm ubl-1920-lebensbild-dichterin.pdf


