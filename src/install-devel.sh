#!/bin/bash

##
## Script installs package in "editable" mode (symlinks) into Python's user directory.
##

set -eu

## works both under bash and sh
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")


pip3 install -e "$SCRIPT_DIR" 
