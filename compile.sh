#!/bin/sh
#rm -fr `biber --cache`
latexmk -pv --view=pdf template.tex -pdflua -synctex=1 -interaction=nonstopmode -file-line-error &&  latexmk -c
