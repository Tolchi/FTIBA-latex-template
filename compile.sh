#!/bin/sh
lualatex template.tex
biber template && lualatex template.tex && lualatex template.tex && open template.pdf
latexmk -c
