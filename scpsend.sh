#!/bin/bash
# usage:
# single files
# scp <file to upload> <username>@<hostname>:<destination path>
# Folders
# scp -r <directory to upload> <username>@<hostname>:<destination path>
scp $1 $2@$3:$4
