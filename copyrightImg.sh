#!/bin/bash
# 1 is Author and 2 is file
exiftool -rights=$1 -CopyrightNotice="Copyright" $2
