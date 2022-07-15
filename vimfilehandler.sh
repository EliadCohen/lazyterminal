#!/bin/bash

# Accepts a link of structure vmf://<path>:<line_number>
# uses vim to open the file

INPUT="$@"
#echo "$INPUT"
#URI=`echo "$INPUT" | sed 's/vmf:\/\///'` 
URI=`echo "$INPUT" | sed 's/file://'` 
#echo "$URI"
VIMINPUT=`echo "$URI" | sed 's/:/ +/'`
#echo "$VIMINPUT"

gnome-terminal --tab -- bash -c "vim $VIMINPUT; exec bash"

