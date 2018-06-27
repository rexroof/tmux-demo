# github.com/rexroof/tmux-demo

## hi
Hi, I'm Rex Roof.  I started using screen in the 1990s and switched to tmux in 2015. 
This is talk is about why you should have a virtual terminal.

## what is a virtual terminal?
A window manager for your terminal.  A way to manage multiple login/shell sessions in one terminal.  Gives you a way to manipulate your terminals and detach and reattach from terminal sessions. 

- <https://en.wikipedia.org/wiki/Terminal_multiplexer>

## GNU Screen
originally released in 1987, it is the OG.  

- <https://en.wikipedia.org/wiki/GNU_Screen>
- <https://www.gnu.org/software/screen/>

## tmux
first released 20 years after screen in 2007.

- <https://en.wikipedia.org/wiki/Tmux>
- <https://github.com/tmux/tmux>

## simple tmux primer

- windows
- panes
- detaching
- copy & paste
- multi-window examples
- my [muxer](/muxer) autostart script

## scripting demos
these demos are meant to show off how scriptable tmux is.

### detached process script
this script sets up a detached tmux session with a while loop running in it.

- [detached.sh](/detached.sh)

### k8s demo
these scripts set up an example environment for running kubernetes commands against a cluster

- [k8s.sh](/k8s.sh)
- [k8s2.sh](/k8s2.sh)

### multissh script
script for connecting to multiple hosts and running commands on them

- [multi-ssh.sh](/multi-ssh.sh)

## more tmux links

- <https://hackernoon.com/a-gentle-introduction-to-tmux-8d784c404340> : tmux, a gentle introduction
- <http://hyperpolyglot.org/multiplexers> : tmux/screen CLI comparison
- <https://github.com/gpakosz/.tmux> : opinionated tmux config

## MacOS utilities I used

- [iTerm2](https://www.iterm2.com/)
- [Spectacle App](https://www.spectacleapp.com/)
- [KeyCastr](https://github.com/keycastr/keycastr)
