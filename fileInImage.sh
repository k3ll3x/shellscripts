#!/bin/bash
$image=$1
$file=$2
$newimg=$3
cat $image $file > $newimg
