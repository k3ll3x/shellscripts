#!/bin/bash
#Change pdf background with input
pdftk $1 background $2 output output.pdf
