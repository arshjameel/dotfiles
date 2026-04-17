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
set bell-style none

###------ DECORATIONS ------###

# change pfetch colors (0-9)

export PF_COL1=4 # thing on left 
export PF_COL2=2 # thing on right 
export PF_COL3=3 # user/host name

###------ ALIASES ------###

alias bluej='snap run bluej'
#alias ls='ls -l'
alias zl='zellij'

###------ PATH VARIABLES ------###

# export PATH="$PATH:/usr/local/bin/go"
#
###------ SCRIPTS ------ ###

# Start swayidle if running under niri and not already running
# if [ "$NIRI_SOCKET" ] && ! pgrep -x swayidle > /dev/null; then
#     swayidle -w timeout 60 'swaylock -f' before-sleep 'swaylock -f' &
# fi

# always open the last used zellij session by default when opening a terminal 
# ZELLIJ_LOCK="/tmp/zellij-autostart.lock"
#
# _lock_is_stale() {
#     local pid
#     pid=$(cat "$ZELLIJ_LOCK" 2>/dev/null)
#     # Stale if file is empty or PID is no longer running
#     [[ -z "$pid" ]] || ! kill -0 "$pid" 2>/dev/null
# }
#
# if [[ -z "$ZELLIJ" ]] && [[ -t 0 ]]; then
#     if [[ ! -f "$ZELLIJ_LOCK" ]] || _lock_is_stale; then
#         # Write our PID into the lock
#         echo $$ > "$ZELLIJ_LOCK"
#
#         trap "rm -f '$ZELLIJ_LOCK'" EXIT
#
#         LAST_SESSION=$(zellij ls -s 2>/dev/null | tail -n 1 | awk '{print $1}')
#
#         if [[ -n "$LAST_SESSION" ]]; then
#             exec zellij attach "$LAST_SESSION"
#         else
#             exec zellij
#         fi
#     fi
# fi

# counter to open fetch info in the first terminal window
#
LIVE_COUNTER=$(ps a | awk '{print $2}' | grep -vi -e "tty*" -e "?" | uniq | wc -l)
if [ $LIVE_COUNTER -eq 1 ] && [ "$TERM" = "xterm-kitty" ]; then
     fastfetch --config fedora
fi

# script to open fastfetch on every normal terminal after the first zellij terminal
#
# if [[ -z "$ZELLIJ" ]] && [[ -f "$ZELLIJ_LOCK" ]] && ! _lock_is_stale; then
#     fastfetch --config fedora
# fi

#/home/akira/emsdk/emsdk_env.sh
export DOCKER_CLI_EXPERIMENTAL=enabled
export SPOTIPY_CLIENT_ID='df05c5701d624d628de54068da4dd7fd'
export SPOTIPY_CLIENT_SECRET='e572ddf5cde44cfca1fc38aa2d8802f2'

# claude configuration
export ANTHROPIC_AUTH_TOKEN="sk-1234"
export ANTHROPIC_BASE_URL="http://localhost:4000"
export ANTHROPIC_MODEL="claude-3-5-sonnet-20241022" 
export ANTHROPIC_SMALL_FAST_MODEL="claude-3-5-haiku-20241022"
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-09-06 18:12:43
export PATH="$PATH:/home/akira/.local/bin"
export PATH="$HOME/.platformio/penv/bin:$PATH"
export PATH="$HOME/.platformio/penv/bin:$PATH"
export PATH=~/.npm-global/bin:$PATH

# pnpm
export PNPM_HOME="/home/akira/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Added by LM Studio CLI tool (lms)
export PATH="$PATH:/home/akira/.lmstudio/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
source ~/Xilinx/Vivado/2023.1/settings64.sh
