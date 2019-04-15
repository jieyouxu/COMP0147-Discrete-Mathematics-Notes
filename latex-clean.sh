#!/bin/sh

arg=${1:-.}
exts="aux bbl blg brf idx ilg ind lof log lol lot out toc synctex.gz maf mtc mtc0 mtc1 mtc2 run.xml .bib"

if [ -d $arg ]; then
    for ext in $exts; do
         rm -f $arg/*.$ext
    done

    rm -f $arg/*-blx.bib
else
    for ext in $exts; do
         rm -f $arg.$ext
    done

    rm -f $arg-blx.bib
fi
