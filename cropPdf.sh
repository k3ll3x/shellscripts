#!/bin/bash
#usage: ./cropPdf.sh [range] pdffile
#e.g: ./cropPdf.sh 2-3 file.pdf
pdftk $2 cat $1 output out_$2
