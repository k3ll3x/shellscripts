#!/bin/bash
arecord -f cd -t raw | oggenc - -r | ssh $1@$2 mplayer -
