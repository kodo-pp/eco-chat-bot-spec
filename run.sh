#!/usr/bin/env bash
set -e
mkdir -p out

if latexmk main.tex -outdir=out -auxdir=out -pdfxe -g < /dev/null; then
    echo -e "\e[32m====== SUCCESS ======\e[0m"
else
    echo -e "\e[31m====== FAILURE ======\e[0m"
fi
