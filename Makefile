chapters = $(wildcard chapters/*.tex)
includes = $(wildcard includes/*.tex)
figures = $(wildcard figures/*.pdf)

output/thesis.pdf: $(chapters) $(includes) $(figures) thesis.tex
	latexmk -pdf -outdir="output/" thesis.tex

all: output/thesis.pdf

.PHONY clean:
ifeq ($(OS),Windows_NT)
	-rmdir /s /q output
else
	-rm -rf output
endif