#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\u@\h \W > '

#autostart X at login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
exec startx
exec piavpn
fi


#exports
export EDITOR=nvim
export VISUAL=nvim
#export PS1="\u@\h>\[$(tput sgr0)\]"
#source ~/scripts/.bash_prompt.sh

alias dokuback='sh ~/scripts/dokuback.sh'
alias piavpn='sh ~/Downloads/pia-linux-1.1.1-02545.run'
alias vim='nvim'
