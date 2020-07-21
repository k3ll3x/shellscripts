#!/bin/bash
ssh $1@$2 'arecord -f cd -t raw | oggenc - -r' | mplayer -
