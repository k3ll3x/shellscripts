#!/bin/bash
#dd if=/dev/sdx of=/path/to/image bs=1M
dd if=$1 of=$2 bs=1M
