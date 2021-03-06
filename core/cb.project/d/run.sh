#!/bin/bash

# Constants
FGREP="fgrep"

# Check if ag exists
which ag
if [ $? = 0 ]; then
   FGREP="ag"
fi

# Script args
WORKSPACE=$1
PORT=$2
NODENUM=$3

#AKUNOTE: forget about entryping for now. Just go ahead and connect to the nodes
## Get plausible entry point
#entry_point=$(${FGREP} "[int|void] main\(" -R ${WORKSPACE} | tr ':' '\n' | grep ".d" | head -n 1)

## No entry point found
## default to main.d
#if [ -z "$entry_point" ]; then
#    entry_point="./main.d"
#fi
#
#if [ -f ${entry_point} ]; then
##    exec dmd -run ${entry_point}
#   echo "connecting to node$NODENUM..."
#   ssh devops@node$NODENUM
#else
#    # Exit
#    exit 1
#fi

echo "connecting to node$NODENUM..."
ssh devops@node$NODENUM

