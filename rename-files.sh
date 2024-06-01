#!/bin/sh
grep -rl 'template.bib' ./template.tex | xargs gsed -i 's/template.bib/'$1'.bib/g'
rename -vs template $1 *
