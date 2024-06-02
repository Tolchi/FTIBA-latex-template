#!/bin/sh
grep -rl 'template' ./compile.sh | xargs gsed -i 's/template/'$1'/g'
grep -rl 'template.bib' ./template.tex | xargs gsed -i 's/template.bib/'$1'.bib/g'
rename -vs template $1 *
