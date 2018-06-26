#!/bin/bash

cmd_one="watch kubectl get pods"
cmd_two="ctop"
cmd_three="docker run -it --rm --pid=host --name htop terencewestphal/htop"


tmux split-window -f -h $cmd_one
full_height=$(tmux display -p '#{pane_height}')
pane_id=$(tmux display -p '#{pane_id}')
thirds=$(( $full_height / 3 ))
tmux split-window -l $thirds -v -t $pane_id $cmd_three
tmux split-window -l $thirds -v -t $pane_id $cmd_two
