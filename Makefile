chapters = $(wildcard chapters/*.tex)
includes = $(wildcard includes/*.tex)
figures = $(wildcard figures/*.pdf)

output/thesis.pdf : $(texfiles) $(includes) $(figures)
	latexmk -pdf -outdir="output/" thesis.tex

all: output/thesis.pdf

.PHONY clean:
ifeq ($(OS),Windows_NT)
	-del /s /q .\output
else
	-rm -rf output
endif