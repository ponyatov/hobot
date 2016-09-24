
MODULE ?= $(notdir $(CURDIR))

TEX = $(MODULE).tex header.tex title.tex

LATEX = pdflatex

.PHONY: pdf
pdf: $(MODULE).pdf
$(MODULE).pdf: $(TEX) $(FIG) $(SRC)
	$(LATEX) $(MODULE) && $(LATEX) $(MODULE)

