#!/bin/bash

# this is a simple script that splits your screen into 3 panes on the side

# commands we want to run
cmd_one="watch kubectl get pods"
cmd_two="ctop"
cmd_three="docker run -it --rm --pid=host --name htop terencewestphal/htop"


# split full window horizonally, run cmd one
tmux split-window -f -h $cmd_one

# query pane height and pane id to calculate size of future panes
full_height=$(tmux display -p '#{pane_height}')
pane_id=$(tmux display -p '#{pane_id}')
thirds=$(( $full_height / 3 ))

# split new pane into a new window 1/3rd of the original size and run command
tmux split-window -l $thirds -v -t $pane_id $cmd_three
# (again)  split new pane into a new window 1/3rd of the original size and run command
tmux split-window -l $thirds -v -t $pane_id $cmd_two
