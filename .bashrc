#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

###------ PROMPT ------###

# PS1='[\u@\h \W]\$ '
# PS1='\[\e[0;32m\]┌─[\w]\n└──λ \[\e[m\]' # cooler prompt symbol.
PS1='\[\e[38;5;208m\]┌─[\u@\h]──[\w]\n\[\e[38;5;208m\]└──λ \[\e[m\]' # same as previous, but more information and even cooler look.

###------ DECORATIONS ------###

# change pfetch colors (0-9)

export PF_COL1=4 # thing on left 
export PF_COL2=2 # thing on right 
export PF_COL3=3 # user/host name

# counter to open pfetch in first terminal window

LIVE_COUNTER=$(ps a | awk '{print $2}' | grep -vi -e "tty*" -e "?" | uniq | wc -l);
if [ $LIVE_COUNTER -eq 1 ]; then
     pfetch
fi

###------ ALIASES ------###

alias bluej='snap run bluej'

###------ PATH VARIABLES ------###

# export PATH="$PATH:/usr/local/bin/go"
#
###------ SCRIPTS ------ ###
#/home/akira/emsdk/emsdk_env.sh
export DOCKER_CLI_EXPERIMENTAL=enabled
export SPOTIPY_CLIENT_ID='df05c5701d624d628de54068da4dd7fd'
export SPOTIPY_CLIENT_SECRET='e572ddf5cde44cfca1fc38aa2d8802f2'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
