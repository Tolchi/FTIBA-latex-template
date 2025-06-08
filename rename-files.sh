#!/bin/sh
grep -rl 'template' ./compile.sh | xargs gsed -i 's/template/'$1'/g'
grep -rl 'template.pdf' ./.gitignore | xargs gsed -i 's/template.pdf/'$1'.pdf/g'
grep -rl 'template.bib' ./template.tex | xargs gsed -i 's/template.bib/'$1'.bib/g'
grep -rl 'template.tex' ./template.tex | xargs gsed -i 's/template.tex/'$1'.tex/g'
rename -vs template $1 *
