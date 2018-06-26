#!/bin/bash

# this runs a process in a detached tmux session

SESSION="mongo"

tmux kill-session -t $SESSION
tmux new-session -d -s $SESSION -n window
tmux send-keys -t ${SESSION}:1.1 "while : ; do" ENTER
tmux send-keys -t ${SESSION}:1.1 "mkdir -p /tmp/mongodb" ENTER
tmux send-keys -t ${SESSION}:1.1 "mongod --dbpath /tmp/mongodb" ENTER
tmux send-keys -t ${SESSION}:1.1 "sleep 30" ENTER
tmux send-keys -t ${SESSION}:1.1 "done" ENTER
