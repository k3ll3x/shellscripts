#!/bin/bash
for i in *
do
	ppmtojpeg $i > $i.jpeg
done
