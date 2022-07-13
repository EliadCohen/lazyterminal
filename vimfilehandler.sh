#!/bin/bash

# Accepts a link of structure vimfile://<path>:<line_number>
# uses vim to open the file

INPUT="$@"
echo "$INPUT"
URI=`echo "$INPUT" | sed 's/vimfile:\/\///'` 
echo "$URI"
VIMINPUT=`echo "$URI" | sed 's/:/ +/'`
echo "$VIMINPUT"

vim $VIMINPUT

