#!/bin/bash

# Script executed as a confirmation that the sentence was understood
# and further actions will be performed.
# Args:
# $1 - voice parameters
# $2 - invocation context (the invocation name)
# $3 - sentence that was heard and resulted with calling this script

cd "$(dirname "$0")"
export DISPLAY=:0.0
export TERM=xterm
source ./_helpers.sh

brighten_display &
(show_terminal "TERM_25"; echo 'Roger that!' > $TERM_25; sleep 5s) &

espeak $1 "Roger that!"
