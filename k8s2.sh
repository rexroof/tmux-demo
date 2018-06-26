#!/bin/bash

# this is a more advanced version of k8s.sh
# this will run every command in the cmds array in a separate tmux pane

# the commands to run
cmds=()
cmds+=("watch kubectl get pods")
cmds+=("ctop")
cmds+=("cmatrix")
cmds+=("docker run -it --rm --pid=host --name htop terencewestphal/htop")

# count how many commands we have
number_cmds=${#cmds[@]}
# while there are still commands to run
while [ -n "${cmds[0]}" ] ; do
  # if this is our first command
  if [ -z "$first" ] ; then
    # split window horizontally, run first command
    tmux split-window -f -h ${cmds[0]}

    # figure out what our pane height should be
    full_height=$(tmux display -p '#{pane_height}')
    pane_id=$(tmux display -p '#{pane_id}')
    pane_size=$(( $full_height / $number_cmds ))
    # mark first run as done
    first="done"
  else
    # if not our first run, then split pane to calculated pane height and run command
    tmux split-window -l $pane_size -v -t $pane_id ${cmds[0]}
  fi
  # pop command out of array
  cmds=("${cmds[@]:1}")
done
