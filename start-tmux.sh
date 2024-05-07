#!/bin/bash

# Define the name of the session
SESSION_NAME="Main"
# Define the names of the windows
WINDOW_NAMES=("Work" "Home" "Local" "Tunnels" "Code")

# Start tmux session with the first window, but only if it doesn't already exist
tmux has-session -t $SESSION_NAME &> /dev/null

if [ $? != 0 ]
then
    # Create the new session with the first window name from the array
    tmux new-session -d -s $SESSION_NAME -n "${WINDOW_NAMES[0]}"
    
    # Start from 1 since the first window is already created
    for i in "${WINDOW_NAMES[@]:1}"; do
        tmux new-window -t $SESSION_NAME -n "$i"
    done
fi

# Attach to the session if not already inside a tmux session
if [ -z "$TMUX" ]; then
    tmux attach -t $SESSION_NAME
fi

