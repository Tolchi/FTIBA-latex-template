#!/bin/sh
#rm -fr `biber --cache`
latexmk --view=pdf template.tex -pdflua
latexmk -c
open template.pdf
