#!/bin/bash

cmds=()
cmds+=("watch kubectl get pods")
cmds+=("ctop")
cmds+=("cmatrix")
cmds+=("docker run -it --rm --pid=host --name htop terencewestphal/htop")

number_cmds=${#cmds[@]}
while [ -n "${cmds[0]}" ] ; do
  if [ -z "$first" ] ; then
    echo tmux split-window -f -h ${cmds[0]}
    tmux split-window -f -h ${cmds[0]}
    full_height=$(tmux display -p '#{pane_height}')
    pane_id=$(tmux display -p '#{pane_id}')
    pane_size=$(( $full_height / $number_cmds ))
    first="done"
  else
    tmux split-window -l $pane_size -v -t $pane_id ${cmds[0]}
    echo tmux split-window -l $pane_size -v -t $pane_id ${cmds[0]}
  fi
  cmds=("${cmds[@]:1}")
done


