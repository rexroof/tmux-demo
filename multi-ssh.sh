#!/bin/bash

if [ -z "$*" ] ; then
  echo "please provide hostnames on cmd line"
  exit 1
fi


for host in $*
do
  if [ -z "$FIRST" ] ; then
    tmux new-window "ssh $host"
    FIRST=passed
  else
    tmux split-window -h "ssh $host"
  fi
  tmux select-layout tiled >> /dev/null
done

tmux select-pane -t 0
tmux set-window-option synchronize-panes on > /dev/null
